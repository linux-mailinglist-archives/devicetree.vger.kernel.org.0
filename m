Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 55CBD5171DF
	for <lists+devicetree@lfdr.de>; Mon,  2 May 2022 16:46:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245656AbiEBOu0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 May 2022 10:50:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231968AbiEBOuZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 May 2022 10:50:25 -0400
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com [IPv6:2607:f8b0:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEAD865BB
        for <devicetree@vger.kernel.org>; Mon,  2 May 2022 07:46:56 -0700 (PDT)
Received: by mail-pg1-x532.google.com with SMTP id x12so11847986pgj.7
        for <devicetree@vger.kernel.org>; Mon, 02 May 2022 07:46:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sH5HId0vlC1xFmCEMdsYdCLg1XTY++Kn19PHmHPWDzE=;
        b=Fj4fa9eKpis1H4ywew58SdhVIaslFKScO2M7KBemKi+uMMHRgjA1rfBTN+5Cyd6W4x
         +QlWVtWjykjZL8OCuu+DUF1JoXxzyPt0ebLiu7otFgHv9xTvO8lvAHDaeiq9cUKgJp32
         kXdYhQlWOGUgaZdvNntTV2VrH86fV9X/o3BN/v/sPLsgKdsAtwZ3sir2qtX8cnazNvIC
         lFVt4uoJmo7wrHkbsB/jnGWvEP73iSu02L+Hjcg5gWiqN0po5YAy2hMEbM4tWJtabdBR
         vTLun67wbqlKUG0ZGnik0MT77wptFARh3msmaRNBjjR7y6JkXW/rXPLY2pljiVodCdZv
         vitQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sH5HId0vlC1xFmCEMdsYdCLg1XTY++Kn19PHmHPWDzE=;
        b=UyWGk+znf1qvI7C0pmtdEMti6qYB8BU7LBas1lY96fCr+nMWnzzHVTkw6lJkAYc4/4
         PTh3TSNFCXKmwtcDOpzwpA7N+9BkCIBthv3REvwot/Ckb2cIkUlol8QHEg/zCzc1thUd
         Y1CH85bpxkgPZnbBm8D0ygxRevTDWxEPTGChTqn9cicoCVIh9CVqEz9Am5MyxWMWrCoS
         dZq2wOgokaBI408eltDWpBF23bmVrTGJtNt2z/LEa/WS7Qgt9xP3cuh+2oj2AyC6YHSE
         NyTKnmylfpOV0Fm6A9YkZHhn5wSVnJiGdWz4/lKEtLEowUZEizAzc0I9CG7zlRHHsc94
         hGlg==
X-Gm-Message-State: AOAM530atX3NNZG+Y2Sq1k2qFkhzaip8ftNO5L95V8YKVmDA33yhOW6n
        RISlayNrq/1zDTjoul/ElT5XoEJLRnl10mOHHx7sEw==
X-Google-Smtp-Source: ABdhPJzEj/u9Ig4lchzzzuxYohSp+/WQPurGWexw7b3W7kga8xhSNrUNKj50YZZn0wqp2tTiZB/MQI13j7jbN/Af5/Y=
X-Received: by 2002:a62:6d47:0:b0:4fe:15fa:301d with SMTP id
 i68-20020a626d47000000b004fe15fa301dmr11718975pfc.29.1651502816203; Mon, 02
 May 2022 07:46:56 -0700 (PDT)
MIME-Version: 1.0
References: <20220426193645.244792-1-marex@denx.de>
In-Reply-To: <20220426193645.244792-1-marex@denx.de>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Mon, 2 May 2022 16:46:45 +0200
Message-ID: <CAG3jFysWizvFkbMVexRqPC=5fDa3-VFnxS2zsvBKSKdL4zzxeg@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: display: bridge: ldb: Implement
 simple Freescale i.MX8MP LDB bridge
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org, Sam Ravnborg <sam@ravnborg.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Maxime Ripard <maxime@cerno.tech>, Peng Fan <peng.fan@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Robby Cai <robby.cai@nxp.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 26 Apr 2022 at 21:37, Marek Vasut <marex@denx.de> wrote:
>
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
> +
> +properties:
> +  compatible:
> +    const: fsl,imx8mp-ldb
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    const: ldb
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Video port for DPI input.
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Video port for LVDS Channel-A output (panel or bridge).
> +
> +      port@2:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Video port for LVDS Channel-B output (panel or bridge).
> +
> +    required:
> +      - port@0
> +      - port@1
> +
> +required:
> +  - compatible
> +  - clocks
> +  - ports
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8mp-clock.h>
> +
> +    blk-ctrl {
> +        bridge {
> +            compatible = "fsl,imx8mp-ldb";
> +            clocks = <&clk IMX8MP_CLK_MEDIA_LDB>;
> +            clock-names = "ldb";
> +
> +            ports {
> +                #address-cells = <1>;
> +                #size-cells = <0>;
> +
> +                port@0 {
> +                    reg = <0>;
> +
> +                    ldb_from_lcdif2: endpoint {
> +                        remote-endpoint = <&lcdif2_to_ldb>;
> +                    };
> +                };
> +
> +                port@1 {
> +                    reg = <1>;
> +
> +                    ldb_lvds_ch0: endpoint {
> +                        remote-endpoint = <&ldb_to_lvdsx4panel>;
> +                    };
> +                };
> +
> +                port@2 {
> +                    reg = <2>;
> +
> +                    ldb_lvds_ch1: endpoint {
> +                    };
> +                };
> +            };
> +        };
> +    };
> --

Applied series to drm-misc-next.
