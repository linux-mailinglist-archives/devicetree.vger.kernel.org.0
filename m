Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5AB2234A790
	for <lists+devicetree@lfdr.de>; Fri, 26 Mar 2021 13:52:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229695AbhCZMvw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Mar 2021 08:51:52 -0400
Received: from foss.arm.com ([217.140.110.172]:58828 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230094AbhCZMv3 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 26 Mar 2021 08:51:29 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 27EB5143D;
        Fri, 26 Mar 2021 05:51:29 -0700 (PDT)
Received: from bogus (unknown [10.57.54.194])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 271FA3F7D7;
        Fri, 26 Mar 2021 05:51:27 -0700 (PDT)
Date:   Fri, 26 Mar 2021 12:51:24 +0000
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Mark Rutland <mark.rutland@arm.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Trilok Soni <tsoni@codeaurora.org>, arve@android.com,
        Sudeep Holla <sudeep.holla@arm.com>,
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
Message-ID: <20210326125124.yl234hz5ipr6yn2d@bogus>
References: <20210325143255.1532452-1-sudeep.holla@arm.com>
 <20210325143255.1532452-3-sudeep.holla@arm.com>
 <20210325144113.GB41100@C02TD0UTHF1T.local>
 <20210326121833.GA56294@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210326121833.GA56294@C02TD0UTHF1T.local>
User-Agent: NeoMutt/20171215
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 26, 2021 at 12:18:50PM +0000, Mark Rutland wrote:
> On Thu, Mar 25, 2021 at 02:41:13PM +0000, Mark Rutland wrote:
> > Hi Sudeep,
> >
> > On Thu, Mar 25, 2021 at 02:32:50PM +0000, Sudeep Holla wrote:
> > > SMCCC v1.2 allows x8-x17 to be used as parameter registers and x4—x17
> > > to be used as result registers in SMC64/HVC64. Arm Firmware Framework
> > > for Armv8-A specification makes use of x0-x7 as parameter and result
> > > registers.
> > >
> > > Current SMCCC interface in the kernel just use x0-x7 as parameter and
> > > x0-x3 as result registers. Let us add new interface to support x0-x7
> > > as parameter and result registers. This can be extended to include
> > > x8-x17 when there are users for the same.
> >
> > Michael Kelley is also looking at using SMCCCv1.2, and on his HyperV
> > thread I'd suggested we should deal with the whole set of SMCCCv1.2
> > registers now to avoid future churn in this area (using struct both for
> > the arguments and return values).
> >
> > How painful would it be to extend this patch to do that?
>
> I *think* the major change with this would be making the interfaces:
>
> void arm_smccc_1_2_{hvc,smc}(struct arm_smccc_1_2_args *args,
> 			     struct arm_smccc_1_2_res *res);
>
> ... and callers manipulating the structs directly, with arm64 having
> more fields, e.g.
>
> // arm64
> struct arm_smccc_1_2_args {
> 	unsigned long a1;
> 	...
> 	unsigned long a17;
> }
>
> struct arm_smccc_1_2_res {
> 	unsigned long a0;
> 	...
> 	unsigned long a17;
> }
>
> // arm
> struct arm_smccc_1_2_args {
> 	unsigned long a1;
> 	...
> 	unsigned long a7;
> }
>
> struct arm_smccc_1_2_res {
> 	unsigned long a0;
> 	...
> 	unsigned long a7;
> }
>
> I think that can be hidden in the FF-A wrappers, so that doesn't need to
> be what FF-A drivers see. Does that sound plausible, or is that painful?
>

Sounds possible, will give it a try.

> > > +  DEFINE(ARM_SMCCC_V1_2_RES_X0_OFFS,	offsetof(struct arm_smccc_v1_2_res, a0));
>
> As a general nit, for consistency with the existing arm_smccc_1_1 code,
> could we please drop the 'V' in these names, and use `ARM_SMCCC_1_2` or
> `arm_smccc_1_2` ?
>

Sure, makes sense.

> FWIW, other than the above comments, this all looks good to me
>

Thanks.

--
Regards,
Sudeep
