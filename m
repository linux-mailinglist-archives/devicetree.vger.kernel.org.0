Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D4197364A4
	for <lists+devicetree@lfdr.de>; Tue, 20 Jun 2023 09:34:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229683AbjFTHeD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Jun 2023 03:34:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229680AbjFTHeC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Jun 2023 03:34:02 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D24AA119
        for <devicetree@vger.kernel.org>; Tue, 20 Jun 2023 00:34:00 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-3f9b4bf99c2so10752295e9.3
        for <devicetree@vger.kernel.org>; Tue, 20 Jun 2023 00:34:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687246439; x=1689838439;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=LJZvVnPb+GmVidOHlK5a7n33xKvssaTUl9azRgx5rNc=;
        b=M6jFWHWDhQMBcFwr1oWwZR9s1SVFu87rSYyx/G1DaoprPTjZZLak5RK7GCVjOG4vEg
         wlhhHB27AaJtyXrSz/9yOd2QPiTn9zj1wySF6BIj8qR68OBP/1kChb0S0H448Bs/sK0+
         pUxzsQoeXm3XDoVIF0PtPvYKFo0S4I5rk5nf5qn9CSBn3Q9rX7OcI2ekf6dLY5BBrcpA
         uzBTkf1IRVBdUxQMW55jZS0jBrfsfHxE4RKIiKYHp+by4NCi6rEToLywTHa/Wd28Gj+7
         4VGYAzOPHMDeZ1zanzGIrW1khe+UDAQs5zilpH62zNUn8HP1E5UxznEoC1Wf2EmW6cBG
         xbgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687246439; x=1689838439;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LJZvVnPb+GmVidOHlK5a7n33xKvssaTUl9azRgx5rNc=;
        b=StwddAoIaMWXKidLHqBAql94sB5jDNmyY6Y0HMLcc+fNuLcOZBUrzJn8UHrhj/wS0A
         IMQHldIY+ntOuQqCN6h4zIUWehvEB3b/v4TvO80RGpIa9H2GptDvH644SXK064Iuabaf
         W5MoJF5sEkClzTWpuzOcZv30uqSklI/NMrGRmCTE7p7ai2Cl5Q7NFVKvcL8mBycVdsrC
         W+JD1lt+srZUGuIsd5F4XGn7B4m97aQtH1iOx190VSrzoOXi75zlD0hhZ0zYVQeppPLV
         c55rBMZ8o/flItFyuqhUlF50YCoLhDM4QG/s3iN6omfKm+M/lksdHqmJtyOCVT3wSgTb
         tIwA==
X-Gm-Message-State: AC+VfDztqjRWwGr5mI8Mg9irFDPRpQZ056gx2w0CSQCxjBdQtJMiiP0h
        jcdJfZpaaxZCFs0PlaOEWnuPBw==
X-Google-Smtp-Source: ACHHUZ538LZx30+T3U70ZFTps+oJApLiDfsaLcxBhtsqhONStoage5d7m32DwMxRaqw1CrVe6oeuZA==
X-Received: by 2002:a7b:cbd0:0:b0:3f8:a56:e9f2 with SMTP id n16-20020a7bcbd0000000b003f80a56e9f2mr8506115wmi.1.1687246439251;
        Tue, 20 Jun 2023 00:33:59 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:496f:4432:b5b2:1b3b? ([2a01:e0a:982:cbb0:496f:4432:b5b2:1b3b])
        by smtp.gmail.com with ESMTPSA id k4-20020a05600c0b4400b003f727764b10sm1644587wmr.4.2023.06.20.00.33.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jun 2023 00:33:58 -0700 (PDT)
Message-ID: <777cf5df-6358-fa46-66cd-153d29763f77@linaro.org>
Date:   Tue, 20 Jun 2023 09:33:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2] dt-bindings: interrupt-controller: Convert Amlogic
 Meson GPIO interrupt controller binding
Content-Language: en-US
To:     Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <marc.zyngier@arm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Heiner Kallweit <hkallweit1@gmail.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <e06e9f26-cf55-5596-c799-d698e9d7b409@gmail.com>
Organization: Linaro Developer Services
In-Reply-To: <e06e9f26-cf55-5596-c799-d698e9d7b409@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 12/03/2023 22:29, Heiner Kallweit wrote:
> Convert Amlogic Meson GPIO interrupt controller binding to yaml.
> 
> Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> ---
> - consider that more than one compatible may be set
> - remove bus part from example
> - remove minItem/maxItem properties for compatible
> - reduce compatible fallback complexity
> - add that 8 or 12 GIC interrupts can be used
> - fix typo
> ---
>   .../amlogic,meson-gpio-intc.txt               | 38 ----------
>   .../amlogic,meson-gpio-intc.yaml              | 72 +++++++++++++++++++
>   2 files changed, 72 insertions(+), 38 deletions(-)
>   delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/amlogic,meson-gpio-intc.txt
>   create mode 100644 Documentation/devicetree/bindings/interrupt-controller/amlogic,meson-gpio-intc.yaml

Gentle ping, this patch is fully reviewed and is lying on the list for the last 3 months.

Thanks,
Neil


<snip>

