Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 94DA92C8310
	for <lists+devicetree@lfdr.de>; Mon, 30 Nov 2020 12:19:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726197AbgK3LSl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 06:18:41 -0500
Received: from foss.arm.com ([217.140.110.172]:52672 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725902AbgK3LSl (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 30 Nov 2020 06:18:41 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CCB101042;
        Mon, 30 Nov 2020 03:17:55 -0800 (PST)
Received: from bogus (unknown [10.57.62.34])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3F7593F66B;
        Mon, 30 Nov 2020 03:17:53 -0800 (PST)
Date:   Mon, 30 Nov 2020 11:17:50 +0000
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Jens Wiklander <jens.wiklander@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Trilok Soni <tsoni@codeaurora.org>,
        Trilok Soni <tsoni@quicinc.com>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Android Kernel Team <kernel-team@android.com>,
        Fuad Tabba <tabba@google.com>
Subject: Re: [PATCH v2 0/9] firmware: Add initial support for Arm FF-A
Message-ID: <20201130111750.uiws2f2neygs7qrg@bogus>
References: <20201103174350.991593-1-sudeep.holla@arm.com>
 <20201128122502.GA8649@jade>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201128122502.GA8649@jade>
User-Agent: NeoMutt/20171215
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Nov 28, 2020 at 01:25:02PM +0100, Jens Wiklander wrote:
> Hi Sudeep,
> 
> On Tue, Nov 03, 2020 at 05:43:41PM +0000, Sudeep Holla wrote:
> > Hi all,
> > 
> > Let me start stating this is just initial implementation to check on
> > the idea of providing more in-kernel and userspace support. Lot of things
> > are still work in progress, I am posting just to get the early feedback
> > before building lot of things on this idea. Consider this more as RFC
> > though not tagged explicity(just to avoid it being ignored :))
> > 
> > Arm Firmware Framework for Armv8-A specification[1] describes a software
> > architecture that provides mechanism to utilise the virtualization
> > extension to isolate software images and describes interfaces that
> > standardize communication between the various software images. This
> > includes communication between images in the Secure and Normal world.
> > 
> > The main idea here is to create FFA device to establish any communication
> > with a partition(secure or normal world VM).
> > 
> > If it is a partition managed by hypervisor, then we will register chardev
> > associated with each of those partition FFA device.
> > 
> > /dev/arm_ffa:
> > 
> > e3a48fa5-dc54-4a8b-898b-bdc4dfeeb7b8
> > 49f65057-d002-4ae2-b4ee-d31c7940a13d
> > 
> > For in-kernel usage(mostly communication with secure partitions), only
> > in-kernel APIs are accessible(no userspace). There may be a need to
> > provide userspace access instead of in-kernel, it is not yet support
> > in this series as we need way to identify those and I am not sure if
> > that belong to DT.
> 
> With unfiltered VM to VM commnication from user space there's no easy
> way for two VMs to exchange privileged information that excludes user
> space.

Though this usercase is dropped now, it was targeted for VMM and may be
it was not an issue there.

> Perhaps access to the FFA device is considered privileged and
> enough for all purposes.
>

I don't know TBH.

> If I've understood it correctly is VM to SP communication only allowed
> via kernel mode in the VM.

Correct.

> The communication with OP-TEE depends on this with the recent commit
> c5b4312bea5d ("tee: optee: Add support for session login client UUID
> generation").
>

OK, thanks for the info.

-- 
Regards,
Sudeep
