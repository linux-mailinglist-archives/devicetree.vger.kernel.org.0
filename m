Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E816766573B
	for <lists+devicetree@lfdr.de>; Wed, 11 Jan 2023 10:19:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238479AbjAKJTh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Jan 2023 04:19:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238781AbjAKJTI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Jan 2023 04:19:08 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C9D310F8
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 01:19:04 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id m3so10646427wmq.0
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 01:19:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=r+b9YIlyxxIpNUSOlhdxX5ZbT6XxJqgYA1d8wXJ3r8g=;
        b=tQNXel1JOEtrldOmSMxv6ZGlAwRmbLbcPoOnTOV9ldOQExL0+Y2OX8b2Owuil6fDZg
         jnirKasj47OoAR3haSDz24iIy1voa8nLtf2P5PlrLV7vTgNwDqJwWKG5pFMVQo5+4oFu
         Y4bIiisAmhNeVfquLKXo06wEst65GHTPI/W3wwEoEHiyrxBVcY8yB3RW+c68EsukUDxb
         iIbj6wdnWS5sTDGiTlKTx/nwCUADtgblGedJWkkGaOFZUZutbZh/8ljeaL/e5GEDyFWR
         PYOJop4DB1Af0odKmQ6qPu2gkc0uYgYMVJlwI9h8B66yoLYurgHBsxKN4+8NL/Xq45WU
         27fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=r+b9YIlyxxIpNUSOlhdxX5ZbT6XxJqgYA1d8wXJ3r8g=;
        b=h/1xiSoXCchTF2th/PqrcF7M9Uml31a45Y4e6sn/q9qEHTRsQ6R2FzplWLEzmS6N67
         Lq/jY09tx47mueCU8+NyJvRlzarVcoCJEpJ4A1erxpG9WeMkEm5t6ValuEx262lkw6JO
         BLfHgx9hlqN/q0QRU9Kp/frEMv6TvMfIIZyLJmEkAF+z9TuGaPnmG8QOFd7mjXm1w8OS
         UbiFFbY1m+x18o9Fqa1RRfu8oI7i6mCXtrAVZQk9yrABZgTJfgNrTyk559t9l/8Ui28t
         qslxxSb6RQosOuIs0KsYwdoOd85W2+kYfzO6nVqHyCcrxP3kt69380gh4OB7IF8XjxAz
         KEwQ==
X-Gm-Message-State: AFqh2kqM4qc8GfxDv291HtPWwUFHzhcwHf0yZN+n5luMsD92wWMMWHnI
        egml+4Y2Ps/47dj6QnxkXX4jmA==
X-Google-Smtp-Source: AMrXdXuZPWfsUKfqsrw2a28BNe17tkkIswo8/ubdhf8xEZr/T+wlURbH++4zsDWeeyVP0Kcnw/F2rw==
X-Received: by 2002:a05:600c:1d0e:b0:3cf:8957:a441 with SMTP id l14-20020a05600c1d0e00b003cf8957a441mr17966041wms.12.1673428742618;
        Wed, 11 Jan 2023 01:19:02 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id u24-20020adfa198000000b002bc84c55758sm5684749wru.63.2023.01.11.01.19.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Jan 2023 01:19:02 -0800 (PST)
Message-ID: <7c0156a5-6520-bb3b-ae84-222ad1d1674b@linaro.org>
Date:   Wed, 11 Jan 2023 10:19:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH net] dt-bindings: net: snps,stmmac: Fix inconsistencies in
 some properties belonging to stmmac-axi-config
Content-Language: en-US
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Marek Vasut <marex@denx.de>,
        Giuseppe Cavallaro <peppe.cavallaro@st.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230111022622.6779-1-hayashi.kunihiko@socionext.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230111022622.6779-1-hayashi.kunihiko@socionext.com>
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

On 11/01/2023 03:26, Kunihiko Hayashi wrote:
> The description of some properties in stmmac-axi-config don't match the
> behavior of the corresponding driver. Fix the inconsistencies by fixing
> the dt-schema.
> 
> Fixes: 5361660af6d3 ("dt-bindings: net: snps,dwmac: Document stmmac-axi-config subnode")
> Fixes: afea03656add ("stmmac: rework DMA bus setting and introduce new platform AXI structure")
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>

NAK.

I don't understand what do you mean by "corresponding driver". Driver
uses existing properties in current next.

> ---
>  .../devicetree/bindings/net/snps,dwmac.yaml      | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> In this patch the definition of the corresponding driver is applied.
> If applying the definition of the devicetree, we need to change the driver
> instead of this patch.
> 
> diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
> index e88a86623fce..2332bf7cfcd4 100644
> --- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
> +++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
> @@ -158,11 +158,11 @@ properties:
>          * snps,xit_frm, unlock on WoL
>          * snps,wr_osr_lmt, max write outstanding req. limit
>          * snps,rd_osr_lmt, max read outstanding req. limit
> -        * snps,kbbe, do not cross 1KiB boundary.
> +        * snps,axi_kbbe, do not cross 1KiB boundary.
>          * snps,blen, this is a vector of supported burst length.
> -        * snps,fb, fixed-burst
> -        * snps,mb, mixed-burst
> -        * snps,rb, rebuild INCRx Burst
> +        * snps,axi_fb, fixed-burst
> +        * snps,axi_mb, mixed-burst
> +        * snps,axi_rb, rebuild INCRx Burst
>  
>    snps,mtl-rx-config:
>      $ref: /schemas/types.yaml#/definitions/phandle
> @@ -516,7 +516,7 @@ properties:
>          description:
>            max read outstanding req. limit
>  
> -      snps,kbbe:
> +      snps,axi_kbbe:

There is no such property. Driver parses snps,kbbe. What's more you
introduce invalid character - underscore - for property name.


Best regards,
Krzysztof

