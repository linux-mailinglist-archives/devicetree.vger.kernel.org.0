Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6745F44BC8D
	for <lists+devicetree@lfdr.de>; Wed, 10 Nov 2021 09:06:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230034AbhKJIJg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Nov 2021 03:09:36 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:59554
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229864AbhKJIJf (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 10 Nov 2021 03:09:35 -0500
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com [209.85.167.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id E72093F1EB
        for <devicetree@vger.kernel.org>; Wed, 10 Nov 2021 08:06:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1636531607;
        bh=TrlhY2eWu4+cSkNw8lOs81Dr4Hxgj5yITFqJv4cv7TU=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=o2mS2fib2G2KWBj3dG7ZHzVppsHg13l7M4WFq9vhDBX4G9g5lM7+DjOPyIo53puKJ
         p86CQxlTmQthcO55ujkduFUDwg8tJHl/oDd3MnZgYk8NQbpdFnwYVs3+kyUWLUf6UG
         T++Xi9AneOkLCOHjv7DaWCRQf8nS+2Wx1XGcPDSwTBnmLgEcBOP8/OvUa9fzNaiAIU
         kYknXfFvi1ETLgOPp6S7uTQJeqjlgyhop4y6jxAUAgGwI9/qFYaeeX33RrByTNFm8m
         V4NYe/d0dp+La5YirAFmt/553815mb60o12ng+SbDaJQVEhECFV39atYrWSk/YLDJb
         RFmWA6l8eirEg==
Received: by mail-lf1-f69.google.com with SMTP id n18-20020a0565120ad200b004036c43a0ddso943896lfu.2
        for <devicetree@vger.kernel.org>; Wed, 10 Nov 2021 00:06:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=TrlhY2eWu4+cSkNw8lOs81Dr4Hxgj5yITFqJv4cv7TU=;
        b=5fRfpkBkT7giOIEIs8y8yT2hVYWJr857kvPKkiEIv0oXdhOIuvnPoz61AAkI7Nexti
         7Jx8v5S5PWgn0j61GOGxj1ea2kFiLhcoWtUedMnZ1o/7ECSvKq9AMlt1gkap+qC6vDxs
         hsdnOugVYZFZSyU9zT5EbDnQKO+J99/oqAEyKlRxuVZWrC2uCEXY1JflQ57HPvQfFTFS
         vapnXXhu97ZYXNRXtf7Hex6N4YoGNBM3RDnsfVbNwdGQM1gRD6yK/5Xzqubjlpc64X/W
         FZw7rmkk84uxUUKoytr508MRFjiZ/ptWk2gMMRl2wk4/Vo3yxANu3tG1Kq3XmROvUXBQ
         lrDA==
X-Gm-Message-State: AOAM533nlFd+0Cm0M8df6I2msRcYZKMJobJBqo5I6RA9op9Q/szJO5oZ
        /b594pZl05LPT0A+msvM+UDyA5YmZmQ7T/owS3zpexFUdtkX8W1nmdTRpTFfCXeVVGWfG1hMM/M
        wn2AVEIMVw2hbjY6ataj2exYO6TBNexAu1WUJULk=
X-Received: by 2002:a2e:b88e:: with SMTP id r14mr2676091ljp.365.1636531607306;
        Wed, 10 Nov 2021 00:06:47 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxygQ7lLd6IGWFDLK2jxYryXTNGiq86UGDABihGmOaLiGBN1o/WPY07PA4vF/suyqqiCxFLOg==
X-Received: by 2002:a2e:b88e:: with SMTP id r14mr2676079ljp.365.1636531607160;
        Wed, 10 Nov 2021 00:06:47 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id e11sm2200811ljj.99.2021.11.10.00.06.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Nov 2021 00:06:46 -0800 (PST)
Message-ID: <9073d9d4-4e67-446e-1c68-6b8954907d8e@canonical.com>
Date:   Wed, 10 Nov 2021 09:06:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [PATCH 2/2] clk: samsung: exynos850: Implement CMU_CMGP domain
Content-Language: en-US
To:     Sam Protsenko <semen.protsenko@linaro.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        =?UTF-8?Q?Pawe=c5=82_Chmiel?= <pawel.mikolaj.chmiel@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>
Cc:     Sumit Semwal <sumit.semwal@linaro.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org
References: <20211109164436.11098-1-semen.protsenko@linaro.org>
 <20211109164436.11098-3-semen.protsenko@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211109164436.11098-3-semen.protsenko@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/11/2021 17:44, Sam Protsenko wrote:
> CMU_CMGP clock domain provides clocks for CMGP IP-core (Common GPIO).
> CMGP module incapsulates next blocks:
>   - 8 GPIO lines
>   - 1 GPADC
>   - 2 USI blocks, each can be configured to provide one of
>     UART/SPI/HSI2C serial interfaces
> 
> Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> ---
>  drivers/clk/samsung/clk-exynos850.c   | 100 ++++++++++++++++++++++++++
>  include/dt-bindings/clock/exynos850.h |  17 +++++
>  2 files changed, 117 insertions(+)
> 

The header might need to be a separate patch, I think it was
preferred... anyway, I am fine with this approach as well:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

Best regards,
Krzysztof
