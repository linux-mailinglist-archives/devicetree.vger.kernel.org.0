Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A0F3D375258
	for <lists+devicetree@lfdr.de>; Thu,  6 May 2021 12:30:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234453AbhEFKbH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 May 2021 06:31:07 -0400
Received: from foss.arm.com ([217.140.110.172]:60830 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234428AbhEFKbH (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 6 May 2021 06:31:07 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 75FD0D6E;
        Thu,  6 May 2021 03:30:08 -0700 (PDT)
Received: from bogus (unknown [10.57.33.10])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9E1C33F73B;
        Thu,  6 May 2021 03:30:06 -0700 (PDT)
Date:   Thu, 6 May 2021 11:30:04 +0100
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Mark Rutland <mark.rutland@arm.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        arve@google.com, Andrew Walbran <qwandor@google.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Jens Wiklander <jens.wiklander@linaro.org>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>,
        Marc Bonnici <marc.bonnici@arm.com>,
        Michael Kelley <mikelley@microsoft.com>,
        Will Deacon <will@kernel.org>
Subject: Re: [PATCH v6 1/6] arm64: smccc: Add support for SMCCCv1.2 extended
 input/output registers
Message-ID: <20210506103004.gmqhhknss6x6nl5z@bogus>
References: <20210505093843.3308691-1-sudeep.holla@arm.com>
 <20210505093843.3308691-2-sudeep.holla@arm.com>
 <20210505134914.GB5605@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210505134914.GB5605@C02TD0UTHF1T.local>
User-Agent: NeoMutt/20171215
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 05, 2021 at 02:49:14PM +0100, Mark Rutland wrote:
> Hi Sudeep,
> 
> On Wed, May 05, 2021 at 10:38:38AM +0100, Sudeep Holla wrote:
> > SMCCC v1.2 allows x8-x17 to be used as parameter registers and x4—x17
> > to be used as result registers in SMC64/HVC64. Arm Firmware Framework
> > for Armv8-A specification makes use of x0-x7 as parameter and result
> > registers. There are other users like Hyper-V who intend to use beyond
> > x0-x7 as well.
> > 
> > Current SMCCC interface in the kernel just use x0-x7 as parameter and
> > x0-x3 as result registers as required by SMCCCv1.0. Let us add new
> > interface to support this extended set of input/output registers namely
> > x0-x17 as both parameter and result registers.
> > 
> > Cc: Michael Kelley <mikelley@microsoft.com>
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > Cc:Catalin Marinas <catalin.marinas@arm.com>
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> 
> I have one minor comment below, otherwise this looks good to me, and
> regardless:
> 
> Acked-by: Mark Rutland <mark.rutland@arm.com>
> 
> [...]
> 
> > +/**
> > + * arm_smccc_1_2_hvc() - make HVC calls
> > + * @args: arguments passed via struct arm_smccc_1_2_regs
> > + * @res: result values via struct arm_smccc_1_2_regs
> > + *
> > + * This function is used to make HVC calls following SMC Calling Convention
> > + * v1.2 or above. The content of the supplied param are copied from the
> > + * structure to registers prior to the HVC instruction. The return values
> > + * are updated with the content from registers on return from the HVC
> > + * instruction.
> > + */
> > +asmlinkage void arm_smccc_1_2_hvc(struct arm_smccc_1_2_regs *args,
> > +				  struct arm_smccc_1_2_regs *res);
> > +
> > +/**
> > + * arm_smccc_1_2_smc() - make SMC calls
> > + * @args: arguments passed via struct arm_smccc_1_2_regs
> > + * @res: result values via struct arm_smccc_1_2_regs
> > + *
> > + * This function is used to make SMC calls following SMC Calling Convention
> > + * v1.2 or above. The content of the supplied param are copied from the
> > + * structure to registers prior to the SMC instruction. The return values
> > + * are updated with the content from registers on return from the SMC
> > + * instruction.
> > + */
> > +asmlinkage void arm_smccc_1_2_smc(struct arm_smccc_1_2_regs *args,
> > +				  struct arm_smccc_1_2_regs *res);
> > +#endif
> 
> It might be worth making the args parameter to these const, since we
> never write to it in the asm.
>

Makes sense, will fix it. Thanks for the review.

-- 
Regards,
Sudeep
