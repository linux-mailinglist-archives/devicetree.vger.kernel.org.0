Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7F198B5F54
	for <lists+devicetree@lfdr.de>; Wed, 18 Sep 2019 10:36:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727354AbfIRIgG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Sep 2019 04:36:06 -0400
Received: from foss.arm.com ([217.140.110.172]:37364 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726422AbfIRIgG (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 18 Sep 2019 04:36:06 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C814F337;
        Wed, 18 Sep 2019 01:36:03 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3E2E03F59C;
        Wed, 18 Sep 2019 01:36:03 -0700 (PDT)
Date:   Wed, 18 Sep 2019 09:36:01 +0100
From:   Andrew Murray <andrew.murray@arm.com>
To:     Mathieu Poirier <mathieu.poirier@linaro.org>
Cc:     Suzuki K Poulose <suzuki.poulose@arm.com>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Mike Leach <mike.leach@linaro.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Al Grant <Al.Grant@arm.com>, Leo Yan <leo.yan@linaro.org>,
        devicetree@vger.kernel.org,
        Coresight ML <coresight@lists.linaro.org>
Subject: Re: [PATCH v6 0/3] coresight: etm4x: save/restore ETMv4 context
 across CPU low power states
Message-ID: <20190918083601.GX9720@e119886-lin.cambridge.arm.com>
References: <20190913115312.12943-1-andrew.murray@arm.com>
 <CANLsYkzhB3OBpLTAR54p771OSLxj+NYF8_kE=aMp7SkdNzaxwA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANLsYkzhB3OBpLTAR54p771OSLxj+NYF8_kE=aMp7SkdNzaxwA@mail.gmail.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 17, 2019 at 01:37:10PM -0600, Mathieu Poirier wrote:
> Hi Andrew,
> 
> On Fri, 13 Sep 2019 at 05:53, Andrew Murray <andrew.murray@arm.com> wrote:
> 
> [...]
> 
> >
> > Andrew Murray (3):
> >   coresight: etm4x: save/restore state across CPU low power states
> >   dt-bindings: arm: coresight: Add support for
> >     coresight-loses-context-with-cpu
> 
> I have picked-up patches 1 and 2.  As per the conversation we had in
> Cambridge where we kept finding ways to break things when dealing with
> an external agent, I have not applied the 3 patch.

Thanks for the picking these up. No worries about patch 3.

Thanks,

Andrew Murray

> 
> Thanks,
> Mathieu
> 
> >   coresight: etm4x: save/restore state for external agents
> >
> >  .../devicetree/bindings/arm/coresight.txt     |   9 +
> >  drivers/hwtracing/coresight/coresight-etm4x.c | 351 +++++++++++++++++-
> >  drivers/hwtracing/coresight/coresight-etm4x.h |  64 ++++
> >  drivers/hwtracing/coresight/coresight.c       |   8 +-
> >  include/linux/coresight.h                     |  13 +
> >  5 files changed, 443 insertions(+), 2 deletions(-)
> >
> > --
> > 2.21.0
> >
