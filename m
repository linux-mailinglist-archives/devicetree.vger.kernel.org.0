Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EF1113879C3
	for <lists+devicetree@lfdr.de>; Tue, 18 May 2021 15:21:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239466AbhERNWm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 May 2021 09:22:42 -0400
Received: from mail-oi1-f178.google.com ([209.85.167.178]:41648 "EHLO
        mail-oi1-f178.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239145AbhERNWl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 May 2021 09:22:41 -0400
Received: by mail-oi1-f178.google.com with SMTP id c3so9718457oic.8
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 06:21:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=u+wN1H4CiOq/deGj0uJD8MCy7BhsRO561PN/y6kBixo=;
        b=qe115lbq1fx1M/gKL1JPhItIGyhePNOVNlvWISjHvRVX9Q5L4yrI2iIoISm6C5fIjc
         ixwkrL4GqGIz3ePuzC2f7tkn1f6Z0t28si79xwbrtGrTcXHboQ1N23/wmqXEbkeLZR1O
         D+aNGl/iv8pXsPmpNWbXpo+w11xASeB97ESvbs7AfG+a7L59Lk7apz1kGwIcVUYjl8GQ
         boadxXcyuUOg/EN4+EVBxrwGlrHShfHFw/ug6nVaP7yOr/7iAz89qpVFA6EUki415Y3p
         w+EgV4NDjksfnEBJemgndIkJ6ND9nSG8uSob1hx22yfC9yqCSFFrBq6Xof+mYnZnz4mB
         pfZw==
X-Gm-Message-State: AOAM5309HzxzsZn0tZXB6ueQ9g+N3Ud1PAUpOSzeSgom3MjI5E49UiHg
        Xz45XCaxdVijzGqgC0j51Q==
X-Google-Smtp-Source: ABdhPJzfBHQ7VoQgiEFOmE1+YMwi0t+QqNadLu2n4/RcHyI1SltKiBCKlWZ2rzE8A8SXpn01ZUuu2w==
X-Received: by 2002:a05:6808:8cd:: with SMTP id k13mr3997317oij.156.1621344081680;
        Tue, 18 May 2021 06:21:21 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id d185sm3413682oib.25.2021.05.18.06.21.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 May 2021 06:21:21 -0700 (PDT)
Received: (nullmailer pid 526193 invoked by uid 1000);
        Tue, 18 May 2021 13:21:19 -0000
Date:   Tue, 18 May 2021 08:21:19 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org, ch@denx.de,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Antonio Borneo <antonio.borneo@st.com>,
        Benjamin Gaignard <benjamin.gaignard@st.com>,
        Biju Das <biju.das.jz@bp.renesas.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Philippe Cornu <philippe.cornu@st.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Vincent Abriou <vincent.abriou@st.com>,
        Yannick Fertre <yannick.fertre@st.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH V4 1/2] dt-bindings: display: bridge: lvds-codec:
 Document pixel data sampling edge select
Message-ID: <20210518132119.GA492897@robh.at.kernel.org>
References: <20210515204317.366967-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210515204317.366967-1-marex@denx.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, May 15, 2021 at 10:43:15PM +0200, Marek Vasut wrote:
> The OnSemi FIN3385 Parallel-to-LVDS encoder has a dedicated input line to
> select input pixel data sampling edge. Add DT property "pclk-sample", not
> the same as the one used by display timings but rather the same as used by
> media, to define the pixel data sampling edge.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Andrzej Hajda <a.hajda@samsung.com>
> Cc: Antonio Borneo <antonio.borneo@st.com>
> Cc: Benjamin Gaignard <benjamin.gaignard@st.com>
> Cc: Biju Das <biju.das.jz@bp.renesas.com>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Philippe Cornu <philippe.cornu@st.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Vincent Abriou <vincent.abriou@st.com>
> Cc: Yannick Fertre <yannick.fertre@st.com>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> To: dri-devel@lists.freedesktop.org
> ---
> V4: New patch split from combined V3
> ---
>  .../bindings/display/bridge/lvds-codec.yaml    | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
> index 304a1367faaa..f4dd16bd69d2 100644
> --- a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
> @@ -64,6 +64,14 @@ properties:
>        - port@0
>        - port@1
>  
> +  pclk-sample:
> +    description:
> +      Data sampling on rising or falling edge.
> +    enum:
> +      - 0  # Falling edge
> +      - 1  # Rising edge
> +    default: 0

This is already defined in video-interfaces.yaml, why are you redefining 
it here?

It's also defined to be an endpoint property, so move it there and 
reference video-interfaces.yaml.

> +
>    powerdown-gpios:
>      description:
>        The GPIO used to control the power down line of this device.
> @@ -71,6 +79,16 @@ properties:
>  
>    power-supply: true
>  
> +if:
> +  not:
> +    properties:
> +      compatible:
> +        contains:
> +          const: lvds-encoder
> +then:
> +  properties:
> +    pclk-sample: false

This constraint would be difficult to express with the property in an 
endpoint. I'd just drop it.

Rob
