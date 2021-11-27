Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8ED4145FED3
	for <lists+devicetree@lfdr.de>; Sat, 27 Nov 2021 14:20:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354964AbhK0NYE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 Nov 2021 08:24:04 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:44094
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1354989AbhK0NWD (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sat, 27 Nov 2021 08:22:03 -0500
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com [209.85.128.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 768604074F
        for <devicetree@vger.kernel.org>; Sat, 27 Nov 2021 13:18:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1638019128;
        bh=kPJVl6Z5We0DFc0ztiQFBcLbP1LtPc3m0qtRs2jiBFM=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=SfprYOjXEWVRMiK/jS7zKq69e0SSyjircYCgmtqwGjTahuEGosvpUUOR+TWyhcN30
         3GnCnPcztvdc3sBhFKEdBubpGvxOJH4Z1wDJgcF6nXTwUxTgK9ZpnrtWGHbNlA7/F6
         PZP9A10/sB+cdLvqnyrVoFys9y3zt0BNYFtil6wOXSyKeYFWcc8Hq1eLxnwr7KhpoI
         sDFNgnfvFHYxFMB7g9UVft6nM8g6Tca052XU+3yfL7KfA4IYfYA5JmLs9eXRdF2NnR
         yVRjJJaYKgrtDRrYWPbFHccsqq3/1/anrSnUw3esPSKD9fGBIc9T5qCjiV5FDlMKfP
         rbyF4EtO2LXxw==
Received: by mail-wm1-f72.google.com with SMTP id g80-20020a1c2053000000b003331a764709so8688249wmg.2
        for <devicetree@vger.kernel.org>; Sat, 27 Nov 2021 05:18:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=kPJVl6Z5We0DFc0ztiQFBcLbP1LtPc3m0qtRs2jiBFM=;
        b=md4tpfOPmFf9aUEe0d/f6hfqFZRrj/Xp5syXGpVRj0oVWUtRBPLOGgmfeXQUzPOClN
         uM25PkUax5EXOb8glXeudkFYrKQPcV7DlrC3jRxna24yTBOBWrD/nyRaS+yalY7+f/6W
         PJJZfytuDeRN0cWAUDlVy9Ll7Y+dNXWEdzEWblGAkAzbJc6mBklmsBScQzvc5eArGVnM
         Kh43JU4oQWiCS51B0PAQ4g3x5PawdzLWjZ3UsbmC6rVNzUlPrzf+cIk2CsnnbJvLXP9U
         C7qOHYbfp3aO4xwbNmNoZVLiF32+vWhcX0yGDgwEX9GCLeQtPGJvt1MtGDu+g0BnKB2j
         uEhA==
X-Gm-Message-State: AOAM533DxDdkperKAWhRLytM53GEJJvKrGy7vF3h1RuvMkZ6RQ41xm3r
        BIQt6DnghNoqyJf0dcyQQc3J9CbeJuWGpQFKMxWwTegqikUSKh/0x0bhzKe0V9icaNRmGhtU+Ht
        pQKJv/bYdFzghmirtd0qoK8sXcDTzmrDpwkpXkkc=
X-Received: by 2002:a5d:63ca:: with SMTP id c10mr20815941wrw.124.1638019128227;
        Sat, 27 Nov 2021 05:18:48 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxOO+IlyrDLaZIl7/rvRYOzotxIQrszQV6Kgfuzv1tBT3sR0cBtSxbFds7/SxM0S0FlFjSohQ==
X-Received: by 2002:a5d:63ca:: with SMTP id c10mr20815919wrw.124.1638019128093;
        Sat, 27 Nov 2021 05:18:48 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id d15sm12021086wri.50.2021.11.27.05.18.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Nov 2021 05:18:47 -0800 (PST)
Message-ID: <18e105d0-7df9-9f5e-e2e0-1859ee18e3f1@canonical.com>
Date:   Sat, 27 Nov 2021 14:18:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH 2/2] clk: samsung: exynos850: Add missing sysreg clocks
Content-Language: en-US
To:     Sam Protsenko <semen.protsenko@linaro.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        David Virag <virag.david003@gmail.com>,
        =?UTF-8?Q?Pawe=c5=82_Chmiel?= <pawel.mikolaj.chmiel@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org
References: <20211126203641.24005-1-semen.protsenko@linaro.org>
 <20211126203641.24005-2-semen.protsenko@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211126203641.24005-2-semen.protsenko@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/11/2021 21:36, Sam Protsenko wrote:
> System Register is used to configure system behavior, like USI protocol,
> etc. SYSREG clocks should be provided to corresponding syscon nodes, to
> make it possible to modify SYSREG registers.
> 
> While at it, add also missing PMU and GPIO clocks, which looks necessary
> and might be needed for corresponding Exynos850 features soon.
> 
> Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> ---
>  drivers/clk/samsung/clk-exynos850.c | 29 +++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
