Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 74F96286291
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 17:50:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728020AbgJGPuS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Oct 2020 11:50:18 -0400
Received: from mail-oi1-f193.google.com ([209.85.167.193]:33496 "EHLO
        mail-oi1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727005AbgJGPuS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Oct 2020 11:50:18 -0400
Received: by mail-oi1-f193.google.com with SMTP id m7so2970399oie.0
        for <devicetree@vger.kernel.org>; Wed, 07 Oct 2020 08:50:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=D5KWBh7Ei3kmnrVZuM450juFCzki8BlotX/BN8/qul0=;
        b=c07adBW+Zo3prJLfAuKN72kSfrV2BPCChueZ+V+i4ju1aAFV3ffWJdUlEECows625r
         iZu4daX9nTg16L4F38YgKhqn+jwG6gBNOAigUuNPdK8R7cjuJg/C8Op/wzkjKd/E2S2e
         lnGMryc88k9POTsvPseaaNDAHaOVauA/o4ifbElyUsB0vuzUe6xSp16608SrG5/wQ2Fy
         VxNxliR/kKyTXmbe/tdmbio42Msuh6e0kTWEZ/oeJhHykCHBx9adto1Y0E3L636oucgc
         fq/QZ/K4t/Yyz6wbMXDRlsgz5voyDyIgoQJPYDR+GY3uDaIAIlksq9TJmfDWw2jD1vot
         308A==
X-Gm-Message-State: AOAM531N6M8P1uH5iiPUMQc2Dni7V4ZL+RihjRMhFmESg5FxHwFtA69f
        iLFLKSRVuQEm7s7Oa89/hg==
X-Google-Smtp-Source: ABdhPJyl7BipVAGLelkc9Q7hU5yKjIoyNaSSYdipMgfJ93hqu78A/Bx52m6isWRUHb4rHFet/6YLQg==
X-Received: by 2002:aca:30d4:: with SMTP id w203mr2197032oiw.64.1602085817319;
        Wed, 07 Oct 2020 08:50:17 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id j75sm2175630oih.10.2020.10.07.08.50.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Oct 2020 08:50:16 -0700 (PDT)
Received: (nullmailer pid 283939 invoked by uid 1000);
        Wed, 07 Oct 2020 15:50:15 -0000
Date:   Wed, 7 Oct 2020 10:50:15 -0500
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Chen-Yu Tsai <wens@csie.org>, dri-devel@lists.freedesktop.org,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH RESEND v3 2/6] dt-bindings: display: sun4i: Add LVDS
 Dual-Link property
Message-ID: <20201007155015.GA281983@bogus>
References: <cover.6cdb798a6b393c8faa9c1297bbdfb8db81238141.1601910923.git-series.maxime@cerno.tech>
 <2bc93c7c1d3121730239a01dda9c30dcf4e353b0.1601910923.git-series.maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2bc93c7c1d3121730239a01dda9c30dcf4e353b0.1601910923.git-series.maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 05, 2020 at 05:15:40PM +0200, Maxime Ripard wrote:
> The Allwinner SoCs with two TCONs and LVDS output can use both to drive an
> LVDS dual-link. Add a new property to express that link between these two
> TCONs.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
> index e5344c4ae226..ce407f5466a5 100644
> --- a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
> +++ b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
> @@ -115,6 +115,12 @@ properties:
>          - const: edp
>          - const: lvds
>  
> +  allwinner,lvds-companion:

We already have 1 vendor property for this. How about 'link-companion' 
for something common.

Rob
