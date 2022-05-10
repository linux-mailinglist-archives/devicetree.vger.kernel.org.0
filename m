Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED09252221E
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 19:15:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244049AbiEJRTa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 May 2022 13:19:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244232AbiEJRT2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 May 2022 13:19:28 -0400
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62AC52BF314
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 10:15:31 -0700 (PDT)
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-edf9ddb312so18137557fac.8
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 10:15:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=U4enf849MalZJ94BbtP5EjviZoqMa/mYSymuWO+hQes=;
        b=Un2M/BM3JgVH6kKKhL6u7Mxj3f99Xjin1PP7EoN0ZzCykrivVoFTHghR+88bnn4jdk
         1iky6X4ragozD4a7JDHraeV5QBEtg2Y+OL1M2DkF+efF24ErqlSY+vbOdJL4yixG2GcH
         SXazme4vhXc3qS6/EBIvc0U1GCnYjrfbx3Uf4NoKgPruwf3I7EmgNQHxV3Am1vH/D9Ho
         K/ZS40xHfmKpnb5X6l09p/RttsKtLDEqMp8/Q/xvX7xluuNAV7cOIOIT14Jb33++rt3u
         EYUWFjRkgZK8o8FAqlpWnKnZ5PWd0jBwAKP9KM7/B9d0jG5IVnZSIuFJMFCUsAPd/OK+
         /yfw==
X-Gm-Message-State: AOAM532eAS3anlNJnaRvbc3Yp9TBe1dBF2fFUB2tCbHhPW5ArEw7V9BO
        X+WSTaK00Rb2AuZj7kz56G+FsDG4eQ==
X-Google-Smtp-Source: ABdhPJwPVMnLqdMiqMekoFO1BpTerz9mA5hoHbPcCejjGrX5ztBsVFiV9PTz4T6oBBl8FMJlcsz0+A==
X-Received: by 2002:a05:6871:889:b0:ed:daa1:d08 with SMTP id r9-20020a056871088900b000eddaa10d08mr641546oaq.256.1652202930679;
        Tue, 10 May 2022 10:15:30 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id m33-20020a056870562100b000edf80be4ecsm5667586oao.58.2022.05.10.10.15.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 May 2022 10:15:30 -0700 (PDT)
Received: (nullmailer pid 2222946 invoked by uid 1000);
        Tue, 10 May 2022 17:15:29 -0000
Date:   Tue, 10 May 2022 12:15:29 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: display: rockchip: make reg-names
 mandatory for VOP2
Message-ID: <YnqdsbYk+XzkVLe9@robh.at.kernel.org>
References: <20220510070914.2346011-1-s.hauer@pengutronix.de>
 <20220510070914.2346011-2-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220510070914.2346011-2-s.hauer@pengutronix.de>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 10, 2022 at 09:09:12AM +0200, Sascha Hauer wrote:
> The VOP2 driver relies on reg-names properties, but these are not
> documented. Add the missing documentation, make reg-names mandatory
> and increase minItems to 2 as always both register spaces are needed.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../bindings/display/rockchip/rockchip-vop2.yaml          | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> index 655d9b327f7d3..7238cdec9eb8a 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> @@ -22,7 +22,7 @@ properties:
>        - rockchip,rk3568-vop
>  
>    reg:
> -    minItems: 1
> +    minItems: 2

You ran the dt checks, right? This should give you a warning. The 
correct thing is drop minItems if there's always 2 entries.

>      items:
>        - description:
>            Must contain one entry corresponding to the base address and length
> @@ -31,6 +31,11 @@ properties:
>            Can optionally contain a second entry corresponding to
>            the CRTC gamma LUT address.
>  
> +  reg-names:
> +    items:
> +      - const: vop
> +      - const: gamma-lut
> +
>    interrupts:
>      maxItems: 1
>      description:
> @@ -86,6 +91,7 @@ properties:
>  required:
>    - compatible
>    - reg
> +  - reg-names
>    - interrupts
>    - clocks
>    - clock-names
> -- 
> 2.30.2
> 
> 
