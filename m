Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2871434A6FD
	for <lists+devicetree@lfdr.de>; Fri, 26 Mar 2021 13:19:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229904AbhCZMTS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Mar 2021 08:19:18 -0400
Received: from foss.arm.com ([217.140.110.172]:58358 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229882AbhCZMTJ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 26 Mar 2021 08:19:09 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 22468143D;
        Fri, 26 Mar 2021 05:19:09 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8E9043F7D7;
        Fri, 26 Mar 2021 05:19:05 -0700 (PDT)
Date:   Fri, 26 Mar 2021 12:18:50 +0000
From:   Mark Rutland <mark.rutland@arm.com>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Trilok Soni <tsoni@codeaurora.org>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Jens Wiklander <jens.wiklander@linaro.org>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>,
        Marc Bonnici <marc.bonnici@arm.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Michael Kelley <mikelley@microsoft.com>
Subject: Re: [PATCH v5 2/7] arm64: smccc: Add support for SMCCCv1.2
 input/output registers
Message-ID: <20210326121833.GA56294@C02TD0UTHF1T.local>
References: <20210325143255.1532452-1-sudeep.holla@arm.com>
 <20210325143255.1532452-3-sudeep.holla@arm.com>
 <20210325144113.GB41100@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210325144113.GB41100@C02TD0UTHF1T.local>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 25, 2021 at 02:41:13PM +0000, Mark Rutland wrote:
> Hi Sudeep,
> 
> On Thu, Mar 25, 2021 at 02:32:50PM +0000, Sudeep Holla wrote:
> > SMCCC v1.2 allows x8-x17 to be used as parameter registers and x4—x17
> > to be used as result registers in SMC64/HVC64. Arm Firmware Framework
> > for Armv8-A specification makes use of x0-x7 as parameter and result
> > registers.
> > 
> > Current SMCCC interface in the kernel just use x0-x7 as parameter and
> > x0-x3 as result registers. Let us add new interface to support x0-x7
> > as parameter and result registers. This can be extended to include
> > x8-x17 when there are users for the same.
> 
> Michael Kelley is also looking at using SMCCCv1.2, and on his HyperV
> thread I'd suggested we should deal with the whole set of SMCCCv1.2
> registers now to avoid future churn in this area (using struct both for
> the arguments and return values).
> 
> How painful would it be to extend this patch to do that?

I *think* the major change with this would be making the interfaces:

void arm_smccc_1_2_{hvc,smc}(struct arm_smccc_1_2_args *args,
			     struct arm_smccc_1_2_res *res);

... and callers manipulating the structs directly, with arm64 having
more fields, e.g.

// arm64
struct arm_smccc_1_2_args {
	unsigned long a1;
	...
	unsigned long a17;
}

struct arm_smccc_1_2_res {
	unsigned long a0;
	...
	unsigned long a17;
}

// arm
struct arm_smccc_1_2_args {
	unsigned long a1;
	...
	unsigned long a7;
}

struct arm_smccc_1_2_res {
	unsigned long a0;
	...
	unsigned long a7;
}

I think that can be hidden in the FF-A wrappers, so that doesn't need to
be what FF-A drivers see. Does that sound plausible, or is that painful?
 
> > +  DEFINE(ARM_SMCCC_V1_2_RES_X0_OFFS,	offsetof(struct arm_smccc_v1_2_res, a0));

As a general nit, for consistency with the existing arm_smccc_1_1 code,
could we please drop the 'V' in these names, and use `ARM_SMCCC_1_2` or
`arm_smccc_1_2` ?

FWIW, other than the above comments, this all looks good to me

Thanks,
Mark.

> > diff --git a/arch/arm64/kernel/smccc-call.S b/arch/arm64/kernel/smccc-call.S
> > index d62447964ed9..0ea15c1742f3 100644
> > --- a/arch/arm64/kernel/smccc-call.S
> > +++ b/arch/arm64/kernel/smccc-call.S
> > @@ -43,3 +43,25 @@ SYM_FUNC_START(__arm_smccc_hvc)
> >  	SMCCC	hvc
> >  SYM_FUNC_END(__arm_smccc_hvc)
> >  EXPORT_SYMBOL(__arm_smccc_hvc)
> > +
> > +	.macro SMCCC_v1_2 instr
> > +	.cfi_startproc
> > +	\instr #0
> > +	ldr x8, [sp]
> > +	stp x0, x1, [x8, #ARM_SMCCC_V1_2_RES_X0_OFFS]
> > +	stp x2, x3, [x8, #ARM_SMCCC_V1_2_RES_X2_OFFS]
> > +	stp x4, x5, [x8, #ARM_SMCCC_V1_2_RES_X4_OFFS]
> > +	stp x6, x7, [x8, #ARM_SMCCC_V1_2_RES_X6_OFFS]
> > +	ret
> > +	.cfi_endproc
> > +.endm
> > +
> > +SYM_FUNC_START(arm_smccc_v1_2_hvc)
> > +	SMCCC_v1_2 hvc
> > +SYM_FUNC_END(arm_smccc_v1_2_hvc)
> > +EXPORT_SYMBOL(arm_smccc_v1_2_hvc)
> > +
> > +SYM_FUNC_START(arm_smccc_v1_2_smc)
> > +	SMCCC_v1_2 smc
> > +SYM_FUNC_END(arm_smccc_v1_2_smc)
> > +EXPORT_SYMBOL(arm_smccc_v1_2_smc)
> > diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
> > index 62c54234576c..0b8fa285a054 100644
> > --- a/include/linux/arm-smccc.h
> > +++ b/include/linux/arm-smccc.h
> > @@ -186,6 +186,56 @@ struct arm_smccc_res {
> >  	unsigned long a3;
> >  };
> >  
> > +#ifdef CONFIG_ARM64
> > +/* TODO Need to implement for ARM too */
> > +/**
> > + * struct arm_smccc_v1_2_res - Result from SMC/HVC call
> > + * @a0-a7 result values from registers 0 to 7
> > + */
> > +struct arm_smccc_v1_2_res {
> > +	unsigned long a0;
> > +	unsigned long a1;
> > +	unsigned long a2;
> > +	unsigned long a3;
> > +	unsigned long a4;
> > +	unsigned long a5;
> > +	unsigned long a6;
> > +	unsigned long a7;
> > +};
> > +
> > +/**
> > + * arm_smccc_v1_2_hvc() - make HVC calls
> > + * @a0-a7: arguments passed in registers 0 to 7
> > + * @res: result values from registers 0 to 7
> > + *
> > + * This function is used to make HVC calls following SMC Calling Convention
> > + * v1.2 or above. The content of the supplied param are copied to registers
> > + * 0 to 7 prior to the HVC instruction. The return values are updated with
> > + * the content from register 0 to 7 on return from the HVC instruction.
> > + */
> > +asmlinkage
> > +void arm_smccc_v1_2_hvc(unsigned long a0, unsigned long a1, unsigned long a2,
> > +			unsigned long a3, unsigned long a4, unsigned long a5,
> > +			unsigned long a6, unsigned long a7,
> > +			struct arm_smccc_v1_2_res  *res);
> > +
> > +/**
> > + * arm_smccc_v1_2_smc() - make SMC calls
> > + * @a0-a7: arguments passed in registers 0 to 7
> > + * @res: result values from registers 0 to 7
> > + *
> > + * This function is used to make SMC calls following SMC Calling Convention
> > + * v1.2 or above. The content of the supplied param are copied to registers
> > + * 0 to 7 prior to the SMC instruction. The return values are updated with
> > + * the content from register 0 to 7 on return from the SMC instruction.
> > + */
> > +asmlinkage
> > +void arm_smccc_v1_2_smc(unsigned long a0, unsigned long a1, unsigned long a2,
> > +			unsigned long a3, unsigned long a4, unsigned long a5,
> > +			unsigned long a6, unsigned long a7,
> > +			struct arm_smccc_v1_2_res  *res);
> > +#endif
> > +
> >  /**
> >   * struct arm_smccc_quirk - Contains quirk information
> >   * @id: quirk identification
> > -- 
> > 2.25.1
> > 
> > 
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
