Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5B178345B73
	for <lists+devicetree@lfdr.de>; Tue, 23 Mar 2021 10:57:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229728AbhCWJ4b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Mar 2021 05:56:31 -0400
Received: from foss.arm.com ([217.140.110.172]:43190 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229448AbhCWJ4J (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 23 Mar 2021 05:56:09 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 555AC1042;
        Tue, 23 Mar 2021 02:56:08 -0700 (PDT)
Received: from bogus (unknown [10.57.54.194])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E23A73F719;
        Tue, 23 Mar 2021 02:56:06 -0700 (PDT)
Date:   Tue, 23 Mar 2021 09:56:04 +0000
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Jens Wiklander <jens.wiklander@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Trilok Soni <tsoni@codeaurora.org>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>,
        Marc Bonnici <marc.bonnici@arm.com>
Subject: Re: [PATCH v4 2/7] arm64: smccc: Add support for SMCCCv1.2
 input/output registers
Message-ID: <20210323095604.dcz3xr4sai6saol2@bogus>
References: <20210212154614.38604-1-sudeep.holla@arm.com>
 <20210212154614.38604-3-sudeep.holla@arm.com>
 <20210317071759.GA3005811@jade>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210317071759.GA3005811@jade>
User-Agent: NeoMutt/20171215
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 17, 2021 at 08:17:59AM +0100, Jens Wiklander wrote:
> On Fri, Feb 12, 2021 at 03:46:09PM +0000, Sudeep Holla wrote:
> > SMCCC v1.2 allows x8-x17 to be used as parameter registers and x4—x17
> > to be used as result registers in SMC64/HVC64. Arm Firmware Framework
> > for Armv8-A specification makes use of x0-x7 as parameter and result
> > registers.
> > 
> > Current SMCCC interface in the kernel just use x0-x7 as parameter and
> > x0-x3 as result registers. Let us add new interface to support x0-x7
> > as parameter and result registers. This can be extended to include
> > x8-x17 when there are users for the same.
> > 
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > ---
> >  arch/arm64/kernel/asm-offsets.c |  4 +++
> >  arch/arm64/kernel/smccc-call.S  | 22 +++++++++++++++
> >  include/linux/arm-smccc.h       | 50 +++++++++++++++++++++++++++++++++
> >  3 files changed, 76 insertions(+)
> > 
> > diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
> > index 301784463587..89b444591575 100644
> > --- a/arch/arm64/kernel/asm-offsets.c
> > +++ b/arch/arm64/kernel/asm-offsets.c
> > @@ -129,6 +129,10 @@ int main(void)
> >    DEFINE(ARM_SMCCC_RES_X2_OFFS,		offsetof(struct arm_smccc_res, a2));
> >    DEFINE(ARM_SMCCC_QUIRK_ID_OFFS,	offsetof(struct arm_smccc_quirk, id));
> >    DEFINE(ARM_SMCCC_QUIRK_STATE_OFFS,	offsetof(struct arm_smccc_quirk, state));
> > +  DEFINE(ARM_SMCCC_V1_2_RES_X0_OFFS,	offsetof(struct arm_smccc_v1_2_res, a0));
> > +  DEFINE(ARM_SMCCC_V1_2_RES_X2_OFFS,	offsetof(struct arm_smccc_v1_2_res, a2));
> > +  DEFINE(ARM_SMCCC_V1_2_RES_X4_OFFS,	offsetof(struct arm_smccc_v1_2_res, a4));
> > +  DEFINE(ARM_SMCCC_V1_2_RES_X6_OFFS,	offsetof(struct arm_smccc_v1_2_res, a6));
> >    BLANK();
> >    DEFINE(HIBERN_PBE_ORIG,	offsetof(struct pbe, orig_address));
> >    DEFINE(HIBERN_PBE_ADDR,	offsetof(struct pbe, address));
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
> > index f860645f6512..66fd3d582c7f 100644
> > --- a/include/linux/arm-smccc.h
> > +++ b/include/linux/arm-smccc.h
> > @@ -155,6 +155,56 @@ struct arm_smccc_res {
> >  	unsigned long a3;
> >  };
> >  
> > +#ifdef CONFIG_ARM64
> > +/* TODO Need to implement for ARM too */
> 
> It would be nice to have this TODO resolved.
> 

Agreed, but I don't have a complete stack to test this and bit nervous to push
untested code out or even merge it. We can push/get that merged when there
is need for it. It is definitely in my TODO list.

Thanks for all the review and testing. Sorry for the delay in response.
I was off until yesterday.

-- 
Regards,
Sudeep
