Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 03C32650C63
	for <lists+devicetree@lfdr.de>; Mon, 19 Dec 2022 14:05:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231720AbiLSNFG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Dec 2022 08:05:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231158AbiLSNFF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Dec 2022 08:05:05 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 745C11151
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 05:05:03 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id bf43so13537487lfb.6
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 05:05:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uEl6FOWuKZ6UAvDbu88RJHguk6sS9ZMQHT6dYgluwo8=;
        b=R/5PgBXYN7w1BEUCUag9ctmn2yHfIYDc+7U39SyBATEkLrp1YnFu2oN66OukgektU/
         mbno7A9xcaWtKv9gWhNdsBdyYtoapM6RAYvSUtNC8ptvyQC7HngaSIT5/bUD8TFhnsva
         SpPT27ILprpmZUHuijYB1j5Lng7rDSDxlR/VIm3s7yNcMIR2OpzEDgdlVPd9Hg/tC84Z
         bipcn9Cr4tA+hZsFOoaIFW6PCI1VMpaGbJvj/GDEG522BbqhyTecbt9rDohQgQuldaCg
         AibJcJlF23LXi5pvb/QVwNQjhK6avWxKxXUVw46FIbFZ1ApZ+DgW6y6RE7Kq04zs2Gcf
         QPaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uEl6FOWuKZ6UAvDbu88RJHguk6sS9ZMQHT6dYgluwo8=;
        b=QEgUJDmmNa0NH0v2ciLZoNQGGhh0kpP26ax8GL9d5muGlktNXhFW/YKEu9nn+HAozA
         e/hzHKnvucxGdtFC9+4imO9ivawTvP7GjetJTwJ+F+XMyFWYZDHPEaflPtRUfIfcdkBW
         yGiBu0r1lU+LkybrnAcrfO+ywA8Mhx7Ho+Mmlxf4mbgK1EGTAkpqWYDwTfdpZ3P5Ctfa
         bNwVsxYSb9HJeu5ZOL4YXvnFGtIfRXy97ldUpHMwptWm0LyrA8jeQuK/Nbr2aG2nKf7c
         4qr+/+sbyZ4c0i1022mOCFeM3o0AzRvg/UxIAsmwFQrTKt1su1VuTJb9/1h9ZLLVE/39
         iglw==
X-Gm-Message-State: ANoB5pmcwAyIfOPb0EQn4uTN2zN6lauz5Oa12N12yS8UzxfmdTlnKk8m
        dYl1xVfFax6HGX3iOL/+a5jmvA==
X-Google-Smtp-Source: AA0mqf4f6yLjzCLg63fIkw03LtleqxYyfk7pE3QJAm9UmsEgN4eh100In7UsKiQD/PwDJArNOWxX6g==
X-Received: by 2002:a19:e051:0:b0:4b5:b7be:136b with SMTP id g17-20020a19e051000000b004b5b7be136bmr10806206lfj.69.1671455101743;
        Mon, 19 Dec 2022 05:05:01 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id z11-20020a056512370b00b004b4f1ea713csm1097577lfr.73.2022.12.19.05.04.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Dec 2022 05:05:00 -0800 (PST)
Message-ID: <8db62d1a-365c-d41d-90aa-4c78c5d5e9ce@linaro.org>
Date:   Mon, 19 Dec 2022 14:04:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3] dt-bindings: display: rockchip: convert
 rockchip-lvds.txt to YAML
To:     Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Cc:     hjc@rock-chips.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, airlied@gmail.com,
        daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <fd51df66-147d-d40f-913e-385625a71984@gmail.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <fd51df66-147d-d40f-913e-385625a71984@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/12/2022 13:32, Johan Jonker wrote:
> Convert rockchip-lvds.txt to YAML.
> 
> Changed:
>   Add power-domains property.
>   Requirements between PX30 and RK3288
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> Changed V3:
>   Filename matching compatible style
>   Drop "Regulator phandle for "
>   Specify properties and requirements per SoC
>   Sort order and restyle
> 
> Changed V2:
>   Fix title
> ---
>  .../display/rockchip/rockchip,lvds.yaml       | 170 ++++++++++++++++++
>  .../display/rockchip/rockchip-lvds.txt        |  92 ----------
>  2 files changed, 170 insertions(+), 92 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip,lvds.yaml
>  delete mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,lvds.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,lvds.yaml
> new file mode 100644
> index 000000000..03b002a05
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,lvds.yaml
> @@ -0,0 +1,170 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/rockchip/rockchip,lvds.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip low-voltage differential signal (LVDS) transmitter
> +
> +maintainers:
> +  - Sandy Huang <hjc@rock-chips.com>
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,px30-lvds
> +      - rockchip,rk3288-lvds
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    const: pclk_lvds
> +
> +  avdd1v0-supply:
> +    description: 1.0V analog power.
> +
> +  avdd1v8-supply:
> +    description: 1.8V analog power.
> +
> +  avdd3v3-supply:
> +    description: 3.3V analog power.
> +
> +  rockchip,grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: Phandle to the general register files syscon.
> +
> +  rockchip,output:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    enum: [rgb, lvds, duallvds]
> +    description: This describes the output interface.
> +
> +  phys:
> +    maxItems: 1
> +
> +  phy-names:
> +    const: dphy
> +
> +  pinctrl-names:
> +    const: lcdc
> +
> +  pinctrl-0: true
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Video port 0 for the VOP input.
> +          The remote endpoint maybe vopb or vopl.
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Video port 1 for either a panel or subsequent encoder.
> +
> +    required:
> +      - port@0
> +      - port@1
> +
> +required:
> +  - compatible
> +  - rockchip,grf
> +  - rockchip,output
> +  - ports
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,px30-lvds
> +
> +    then:
> +      properties:
> +        reg: false
> +        clocks: false
> +        clock-names: false
> +        avdd1v0-supply: false
> +        avdd1v8-supply: false
> +        avdd3v3-supply: false
> +

I see one compatible expects regmap from parent (grf is the parent here)
and other is directly on MMIO bus. Not the best combination... Maybe
this  should be just split to two separate bindings? Looking at driver,
their code is also very different between these two variants.

Best regards,
Krzysztof

