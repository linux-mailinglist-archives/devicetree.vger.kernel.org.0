Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E1A47552283
	for <lists+devicetree@lfdr.de>; Mon, 20 Jun 2022 18:55:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237185AbiFTQzo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Jun 2022 12:55:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231773AbiFTQzo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Jun 2022 12:55:44 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 454CF193F6
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 09:55:43 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id eo8so16017729edb.0
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 09:55:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=PP2jFLsTqejTi6E3D81WSD+1IUnCgIuRhbrLPJjGOsg=;
        b=KSEgGWIrKQ+fVQex/sFusckUm8ssGMG//ZQdIO6kpr+5XWb95C5bb9tOU7eoa5xynS
         DJJkcjlX7ui4xbL/8flvIQ1Diam47pf52DwTwThllR1lWsk9CK8HrqYszicw7oLHQaNh
         s00YmtF01XLvh6rz0iau++e7JKv7mVN3SlD8fPSCrxAWazVWd9GX5CLo0PdBuQQu7E6f
         twZ0HvigBrACZd+0QMMhDWU5DztJpMseRZINl6E7VuvLhDFb6b6ej9vGpnje9mqJqYxy
         k44i2m+n4sDJHqyavWD/zs9+RJzDMp74fiTe3Oz8I8cSgzT7FCNF0joL63ZVoJkFtWjy
         3v/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=PP2jFLsTqejTi6E3D81WSD+1IUnCgIuRhbrLPJjGOsg=;
        b=MuWxplXbXPUNiFV33dYIZRHG0oEQeMwRKL0H2GRhOSqY33LG0EOHo/wrJUqU7CQ+tH
         ncK6e+1n5p0Wkg3Ax01c1LNk7DAcUMs/x5i9Wt0K1XETKoddo65vVxcixS07iiA6zsgM
         Jq2VInD9CYrzmsXS/2fJFo1XakgFs27vim/dRLnjo4ebAM4SeEwwx7E4TfOwQ4KDWhrE
         Km3BI251dfquE+cbJPpk7gxclKlKjziuZJLKsjN0/HkJTjAtSTO6bnVUD+U2Y/DgskqN
         EME0tMf6rcyMPzV6onXY7oqm3E5xZ6HWMw9MXpMtJx9wNRwEvqmkTwtn7TryUk1gOv7S
         RktA==
X-Gm-Message-State: AJIora+5pNQWA3oSiDGaeFrxuHmOTTyHmQpQA1Jrz+LJGeC5KxwxUur8
        7CMUV39GYW0T2ySCXgw4dMQlqg==
X-Google-Smtp-Source: AGRyM1ul2na687nNdkuN4dPGTrtvFPnJ81SPb2ZjAIrC8YZcRpu3J/t8UK6kzXIC94Or0DqTiDcyxg==
X-Received: by 2002:a50:cb8b:0:b0:435:68a3:4d40 with SMTP id k11-20020a50cb8b000000b0043568a34d40mr18953922edi.394.1655744141613;
        Mon, 20 Jun 2022 09:55:41 -0700 (PDT)
Received: from [192.168.0.210] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id c10-20020a170906924a00b006ff045d7c9bsm6416561ejx.173.2022.06.20.09.55.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jun 2022 09:55:41 -0700 (PDT)
Message-ID: <d66fe477-9ce7-97c1-4f21-93562c9a5711@linaro.org>
Date:   Mon, 20 Jun 2022 18:55:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 5/6] media: dt-bindings: media: i2c: Add mlx7502x camera
 sensor binding
Content-Language: en-US
To:     Volodymyr Kharuk <vkh@melexis.com>, linux-media@vger.kernel.org,
        ays@melexis.com, mchehab@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, hyun.kwon@xilinx.com,
        laurent.pinchart@ideasonboard.com, michal.simek@xilinx.com,
        kieran.bingham+renesas@ideasonboard.com, devicetree@vger.kernel.org
References: <20220620162525.GA14062@vkh-ThinkPad-T490>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220620162525.GA14062@vkh-ThinkPad-T490>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/06/2022 18:25, Volodymyr Kharuk wrote:
> From: Volodymyr Kharuk <vkh@melexis.com>
> To: linux-media@vger.kernel.org
> Cc: Volodymyr Kharuk <vkh@melexis.com>,
> 	Andrii Kyselov <ays@melexis.com>,
> 	Mauro Carvalho Chehab <mchehab@kernel.org>,
> 	Rob Herring <robh+dt@kernel.org>,
> 	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
> 	Hyun Kwon <hyun.kwon@xilinx.com>,
> 	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
> 	Michal Simek <michal.simek@xilinx.com>,
> 	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
> 	devicetree@vger.kernel.org
> Subject: [PATCH 5/6] media: dt-bindings: media: i2c: Add mlx7502x camera sensor binding
> Date: Mon, 20 Jun 2022 19:24:36 +0300
> Message-Id: <fde3ed603f2c605278ab8fe2c0aa03e96ce4fb33.1655738299.git.vkh@melexis.com>
> X-Mailer: git-send-email 2.36.1
> In-Reply-To: <cover.1655738299.git.vkh@melexis.com>
> References: <cover.1655738299.git.vkh@melexis.com>
> MIME-Version: 1.0
> Content-Transfer-Encoding: 8bit

I don't think your email is correct... The easiest to create proper
patch is to use Git (git format-patch, git send-email).


> 
> Add device tree binding of the mlx7502x and update MAINTAINERS
> 
> Signed-off-by: Volodymyr Kharuk <vkh@melexis.com>
> ---
>  .../bindings/media/i2c/melexis,mlx7502x.yaml  | 106 ++++++++++++++++++
>  MAINTAINERS                                   |   1 +
>  2 files changed, 107 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/melexis,mlx7502x.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/i2c/melexis,mlx7502x.yaml b/Documentation/devicetree/bindings/media/i2c/melexis,mlx7502x.yaml
> new file mode 100644
> index 000000000000..0cc6e425caec
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/i2c/melexis,mlx7502x.yaml
> @@ -0,0 +1,106 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/i2c/melexis,mlx7502x.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Melexis ToF 7502x MIPI CSI-2 Sensor Device Tree Bindings

s/Device Tree Bindings//

> +
> +maintainers:
> +  - Volodymyr Kharuk <vkh@melexis.com>
> +
> +description: |-
> +  Melexis ToF 7502x sensors has a CSI-2 output. It supports 2 and 4 lanes,
> +  and mipi speeds are 300, 600, 704, 800, 904, 960Mbs. Supported format is RAW12.
> +  Sensor 75026 is QVGA, while 75027 is VGA sensor.
> +
> +properties:
> +  compatible:
> +    const: melexis,mlx7502x
> +
> +  reg:
> +    maxItems: 1
> +
> +  vcc-supply:
> +    description: VCC supply phandle.
> +
> +  hw-trigger-gpio:

Yoiu need vendor prefix here, because this does not look like standard
property. Plus "gpios", not "gpio", so:
melexis,hw-trigger-gpios

> +    maxItems: 1
> +    description: Hardware Trigger GPIO Control (active low)
> +
> +  reset-gpio:

reset-gpios

> +    maxItems: 1
> +    description: Reset Sensor GPIO Control (active low)
> +
> +  leden-gpio:

vendor prefix + gpios, unless this is "enable-gpios" standard property.

> +    maxItems: 1
> +    description: Led driver enanle GPIO Control (active high)

enable?

> +
> +  port:
> +    description: MIPI CSI-2 transmitter port
> +    $ref: /schemas/graph.yaml#/$defs/port-base
> +
> +    properties:
> +      endpoint:
> +        $ref: /schemas/media/video-interfaces.yaml#
> +        unevaluatedProperties: false
> +
> +        properties:
> +          data-lanes:
> +            anyOf:

oneOf
although probably has the same effect

> +              - items:
> +                  - const: 1
> +                  - const: 2
> +              - items:
> +                  - const: 1
> +                  - const: 2
> +                  - const: 3
> +                  - const: 4
> +
> +          clock-noncontinuous: true
> +          link-frequencies: true
> +
> +        required:
> +          - data-lanes
> +          - link-frequencies
> +
> +required:
> +  - compatible
> +  - reg
> +  - port
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    i2c1 {

Just "i2c"

> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        mlx7502x: camera@57 {
> +            compatible = "melexis,mlx7502x";
> +            reg = <0x57>;
> +
> +            vcc-supply = <&mlx_7502x_reg>;
> +            hw-trigger-gpio = <&gpio_exp 2 GPIO_ACTIVE_HIGH>;
> +            reset-gpio = <&gpio_exp 6 GPIO_ACTIVE_HIGH>;
> +            leden-gpio = <&gpio_exp 7 GPIO_ACTIVE_HIGH>;
> +
> +            port {
> +                mlx7502x_out_mipi_csi2: endpoint {
> +                    remote-endpoint = <&mipi_csi2_from_mlx7502x>;
> +                    data-lanes = <1 2 3 4>;
> +                    link-frequencies = /bits/ 64 < 960000000
> +                                                   904000000
> +                                                   800000000
> +                                                   704000000
> +                                                   600000000
> +                                                   300000000 >;
> +                };
> +            };
> +        };
> +    };
> +
> +...
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 6b74de976e90..ce052a351fda 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -12676,6 +12676,7 @@ M:	Volodymyr Kharuk <vkh@melexis.com>
>  L:	linux-media@vger.kernel.org
>  S:	Supported
>  W:	http://www.melexis.com
> +F:	Documentation/devicetree/bindings/media/i2c/melexis,mlx7502x.yaml
>  F:	include/uapi/linux/mlx7502x.h
>  
>  MELFAS MIP4 TOUCHSCREEN DRIVER


Best regards,
Krzysztof
