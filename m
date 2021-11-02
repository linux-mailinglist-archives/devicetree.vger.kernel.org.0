Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 93E14442B85
	for <lists+devicetree@lfdr.de>; Tue,  2 Nov 2021 11:17:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230353AbhKBKUE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Nov 2021 06:20:04 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:33664
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230128AbhKBKUE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Nov 2021 06:20:04 -0400
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com [209.85.167.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 091DE3F1B6
        for <devicetree@vger.kernel.org>; Tue,  2 Nov 2021 10:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1635848249;
        bh=qFp3q5hZCO/r7sj/TH7x8r3NQRA3y1FJzuby+NMjG4w=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=RX9SxcuaH45XwRqdDxYtMwFebm/o8+KBrlqhsdXbtUndBOSB6syLED0sMqBnpJOrD
         TkocDf6nNmjP1RMbzz99G4/6p8ebV/0QsGrXSD2VVqvopibpmYqMixTgJ4GKW2lIur
         lGSU8hS5ai7Dqf3pfY+zTwxTsi07PzPZVFFi6RAlbTn/vRoSHAdkRh/QE7hg0TFfv9
         hxsDRZctxq1VH4NWzI3PvxRtT3VG+qrxlb0X8IxyesQbcTX1y+UUQV3USShSflbGI3
         o+uJ0TMUMZnjpmWLLFa03FmDf6Gqysvoaw/7iqiNSpJClYqi9MgWGQPunKr7+K0gue
         Oup5fmW7pQmsQ==
Received: by mail-lf1-f71.google.com with SMTP id b12-20020a0565120b8c00b003ffa7050931so6823537lfv.13
        for <devicetree@vger.kernel.org>; Tue, 02 Nov 2021 03:17:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=qFp3q5hZCO/r7sj/TH7x8r3NQRA3y1FJzuby+NMjG4w=;
        b=NSrGDo8FqeeG3jbfd1tXLWMz7wNGJoq/Ibz3ENgjTYIfWxtPCH7+3PR8cNSGHo8Lr1
         iwk4ynZEdukDQW9HV/Uos6Z/DGyT2glWw3cHObUBBlmixl1OP4genHWVCe8rqSGMSCPJ
         kV9D+GP+5EUWJoSOtU6fMbWR/aXb0hta1saCj/LmDEyoHKN3GDI70zpRR7DkZRCZ5RTO
         teCM2UTYwdDioaKvXgKnu61Rwdw3TMsEQimw0iVitVlm87/DUjzGmh9P9VKrkg6PLsUX
         FwwRrFF6QSIbbOBNhWaOrDsMofqwKhFtblixwEo/CHxhnz29ZURsWPezwt3hVb9F2XmO
         lwwg==
X-Gm-Message-State: AOAM530phE0PogvwliGiLAHmZHaijdOdnNmfLf2oCh8eoz8HTLBKZ6ZJ
        4eozVfmJSmWIvAU8Ouo7olY2eruBIZ1hawpLWF5VUFbCpldpZEY8RQOctA51lWNpDzJC92Xupgg
        npzdqO0jh5Vc9l+N2S9RzybmAV0xg25Aue8NIByo=
X-Received: by 2002:a05:651c:2103:: with SMTP id a3mr22674495ljq.435.1635848248389;
        Tue, 02 Nov 2021 03:17:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzxRLdyqumT/LhScAMJcZXTsrzaGJSgFs1mm13/XjJYvZICtfk8wqa9hvcNjGfVdWe7t6j9bw==
X-Received: by 2002:a05:651c:2103:: with SMTP id a3mr22674460ljq.435.1635848248128;
        Tue, 02 Nov 2021 03:17:28 -0700 (PDT)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id f8sm1648313lfu.5.2021.11.02.03.17.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Nov 2021 03:17:27 -0700 (PDT)
Message-ID: <3a9b2a41-03ba-56fe-dc6b-906fa948b6b5@canonical.com>
Date:   Tue, 2 Nov 2021 11:17:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.2
Subject: Re: [PATCH v2 07/12] watchdog: s3c2410: Implement a way to invert
 mask reg value
Content-Language: en-US
To:     Sam Protsenko <semen.protsenko@linaro.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
References: <20211031122216.30212-1-semen.protsenko@linaro.org>
 <20211031122216.30212-8-semen.protsenko@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211031122216.30212-8-semen.protsenko@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/10/2021 13:22, Sam Protsenko wrote:
> On new Exynos chips (like Exynos850) the MASK_WDT_RESET_REQUEST register
> is replaced with CLUSTERx_NONCPU_INT_EN, and its mask bit value meaning
> was reversed: for new register the bit value "1" means "Interrupt
> enabled", while for MASK_WDT_RESET_REQUEST register "1" means "Mask the
> interrupt" (i.e. "Interrupt disabled").
> 
> Introduce "mask_reset_inv" boolean field in driver data structure; when
> that field is "true", mask register handling function will invert the
> value before setting it to the register.
> 
> This commit doesn't bring any functional change to existing devices, but
> merely provides an infrastructure for upcoming chips support.
> 
> Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> ---
> Changes in v2:
>   - (none): it's a new patch
> 
>  drivers/watchdog/s3c2410_wdt.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
