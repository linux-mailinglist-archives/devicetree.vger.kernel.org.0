Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 98CF334A5EB
	for <lists+devicetree@lfdr.de>; Fri, 26 Mar 2021 11:56:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229931AbhCZK4N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Mar 2021 06:56:13 -0400
Received: from foss.arm.com ([217.140.110.172]:54724 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229898AbhCZKzt (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 26 Mar 2021 06:55:49 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0AB53143D;
        Fri, 26 Mar 2021 03:55:49 -0700 (PDT)
Received: from bogus (unknown [10.57.54.194])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7AC2D3F7D7;
        Fri, 26 Mar 2021 03:55:47 -0700 (PDT)
Date:   Fri, 26 Mar 2021 10:55:45 +0000
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Sumit Garg <sumit.garg@linaro.org>
Cc:     linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        Trilok Soni <tsoni@codeaurora.org>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Jens Wiklander <jens.wiklander@linaro.org>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>,
        Marc Bonnici <marc.bonnici@arm.com>
Subject: Re: [PATCH v5 1/7] dt-bindings: Arm: Add Firmware Framework for
 Armv8-A (FF-A) binding
Message-ID: <20210326105545.44rdcbrumg3q6i7y@bogus>
References: <20210325143255.1532452-1-sudeep.holla@arm.com>
 <20210325143255.1532452-2-sudeep.holla@arm.com>
 <CAFA6WYMrCzDUHn4O=tM7y+w01LcSPrRu3Awja7io1XtcZPhqYQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFA6WYMrCzDUHn4O=tM7y+w01LcSPrRu3Awja7io1XtcZPhqYQ@mail.gmail.com>
User-Agent: NeoMutt/20171215
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 26, 2021 at 10:35:23AM +0530, Sumit Garg wrote:
> Hi Sudeep,
>
> Apologies for catching up late on this patch-set.
>
> On Thu, 25 Mar 2021 at 20:05, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > Since the FF-A v1.0 specification doesn't list the UUID of all the
> > partitions in the discovery API, we need to specify the UUID of the
> > partitions that need to be accessed by drivers within the kernel.
> >
>
> Wouldn't we be able to implement auto-discovery of ffa partitions? I
> think enumeration of ffa partitions on FFA bus should be quite similar
> to enumeration of TAs on TEE bus (see [1]). Otherwise we need to put
> these redundant DT entries for every ffa partition which IMHO would
> bloat up device trees for every platform.
>

Any suggestions on how to ? Clearly spec doesn't have that provision, I
had raised this point in the past. Jens has similar concern and he did
ask the same[1]. As I replied to him in that thread[2].

I am open to suggestion on how to auto-discover, currently as I see spec
doesn't support it.

--
Regards,
Sudeep

[1] https://lore.kernel.org/linux-arm-kernel/20201216134659.GA4146223@jade/
[2] https://lore.kernel.org/linux-arm-kernel/20210113092236.pnabzaufzuzwprmw@bogus/
