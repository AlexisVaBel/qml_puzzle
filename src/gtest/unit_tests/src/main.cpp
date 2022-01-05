
#include "gtest/gtest.h"
#include <client/ui/test/MockController.h>

TEST(IController, FailTest) {
	ui::test::MockController controller;
	EXPECT_CALL(controller, startProcess())
			.Times(testing::AtLeast(1));
}

int main(int argc, char* argv[]) {
	::testing::InitGoogleTest(&argc, argv);

	return RUN_ALL_TESTS();
}