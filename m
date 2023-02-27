Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 32BA56A4730
	for <lists+devicetree@lfdr.de>; Mon, 27 Feb 2023 17:39:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229786AbjB0Qjl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Feb 2023 11:39:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229755AbjB0Qjk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Feb 2023 11:39:40 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B09E9EFB
        for <devicetree@vger.kernel.org>; Mon, 27 Feb 2023 08:39:39 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id m14-20020a7bce0e000000b003e00c739ce4so4205974wmc.5
        for <devicetree@vger.kernel.org>; Mon, 27 Feb 2023 08:39:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=crbERNB/KRiPX3Ns+MACGOaRXuvcwQ4dJP1SUBpCJ8g=;
        b=Gdw1WjhW8fLA8jwW+s+geHgS3eG/p54KN9TXeayWH39nZnfmEv52LDFWQV2UBRD57L
         I6H+KGeaboGegcC363z2APwz2ABZuqCQ7ksqMdNcciFAQ5Fxik6FVfgCQytgljyejMAJ
         /R9av1khB9IWzoQMmBD+IF9MYWZWrQEvVEFLcE5dd/LNNEJGIOstujWzpT8gxWkYkVHD
         BzoUvkxWKR3w2N0J/FE+9p9NpZ0Ho0h5eaCm/LRXD9We7FYL5nfkHkA8kOKVM6zuE156
         AbZOtSR+Zm8FIZPdyTQrqU7U3ZdCg+9cHIICwLjzGp47OGEtuiUqTPFDHmxBBWdyDUn5
         T1kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=crbERNB/KRiPX3Ns+MACGOaRXuvcwQ4dJP1SUBpCJ8g=;
        b=FNtw4HiN8cCiQN7owWuMxRBOOBOeVdvK8pqR8r5Xb0HjZf2Db6iImWv+EciXCORM5g
         D+sFJFF9+C7vR4A4KtwY196FYhEbWBFyPryHjcHXRVnV5TL7X9Jx31mTcQ9w4b3IuuyB
         pAMMrsc9Igir9JAoRByPiwLDwya3ZnTo6JbeMIy5LJo05bmCImjmoNevr4wlb+GpYdj7
         hyKXeNxqOxhzxCKGUqA12+l9SvwNm0ENw/fePVr2d9wc44wDeobt1U9uKh2kBYWNU6lt
         Sy8RBq3Ez7rub4m0mN17mw/SgWhgXZuqZsdUh8YRodKrOxrGn3Iz0IpN9RPIIfy70ANl
         xiDw==
X-Gm-Message-State: AO0yUKXZs7vVii95CvSj4isorcPyfhsmSIT4NpHPSi3j9azaNj/1bUS1
        1Tu15cY2GugmxHa0YlubQDQqAmyOtVMyzCpQ
X-Google-Smtp-Source: AK7set8klad7bCsER3tYb5FwPiD6RW3fkao5lu6U9BHq6wZUQtRDDX+xscy8gxmRafyasXusCVWgcA==
X-Received: by 2002:a05:600c:3586:b0:3df:9858:c039 with SMTP id p6-20020a05600c358600b003df9858c039mr6870854wmq.14.1677515977564;
        Mon, 27 Feb 2023 08:39:37 -0800 (PST)
Received: from [192.168.1.20] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id c20-20020a7bc854000000b003dd1bd66e0dsm9630740wml.3.2023.02.27.08.39.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Feb 2023 08:39:37 -0800 (PST)
Message-ID: <a90451df-0191-a2fb-060d-66ce5afb55d2@linaro.org>
Date:   Mon, 27 Feb 2023 17:39:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/3 V3] dt-bindings: net: realtek-bluetooth: Add RTL8821CS
Content-Language: en-US
To:     Chris Morgan <macroalpha82@gmail.com>,
        linux-bluetooth@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        alistair@alistair23.me, anarsoul@gmail.com, luiz.dentz@gmail.com,
        johan.hedberg@gmail.com, marcel@holtmann.org, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
References: <20230227163027.130292-1-macroalpha82@gmail.com>
 <20230227163027.130292-2-macroalpha82@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230227163027.130292-2-macroalpha82@gmail.com>
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

On 27/02/2023 17:30, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add compatible string for RTL8821CS for existing Realtek Bluetooth
> driver.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../bindings/net/realtek-bluetooth.yaml       | 25 ++++++++++++-------
>  1 file changed, 16 insertions(+), 9 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
> index 143b5667abad..198c5dd1f257 100644
> --- a/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
> +++ b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
> @@ -4,24 +4,31 @@
>  $id: http://devicetree.org/schemas/net/realtek-bluetooth.yaml#
>  $schema: http://devicetree.org/meta-schemas/core.yaml#
>  
> -title: RTL8723BS/RTL8723CS/RTL8822CS Bluetooth
> +title: RTL8723BS/RTL8723CS/RTL8821CS/RTL8822CS Bluetooth
>  
>  maintainers:
>    - Vasily Khoruzhick <anarsoul@gmail.com>
>    - Alistair Francis <alistair@alistair23.me>
>  
>  description:
> -  RTL8723CS/RTL8723CS/RTL8822CS is WiFi + BT chip. WiFi part is connected over
> -  SDIO, while BT is connected over serial. It speaks H5 protocol with few
> -  extra commands to upload firmware and change module speed.
> +  RTL8723CS/RTL8723CS/RTL8821CS/RTL8822CS is a WiFi + BT chip. WiFi part
> +  is connected over SDIO, while BT is connected over serial. It speaks
> +  H5 protocol with few extra commands to upload firmware and change
> +  module speed.
>  
>  properties:
>    compatible:
> -    enum:
> -      - realtek,rtl8723bs-bt
> -      - realtek,rtl8723cs-bt
> -      - realtek,rtl8723ds-bt
> -      - realtek,rtl8822cs-bt
> +    oneOf:
> +      - items:

Now you added items which were never here... You have only one item, so
no need for items.
Best regards,
Krzysztof

