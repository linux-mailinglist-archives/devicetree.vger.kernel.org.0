Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4E9D848788A
	for <lists+devicetree@lfdr.de>; Fri,  7 Jan 2022 14:51:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347680AbiAGNu7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jan 2022 08:50:59 -0500
Received: from mx1.tq-group.com ([93.104.207.81]:60938 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1347679AbiAGNu5 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 7 Jan 2022 08:50:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1641563456; x=1673099456;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=D3ZeXQFnuKc/DhNBleBquRrkXlPC75Rm6tkHp7pWW80=;
  b=Z+OwCEXUuFq58O8jnH2cqqdntY6vPTfMeEn9bQmrrYOmyecaoTTdeeC0
   nP7UNoUvFmVY4ZeDy+bW+6tT5hWvHWGaFmXrcTOefWplQyio01bBi5Wu2
   ChE+7KAD2bAX0uAvmEIx5Zu4hzAtCmEQlAIvlDyT3QXr4ROiYOiSicopQ
   fJV95dKqn4j5djhBlE2jNenNiSs7z7FYDTrFmwnP5vzWHcHQJ8sRfuPC0
   B5GLfEaEKgh5xQPUgAA64dl/IJ5QcDftluokLM8f0mpdRhSEaiXEGA/Pu
   Vm4cURGEppcRODtaoKtCkiogh8P4EKb7RP8+o4/o2FGFOVubSOUN00jT+
   g==;
X-IronPort-AV: E=Sophos;i="5.88,270,1635199200"; 
   d="scan'208";a="21379106"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 07 Jan 2022 14:50:55 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Fri, 07 Jan 2022 14:50:56 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Fri, 07 Jan 2022 14:50:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1641563455; x=1673099455;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=D3ZeXQFnuKc/DhNBleBquRrkXlPC75Rm6tkHp7pWW80=;
  b=FF2wLpIzx//CIpC7GvbazYL6TrJ0u3GjsdDlbGLQpLYrGIY6tviIHBqm
   2/+qpK8YZ/7EFP4MQsXEC0P4WWX6se6SWXHj/zduPQ+nsC9VJH1s8mKPT
   A3UlQTWGAtT/si4AiPhs4l3V38Dcn2ulYFsAN4DCbsBFc1mbghabo1pXw
   pfndWB4bHJXPmIWcOTaGQYNfTBk9mylTr25xH8GWC1/GrOUFVLNW8Bp1B
   ICBpAai9BrgzaQlCvg+bNEJOYiccibRRvdHLqOaAFFTooWWiKbvp6We2L
   HvFbVHDUmg5FuVVUgzDZaKwVDfTLy5enJ1dax883rVGofbX6tRpFQJuyS
   g==;
X-IronPort-AV: E=Sophos;i="5.88,270,1635199200"; 
   d="scan'208";a="21379105"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 07 Jan 2022 14:50:55 +0100
Received: from steina-w.localnet (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 7BE67280065;
        Fri,  7 Jan 2022 14:50:55 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>
Subject: Re: (EXT) Re: [PATCH v2 1/3] dt-bindings: phy: imx8mq-usb-phy: Add imx8mp specific flags
Date:   Fri, 07 Jan 2022 14:50:55 +0100
Message-ID: <2245006.irdbgypaU6@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <YcIICIKjbgEn0I+P@robh.at.kernel.org>
References: <20211216160541.544974-1-alexander.stein@ew.tq-group.com> <20211216160541.544974-2-alexander.stein@ew.tq-group.com> <YcIICIKjbgEn0I+P@robh.at.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

thanks for the review.

Am Dienstag, 21. Dezember 2021, 17:59:52 CET schrieb Rob Herring:
> On Thu, Dec 16, 2021 at 05:05:39PM +0100, Alexander Stein wrote:
> > This adds bindings for features only available on imx8mp. They allow
> > setting polarity of PWR and OC as well as disabling port power control.
> > Also permanently atteched can be annotated as well.
> > 
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > ---
> > Adding properties specific to one compatible globally and disabling them
> > on
> > other compatibles is the way to go?
> > 
> > Are there any best practices on the usage of '-' and/or '_' in property
> > names?
> Yes, don't use '_'.

Alright, got it.

> >  .../bindings/phy/fsl,imx8mq-usb-phy.yaml      | 52 ++++++++++++++++++-
> >  1 file changed, 51 insertions(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
> > b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml index
> > 2936f3510a6a..1d28b7d1c413 100644
> > --- a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
> > 
> > @@ -16,7 +16,8 @@ properties:
> >        - fsl,imx8mp-usb-phy
> >    
> >    reg:
> > -    maxItems: 1
> > +    minItems: 1
> > +    maxItems: 2
> > 
> >    "#phy-cells":
> >      const: 0
> > 
> > @@ -32,6 +33,28 @@ properties:
> >      description:
> >        A phandle to the regulator for USB VBUS.
> > 
> > +  fsl,permanently-attached:
> > +    type: boolean
> > +    description:
> > +      Indicates if the device atached to a downstream port is
> > +      permanently attached.
> 
> Wouldn't just describing the downstream device be enough to indicate
> this? Though that is in the host controller rather than the phy.

You mean describing the downstream hub in device tree? I guess you are 
thinking about Documentation/devicetree/bindings/usb/usb-device.yaml, no?
I'll try using this.

This flag (and the others below) are used to set some specific flag in the 
host controller (not the PHY, see Li Jun's response). But I have to admit I do 
not know what they actually do. The description is pretty much everything 
written in the reference manual.

> > +
> > +  fsl,disable-port-power-control:
> > +    type: boolean
> > +    description:
> > +      Indicates whether the host controller implementation includes port
> > +      power control. Defines Bit 3 in capability register (HCCPARAMS).
> > +
> > +  fsl,over-current-active-low:
> > +    type: boolean
> > +    description:
> > +      Over current signal polarity is active low.
> > +
> > +  fsl,power-active-low:
> > +    type: boolean
> > +    description:
> > +      Power pad (PWR) polarity is active low.
> > +
> > 
> >  required:
> >    - compatible
> >    - reg
> > 
> > @@ -39,6 +62,33 @@ required:
> >    - clocks
> >    - clock-names
> > 
> > +if:
> > +  properties:
> > +    compatible:
> > +      contains:
> > +        enum:
> > +          - fsl,imx8mp-usb-phy
> > +
> > +then:
> > +  properties:
> > +    reg:
> > +      minItems: 2
> > +      maxItems: 2
> > +      items:
> > +        - description: PHY register base address
> > +        - description: Glue layer base address
> 
> Move 'items' to the top level and then here you only need 'minItems: 2'.
> 
> > +
> > +else:
> > +  properties:
> > +    reg:
> > +      maxItems: 1
> > +      items:
> > +        - description: PHY register base address
> 
> And just 'maxItems' here.

Thanks for the hints on how to write bindings, still fiddling with it.

Best regards,
Alexander



