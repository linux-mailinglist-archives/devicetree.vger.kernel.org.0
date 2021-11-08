Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9233844800B
	for <lists+devicetree@lfdr.de>; Mon,  8 Nov 2021 14:08:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235217AbhKHNLU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Nov 2021 08:11:20 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:47748
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S235633AbhKHNLT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Nov 2021 08:11:19 -0500
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com [209.85.208.198])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 284FF3F1A4
        for <devicetree@vger.kernel.org>; Mon,  8 Nov 2021 13:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1636376907;
        bh=/ySngP9TOMBOgvGkesTjnWFyMrTzkSO4ZS4YMXYfRzE=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=PLut7+oBVWX7CFMYanxq4SIVrK9D8kOKV5ibRsqKIcsrgKfQqfkVQoPlLRvoECt8A
         TcoU49MF67F+w503HssJcJOTh510zVXriQnL80LIkji6fjNYmMNJW1yOty3GLgF2QY
         2hrY4yc/JxUqZXnyHbNZx51KA8xBpsp2Gb06vVgDYDERSJwCg+GjlUZ20sXWvOonKF
         +HkLcvdavDq/INy9du4sqq2R3RP9wOA9krf/wQ0ABn4s7fdcqa/JvjbXGi2KjGdAqG
         beBxlGZqPRLK/dTF83dtzwAKPEfefsqEzynmf2RB7H9m8ky6xq+90C40L2p0Shif/i
         CO7mLKnrH+L5Q==
Received: by mail-lj1-f198.google.com with SMTP id e13-20020a2e9e0d000000b00216ace8e8e5so5243864ljk.10
        for <devicetree@vger.kernel.org>; Mon, 08 Nov 2021 05:08:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=/ySngP9TOMBOgvGkesTjnWFyMrTzkSO4ZS4YMXYfRzE=;
        b=Ie7pGg2lOJnYVnkMQQbwjI8iJq/ZAW4b6sMPlFYe0D6l4ZxK3v2AN3SPI9i6v5HQhU
         J/K1GpJXw3Enm8jqd8c9LC0k6s2TPckc+ENK4QtY8iFcPZWYdTbdNfwPesw4aPSBKSDK
         jgrSqYs9aCRGvjKM/lR6AtFoFcgf8nXmCarADWU3M1iguvQb5e8dIn+5vXNfckC6tc0+
         Wrh9/BOdMK+BNLd+xfd+O+xH+ygqtRpUWC900ZqPTQIz1xSNtF44BaINyuEQfut/Vypn
         +ry7NBS1EafuhZD5hDlul1dhSMMmda/mtjKeR7qag8RVJXJh9T38/s/G2DPw3fJYWNgo
         SC3Q==
X-Gm-Message-State: AOAM530OTtvps8uGXBB/8hgUL/uR0AllGynTNkvcEmgKCp3KBEuICSuL
        YQqTLhH036zyX5pgV8rtQD25R5pL8dSZh44MNolWKP40yMOP+JatcncO+NeZ0H7HCUQwGxCedwo
        YfYlnKskAkRM7k+xSTqHG9UAkOjui06UKqCduNVs=
X-Received: by 2002:a19:7902:: with SMTP id u2mr51154116lfc.644.1636376906608;
        Mon, 08 Nov 2021 05:08:26 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwHuzpnBktBqI6ilkx+6XnxlpOfg0UhbRIfSUF/hD5lAIIYjIFaiyVDsreV9FymtsbnDRMVoQ==
X-Received: by 2002:a19:7902:: with SMTP id u2mr51154085lfc.644.1636376906335;
        Mon, 08 Nov 2021 05:08:26 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id s4sm2011138lfi.180.2021.11.08.05.08.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Nov 2021 05:08:25 -0800 (PST)
Message-ID: <806de5b0-a7ab-9d87-589e-9fc5e6f5a400@canonical.com>
Date:   Mon, 8 Nov 2021 14:08:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [PATCH v3 02/12] dt-bindings: watchdog: Document Exynos850
 watchdog bindings
Content-Language: en-US
To:     Sam Protsenko <semen.protsenko@linaro.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
References: <20211107202943.8859-1-semen.protsenko@linaro.org>
 <20211107202943.8859-3-semen.protsenko@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211107202943.8859-3-semen.protsenko@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/11/2021 21:29, Sam Protsenko wrote:
> Exynos850 SoC has two CPU clusters:
>   - cluster 0: contains CPUs #0, #1, #2, #3
>   - cluster 1: contains CPUs #4, #5, #6, #7
> 
> Each cluster has its own dedicated watchdog timer. Those WDT instances
> are controlled using different bits in PMU registers, new
> "samsung,index" property is added to tell the driver which bits to use
> for defined watchdog node.
> 
> Also on Exynos850 the peripheral clock and the source clock are two
> different clocks. Provide a way to specify two clocks in watchdog device
> tree node.
> 
> Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> ---
> Changes in v3:
>   - Renamed "samsung,index" property to more descriptive
>     "samsung,cluster-index"
>   - Disabled "samsung,cluster-index" property for SoCs other than
>     Exynos850
> 
> Changes in v2:
>   - Stated explicitly that Exynos850 driver requires 2 clocks
>   - Used single compatible for Exynos850
>   - Added "index" property to specify CPU cluster index
>   - Fixed a typo in commit message: dedicater -> dedicated
> 
>  .../bindings/watchdog/samsung-wdt.yaml        | 45 +++++++++++++++++--
>  1 file changed, 41 insertions(+), 4 deletions(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
