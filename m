Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 08C3B467465
	for <lists+devicetree@lfdr.de>; Fri,  3 Dec 2021 10:59:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1379690AbhLCKCl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Dec 2021 05:02:41 -0500
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:33202 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1349782AbhLCKCk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Dec 2021 05:02:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1638525556;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=E2vHUFicrD9W5EZNJ7j2bhIPa83t3WB27STnfU5LVlc=;
        b=Nn44LAkVXML1X+Ymcr0q1RxQqhmHOFPkbzorpAqlSPMMwuYSq1wyP9WHXq9sYz/HEll66O
        3kA++L4P4M2d3DGDCAPGcVSxmq58xfqSqT9ETNmPoEJqjUUfHp6KLrKtvNuYW8bDRo0iCk
        27MGrxMPRBK3JIj3rrzYIxsf7MBkuSo=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-196-d-V4CupPOsSDLj9r98SSaw-1; Fri, 03 Dec 2021 04:59:15 -0500
X-MC-Unique: d-V4CupPOsSDLj9r98SSaw-1
Received: by mail-ed1-f71.google.com with SMTP id m12-20020a056402430c00b003e9f10bbb7dso2082390edc.18
        for <devicetree@vger.kernel.org>; Fri, 03 Dec 2021 01:59:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=E2vHUFicrD9W5EZNJ7j2bhIPa83t3WB27STnfU5LVlc=;
        b=m+FiqVQdMPUfjo5reB4xY9N2ZA4iGIqEuRvAZeF4McDReZDf9IZNS5b0gvTsfK1tvp
         CJUJwa2cWh2YGKzusVhiaVIC/Lun/hGlmwPD3R8Qwzv7n+p3tIVnYWN3e6D9j0Tvkjkp
         M6pN+0p/ayNNLFACY74ISJRuSP4bKUzFKxJVV/U6Ci5ZYkGKPeJt+mySZ0BsnPhJLlpO
         r4dPs9EdOOSbU7WO3hgElIOyH4O4jTIHhdcKMYu61rm7RVkk1sRMm0omT1N68kxaNGOn
         nF1VkU7219vMl2STma0p6mqwkMPfHuRIUl40r5R3ihiQdseTr4CAF/t05Td8L/dVsCbS
         mCwg==
X-Gm-Message-State: AOAM531V6Iu0SILhOgvYbdPFN+bKjGV2Rj73KntvIzvcmG7ChhvL5sPs
        sCJ309nwxigk5QonQ6velIwlx1UBR8PL5qhYiVTYjeoF67n+x9ttUCBKLRZVFMCkl7IZX7xwkg1
        1Wne0CDGRYLYhBSmkDkDqUw==
X-Received: by 2002:a17:907:6e1a:: with SMTP id sd26mr22168626ejc.529.1638525554698;
        Fri, 03 Dec 2021 01:59:14 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxj4dSYWAn/t79ZE3IPK0+6KsZm/ZXFoRyrbGRKXkBJnWU58F0/RSRnchkbFfeKBydbL0tTFg==
X-Received: by 2002:a17:907:6e1a:: with SMTP id sd26mr22168590ejc.529.1638525554442;
        Fri, 03 Dec 2021 01:59:14 -0800 (PST)
Received: from ?IPV6:2001:1c00:c1e:bf00:1054:9d19:e0f0:8214? (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
        by smtp.gmail.com with ESMTPSA id z6sm1641678edc.76.2021.12.03.01.59.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Dec 2021 01:59:13 -0800 (PST)
Message-ID: <639583df-a54a-eb9b-91ad-a60612a930b0@redhat.com>
Date:   Fri, 3 Dec 2021 10:59:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [PATCH 2/5] platform: surface: Propagate ACPI Dependency
Content-Language: en-US
To:     Jarrett Schultz <jaschultzms@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Mark Gross <markgross@kernel.org>,
        Maximilian Luz <luzmaximilian@gmail.com>
Cc:     linux-arm-msm@vger.kernel.org, platform-driver-x86@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Felipe Balbi <balbi@kernel.org>,
        Jarrett Schultz <jaschultz@microsoft.com>
References: <20211202191630.12450-1-jaschultz@microsoft.com>
 <20211202191630.12450-3-jaschultz@microsoft.com>
From:   Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20211202191630.12450-3-jaschultz@microsoft.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Jarett,

On 12/2/21 20:16, Jarrett Schultz wrote:
> Since the Surface XBL Driver does not depend on ACPI, the
> platform/surface directory as a whole no longer depends on ACPI. With
> respect to this, the ACPI dependency is moved into each config that depends
> on ACPI individually.
> 
> Signed-off-by: Jarrett Schultz <jaschultz@microsoft.com>

I think I will already merge this patch into the pdx86 tree:

https://git.kernel.org/pub/scm/linux/kernel/git/pdx86/platform-drivers-x86.git/

While we are waiting for the rest of the series to get hashed out.

But as already pointed out by Trilok Soni your From: and Signed-off-by
email addresses don't match.

I can fix up the From to match the Signed-off-by while I apply this,
but before I do that I wanted to check with you that setting both
to "Jarrett Schultz <jaschultz@microsoft.com>" is the right thing to do ?

Regards,

Hans






> 
> ---
> 
> Changes in v3:
>  - Further propagated ACPI dependecy to SURFACE_AGGREGATOR
> 
> ---
> 
> Changes in v2:
>  - Created to propagate ACPI dependency
> ---
>  drivers/platform/surface/Kconfig            | 7 ++++++-
>  drivers/platform/surface/aggregator/Kconfig | 1 +
>  2 files changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/platform/surface/Kconfig b/drivers/platform/surface/Kconfig
> index 3105f651614f..5f0578e25f71 100644
> --- a/drivers/platform/surface/Kconfig
> +++ b/drivers/platform/surface/Kconfig
> @@ -5,7 +5,6 @@
>  
>  menuconfig SURFACE_PLATFORMS
>  	bool "Microsoft Surface Platform-Specific Device Drivers"
> -	depends on ACPI
>  	default y
>  	help
>  	  Say Y here to get to see options for platform-specific device drivers
> @@ -30,12 +29,14 @@ config SURFACE3_WMI
>  
>  config SURFACE_3_BUTTON
>  	tristate "Power/home/volume buttons driver for Microsoft Surface 3 tablet"
> +	depends on ACPI
>  	depends on KEYBOARD_GPIO && I2C
>  	help
>  	  This driver handles the power/home/volume buttons on the Microsoft Surface 3 tablet.
>  
>  config SURFACE_3_POWER_OPREGION
>  	tristate "Surface 3 battery platform operation region support"
> +	depends on ACPI
>  	depends on I2C
>  	help
>  	  This driver provides support for ACPI operation
> @@ -126,6 +127,7 @@ config SURFACE_DTX
>  
>  config SURFACE_GPE
>  	tristate "Surface GPE/Lid Support Driver"
> +	depends on ACPI
>  	depends on DMI
>  	help
>  	  This driver marks the GPEs related to the ACPI lid device found on
> @@ -135,6 +137,7 @@ config SURFACE_GPE
>  
>  config SURFACE_HOTPLUG
>  	tristate "Surface Hot-Plug Driver"
> +	depends on ACPI
>  	depends on GPIOLIB
>  	help
>  	  Driver for out-of-band hot-plug event signaling on Microsoft Surface
> @@ -154,6 +157,7 @@ config SURFACE_HOTPLUG
>  
>  config SURFACE_PLATFORM_PROFILE
>  	tristate "Surface Platform Profile Driver"
> +	depends on ACPI
>  	depends on SURFACE_AGGREGATOR_REGISTRY
>  	select ACPI_PLATFORM_PROFILE
>  	help
> @@ -176,6 +180,7 @@ config SURFACE_PLATFORM_PROFILE
>  
>  config SURFACE_PRO3_BUTTON
>  	tristate "Power/home/volume buttons driver for Microsoft Surface Pro 3/4 tablet"
> +	depends on ACPI
>  	depends on INPUT
>  	help
>  	  This driver handles the power/home/volume buttons on the Microsoft Surface Pro 3/4 tablet.
> diff --git a/drivers/platform/surface/aggregator/Kconfig b/drivers/platform/surface/aggregator/Kconfig
> index fd6dc452f3e8..cab020324256 100644
> --- a/drivers/platform/surface/aggregator/Kconfig
> +++ b/drivers/platform/surface/aggregator/Kconfig
> @@ -4,6 +4,7 @@
>  menuconfig SURFACE_AGGREGATOR
>  	tristate "Microsoft Surface System Aggregator Module Subsystem and Drivers"
>  	depends on SERIAL_DEV_BUS
> +	depends on ACPI
>  	select CRC_CCITT
>  	help
>  	  The Surface System Aggregator Module (Surface SAM or SSAM) is an
> 

