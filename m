Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 31DB734945B
	for <lists+devicetree@lfdr.de>; Thu, 25 Mar 2021 15:42:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230433AbhCYOl1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Mar 2021 10:41:27 -0400
Received: from foss.arm.com ([217.140.110.172]:51400 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231299AbhCYOlS (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 25 Mar 2021 10:41:18 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 34164143D;
        Thu, 25 Mar 2021 07:41:18 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.22.175])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 080ED3F792;
        Thu, 25 Mar 2021 07:41:15 -0700 (PDT)
Date:   Thu, 25 Mar 2021 14:41:13 +0000
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
Message-ID: <20210325144113.GB41100@C02TD0UTHF1T.local>
References: <20210325143255.1532452-1-sudeep.holla@arm.com>
 <20210325143255.1532452-3-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210325143255.1532452-3-sudeep.holla@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sudeep,

On Thu, Mar 25, 2021 at 02:32:50PM +0000, Sudeep Holla wrote:
> SMCCC v1.2 allows x8-x17 to be used as parameter registers and x4—x17
> to be used as result registers in SMC64/HVC64. Arm Firmware Framework
> for Armv8-A specification makes use of x0-x7 as parameter and result
> registers.
> 
> Current SMCCC interface in the kernel just use x0-x7 as parameter and
> x0-x3 as result registers. Let us add new interface to support x0-x7
> as parameter and result registers. This can be extended to include
> x8-x17 when there are users for the same.

Michael Kelley is also looking at using SMCCCv1.2, and on his HyperV
thread I'd suggested we should deal with the whole set of SMCCCv1.2
registers now to avoid future churn in this area (using struct both for
the arguments and return values).

How painful would it be to extend this patch to do that?

Thanks,
Mark.

> 
> Tested-by: Jens Wiklander <jens.wiklander@linaro.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  arch/arm64/kernel/asm-offsets.c |  4 +++
>  arch/arm64/kernel/smccc-call.S  | 22 +++++++++++++++
>  include/linux/arm-smccc.h       | 50 +++++++++++++++++++++++++++++++++
>  3 files changed, 76 insertions(+)
> 
> Hi Will/Catalin,
> 
> I seemed to have missed you on these patches. I realised only when I was
> collecting Acks to get this series merged. The change here is simple, it
> would be good if you can review and ack if you are OK with it so that I
> can get the serier merged via ARM SoC.
> 
> diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
> index a36e2fc330d4..57ffea2920b8 100644
> --- a/arch/arm64/kernel/asm-offsets.c
> +++ b/arch/arm64/kernel/asm-offsets.c
> @@ -132,6 +132,10 @@ int main(void)
>    DEFINE(ARM_SMCCC_RES_X2_OFFS,		offsetof(struct arm_smccc_res, a2));
>    DEFINE(ARM_SMCCC_QUIRK_ID_OFFS,	offsetof(struct arm_smccc_quirk, id));
>    DEFINE(ARM_SMCCC_QUIRK_STATE_OFFS,	offsetof(struct arm_smccc_quirk, state));
> +  DEFINE(ARM_SMCCC_V1_2_RES_X0_OFFS,	offsetof(struct arm_smccc_v1_2_res, a0));
> +  DEFINE(ARM_SMCCC_V1_2_RES_X2_OFFS,	offsetof(struct arm_smccc_v1_2_res, a2));
> +  DEFINE(ARM_SMCCC_V1_2_RES_X4_OFFS,	offsetof(struct arm_smccc_v1_2_res, a4));
> +  DEFINE(ARM_SMCCC_V1_2_RES_X6_OFFS,	offsetof(struct arm_smccc_v1_2_res, a6));
>    BLANK();
>    DEFINE(HIBERN_PBE_ORIG,	offsetof(struct pbe, orig_address));
>    DEFINE(HIBERN_PBE_ADDR,	offsetof(struct pbe, address));
> diff --git a/arch/arm64/kernel/smccc-call.S b/arch/arm64/kernel/smccc-call.S
> index d62447964ed9..0ea15c1742f3 100644
> --- a/arch/arm64/kernel/smccc-call.S
> +++ b/arch/arm64/kernel/smccc-call.S
> @@ -43,3 +43,25 @@ SYM_FUNC_START(__arm_smccc_hvc)
>  	SMCCC	hvc
>  SYM_FUNC_END(__arm_smccc_hvc)
>  EXPORT_SYMBOL(__arm_smccc_hvc)
> +
> +	.macro SMCCC_v1_2 instr
> +	.cfi_startproc
> +	\instr #0
> +	ldr x8, [sp]
> +	stp x0, x1, [x8, #ARM_SMCCC_V1_2_RES_X0_OFFS]
> +	stp x2, x3, [x8, #ARM_SMCCC_V1_2_RES_X2_OFFS]
> +	stp x4, x5, [x8, #ARM_SMCCC_V1_2_RES_X4_OFFS]
> +	stp x6, x7, [x8, #ARM_SMCCC_V1_2_RES_X6_OFFS]
> +	ret
> +	.cfi_endproc
> +.endm
> +
> +SYM_FUNC_START(arm_smccc_v1_2_hvc)
> +	SMCCC_v1_2 hvc
> +SYM_FUNC_END(arm_smccc_v1_2_hvc)
> +EXPORT_SYMBOL(arm_smccc_v1_2_hvc)
> +
> +SYM_FUNC_START(arm_smccc_v1_2_smc)
> +	SMCCC_v1_2 smc
> +SYM_FUNC_END(arm_smccc_v1_2_smc)
> +EXPORT_SYMBOL(arm_smccc_v1_2_smc)
> diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
> index 62c54234576c..0b8fa285a054 100644
> --- a/include/linux/arm-smccc.h
> +++ b/include/linux/arm-smccc.h
> @@ -186,6 +186,56 @@ struct arm_smccc_res {
>  	unsigned long a3;
>  };
>  
> +#ifdef CONFIG_ARM64
> +/* TODO Need to implement for ARM too */
> +/**
> + * struct arm_smccc_v1_2_res - Result from SMC/HVC call
> + * @a0-a7 result values from registers 0 to 7
> + */
> +struct arm_smccc_v1_2_res {
> +	unsigned long a0;
> +	unsigned long a1;
> +	unsigned long a2;
> +	unsigned long a3;
> +	unsigned long a4;
> +	unsigned long a5;
> +	unsigned long a6;
> +	unsigned long a7;
> +};
> +
> +/**
> + * arm_smccc_v1_2_hvc() - make HVC calls
> + * @a0-a7: arguments passed in registers 0 to 7
> + * @res: result values from registers 0 to 7
> + *
> + * This function is used to make HVC calls following SMC Calling Convention
> + * v1.2 or above. The content of the supplied param are copied to registers
> + * 0 to 7 prior to the HVC instruction. The return values are updated with
> + * the content from register 0 to 7 on return from the HVC instruction.
> + */
> +asmlinkage
> +void arm_smccc_v1_2_hvc(unsigned long a0, unsigned long a1, unsigned long a2,
> +			unsigned long a3, unsigned long a4, unsigned long a5,
> +			unsigned long a6, unsigned long a7,
> +			struct arm_smccc_v1_2_res  *res);
> +
> +/**
> + * arm_smccc_v1_2_smc() - make SMC calls
> + * @a0-a7: arguments passed in registers 0 to 7
> + * @res: result values from registers 0 to 7
> + *
> + * This function is used to make SMC calls following SMC Calling Convention
> + * v1.2 or above. The content of the supplied param are copied to registers
> + * 0 to 7 prior to the SMC instruction. The return values are updated with
> + * the content from register 0 to 7 on return from the SMC instruction.
> + */
> +asmlinkage
> +void arm_smccc_v1_2_smc(unsigned long a0, unsigned long a1, unsigned long a2,
> +			unsigned long a3, unsigned long a4, unsigned long a5,
> +			unsigned long a6, unsigned long a7,
> +			struct arm_smccc_v1_2_res  *res);
> +#endif
> +
>  /**
>   * struct arm_smccc_quirk - Contains quirk information
>   * @id: quirk identification
> -- 
> 2.25.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
