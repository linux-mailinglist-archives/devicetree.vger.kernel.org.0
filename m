Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A5CD5F8C22
	for <lists+devicetree@lfdr.de>; Sun,  9 Oct 2022 17:52:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230193AbiJIPwM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 9 Oct 2022 11:52:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230115AbiJIPwK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 9 Oct 2022 11:52:10 -0400
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com [IPv6:2607:f8b0:4864:20::72a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3B302612F
        for <devicetree@vger.kernel.org>; Sun,  9 Oct 2022 08:52:09 -0700 (PDT)
Received: by mail-qk1-x72a.google.com with SMTP id a22so5528887qkk.7
        for <devicetree@vger.kernel.org>; Sun, 09 Oct 2022 08:52:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RQfrxf1xyv3OAwcUSRttuLU5XS0IqfbFO1TojWKCk8o=;
        b=rJqR5cVcssLs8ufBcr6Vrod46OtirTstddc/UL7IKmUHJPMBabNMGmR1iXFZkDuCGJ
         x82P4PTLWly/7f6J1L6qve6YEfEuskpzYm+icdKQAP4YfrrBy7qCLhyzseKhc6L63xGs
         Jom7ZCchcp1JNONBmAmdjL/KNPbrjjwSOe1A7SNzqKBYnueB/SRBsMZtFthgi6a/ATrn
         SnZA+odmsjPus1IaXGxk7knAdtSWbLaYbW3lHcefXQ3RHPRfaGt4iuQd7DwuV54L/jcJ
         w58qa41TIdECxe3HO7vSxfNIFG7AX/4GgYljZbwWbyMWoCDfBoWoXiME/QAVncMj7AmA
         ApVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RQfrxf1xyv3OAwcUSRttuLU5XS0IqfbFO1TojWKCk8o=;
        b=160V0pEu5GznsBRwbwlL7wMAja8qArgr6xiX1k8W7MJhVroljsopdTGw6adtwy4lFy
         1m7Qpol2ZC0DAFcWd3wk/81Z/G6rcybtz2E2+O58QWrqzP/PEQ8YGKNxFKBEXw29qd33
         p2bgPuVMWWPW9eH3pPTNFEvVGlvPqo6Q7Rnm/6oU/ECCePJt5Y00+V/2tVIZl4EqjgSm
         nsZa2xsjBWcbjv7pETvuL8/X133//nJv9UN/QRuSQpeGBD8f3HUrfEzkT7zEzsaIiThN
         3pz1BomIrRSBh550aN4wKSxJQ53DFHj3oA8gwvFnnHq9NwiCMKlup/scx2Ak2iJiCLkS
         y93w==
X-Gm-Message-State: ACrzQf0+3ZTifmkIGAOVEOCXY+Ux7F2+pJHSOuNOnGUvvJ4pvaG350hi
        r97ro64ia4EBMuwtlMJ4O69d5w==
X-Google-Smtp-Source: AMsMyM5VJHMeMkf3OUo1b9X4c0yMNVIL1M3kRKjfc/PjC0s/RF42BpLvD2phIxU5mJEtyFszAmLLyQ==
X-Received: by 2002:a05:620a:4809:b0:6ce:496c:7e78 with SMTP id eb9-20020a05620a480900b006ce496c7e78mr9984841qkb.470.1665330728688;
        Sun, 09 Oct 2022 08:52:08 -0700 (PDT)
Received: from [192.168.1.57] (cpe-72-225-192-120.nyc.res.rr.com. [72.225.192.120])
        by smtp.gmail.com with ESMTPSA id u2-20020a05620a454200b006af0ce13499sm8142801qkp.115.2022.10.09.08.52.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 Oct 2022 08:52:07 -0700 (PDT)
Message-ID: <ff2f70c4-7af0-d568-34ab-224672c5b96b@linaro.org>
Date:   Sun, 9 Oct 2022 17:52:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [RFC v4 net-next 14/17] dt-bindings: mfd: ocelot: add
 ethernet-switch hardware support
Content-Language: en-US
To:     Colin Foster <colin.foster@in-advantage.com>,
        netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Russell King <linux@armlinux.org.uk>, UNGLinuxDriver@microchip.com,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Claudiu Manoil <claudiu.manoil@nxp.com>,
        Paolo Abeni <pabeni@redhat.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Eric Dumazet <edumazet@google.com>,
        "David S. Miller" <davem@davemloft.net>,
        Vladimir Oltean <olteanv@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vivien Didelot <vivien.didelot@gmail.com>,
        Andrew Lunn <andrew@lunn.ch>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, Lee Jones <lee@kernel.org>
References: <20221008185152.2411007-1-colin.foster@in-advantage.com>
 <20221008185152.2411007-15-colin.foster@in-advantage.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221008185152.2411007-15-colin.foster@in-advantage.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/10/2022 20:51, Colin Foster wrote:
> The main purpose of the Ocelot chips are the Ethernet switching
> functionalities. Document the support for these features.
> 
> Signed-off-by: Colin Foster <colin.foster@in-advantage.com>
> ---
> 
> v4
>     * New patch
> 
> ---
>  Documentation/devicetree/bindings/mfd/mscc,ocelot.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/mscc,ocelot.yaml b/Documentation/devicetree/bindings/mfd/mscc,ocelot.yaml
> index c6da91211a18..9ad42721418c 100644
> --- a/Documentation/devicetree/bindings/mfd/mscc,ocelot.yaml
> +++ b/Documentation/devicetree/bindings/mfd/mscc,ocelot.yaml
> @@ -56,6 +56,14 @@ patternProperties:
>          enum:
>            - mscc,ocelot-miim
>  
> +  "^ethernet-switch@[0-9a-f]+$":
> +    type: object
> +    $ref: /schemas/net/dsa/mscc,ocelot.yaml

    unevaluatedProperties: false
(to be explicit even though they are not required)

> +    properties:
> +      compatible:
> +        enum:
> +          - mscc,vsc7512-switch
> +
>  required:
>    - compatible
>    - reg

Best regards,
Krzysztof

