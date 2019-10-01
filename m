Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2CD10C2F6B
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2019 11:00:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729841AbfJAJAE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Oct 2019 05:00:04 -0400
Received: from foss.arm.com ([217.140.110.172]:44278 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729031AbfJAJAE (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 1 Oct 2019 05:00:04 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 06850337;
        Tue,  1 Oct 2019 02:00:04 -0700 (PDT)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A5A0B3F739;
        Tue,  1 Oct 2019 02:00:02 -0700 (PDT)
Date:   Tue, 1 Oct 2019 09:59:54 +0100
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
Message-ID: <20191001085954.GA10443@bogus>
References: <88dc6386929b3dcd7a65ba8063628c62b66b330c.1569856049.git.robin.murphy@arm.com>
 <CAL_JsqKUP6qG6PVL47RQ5A5OcBhpdOA_0VL1YeYDuyVSVcRqCQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_JsqKUP6qG6PVL47RQ5A5OcBhpdOA_0VL1YeYDuyVSVcRqCQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 30, 2019 at 12:46:33PM -0500, Rob Herring wrote:
> On Mon, Sep 30, 2019 at 10:25 AM Robin Murphy <robin.murphy@arm.com> wrote:
> >
> > Since we now have bindings for Mali Midgard GPUs, let's use them to
> > describe Juno's GPU subsystem, if only because we can. Juno sports a
> > Mali-T624 integrated behind an MMU-400 (as a gesture towards
> > virtualisation), in their own dedicated power domain with DVFS
> > controlled by the SCP.
> >
> > CC: Liviu Dudau <liviu.dudau@arm.com>
> > CC: Sudeep Holla <sudeep.holla@arm.com>
> > CC: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> > ---
> >  .../bindings/gpu/arm,mali-midgard.yaml        |  5 +++-
> >  arch/arm64/boot/dts/arm/juno-base.dtsi        | 27 +++++++++++++++++++
> >  2 files changed, 31 insertions(+), 1 deletion(-)
> 
> Reviewed-by: Rob Herring <robh@kernel.org>

If you plan to take it along with driver change,

Acked-by: Sudeep Holla <sudeep.holla@arm.com>

If not, please let us know. I can take it for v5.5

--
Regards,
Sudeep
