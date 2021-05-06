Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DDA6937525A
	for <lists+devicetree@lfdr.de>; Thu,  6 May 2021 12:31:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234403AbhEFKcF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 May 2021 06:32:05 -0400
Received: from foss.arm.com ([217.140.110.172]:60850 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234356AbhEFKcF (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 6 May 2021 06:32:05 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C8CC9D6E;
        Thu,  6 May 2021 03:31:06 -0700 (PDT)
Received: from bogus (unknown [10.57.33.10])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1DE1B3F73B;
        Thu,  6 May 2021 03:31:05 -0700 (PDT)
Date:   Thu, 6 May 2021 11:31:02 +0100
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Michael Kelley <mikelley@microsoft.com>
Cc:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "arve@google.com" <arve@google.com>,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Jens Wiklander <jens.wiklander@linaro.org>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>,
        Marc Bonnici <marc.bonnici@arm.com>,
        Will Deacon <will@kernel.org>,
        Mark Rutland <Mark.Rutland@arm.com>
Subject: Re: [PATCH v6 1/6] arm64: smccc: Add support for SMCCCv1.2 extended
 input/output registers
Message-ID: <20210506103102.rarcglpmbqk7yuzd@bogus>
References: <20210505093843.3308691-1-sudeep.holla@arm.com>
 <20210505093843.3308691-2-sudeep.holla@arm.com>
 <MWHPR21MB159352805E9DACBE428BA6FAD7599@MWHPR21MB1593.namprd21.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <MWHPR21MB159352805E9DACBE428BA6FAD7599@MWHPR21MB1593.namprd21.prod.outlook.com>
User-Agent: NeoMutt/20171215
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Michael,

On Wed, May 05, 2021 at 03:28:56PM +0000, Michael Kelley wrote:
> From: Sudeep Holla <sudeep.holla@arm.com> Sent: Wednesday, May 5, 2021 2:39 AM
> > 
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

[...]

> I've tested the new arm_smccc_1_2_hvc() function in the context
> of Linux guests making hypercalls on Hyper-V for ARM64, and it
> works as intended.   But note that my test case only uses X0 thru X7.
> 
> Tested-by: Michael Kelley <mikelley@microsoft.com>
> Reviewed-by: Michael Kelley <mikelley@microsoft.com>

Thanks!

-- 
Regards,
Sudeep
