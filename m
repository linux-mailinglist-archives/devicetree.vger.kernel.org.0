Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 67746C377F
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2019 16:34:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727055AbfJAOeR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Oct 2019 10:34:17 -0400
Received: from foss.arm.com ([217.140.110.172]:51074 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727018AbfJAOeR (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 1 Oct 2019 10:34:17 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 70B7D1000;
        Tue,  1 Oct 2019 07:34:16 -0700 (PDT)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1DF583F71A;
        Tue,  1 Oct 2019 07:34:15 -0700 (PDT)
Date:   Tue, 1 Oct 2019 15:34:07 +0100
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     Rob Herring <robh@kernel.org>,
        Tomeu Vizoso <tomeu.vizoso@collabora.com>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>, devicetree@vger.kernel.org,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Steven Price <steven.price@arm.com>
Subject: Re: [PATCH 1/2] arm64: dts: juno: add GPU subsystem
Message-ID: <20191001143350.GA404@bogus>
References: <88dc6386929b3dcd7a65ba8063628c62b66b330c.1569856049.git.robin.murphy@arm.com>
 <CAL_JsqKUP6qG6PVL47RQ5A5OcBhpdOA_0VL1YeYDuyVSVcRqCQ@mail.gmail.com>
 <20191001085954.GA10443@bogus>
 <2a3b2fe1-b08a-bc21-6f3b-4a595b51463c@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2a3b2fe1-b08a-bc21-6f3b-4a595b51463c@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Oct 01, 2019 at 01:45:30PM +0100, Robin Murphy wrote:
> On 01/10/2019 09:59, Sudeep Holla wrote:
> > On Mon, Sep 30, 2019 at 12:46:33PM -0500, Rob Herring wrote:
> > > On Mon, Sep 30, 2019 at 10:25 AM Robin Murphy <robin.murphy@arm.com> wrote:
> > > > 
> > > > Since we now have bindings for Mali Midgard GPUs, let's use them to
> > > > describe Juno's GPU subsystem, if only because we can. Juno sports a
> > > > Mali-T624 integrated behind an MMU-400 (as a gesture towards
> > > > virtualisation), in their own dedicated power domain with DVFS
> > > > controlled by the SCP.
> > > > 
> > > > CC: Liviu Dudau <liviu.dudau@arm.com>
> > > > CC: Sudeep Holla <sudeep.holla@arm.com>
> > > > CC: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > > > Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> > > > ---
> > > >   .../bindings/gpu/arm,mali-midgard.yaml        |  5 +++-
> > > >   arch/arm64/boot/dts/arm/juno-base.dtsi        | 27 +++++++++++++++++++
> > > >   2 files changed, 31 insertions(+), 1 deletion(-)
> > > 
> > > Reviewed-by: Rob Herring <robh@kernel.org>
> > 
> > If you plan to take it along with driver change,
> > 
> > Acked-by: Sudeep Holla <sudeep.holla@arm.com>
> > 
> > If not, please let us know. I can take it for v5.5
> 
> The driver change is debatable and not strictly necessary, so it probably
> makes more sense to take this one through the VExpress tree on its own. I
> wouldn't suggest flipping the status to "enabled" just yet, but it seems

Sure, make sense.

> worth putting the basic description in place as a jumping-off point for
> folks to hack on (e.g. it's another 'interesting' case for devfreq OPP
> stuff).

IIUC, the devfreq support in panfrost driver should work fine with SCPI
as it has clock provider for GPU DVFS.

With SCMI, we don't want to hook to clock framework, but I am yet to come
up with a sane generic way to add SCMI devfreq and integrate it with the
panfrost devfreq.

--
Regards,
Sudeep
