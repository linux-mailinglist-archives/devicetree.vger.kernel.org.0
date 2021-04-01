Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 151EC351E88
	for <lists+devicetree@lfdr.de>; Thu,  1 Apr 2021 20:55:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236838AbhDASnI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Apr 2021 14:43:08 -0400
Received: from mail.cognitivepilot.com ([91.218.251.140]:30620 "EHLO
        mail.cognitivepilot.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238212AbhDASef (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Apr 2021 14:34:35 -0400
Received: from mail.cognitivepilot.com (localhost [127.0.0.1])
        by mail.cognitivepilot.com (Postfix) with ESMTP id 4FB5pL6XWbznf7qy
        for <devicetree@vger.kernel.org>; Thu,  1 Apr 2021 17:55:38 +0300 (MSK)
X-Virus-Scanned: amavisd-new at cognitivepilot.com
X-Spam-Flag: NO
X-Spam-Score: 5.346
X-Spam-Level: *****
X-Spam-Status: No, score=5.346 tagged_above=2 required=6.2
        tests=[FSL_HELO_NON_FQDN_1=0.001, HELO_NO_DOMAIN=3.099,
        RDNS_NONE=1.274, SPF_SOFTFAIL=0.972] autolearn=no autolearn_force=no
Received: from mail.cognitivepilot.com ([127.0.0.1])
        by mail.cognitivepilot.com (mail.cognitivepilot.com [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id 4GrTIx2me4-I for <devicetree@vger.kernel.org>;
        Thu,  1 Apr 2021 17:55:38 +0300 (MSK)
Received: from NervousEnergy (unknown [185.68.147.27])
        by mail.cognitivepilot.com (Postfix) with ESMTPS id 4FB5pK6lfJznWZSK;
        Thu,  1 Apr 2021 17:55:37 +0300 (MSK)
Date:   Thu, 1 Apr 2021 17:55:37 +0300
From:   Ivan Uvarov <i.uvarov@cognitivepilot.com>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Andre Przywara <andre.przywara@arm.com>,
        Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v3 3/4] dt-bindings: arm: add compatible strings for
 Forlinx OKA40i-C
Message-ID: <20210401175420.39b75553@NervousEnergy>
In-Reply-To: <20210401094001.sh3nvkj5psbdcig5@gilmour>
References: <20210331155616.793550-1-i.uvarov@cognitivepilot.com>
        <20210331155616.793550-4-i.uvarov@cognitivepilot.com>
        <20210401094001.sh3nvkj5psbdcig5@gilmour>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 1 Apr 2021 11:40:01 +0200
Maxime Ripard <maxime@cerno.tech> wrote:

> On Wed, Mar 31, 2021 at 06:56:15PM +0300, Ivan Uvarov wrote:
> > The OKA40i-C is a carrier/development board for the Forlinx
> > FETA40i-C SoM based on the Allwinner R40/A40i SoC.
> > 
> > This patch adds the relevant dt-binding documentation in
> > preparation for the next patch, which adds a devicetree for the SoM
> > and board.
> > 
> > Signed-off-by: Ivan Uvarov <i.uvarov@cognitivepilot.com>
> > 
> >  2 files changed, 8 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml
> > b/Documentation/devicetree/bindings/arm/sunxi.yaml index
> > 08607c7ec1..74f8decd78 100644 ---
> > a/Documentation/devicetree/bindings/arm/sunxi.yaml +++
> > b/Documentation/devicetree/bindings/arm/sunxi.yaml @@ -224,6
> > +224,12 @@ properties:
> >            - const: empire-electronix,m712
> >            - const: allwinner,sun5i-a13
> >  
> > +      - description: Forlinx OKA40i-C Development board
> > +        items:
> > +          - const: forlinx,oka40i-c
> > +          - const: forlinx,feta40i-c
> > +          - const: allwinner,sun8i-r40
> > +
> >        - description: FriendlyARM NanoPi A64
> >          items:
> >            - const: friendlyarm,nanopi-a64
> > diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > b/Documentation/devicetree/bindings/vendor-prefixes.yaml index
> > f6064d84a4..e2ea1a731e 100644 ---
> > a/Documentation/devicetree/bindings/vendor-prefixes.yaml +++
> > b/Documentation/devicetree/bindings/vendor-prefixes.yaml @@ -403,6
> > +403,8 @@ patternProperties: description: Firefly
> >    "^focaltech,.*":
> >      description: FocalTech Systems Co.,Ltd
> > +  "^forlinx,.*":
> > +    description: Baoding Forlinx Embedded Technology Co., Ltd.
> >    "^frida,.*":
> >      description: Shenzhen Frida LCD Co., Ltd.
> >    "^friendlyarm,.*":
> > -- 
> > 2.25.1  
> 
> This part needs to be in a separate patch too
> 
> Maxime
> 

As in, a separate patch for just the vendor prefix?

--
Regards,
Ivan Uvarov
