Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8FF383974A4
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 15:53:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234047AbhFANzK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 09:55:10 -0400
Received: from foss.arm.com ([217.140.110.172]:50770 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233584AbhFANzK (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 1 Jun 2021 09:55:10 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D57A86D;
        Tue,  1 Jun 2021 06:53:28 -0700 (PDT)
Received: from bogus (unknown [10.57.72.241])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 82FFD3F719;
        Tue,  1 Jun 2021 06:53:27 -0700 (PDT)
Date:   Tue, 1 Jun 2021 14:53:22 +0100
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Cristian Marussi <cristian.marussi@arm.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>
Subject: Re: [PATCH 1/8] dt-bindings: firmware: arm,scpi: Move arm,scpi-shmem
 to json schema
Message-ID: <20210601135322.z2ct3arrk67r3uvq@bogus>
References: <20210526182807.548118-1-sudeep.holla@arm.com>
 <20210526182807.548118-2-sudeep.holla@arm.com>
 <20210527202554.GA1351447@robh.at.kernel.org>
 <20210531081548.jxovuqattu2fg73o@bogus>
 <20210531082002.spu73u7n35n53lqp@bogus>
 <CAL_Jsq+BGrU5Rb_fso3FK4T_1K+3zFbt_4m5RYAZwLNCGgYn-w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+BGrU5Rb_fso3FK4T_1K+3zFbt_4m5RYAZwLNCGgYn-w@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 01, 2021 at 08:37:57AM -0500, Rob Herring wrote:
> On Mon, May 31, 2021 at 3:20 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > On Mon, May 31, 2021 at 09:15:48AM +0100, Sudeep Holla wrote:
> > > On Thu, May 27, 2021 at 03:25:54PM -0500, Rob Herring wrote:
> > > > On Wed, May 26, 2021 at 07:28:00PM +0100, Sudeep Holla wrote:
> > > > > Move the SRAM and shared memory binding for SCPI into the existing
> > > > > Generic on-chip SRAM. We just need to update the compatible list and
> > > > > there-by remove the whole old text format binding for the same.
> > > > >
> > > > > Cc: Rob Herring <robh+dt@kernel.org>
> > > > > Cc: Kevin Hilman <khilman@baylibre.com>
> > > > > Cc: Neil Armstrong <narmstrong@baylibre.com>
> > > > > Cc: Jerome Brunet <jbrunet@baylibre.com>
> > > > > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > > > > ---
> > > > >  .../devicetree/bindings/arm/arm,scpi.txt          | 15 ---------------
> > > > >  Documentation/devicetree/bindings/sram/sram.yaml  |  1 +
> > > > >  2 files changed, 1 insertion(+), 15 deletions(-)
> > > > >
> > > > > diff --git a/Documentation/devicetree/bindings/arm/arm,scpi.txt b/Documentation/devicetree/bindings/arm/arm,scpi.txt
> > > > > index bcd6c3ec471e..bcb8b3d61e68 100644
> > > > > --- a/Documentation/devicetree/bindings/arm/arm,scpi.txt
> > > > > +++ b/Documentation/devicetree/bindings/arm/arm,scpi.txt
> > > > > @@ -56,21 +56,6 @@ Sub-nodes
> > > > >   node. It can be non linear and hence provide the mapping of identifiers
> > > > >   into the clock-output-names array.
> > > > >
> > > > > -SRAM and Shared Memory for SCPI
> > > > > --------------------------------
> > > > > -
> > > > > -A small area of SRAM is reserved for SCPI communication between application
> > > > > -processors and SCP.
> > > > > -
> > > > > -The properties should follow the generic mmio-sram description found in [3]
> > > > > -
> > > > > -Each sub-node represents the reserved area for SCPI.
> > > > > -
> > > > > -Required sub-node properties:
> > > > > -- reg : The base offset and size of the reserved area with the SRAM
> > > > > -- compatible : should be "arm,scp-shmem" for Non-secure SRAM based
> > > >
> > > > > +            - arm,scpi-shmem
> > > >
> > > > Which is correct? There's not a single other occurrance in the kernel
> > > > tree of either.
> > > >
> > >
> > > Right I was thinking removing it but wasn't sure if any downstream DTS
> > > have used this as it has been in the binding for a while now.
> > >
> >
> > Sent it too early before I completed, we don't have explicit check for
> > these compatible in the code. We just use phandles directly.
> 
> But which one is correct? "arm,scp-shmem" or "arm,scpi-shmem"
>

Ah sorry I misread earlier. Indeed it should be "arm,scp-shmem", I messed
up while converting.

> I can fix up when applying.
>

I am posting v2 once I fix the scmi regulators. I also have couple of
other fixes you have suggested.

--
Regards,
Sudeep
