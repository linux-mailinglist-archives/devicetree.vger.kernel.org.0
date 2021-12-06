Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 484FC469137
	for <lists+devicetree@lfdr.de>; Mon,  6 Dec 2021 09:10:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238931AbhLFINv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Dec 2021 03:13:51 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:39638
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238934AbhLFINs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Dec 2021 03:13:48 -0500
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com [209.85.167.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 05AB93F1D7
        for <devicetree@vger.kernel.org>; Mon,  6 Dec 2021 08:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1638778219;
        bh=TNvD0Sp5JjxJ2jPDnsvCbR9wfcFKlYmseYXSOvUItOc=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=TLglKX6q7tetzcWv3yo2Qr4RBtMTkrf2SXCE2E7JkcR7tKn3ISlWp2VqmagLLiF+S
         ffHtP5TPx789TLKAvbYTyDq4wdWOupZ6mjwhTjQLHZQ/fYKgGzzKCSjyEEhJgMfu9A
         /h1Qz5VxRSp3gvEoTp29zQsgEgpDpQOfXHVl4IahPCD7ZZCE81fnF3b1LNR3Dm8UPc
         EWPgjc5SULDvS136bBiFErbyzkO+GzEGafJMqaF5mD3B5E2NSsP7dYPFeKRi26FVdi
         3dbxSEUvPzUAdm41xSp04sfk6KtSya5N03LJXmZILAtmHwqTTF9fM6D7Je1BNIwmpU
         AvqUEQO9qJRTA==
Received: by mail-lf1-f72.google.com with SMTP id d26-20020ac244da000000b00417e1d212a2so3550362lfm.0
        for <devicetree@vger.kernel.org>; Mon, 06 Dec 2021 00:10:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=TNvD0Sp5JjxJ2jPDnsvCbR9wfcFKlYmseYXSOvUItOc=;
        b=lnAYSqxriIz0kcgDSfTi+B1uw/1tMdIHJXFcbJtWmwVEmd4/1En5r4UuouX3nrVSV5
         UmlnR2vDoari7FlJhtinUEwfkILe2NWVvT+gjRzQGHyw3v+3bZWwHt99BLC3AQiMvNZw
         KceM/5GcOUb4iQWFyHdixJssTXJArvHq9KJ0vVK38AiCrCh5iwfj4f5dK/3qXSxOlD/D
         j0mXw2fG6wNkYX9elYW3saPUqgtpvKb59eHvKd3V2NJHKwij8UtRYwvX7T/FtpVkb/mP
         XYt8WMeQieQthr0rbEwcT6ptdxu0+++DFn/XyleQT9sG1ky6y6t0cL0OwOppwbDA3r+P
         EaKw==
X-Gm-Message-State: AOAM531++lRJWqdYBd0Se3MVdvgxEOZkBi4B+5qX0QdyZSnWb8lET0eM
        m9OU7FveSbR+b2aRmFfK2A0nZDK0iapbnqhgre0a3qshwwHOk416Gjl0Ulyvw3P4kLlOTcFiY0G
        RVoI9/j/xcmiTAd97GdxQ59gNLU9nFBvUyHc7uno=
X-Received: by 2002:a2e:7c16:: with SMTP id x22mr34777595ljc.460.1638778217806;
        Mon, 06 Dec 2021 00:10:17 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzOELswYaEcckDrfkpdzzhH6zAVoX8tSQw+t69lCRWWti3skzA0dAdyJuJJLo6WDbOsruROFg==
X-Received: by 2002:a2e:7c16:: with SMTP id x22mr34777539ljc.460.1638778216967;
        Mon, 06 Dec 2021 00:10:16 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id u8sm1248659lje.91.2021.12.06.00.10.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Dec 2021 00:10:16 -0800 (PST)
Message-ID: <667d2f3a-4cc2-5aee-7b23-72279b70eee4@canonical.com>
Date:   Mon, 6 Dec 2021 09:10:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH v3 5/7] clk: samsung: clk-pll: Add support for pll1417x
Content-Language: en-US
To:     David Virag <virag.david003@gmail.com>
Cc:     Sam Protsenko <semen.protsenko@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
References: <20211205230804.202292-1-virag.david003@gmail.com>
 <20211205230804.202292-6-virag.david003@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211205230804.202292-6-virag.david003@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/12/2021 00:07, David Virag wrote:
> pll1417x is used in Exynos7885 SoC for top-level integer PLLs.
> It is similar enough to pll0822x that practically the same code can
> handle both. The difference that's to be noted is that when defining a
> pl1417x PLL, the "con" parameter of the PLL macro should be set to the
> CON1 register instead of CON3, like this:
> 
>     PLL(pll_1417x, CLK_FOUT_SHARED0_PLL, "fout_shared0_pll", "oscclk",
>         PLL_LOCKTIME_PLL_SHARED0, PLL_CON0_PLL_SHARED0,
>         NULL),
> 
> Signed-off-by: David Virag <virag.david003@gmail.com>
> ---
> Changes in v2:
>   - Nothing
> 
> Changes in v3:
>   - Nothing
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
