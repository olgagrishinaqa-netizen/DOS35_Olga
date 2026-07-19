class ReportDSL:
    def __init__(self):
        self.config = {'filters': []}

    def set_type(self, report_type):
        self.config['type'] = report_type
        return self

    def add_filter(self, criteria):
        self.config['filters'].append(criteria)
        return self

    def generate(self):
        # Логика генерации (задание 12d)
        print(f"Generating report: {self.config['type']}")
        print(f"Applied filters: {', '.join(self.config['filters'])}")
        return True

# Пример использования DSL:
if __name__ == "__main__":
    report = ReportDSL().set_type("Sales").add_filter("Date: 2026-07-19").generate()