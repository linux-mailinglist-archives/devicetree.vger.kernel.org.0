Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8ADB3611E3A
	for <lists+devicetree@lfdr.de>; Sat, 29 Oct 2022 01:44:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229887AbiJ1Xn7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 19:43:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229670AbiJ1Xn6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 19:43:58 -0400
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com [IPv6:2607:f8b0:4864:20::735])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66BC5DAC60
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 16:43:57 -0700 (PDT)
Received: by mail-qk1-x735.google.com with SMTP id d13so4500776qko.5
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 16:43:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nXamOZOGTVHNNOeM200In1Hr9BwidQ/ESZOQzJxM1qw=;
        b=wwP6Ii1aDimtcTmCi1rfa2edFs5AlyzsAi/ZoRCfw/FXwXJrqNBCFuwmqnrLQHGKeG
         xiEchsXBHhMRaeRQNn2cjOWlF0sfGWlgx0JQLrMxm+q+ENk86YSs5369tLfDPrv5GWQi
         4vjI0HOitBMfNIDj3IC6iTofBrey2WcMMFBrp5k39Fz/h5/+3bFrEL2wRzQi3jdGJbKh
         cNZQ8dJrz3GvAHqnRk3VRPTESW1gLSVliJejYEw5OkB9z7aHJjlChgP7kDSGaHD31ebm
         4KmUChzPFi4yVYLywKRmhg5DR/2ucNjLRwBTI+lNLbWahwalggFSOx6/uDvSjziHJDV5
         X32w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nXamOZOGTVHNNOeM200In1Hr9BwidQ/ESZOQzJxM1qw=;
        b=y9N+XuDQXoE4oExO74aMnkvMmtxMVu412Z5kXrBuVdszxSLz0kqZja4nw1+o6SKjzb
         rbG5HtjAvIvfebNh5sb5NGRzmVNSdOyRbXjZoHJmksvOB1NjUqrwAnmVGQ+vRIhLqJok
         V1NZDr+FIWRpHnkXJ7Tor/6xbxsddMjPnBVhytI9BzYudhjlczev+1T/Tlc5hY6ZuGrS
         omYBD2tZi9KuxjJVshCJbtC+TxsERfNeCHJdBK0Lbml6UqOsw7I4P5bPoohs9my3Cq8S
         JZpM9hKh91wqgUh8jr+K4+Pugpvb2gLYjR754medweIs55fmrHSZgfZ/VNKrtdpGExwb
         BT4w==
X-Gm-Message-State: ACrzQf21odhjiMDOZafSWVekWqu0f3F7L+5Zsd+BhaRTFZSOyouUSsw5
        wncHf+vOXUtEhd8KsTFDzlG8gQ==
X-Google-Smtp-Source: AMsMyM6q4lpfoCYqL9ZArZVTKUmD3s+5rwoMeTyY5iOqXZjEnSsnqJwPOMYY1A22NYgawkBK0T7vag==
X-Received: by 2002:a05:620a:51c9:b0:6fa:c22:84e4 with SMTP id cx9-20020a05620a51c900b006fa0c2284e4mr1393494qkb.181.1667000636582;
        Fri, 28 Oct 2022 16:43:56 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id e6-20020ac86706000000b003a4f435e381sm32061qtp.18.2022.10.28.16.43.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Oct 2022 16:43:55 -0700 (PDT)
Message-ID: <6fd28d86-a43b-b3d0-fef4-022df9d0c7be@linaro.org>
Date:   Fri, 28 Oct 2022 19:43:53 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH net-next 2/6] dt-bindings: net: mediatek: add WED RX
 binding for MT7986 eth driver
Content-Language: en-US
To:     Lorenzo Bianconi <lorenzo@kernel.org>, netdev@vger.kernel.org
Cc:     nbd@nbd.name, john@phrozen.org, sean.wang@mediatek.com,
        Mark-MC.Lee@mediatek.com, davem@davemloft.net, edumazet@google.com,
        kuba@kernel.org, pabeni@redhat.com, matthias.bgg@gmail.com,
        linux-mediatek@lists.infradead.org, lorenzo.bianconi@redhat.com,
        Bo.Jiao@mediatek.com, sujuan.chen@mediatek.com,
        ryder.Lee@mediatek.com, evelyn.tsai@mediatek.com,
        devicetree@vger.kernel.org, robh@kernel.org, daniel@makrotopia.org
References: <cover.1666368566.git.lorenzo@kernel.org>
 <7a454984f0001a71964114b71f353cb47af95ee6.1666368566.git.lorenzo@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <7a454984f0001a71964114b71f353cb47af95ee6.1666368566.git.lorenzo@kernel.org>
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

On 21/10/2022 12:18, Lorenzo Bianconi wrote:
> Document the binding for the RX Wireless Ethernet Dispatch core on the
> MT7986 ethernet driver used to offload traffic received by WLAN NIC and
> forwarded to LAN/WAN one.
> 
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
>  .../arm/mediatek/mediatek,mt7622-wed.yaml     | 126 ++++++++++++++++++
>  .../arm/mediatek/mediatek,mt7986-wo-boot.yaml |  45 +++++++
>  .../arm/mediatek/mediatek,mt7986-wo-ccif.yaml |  49 +++++++
>  .../arm/mediatek/mediatek,mt7986-wo-dlm.yaml  |  66 +++++++++
>  4 files changed, 286 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,mt7986-wo-boot.yaml
>  create mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,mt7986-wo-ccif.yaml
>  create mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,mt7986-wo-dlm.yaml
> 

Please use scripts/get_maintainers.pl to get a list of necessary people
and lists to CC.  It might happen, that command when run on an older
kernel, gives you outdated entries.  Therefore please be sure you base
your patches on recent Linux kernel.

(...)
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    soc {
> +      #address-cells = <2>;
> +      #size-cells = <2>;
> +      ap2woccif0: ap2woccif@151a5000 {

Node names should be generic.
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

In other places as well.

> +        compatible = "mediatek,ap2woccif", "syscon";
> +        reg = <0 0x151a5000 0 0x1000>;
> +        interrupts = <GIC_SPI 205 IRQ_TYPE_LEVEL_HIGH>;
> +      };
> +    };
> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mt7986-wo-dlm.yaml b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mt7986-wo-dlm.yaml
> new file mode 100644
> index 000000000000..529343c57e4b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mt7986-wo-dlm.yaml
> @@ -0,0 +1,66 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/arm/mediatek/mediatek,mt7986-wo-dlm.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"

Drop quotes from both lines.

> +
> +title: MediaTek WED WO hw rx ring interface for MT7986
> +
> +maintainers:
> +  - Lorenzo Bianconi <lorenzo@kernel.org>
> +  - Felix Fietkau <nbd@nbd.name>
> +
> +description:
> +  The mediatek WO-dlm provides a configuration interface for WED WO
> +  rx ring on MT7986 soc.
> +
> +properties:
> +  compatible:
> +    const: mediatek,wocpu_dlm

No underscores in compatibles (and node names, but I think Rob commented
about it)

Best regards,
Krzysztof

