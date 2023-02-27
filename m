Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6503B6A3BD5
	for <lists+devicetree@lfdr.de>; Mon, 27 Feb 2023 08:49:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229554AbjB0Ht0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Feb 2023 02:49:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229644AbjB0HtZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Feb 2023 02:49:25 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B5ED6E8F
        for <devicetree@vger.kernel.org>; Sun, 26 Feb 2023 23:49:24 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id t25-20020a1c7719000000b003eb052cc5ccso5981219wmi.4
        for <devicetree@vger.kernel.org>; Sun, 26 Feb 2023 23:49:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4Ycf/1DHiIBJkbJqFKgRbDTb3vkYPvA2yBL4QswDweg=;
        b=Nsn29ewV25HyLTZv5+ulCGCQ9jawCqsPKc3XsTvputqhHssrh503KI7JFAZRiQNGJn
         OfuM2jptrFVnxLyLhr5sTtMP4M+dN4odb2Vh22mwWBLATyhQNcpmRow/REYcn//PSFPQ
         QLhNyXPYFU55+SZaUSr7zSp/LYLN7mlcjfiYkWOTNXZuQJKCTJAsh+B6efzE18EJSLy3
         cQLfTFpzKxdNzBXvYeeJgn+Y7p9bAg4IXGFUizmnfaQ8AkrQWepPjz2o+t/Fi9IbSInf
         BiZETxf0mEuZlF/Mbdm2A4CP3bCHiwb2cwNwtOYDLx2yUtYIpAhThoCwZuSFTFcA/WcV
         iIGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4Ycf/1DHiIBJkbJqFKgRbDTb3vkYPvA2yBL4QswDweg=;
        b=AbcmN/2IC4jqx2FqZgDUwSxDMDhoSxMmKwYJGWOzot1M58BRGEHsCw1ycqwqeV+iKf
         n+vRQFTMKxwb+I6GvVCHYBRLYMDiEG5vSDKo+ssBxgEVHGxeofzWr7HIAbIChbLTrhR4
         /acO5wkU6kP8xYCLwdSOe693LIIJJvCMuFmftab8VZrmfB9oEeBZ6gBvfHN68X7Lzsgf
         P++wdhCr8tLB9Qj4nJUeZyp7XOMn944CnYcjf2kXkDD00GECZa7b0Xi6hBQybXzV/xkl
         5Ul2ZbpjCroh9qsScSqsxv86j8VzbGKZHORpaxtOoHU+sBU4A5ZTs0ZB/EWQDaXJx2Ug
         JZHQ==
X-Gm-Message-State: AO0yUKVxKqr5boLr4KmfurWA3/5z/QDhJ+U2nym7P2sGFqzV4LcOqLAf
        7Isi0t2LZpRNJ5Ufjuiy2ZNmcA==
X-Google-Smtp-Source: AK7set+uy4CIbgfqr/4vF66YLepUH0oqU0k8NTYmHMRLV9U0XEzhPXvIX66mYumEFmhYIpRHt2JVLA==
X-Received: by 2002:a05:600c:16c7:b0:3eb:cf1:f2b6 with SMTP id l7-20020a05600c16c700b003eb0cf1f2b6mr8365815wmn.14.1677484162669;
        Sun, 26 Feb 2023 23:49:22 -0800 (PST)
Received: from [192.168.1.20] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id 2-20020a05600c028200b003e9ded91c27sm11701671wmk.4.2023.02.26.23.49.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Feb 2023 23:49:22 -0800 (PST)
Message-ID: <25558bd1-a79f-0356-1471-7c00bdedc553@linaro.org>
Date:   Mon, 27 Feb 2023 08:49:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/3 V2] dt-bindings: net: realtek-bluetooth: Add RTL8821CS
To:     Chris Morgan <macroalpha82@gmail.com>,
        linux-bluetooth@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        alistair@alistair23.me, anarsoul@gmail.com, luiz.dentz@gmail.com,
        johan.hedberg@gmail.com, marcel@holtmann.org, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
References: <20230224232339.124969-1-macroalpha82@gmail.com>
 <20230224232339.124969-2-macroalpha82@gmail.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230224232339.124969-2-macroalpha82@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/02/2023 00:23, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add compatible string for RTL8821CS for existing Realtek Bluetooth
> driver.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../bindings/net/realtek-bluetooth.yaml       | 23 +++++++++++--------
>  1 file changed, 14 insertions(+), 9 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
> index 143b5667abad..f91d06d629b9 100644
> --- a/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
> +++ b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
> @@ -4,24 +4,29 @@
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
> +      - const: realtek,rtl8723bs-bt
> +      - const: realtek,rtl8723cs-bt
> +      - const: realtek,rtl8723ds-bt
> +      - const: realtek,rtl8822cs-bt

These still should be an enum. Why changing them?

> +      - items:
> +          - enum:
> +              - realtek,rtl8821cs-bt
> +          - const: realtek,rtl8822cs-bt

Best regards,
Krzysztof

