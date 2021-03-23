Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AB3B4345B56
	for <lists+devicetree@lfdr.de>; Tue, 23 Mar 2021 10:50:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230105AbhCWJuB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Mar 2021 05:50:01 -0400
Received: from foss.arm.com ([217.140.110.172]:43052 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230071AbhCWJti (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 23 Mar 2021 05:49:38 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9ACDF1042;
        Tue, 23 Mar 2021 02:49:37 -0700 (PDT)
Received: from bogus (unknown [10.57.54.194])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 320EA3F719;
        Tue, 23 Mar 2021 02:49:36 -0700 (PDT)
Date:   Tue, 23 Mar 2021 09:49:34 +0000
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Jens Wiklander <jens.wiklander@linaro.org>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        Trilok Soni <tsoni@codeaurora.org>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>,
        Marc Bonnici <marc.bonnici@arm.com>
Subject: Re: [PATCH v4 0/7] firmware: Add initial support for Arm FF-A
Message-ID: <20210323094934.gzwfg3nf5bi74lpu@bogus>
References: <20210212154614.38604-1-sudeep.holla@arm.com>
 <20210316143429.tdyyulkml4ypdixy@bogus>
 <CAHUa44HdHdN7tES60vcBqRo=afUtxNHx1vnYx5JmX-UocV5PRA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHUa44HdHdN7tES60vcBqRo=afUtxNHx1vnYx5JmX-UocV5PRA@mail.gmail.com>
User-Agent: NeoMutt/20171215
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Jens,

On Thu, Mar 18, 2021 at 03:09:46PM +0100, Jens Wiklander wrote:
> Hi Sudeep,
> 
> On Tue, Mar 16, 2021 at 3:34 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > Hi Jens,
> >
> > On Fri, Feb 12, 2021 at 03:46:07PM +0000, Sudeep Holla wrote:
> > > Hi all,
> > >
> > > This is very basic implementation for in-kernel support for Arm FF-A
> > > specification.
> > >
> > > Arm Firmware Framework for Armv8-A specification[1] describes a software
> > > architecture that provides mechanism to utilise the virtualization
> > > extension to isolate software images and describes interfaces that
> > > standardize communication between the various software images. This
> > > includes communication between images in the Secure and Normal world.
> > >
> > > The main idea here is to create FFA device to establish any communication
> > > with a secure partition. This is currently tested with OPTEE(with changes
> > > to OPTEE driver adding FFA as transport)
> > >
> >
> > Since you reviewed the last version, it would be helpful if you provide
> > Reviewed-by or Tested-by if you happy with this version. I would like to
> > get this initial version merged for v5.13
> 
> I've tested this in a few of my setups and everything looks over all
> fine, so please apply:
> Tested-by: Jens Wiklander <jens.wiklander@linaro.org>
> 
> I'm also double checking the details of the patches for some further
> feedback. Stay tuned.
> 

Thanks a lot, much appreciated !

-- 
Regards,
Sudeep
