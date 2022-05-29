Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE0935370C3
	for <lists+devicetree@lfdr.de>; Sun, 29 May 2022 13:33:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229687AbiE2LdM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 May 2022 07:33:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230033AbiE2LdL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 May 2022 07:33:11 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3CE89A9A1
        for <devicetree@vger.kernel.org>; Sun, 29 May 2022 04:33:09 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id w27so3640481edl.7
        for <devicetree@vger.kernel.org>; Sun, 29 May 2022 04:33:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=oYubpWVRsUzLyCXJOwrRC4O3AFSC2FuuIFJIr4Av3e0=;
        b=Y29g96s466pwqFnYFJ8i0nbhdgldu/XcleKYHRCT3BA2cAk5qwQMI9c331T7/5z6gf
         rGADnh51S+Rzbz5NCfmMYtdVGdzygTphad6rXa3l+dmNK/UmF2SZhNk/uJKBDnbqii97
         39reP/0lZ0NbQdLyrOBJZKleN8S6Lh61RrY2fMUF6TzR+JpjOSd5lQ/VbW0pxDE4UZ1C
         z+OLnVsX5nm5HWZ/VeuNk0uluNqh0E5v+uYxXwEEFhWjeXI/bibl/Xe14K4UWTcLIA9Q
         LhZ8EobRrjCqUCtya29ZtKAPMNcdpxRJ6J3g7zeWKWyFKDSyiE3zKNUPk/RSKtwDhw9t
         crHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=oYubpWVRsUzLyCXJOwrRC4O3AFSC2FuuIFJIr4Av3e0=;
        b=Vil9uYRiZAMHrnBV3HDTWDe2cUXVoZoFriffE7x/G4Cls1dAOwBD0ECFm1uKUAIaQE
         /LkK9e1ySAorOHxoYeL3k6eSJL+PcC8POzipW1XzjPNU6dLs4NWtMv5W8TloJNSIp6cP
         BmxCSE3ebjLagYXEM4LXRTHieFhRu+GMiMMo4PdG2YybtOVsiC67h1khjM7GmkrVbhWP
         knbH9BR/POQhl+JXMkHS/bBR6dWYACN1KuK1GNnHmSbdv0jEMLNfZ5AM4Py4g1qYYPi9
         1jAyyHdGH97hetw37CoEVPWiTihcgl+/N6t77DNTbaQC7KcY2aNlEhVUjLuYd50O76pe
         zktQ==
X-Gm-Message-State: AOAM531Ce9jHbTAE7T5rq4QTpSixSjWMEgyfM7JaaHnTdAh9AVuvclM/
        UjVChR/iQdSNr30bp+L9qwG3dA==
X-Google-Smtp-Source: ABdhPJztdEDLeP3MqNT3t1sVz/K0A6o6vjUgPas543CtuJhuTQ1EIgyRaygjFGlClN0hPJRw/+Ps5A==
X-Received: by 2002:a05:6402:510a:b0:42b:66c3:d4fd with SMTP id m10-20020a056402510a00b0042b66c3d4fdmr36058737edd.260.1653823987383;
        Sun, 29 May 2022 04:33:07 -0700 (PDT)
Received: from [192.168.0.177] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id l8-20020a056402254800b0042d7cd7d937sm2115751edb.2.2022.05.29.04.33.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 May 2022 04:33:06 -0700 (PDT)
Message-ID: <c8acba2d-d65c-0c75-aed3-3e35ae654b12@linaro.org>
Date:   Sun, 29 May 2022 13:33:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 2/3] dt-bindings: arm64: add BCM6858 soc to binding
 document
Content-Language: en-US
To:     Anand Gore <anand.gore@broadcom.com>,
        Linux ARM List <linux-arm-kernel@lists.infradead.org>
Cc:     dan.beygelman@broadcom.com, samyon.furman@broadcom.com,
        florian.fainelli@broadcom.com,
        William Zhang <william.zhang@broadcom.com>,
        tomer.yacoby@broadcom.com, kursad.oney@broadcom.com,
        joel.peshkin@broadcom.com,
        Broadcom internal kernel review list 
        <bcm-kernel-feedback-list@broadcom.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220527171356.2461297-1-anand.gore@broadcom.com>
 <20220527101336.2.I2bc1418dd24a902e941c7073bbadab00568b4f5d@changeid>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220527101336.2.I2bc1418dd24a902e941c7073bbadab00568b4f5d@changeid>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/05/2022 19:13, Anand Gore wrote:
> Add BCM6858 SOC device tree description to bcmbca binding document.
> 
> Signed-off-by: Anand Gore <anand.gore@broadcom.com>
> 
> ---
> 
>  .../devicetree/bindings/arm/bcm/brcm,bcmbca.yaml          | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml
> index 24357cf09888..a63e355ba8f9 100644
> --- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml
> +++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml
> @@ -35,6 +35,14 @@ properties:
>            - const: brcm,bcm63178
>            - const: brcm,bcmbca
>  
> +      - description: BCM6858 based boards
> +        items:
> +          - enum:
> +              - brcm,bcm96858
> +          - const: brcm,bcm6858
> +          - const: brcm,bcmbca
> +
> +

No need for two blank lines.

>  additionalProperties: true
>  
>  ...


Best regards,
Krzysztof
