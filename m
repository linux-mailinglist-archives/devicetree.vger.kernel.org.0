Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C89E429F79
	for <lists+devicetree@lfdr.de>; Tue, 12 Oct 2021 10:13:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234707AbhJLIPW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Oct 2021 04:15:22 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:39146
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234632AbhJLIPU (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 12 Oct 2021 04:15:20 -0400
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com [209.85.167.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id C3C7440013
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 08:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1634026397;
        bh=Lax03IkPZGcQafL4kTdaW6vPwzUHxB/DSvDB2xM2dOc=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=m8lb4tSa4MMZ3TSHVMpWZHYiCiOzp/XTeoTFOJzy42sIbmnT/TErwUmGWA0gsfTgf
         GmzufoNFBrk1DY+UfTaCEsA86UMzUHS/nZGWTQWw/QvEDs5QBEpRB1CIAndg7inmTu
         xu+Pa4vs5t45SIaefnEuiG1exMuxE6OJJW4uN8LBg6ZD3Df5zOXnIEJyrwxFsq33NA
         kKIRCPZPTRBHKxchqFKs0qNr8ofYOt5MaP+VtgCCys2zD63WjurdvxZ0LKIyR90K9U
         kNOZ/lhXIl/FSqIkgA4AEKwv+dUo3xKjwWsC7I8YaXEvIp2JiCJXAy4xNTrZGLavGJ
         +IJNbdMB683sQ==
Received: by mail-lf1-f71.google.com with SMTP id f17-20020a0565123b1100b003fda40b659aso255950lfv.23
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 01:13:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Lax03IkPZGcQafL4kTdaW6vPwzUHxB/DSvDB2xM2dOc=;
        b=3gYnprpMHPvkoz6ccW+pOEYeWZf0mBlalJPMFkAX+mhoLj+wvdmuQkkWLiTu7TKKyR
         7VU2Qf87oIAC117/3GLNtkStiF9EyE2dsyTApHJ1dbIxnE4k7+xqGS0UCogrgsOb1kNY
         YY4CI4Fj7cQhQ/NRr/S88+kUg7WTd3+oCW0cMUFx9Xa9yjwjddkfNgForCVR9L9VAaYC
         FsqtjaVDcv98/izYob2fGV391YWGmAw7F2cScqwbZBeavNmh2aDryfpls/lcc2y6rDTT
         QfQkzSvG4nvASMPIp7HIbB6Qhqh8mpqzmKSzz527t7zK5+Tn/+EDFg3WmrfV8MC/FW5Q
         1XeA==
X-Gm-Message-State: AOAM53294LfdB2nFAf4wQlFGAO2f9byfmLthVN9Sp9t1hOnlQNlzoIbl
        FNyJ81aig326YZjAdzGWDF+2ik4j82fJh3VH2AZ2GdQVNOhnyQ3TWrkCKHwOFOtrSUQtF6kOKTM
        UXZAw/XzJhmne3k27LGVkGDezM8SjlHyfSIGHA9w=
X-Received: by 2002:ac2:4c42:: with SMTP id o2mr32319694lfk.504.1634026397254;
        Tue, 12 Oct 2021 01:13:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy5X496iLorhVFLrMc5Twzlh/1BiNaH21JTd0dWSkDt/8M4LBAfRGxFndv7DEG3Nxmhp451sw==
X-Received: by 2002:ac2:4c42:: with SMTP id o2mr32319681lfk.504.1634026397094;
        Tue, 12 Oct 2021 01:13:17 -0700 (PDT)
Received: from [192.168.0.20] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id t12sm957129lfc.55.2021.10.12.01.13.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Oct 2021 01:13:16 -0700 (PDT)
Subject: Re: [PATCH 3/8] rtc: max77686: rename day-of-month defines
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
 <20211011155615.257529-4-luca@lucaceresoli.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <757a941a-1b3c-8b5b-af40-0942b7a07239@canonical.com>
Date:   Tue, 12 Oct 2021 10:13:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211011155615.257529-4-luca@lucaceresoli.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/10/2021 17:56, Luca Ceresoli wrote:
> RTC_DATE and REG_RTC_DATE are used for the registers holding the day of
> month. Rename these constants to mean what they mean.
> 
> Signed-off-by: Luca Ceresoli <luca@lucaceresoli.net>
> ---
>  drivers/rtc/rtc-max77686.c           | 16 ++++++++--------
>  include/linux/mfd/max77686-private.h |  4 ++--
>  2 files changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/rtc/rtc-max77686.c b/drivers/rtc/rtc-max77686.c
> index bac52cdea97d..7e765207f28e 100644
> --- a/drivers/rtc/rtc-max77686.c
> +++ b/drivers/rtc/rtc-max77686.c
> @@ -57,7 +57,7 @@ enum {
>  	RTC_WEEKDAY,
>  	RTC_MONTH,
>  	RTC_YEAR,
> -	RTC_DATE,
> +	RTC_MONTHDAY,
>  	RTC_NR_TIME
>  };



Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

Best regards,
Krzysztof
