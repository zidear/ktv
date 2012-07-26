#ifndef ASSERT_DEFINE_H
#define ASSERT_DEFINE_H


#define V_ASSERT(expression) \
		if (!(expression)) \
		{ \
			return; \
		}

#define R_ASSERT(expression, ret) \
		if (!(expression)) \
		{ \
			return ret; \
		} \

#endif 


