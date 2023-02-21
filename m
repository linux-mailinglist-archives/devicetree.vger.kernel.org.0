Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E660D69DEF7
	for <lists+devicetree@lfdr.de>; Tue, 21 Feb 2023 12:37:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234149AbjBULh6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Feb 2023 06:37:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234170AbjBULh4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Feb 2023 06:37:56 -0500
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2125426869
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 03:37:43 -0800 (PST)
Received: by mail-ed1-x52d.google.com with SMTP id g1so15650275edz.7
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 03:37:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=b3giO+r2popIm1oll4LM9l15/2T1iWfGy9yTjFyqedM=;
        b=BJix9Ib3J8P8E2H6/ZcIc9et7JHruyqg71shp6ZsL+VbRXLIcOd6sQYDNfjkBtcjzG
         JZWVeNXhWq+sgCnGVXc5XvOqovQUcKXqsFbc/K9NX0sMcS+x3F89Ae8HPI459jgwjGHS
         MsJKEYTcsCuiDYUpWT+p0FBfXYv8LJSTSUDNDHTTP1lAIg00xkvRdPOxaWP9yx1cIa25
         rSV/boSTwV+54FYyOLw+wvsbe0V08Dfjtin85npV/bh2JcE0f3fIQhvKyAHWuZUzTEbx
         BUBRMeXDWtXl9vcqvOH/ogcUyW5sBWt8sgWI9kwvrDlikfQNvS5Mv9l9ptvp3Vq+sk89
         lOGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b3giO+r2popIm1oll4LM9l15/2T1iWfGy9yTjFyqedM=;
        b=LOA3Tj3eg3lb/oomKoRIUEmBB7+lyhuFTZ+9t1y+oH6rIyrxPCDChNKixa00bfiaoO
         hhrgLbYaosCr+3T/UTYtaw4k/ZvyXh4R+ICQDipxsayY81+Z7W08X26Yb7vOAhf1sALk
         XH6FecQc8dAQmjUMfET3tuTXnWrDJA+MYhmIev3DC94XF0pnpyWDD44gj2XGeXUyBUcD
         WCn4UbYJ2l1ILPhMsfY+UGDPMFF/mfSo95m+qFRhZCSYVSvMHRxrbuLABx0vOjAqsL58
         vPV3yvyy+6mQ4z3/voSyHDW0c/H/eISfyy1k4xyD2HGS3K2rlk+0+N/8HJEJm18akPvi
         xMjA==
X-Gm-Message-State: AO0yUKV4e5AJiUMTUtuq/CmudO3aJPcYadIrHtrAqZqrNh2v3IMt+jgX
        M9DSIcEuU/csxGHtUcMcbejC2Q==
X-Google-Smtp-Source: AK7set84xkBelkMy79NBCa0so0dIuGCWkoKNyvcKs7Q69fGLNNK7SSXmGCK9KVAOjVH9tPTL4xKhJg==
X-Received: by 2002:aa7:de98:0:b0:4ab:eac:30f2 with SMTP id j24-20020aa7de98000000b004ab0eac30f2mr3564835edv.18.1676979456078;
        Tue, 21 Feb 2023 03:37:36 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id u13-20020aa7d88d000000b004ab4c28a967sm1789572edq.44.2023.02.21.03.37.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Feb 2023 03:37:35 -0800 (PST)
Message-ID: <c580c81e-4c9b-7115-a1f3-a90b29d54c9b@linaro.org>
Date:   Tue, 21 Feb 2023 12:37:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 2/4] dt-bindings: soc: imx8mp-media-blk-ctrl: Add LDB
 into DT example
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc:     Liu Ying <victor.liu@nxp.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
References: <20230220035051.327847-1-marex@denx.de>
 <20230220035051.327847-2-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230220035051.327847-2-marex@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/02/2023 04:50, Marek Vasut wrote:
> Document the LDB bridge subnode and add the subnode into the example.
> For the subnode to work, the block control must scan its subnodes and
> bind drivers to them, do not misuse either simple-bus or simple-mfd
> here .

Drop space before full stop.

Your subject is a bit imprecise. Main feature here is adding LDB child,
not to the example but to the schema.

> 
> Reviewed-by: Liu Ying <victor.liu@nxp.com>
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Paul Elder <paul.elder@ideasonboard.com>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Richard Cochran <richardcochran@gmail.com>
> Cc: Richard Zhu <hongxing.zhu@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> ---
> V2: Add RB from Liu
> ---
>  .../soc/imx/fsl,imx8mp-media-blk-ctrl.yaml    | 51 +++++++++++++++++++
>  1 file changed, 51 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> index 71deebe902d52..61e6bc731bbb5 100644
> --- a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> +++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> @@ -23,6 +23,12 @@ properties:
>    reg:
>      maxItems: 1
>  
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 1
> +
>    '#power-domain-cells':
>      const: 1
>  
> @@ -78,9 +84,16 @@ properties:
>        - const: isp1
>        - const: dwe
>  
> +  bridge@5c:
> +    type: object
> +    $ref: /schemas/display/bridge/fsl,ldb.yaml#
> +    unevaluatedProperties: false
> +
>  required:
>    - compatible
>    - reg
> +  - '#address-cells'
> +  - '#size-cells'
>    - '#power-domain-cells'
>    - power-domains
>    - power-domain-names
> @@ -114,5 +127,43 @@ examples:
>          clock-names = "apb", "axi", "cam1", "cam2", "disp1", "disp2",
>                        "isp", "phy";
>          #power-domain-cells = <1>;
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +
> +        bridge@5c {
> +            compatible = "fsl,imx8mp-ldb";
> +            clocks = <&clk IMX8MP_CLK_MEDIA_LDB>;
> +            clock-names = "ldb";
> +            reg = <0x5c 0x4>, <0x128 0x4>;
> +            reg-names = "ldb", "lvds";

Usually reg (and reg-names) is the second property, although depends on
the soc subarch coding style.

Anyway, with full-stop fix:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

