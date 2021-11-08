Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6A1EE44803F
	for <lists+devicetree@lfdr.de>; Mon,  8 Nov 2021 14:24:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239932AbhKHN1Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Nov 2021 08:27:16 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:48668
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239928AbhKHN1P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Nov 2021 08:27:15 -0500
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com [209.85.167.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 547D13F1A4
        for <devicetree@vger.kernel.org>; Mon,  8 Nov 2021 13:24:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1636377870;
        bh=/hm+frlIkfRbj18ggfJvfVA8HIIe4O3xDAkmIFBlwTA=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=U0P2r5mfZ6HlnC0ACTxvRwEzeqPpvugDCLnTqns0Q3oRmZWRGGA1W6K1lGOJ8oIFN
         UctLLqdihJopNNFQbgsYKqFX09sk+uDrtrlV0C3bDEEmlW81LkLkdq4rXF9qbnDA2Q
         Xa8GhCq9w7XxOJc0AwfzEtR72ZenUzQz5zM66je1yq8j9ijLuX6peolOHm1Xye20fL
         kZXoue/SU73pARL68otws4u/F7ziIhQ3xvRo5xow9ooIq1+8K1xyS4Q5mQt679CTwS
         k+KNSEohv5sInbIxk0wOH05rPBPdVLRFwAqKfwty/Exsk07SCOxndnNolN0Y32/pbK
         gzqiJ6806k2Jg==
Received: by mail-lf1-f72.google.com with SMTP id f11-20020ac24e4b000000b004001e7ea61cso6480597lfr.6
        for <devicetree@vger.kernel.org>; Mon, 08 Nov 2021 05:24:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=/hm+frlIkfRbj18ggfJvfVA8HIIe4O3xDAkmIFBlwTA=;
        b=myPlf86TVXPiFPCFPZLr9liZD1cFDMcPXxdM1UELhjtO2oPHzzdksEqzSrO66XvSdd
         XdzTa7B1HyAhYVr6ifLHlPAq88oqB+bRt8gBdyF5Fh/HfuoMKpRMvQtR5y7UeI9AHW0C
         yWyMd5QBP/l3cAr+DBmiAszGe52OzfCiil4XAbyWlDgy4NS70Z7mTiraXuQIxgOH32Mo
         9dbaY79JJ3QUuYXaRqXjkrkaGH7cYQMFkeN4BMiWjWzHYWhsEF7BYBMyti6GeT0It6go
         LCbzBodmTkODVZQs6Nkw2RUvE3R05jGwATFcU+RdwJM7qPKh7zf0ZLozUw5PdeQme/mr
         cwMA==
X-Gm-Message-State: AOAM533EJ4uWdTHkvLWSWkqpRlHINzK9nfxMLVGIGP90/73yFI2j/KIi
        wzU7dm7lsR3yMPjCy0lg7/T9WQnCG33iOa3P+aFzRcMH8gt2OjQQLwt+TXmhNLEbeFAZN88nnqH
        mgnf26JsIprVNT4/YZki6BOrFYh54LRGNn4COJjY=
X-Received: by 2002:a2e:3803:: with SMTP id f3mr10888415lja.460.1636377869360;
        Mon, 08 Nov 2021 05:24:29 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyjqrwH68UZei4PQ8gNRPh9hkUMStu/9MMdUsMdfRFhdPTou/EX5PUQAI5rB4VsmqAfR/889Q==
X-Received: by 2002:a2e:3803:: with SMTP id f3mr10888395lja.460.1636377869193;
        Mon, 08 Nov 2021 05:24:29 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id l2sm1182683lfg.290.2021.11.08.05.24.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Nov 2021 05:24:28 -0800 (PST)
Message-ID: <f1a28b8f-c27d-19ae-a993-3fbe614d17b3@canonical.com>
Date:   Mon, 8 Nov 2021 14:24:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [PATCH v3 10/12] watchdog: s3c2410: Support separate source clock
Content-Language: en-US
To:     Sam Protsenko <semen.protsenko@linaro.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
References: <20211107202943.8859-1-semen.protsenko@linaro.org>
 <20211107202943.8859-11-semen.protsenko@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211107202943.8859-11-semen.protsenko@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/11/2021 21:29, Sam Protsenko wrote:
> Right now all devices supported in the driver have the single clock: it
> acts simultaneously as a bus clock (providing register interface
> clocking) and source clock (driving watchdog counter). Some newer Exynos
> chips, like Exynos850, have two separate clocks for that. In that case
> two clocks will be passed to the driver from the resource provider, e.g.
> Device Tree. Provide necessary infrastructure to support that case:
>   - use source clock's rate for all timer related calculations
>   - use bus clock to gate/ungate the register interface
> 
> All devices that use the single clock are kept intact: if only one clock
> is passed from Device Tree, it will be used for both purposes as before.
> 
> Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> ---
> Changes in v3:
>   - Removed has_src_clk field: clk framework can handle NULL clk; added
>     s3c2410wdt_get_freq() function instead, to figure out which clock to
>     use for getting the rate
> 
> Changes in v2:
>   - Reworded commit message to be more formal
>   - Used separate "has_src_clk" trait to tell if source clock is present
>   - Renamed clock variables to match their purpose
>   - Removed caching source clock rate, obtaining it in place each time
>     instead
>   - Renamed err labels for more consistency
> 
>  drivers/watchdog/s3c2410_wdt.c | 56 +++++++++++++++++++++++++---------
>  1 file changed, 41 insertions(+), 15 deletions(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
