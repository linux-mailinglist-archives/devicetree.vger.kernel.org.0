Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8ECA8429F33
	for <lists+devicetree@lfdr.de>; Tue, 12 Oct 2021 10:04:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234447AbhJLIFq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Oct 2021 04:05:46 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:38190
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234717AbhJLICX (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 12 Oct 2021 04:02:23 -0400
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com [209.85.167.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 7FAF74001E
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 08:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1634025621;
        bh=7PRVUyNivfUo5mGBjKlH+dFLTQLBD7eFzbeKxjYBNh4=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=g+hh6CEDnAwHw8zfFlqOI3Hb6rruTxdjtRjYqXQ6B+bOOL7mccXG3vd+YO0648v4A
         pdI/2EQ2yu7RfyJcqGBBS4xbFG/Useq2n1MMszhMfPe5Fx0ZIItNALSPjIQXelJQsZ
         P+jOtuYH8LoiR5H8nsCmBYfaTTsaLLvWD8tS+ZoKudPXYbp8NbjXpWkYkz2Q6m91+C
         DTNMpIvpPvvXpXL2HzYRWXQqvzIarpGreEHQ5IYzgnMOA/iJ7g7DV8Iej5VwcXNeXZ
         xYKPVc3HkeLUCAuWXbrdEA1I6YQUo4g2T6k6U0hnJqtyQvpxDruQDtullMRURWgJZR
         rS8n6iRFQUDhw==
Received: by mail-lf1-f70.google.com with SMTP id bt36-20020a056512262400b003fd7e6a96e8so5980977lfb.19
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 01:00:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=7PRVUyNivfUo5mGBjKlH+dFLTQLBD7eFzbeKxjYBNh4=;
        b=tWsLcqjNGxzxzKJWHhymCxil6U+sXnFbMzXKyQ2+R5xKCtT+2O2PjVLf5pR3bBIU39
         GSselK1B20KCgABCTk5ME4VYHyz9t9ERYd3ZldIy4c6ozuV8GLHapcD15dN8ChSZ6c78
         5SrApjZ99VKJN/9JjKOGkWOtNc3F0wMlr4vhpy+6ogQixfnKi+IbsUESTh3Zsk/02fBt
         2fkGpuOcwAtF5LpRi/W3u9g8Nfg82AGCE71JH3npbRwGk6XsolOj5Uh8GmySLetm4vzo
         znZlOyRCGv8u34NL4VdGmKxO+3tSyAdFCetqyS6sIm8nwBCGvHeAooEdo9j+88Ajd5Gu
         RLIA==
X-Gm-Message-State: AOAM5316K2ksqiKs2PrR1c3LVt86WAkb1FGrANnUWDNigB/bbQGxlXz0
        jula8sQBZO6BwFzMm0EOSXioMplIXcGDw6S+rRk77/UEobMcIWWwap4726qHrlcWLOjJnaLnrJ4
        zcHtEkkm3qyv0TVBIso8+lgMm5NIxxE3Zbf+8br8=
X-Received: by 2002:a2e:bba2:: with SMTP id y34mr13112994lje.258.1634025620737;
        Tue, 12 Oct 2021 01:00:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw8PoMd4G/2DBakGPF5Wot83guPDedVlWBzwBW1lNr9ehYO/3shVL0inJnAxg6sMEAxZMQJEA==
X-Received: by 2002:a2e:bba2:: with SMTP id y34mr13112971lje.258.1634025620592;
        Tue, 12 Oct 2021 01:00:20 -0700 (PDT)
Received: from [192.168.0.20] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id br38sm953244lfb.305.2021.10.12.01.00.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Oct 2021 01:00:20 -0700 (PDT)
Subject: Re: [PATCH 2/8] rtc: max77686: convert comments to kernel-doc format
To:     Luca Ceresoli <luca@lucaceresoli.net>, linux-kernel@vger.kernel.org
Cc:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
        linux-rtc@vger.kernel.org, linux-watchdog@vger.kernel.org,
        Chiwoong Byun <woong.byun@samsung.com>,
        Laxman Dewangan <ldewangan@nvidia.com>
References: <20211011155615.257529-1-luca@lucaceresoli.net>
 <20211011155615.257529-3-luca@lucaceresoli.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <83a59a03-dc4f-af0e-b453-b548ecd95395@canonical.com>
Date:   Tue, 12 Oct 2021 10:00:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211011155615.257529-3-luca@lucaceresoli.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/10/2021 17:56, Luca Ceresoli wrote:
> Convert the comments documenting this struct to kernel-doc format for
> standardization and readability.
> 
> Signed-off-by: Luca Ceresoli <luca@lucaceresoli.net>
> ---
>  drivers/rtc/rtc-max77686.c | 21 ++++++++++++---------
>  1 file changed, 12 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/rtc/rtc-max77686.c b/drivers/rtc/rtc-max77686.c
> index eae7cb9faf1e..bac52cdea97d 100644
> --- a/drivers/rtc/rtc-max77686.c
> +++ b/drivers/rtc/rtc-max77686.c
> @@ -61,24 +61,27 @@ enum {
>  	RTC_NR_TIME
>  };
>  


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
