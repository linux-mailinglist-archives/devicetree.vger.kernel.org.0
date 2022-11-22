Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 904D4633708
	for <lists+devicetree@lfdr.de>; Tue, 22 Nov 2022 09:28:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232276AbiKVI2H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Nov 2022 03:28:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232394AbiKVI2G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Nov 2022 03:28:06 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7ED341F629
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 00:27:54 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id f13so966886lfa.6
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 00:27:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NBwxUgJR8NGe1DGEeONE6WsC29VoXRjD7bpTza6BfUg=;
        b=hYAbwKH5QwjJOnfG9yEqUEgsnSseVoMPMrJp+TMXhBuNDQRxQ7RGD2NZcJx5RF+zdA
         zUEk6UCdzfHcUK/i4onhOvHK87UBvBaTtB6peOCWfiL0E9taxsBJKQAuhXQwodrEkVkC
         xL4sq0zWy3xh5+IAfFLbnPn5FT4ksU/GwbnVR5jX1LdlxqpGUKomwAIjVft2/AjPof62
         nm50CPe+4nUcYIm+1y65yNh83iK7eQx3FdObF/vzsX2WvFcNjpF1qtxTlHNfXSG4+isj
         phqUXSEniYZJ9DRmp46DvhNRcA2pOtPfiMCiJJGMU5CJvzQiRv4Avf8fRcdDjWA1DeiX
         dzGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NBwxUgJR8NGe1DGEeONE6WsC29VoXRjD7bpTza6BfUg=;
        b=Z0peXk45F05ee0eWsmw2ipg/OgviqnSpKd9sxOFr/SDOdK/qBCDdSwEneboCV6pDfc
         1h7gfiBvfARdnEe3IgFpUod2EyonOAPlC5biXS/6cPgdK9TXFSGI1rAK5Vv/EuJr7Mba
         BOuPOTaMtR7G+YZQ7C//Wjj8zqUR6cLXv3f8PmDM9mF6NS54HFOCDFeXszTcdMHIdA59
         0+IO+lRiHFdZEeHcC5CDtnbiMSBfJbIFstUg93S8FbmEDPWecMKqyGM36zSBnO9+UEYr
         lzVuCbZAuNpIkf+HSBHb27b8Mnx3BAeZU65K9/HWjy5QY3YXfIrKJ5P0okb7QQVDasDU
         VziA==
X-Gm-Message-State: ANoB5pkWzMnc+w9BzG7NMO6CMEYk5/Ea7N/uwne4UY2Of56DerECxQQ2
        fYhMk6Zjw9Ps0/Z7fQ+IiT96EQ==
X-Google-Smtp-Source: AA0mqf7G3s5VlmrKWGE9XYyV7u93v/W4UcZyLl6VtWdTS85QQiPrOv2z7E7k5phTypSWytOq0S/ANA==
X-Received: by 2002:a05:6512:a93:b0:4a2:6337:872d with SMTP id m19-20020a0565120a9300b004a26337872dmr1801184lfu.35.1669105673210;
        Tue, 22 Nov 2022 00:27:53 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id n4-20020a195504000000b00492ce573726sm2418776lfe.47.2022.11.22.00.27.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Nov 2022 00:27:52 -0800 (PST)
Message-ID: <d2f90ade-70ff-b05e-9643-cda25a4fd6ff@linaro.org>
Date:   Tue, 22 Nov 2022 09:27:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v4 02/10] dt-bindings: display: bridge: Add MHDP DP for
 i.MX8MQ
Content-Language: en-US
To:     Sandor Yu <Sandor.yu@nxp.com>, andrzej.hajda@intel.com,
        neil.armstrong@linaro.org, robert.foss@linaro.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, airlied@gmail.com, daniel@ffwll.ch,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
        kishon@ti.com, vkoul@kernel.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        alexander.stein@ew.tq-group.com
Cc:     kernel@pengutronix.de, linux-imx@nxp.com, oliver.brown@nxp.com
References: <cover.1669013346.git.Sandor.yu@nxp.com>
 <f09833038399e4ed0ff845724fc99bcf8b2793c9.1669013346.git.Sandor.yu@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <f09833038399e4ed0ff845724fc99bcf8b2793c9.1669013346.git.Sandor.yu@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/11/2022 08:23, Sandor Yu wrote:
> Add bindings for i.MX8MQ MHDP DisplayPort.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> ---
>  .../display/bridge/cdns,mhdp-imx8mq-dp.yaml   | 93 +++++++++++++++++++
>  1 file changed, 93 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-dp.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-dp.yaml b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-dp.yaml
> new file mode 100644
> index 000000000000..d82f3ceddaa8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-dp.yaml
> @@ -0,0 +1,93 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/cdns,mhdp-imx8mq-dp.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Cadence MHDP Displayport bridge
> +
> +maintainers:
> +  - Sandor Yu <Sandor.yu@nxp.com>
> +
> +description:
> +  The Cadence MHDP Displayport TX interface.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - cdns,mhdp-imx8mq-dp
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +    description: MHDP DP APB clock.
> +
> +  phys:
> +    maxItems: 1
> +
> +  interrupts:
> +    items:
> +      - description: Hotplug cable plugin.
> +      - description: Hotplug cable plugout.
> +
> +  interrupt-names:
> +    items:
> +      - const: plug_in
> +      - const: plug_out
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Input port from display controller output.
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Output port to DP connector.
> +
> +    required:
> +      - port@0
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - interrupts
> +  - interrupt-names
> +  - phys
> +  - ports
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8mq-clock.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    mhdp_dp: dp-bridge@32c00000 {
> +        compatible = "cdns,mhdp-imx8mq-dp";
> +        reg = <0x32c00000 0x100000>;
> +        interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
> +                     <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
> +        interrupt-names = "plug_in", "plug_out";
> +        clocks = <&clk IMX8MQ_CLK_DISP_APB_ROOT>;
> +        phys = <&dp_phy>;
> +
> +        ports {
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            port@0 {
> +                reg = <0>;
> +
> +                mhdp_in: endpoint {
> +                    remote-endpoint = <&dcss_out>;
> +                };

As Rob suggested, you allowed property for output to DP port. However it
is not in the example. If this is a bridge, what does it bridge if there
is no output connector?


Best regards,
Krzysztof

