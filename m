Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F0607492DCF
	for <lists+devicetree@lfdr.de>; Tue, 18 Jan 2022 19:48:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244907AbiARSsw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jan 2022 13:48:52 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:44560
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S245136AbiARSsv (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 18 Jan 2022 13:48:51 -0500
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 797DE3F31F
        for <devicetree@vger.kernel.org>; Tue, 18 Jan 2022 18:48:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642531730;
        bh=osZDE2qGikhWPKRozLWA0fiHv6mtb/zkWnvdgeIXyQ0=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=eJYjtqL4FeiYNjuqt5w07987w3oNVbamlySYAFNr6vvN+a3aB28YDx1Oo6sfV+rYT
         r2VLKu2H6v2AmGDqGD1hVSmWpt/Pl5Sjd7plCeP1tvlxv+GsWsxiw9VtgHaONGGCzs
         HbIDAojN2rEV82zcSPyE9PoGJN0BwwtzvVocbG+WEGKJ9Z4FexVYb0yyBgwh3GeWjI
         RUDqVhYkgWQRL+fPtEsqJGSYK3gE7yo0mlVQ4XnWODOflMeBn0hKzs9F7/GwpIiE7S
         jfuy/DIrYCQRe5F3RTmsucE146KwHaX0XVBMJ1ygrc3rFsbxBluYuYFdd5qFztsf5S
         HOyIcm9bP+YrQ==
Received: by mail-ed1-f71.google.com with SMTP id el8-20020a056402360800b00403bbdcef64so1948379edb.14
        for <devicetree@vger.kernel.org>; Tue, 18 Jan 2022 10:48:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=osZDE2qGikhWPKRozLWA0fiHv6mtb/zkWnvdgeIXyQ0=;
        b=NB2Plzl0IpwTmzhKeZmyEvGKt/5DI39QsfoWG3RLzUmccstJrjqiXhWZ2pUh1x9d8O
         /RPfckAJCbHcvFY8a5DP3424CHDc9mOGYCEvOCHlpYY1jaOs5iHrKmplI+hwOrNG1srX
         FP0HacuGxTp57Jbpedk2wG8qDHxz12uWcMapDl0jZSa+uUWd9iVa1JjzJMLJpUUig4J8
         giTiXnjfBQDAiI1l6G8mg8Qw47Gn9tQWuGMGy3MG5JbYHFHDY8bUt5mhkb4gUzrq7180
         yyz8YRoc0jlSLjsOUFIk7vAPwjuvYakrumK8t7QYewH725ndHlQsdXMQqcuOCe6WIsRr
         KIDQ==
X-Gm-Message-State: AOAM532himAHa9WlbBUw+uivnMvwM+nz2xax7kukkuNkvtQjttkhDQe8
        0laN5XCiWVl1ZIe/XVjuvFbwGBgIOVE5HySx4pG2eYoSNYd0H9akPiT700KoHVHbq4mgn83vNRJ
        tkrNZyfCQjZ3YyBV9/fKZ7XBmQCO5IIFWoQt4B48=
X-Received: by 2002:a17:907:a41e:: with SMTP id sg30mr20960067ejc.249.1642531729187;
        Tue, 18 Jan 2022 10:48:49 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxpN3EF5AfOUem/IDvegEXyXvqnsF247GmVHd467UwQ9IoE4dMFmiP2V+P6uDursbIxrwr+/w==
X-Received: by 2002:a17:907:a41e:: with SMTP id sg30mr20960052ejc.249.1642531729018;
        Tue, 18 Jan 2022 10:48:49 -0800 (PST)
Received: from [192.168.0.42] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id ga7sm5590389ejc.50.2022.01.18.10.48.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jan 2022 10:48:48 -0800 (PST)
Message-ID: <a1ca1ad2-5e24-0cd4-cbf2-bdf867cccbd7@canonical.com>
Date:   Tue, 18 Jan 2022 19:48:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH v2 12/16] pinctrl: samsung: add FSD SoC specific data
Content-Language: en-US
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     soc@kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, olof@lixom.net, arnd@arndb.de,
        linus.walleij@linaro.org, catalin.marinas@arm.com,
        robh+dt@kernel.org, s.nawrocki@samsung.com,
        linux-samsung-soc@vger.kernel.org, pankaj.dubey@samsung.com,
        linux-fsd@tesla.com, Ajay Kumar <ajaykumar.rs@samsung.com>
References: <20220118144851.69537-1-alim.akhtar@samsung.com>
 <CGME20220118150100epcas5p3b7cf28e13fd177336dc9b06875d94f43@epcas5p3.samsung.com>
 <20220118144851.69537-13-alim.akhtar@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220118144851.69537-13-alim.akhtar@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/01/2022 15:48, Alim Akhtar wrote:
> Adds Tesla FSD SoC specific data to enable pinctrl.
> FSD SoC has similar pinctrl controller as found in the most
> samsung/exynos SoCs.

s/samsung/Samsung/
s/exynos/Exynos/

> 
> Cc: linux-fsd@tesla.com
> Acked-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Ajay Kumar <ajaykumar.rs@samsung.com>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> ---
>  .../pinctrl/samsung/pinctrl-exynos-arm64.c    | 71 +++++++++++++++++++
>  drivers/pinctrl/samsung/pinctrl-samsung.c     |  2 +
>  drivers/pinctrl/samsung/pinctrl-samsung.h     |  1 +
>  3 files changed, 74 insertions(+)
> 

Looks good to me. I'll take it via Samsung pinctrl tree after the merge
window.

Best regards,
Krzysztof
