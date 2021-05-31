Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 784E1395714
	for <lists+devicetree@lfdr.de>; Mon, 31 May 2021 10:36:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230299AbhEaIie (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 May 2021 04:38:34 -0400
Received: from foss.arm.com ([217.140.110.172]:51258 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230315AbhEaIie (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 31 May 2021 04:38:34 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 96AE56D;
        Mon, 31 May 2021 01:36:54 -0700 (PDT)
Received: from bogus (unknown [10.57.72.241])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 228D03F73D;
        Mon, 31 May 2021 01:36:52 -0700 (PDT)
Date:   Mon, 31 May 2021 09:36:47 +0100
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Cristian Marussi <cristian.marussi@arm.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>
Subject: Re: [PATCH 7/8] dt-bindings: firmware: amlogic,scpi: Convert to json
 schema
Message-ID: <20210531083647.w4caop4v6vjpo2i2@bogus>
References: <20210526182807.548118-1-sudeep.holla@arm.com>
 <20210526182807.548118-8-sudeep.holla@arm.com>
 <20210527203327.GA1356362@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210527203327.GA1356362@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 27, 2021 at 03:33:27PM -0500, Rob Herring wrote:
> On Wed, May 26, 2021 at 07:28:06PM +0100, Sudeep Holla wrote:
> > Convert/merge the existing text format SCPI binding additions for
> > amlogic,scpi into the common arm,scpi json scheme.
> >
> > Couple of things to note:
> > "amlogic,meson-gxbb-scpi" is always used with "arm,scpi-pre-1.0"
> >  hence no need for separate "arm,scpi-pre-1.0" standalone entry and
> > "amlogic,meson-gxbb-scpi-sensors" is used always with "arm,scpi-sensors"
> >
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Kevin Hilman <khilman@baylibre.com>
> > Cc: Neil Armstrong <narmstrong@baylibre.com>
> > Cc: Jerome Brunet <jbrunet@baylibre.com>
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > ---
> >  .../devicetree/bindings/arm/amlogic,scpi.txt      | 15 ---------------
> >  .../devicetree/bindings/firmware/arm,scpi.yaml    |  4 ++++
> >  2 files changed, 4 insertions(+), 15 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/arm/amlogic,scpi.txt
> >
> > diff --git a/Documentation/devicetree/bindings/arm/amlogic,scpi.txt b/Documentation/devicetree/bindings/arm/amlogic,scpi.txt
> > deleted file mode 100644
> > index ebfe302fb747..000000000000
> > --- a/Documentation/devicetree/bindings/arm/amlogic,scpi.txt
> > +++ /dev/null
> > @@ -1,15 +0,0 @@
> > -System Control and Power Interface (SCPI) Message Protocol
> > -(in addition to the standard binding in [0])
> > -----------------------------------------------------------
> > -Required properties
> > -
> > -- compatible : should be "amlogic,meson-gxbb-scpi"
> > -
> > -Sensor bindings for the sensors based on SCPI Message Protocol
> > ---------------------------------------------------------------
> > -SCPI provides an API to access the various sensors on the SoC.
> > -
> > -Required properties:
> > -- compatible : should be "amlogic,meson-gxbb-scpi-sensors".
> > -
> > -[0] Documentation/devicetree/bindings/arm/arm,scpi.txt
> > diff --git a/Documentation/devicetree/bindings/firmware/arm,scpi.yaml b/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
> > index 9c115e9c1536..d1179a4ea4e9 100644
> > --- a/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
> > +++ b/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
> > @@ -34,6 +34,7 @@ description: |
> >            to SCPI v1.0
> >          items:
> >            - const: arm,scpi-pre-1.0
> > +          - const: amlogic,meson-gxbb-scpi
>
> This says that compatible should be: "arm,scpi-pre-1.0", "amlogic,meson-gxbb-scpi"
>
> The order would be wrong and you lost supporting 'arm,scpi-pre-1.0' by
> itself. You want an enum here if it is either one or another items list
> if it is 2 entries.
>

Ah right, I checked about the order and then forgot to update. The idea when
I wrote this was not to support arm,scpi-pre-1.0 by itself but recent found
some other user of SCPI binding. I better keep the support though it is not
in upstream DTS.

--
Regards,
Sudeep
