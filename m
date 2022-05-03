Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E73B3517B45
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 02:37:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229835AbiECAjL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 May 2022 20:39:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229615AbiECAjK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 May 2022 20:39:10 -0400
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A26D3123E
        for <devicetree@vger.kernel.org>; Mon,  2 May 2022 17:35:39 -0700 (PDT)
Received: by mail-ot1-x32a.google.com with SMTP id 31-20020a9d0822000000b00605f1807664so7699318oty.3
        for <devicetree@vger.kernel.org>; Mon, 02 May 2022 17:35:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=+xfMK+H0fMuHQUoosTVVx54TR5npSCucc917CZi8x0M=;
        b=CAAz80CxdszDvmehMrhduHFB2F3WRsscNTx9ZqFPsFgcrd9kvfc0SHOx5P+xG6uulf
         oFeDOdVTXaqnoCAJtaYRgGuIG+QWHgRtcduq/O2XXG8/68JRvsdT4SHVaEB/mvgmIyxc
         Avipk3qlKWgenh0UpvBU06zOkbhLigqgEeU8y5fPY7wTzch41uwdcydVKHtXBLvQAv2o
         dHjb3L+TPH/OaVk9g6g2u3lKtxdvWkj+BzIrGFiDEw2XwUlMAIlOegpg0oPjpMVhfWSY
         xCGl61cp18M8TZuJsmYY8VdGk1LuSuKOmLlmLO5Tqg+W98sGp+7qTZhp3n6N+SiEKn96
         DZaw==
X-Gm-Message-State: AOAM531UQKLnzxl8+wRvxBd275dtsLZ/Edb9vB/gvhdA52qysgIXhTYV
        jWfU+uFLy9UjW9Ekj8XI45SjdPStvQ==
X-Google-Smtp-Source: ABdhPJyjDNQqFMKGWqkJAvrDnu1nt8BBWu2t1EZWDLhtEOFilJTPAKhjY8JokBsqlIXd/7+bhWxHMg==
X-Received: by 2002:a05:6830:19f3:b0:605:fd48:7fed with SMTP id t19-20020a05683019f300b00605fd487fedmr5155994ott.382.1651537876978;
        Mon, 02 May 2022 17:31:16 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id b21-20020a056870b25500b000eba4901e57sm3933451oam.17.2022.05.02.17.31.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 May 2022 17:31:16 -0700 (PDT)
Received: (nullmailer pid 2111272 invoked by uid 1000);
        Tue, 03 May 2022 00:31:15 -0000
Date:   Mon, 2 May 2022 19:31:15 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org, robert.foss@linaro.org,
        Sam Ravnborg <sam@ravnborg.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Maxime Ripard <maxime@cerno.tech>, Peng Fan <peng.fan@nxp.com>,
        Robby Cai <robby.cai@nxp.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: display: bridge: ldb: Implement
 simple Freescale i.MX8MP LDB bridge
Message-ID: <YnB3008DXAVoUK7j@robh.at.kernel.org>
References: <20220426193645.244792-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220426193645.244792-1-marex@denx.de>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Apr 26, 2022 at 09:36:44PM +0200, Marek Vasut wrote:
> The i.MX8MP contains two syscon registers which are responsible
> for configuring the on-SoC DPI-to-LVDS serializer. Add DT binding
> which represents this serializer as a bridge.
> 
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Maxime Ripard <maxime@cerno.tech>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Robby Cai <robby.cai@nxp.com>
> Cc: Robert Foss <robert.foss@linaro.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org
> ---
> V2: - Consistently use fsl,imx8mp-ldb as compatible
>     - Drop items: from compatible:
>     - Replace minItems with maxItems in clocks:
>     - Drop quotes from clock-names const: ldb
>     - Rename syscon to fsl,syscon
>     - Use generic name of ldb-lvds in example
> V3: - Add AB from Sam
>     - Consistently use MX8MP
> V4: - Rename to fsl-ldb all over the place
>     - Put the LDB node under media block controller in the example
> ---
>  .../bindings/display/bridge/fsl,ldb.yaml      | 92 +++++++++++++++++++
>  1 file changed, 92 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml

A little quick on the applying...

> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
> new file mode 100644
> index 000000000000..77f174eee424
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
> @@ -0,0 +1,92 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/fsl,ldb.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX8MP DPI to LVDS bridge chip
> +
> +maintainers:
> +  - Marek Vasut <marex@denx.de>
> +
> +description: |
> +  The i.MX8MP mediamix contains two registers which are responsible
> +  for configuring the on-SoC DPI-to-LVDS serializer. This describes
> +  those registers as bridge within the DT.

This is a subblock of the mediamix? Please add 'reg' for the 2 registers 
even if you use a regmap.

I didn't find a binding for mediamix. You really need the containing 
block binding before a child node.

Rob
