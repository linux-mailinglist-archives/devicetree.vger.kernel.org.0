Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C6A6E11ED93
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2019 23:11:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726404AbfLMWLa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Dec 2019 17:11:30 -0500
Received: from mail-pf1-f193.google.com ([209.85.210.193]:40976 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725948AbfLMWLa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Dec 2019 17:11:30 -0500
Received: by mail-pf1-f193.google.com with SMTP id s18so2189064pfd.8
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2019 14:11:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=C+QP07g8UnbrKTlv69LJ7GDz3+K6EqCsH4JenbUk3Kw=;
        b=VVsL5OLBC828OXXGuWkPmeOqE6dl9B1vqgwII2zwTEEOps5suW7Ta8Tre5nO/z2k5S
         KEjA30YWoBPYuMq0CR/TSXZ2C2fut9PjKHddKlOkU9HcshazJrg1NBvXowZX6gVgzA3w
         ye8MHrRio7y68YvHSTR5QBXkxAuT7T+170DLc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=C+QP07g8UnbrKTlv69LJ7GDz3+K6EqCsH4JenbUk3Kw=;
        b=DLEkhGD2ktsz0b7ei2Ne9F7yS05phLPojLFtixDbVeZMwJB5YfbJd0Tx45i3Iz27lH
         QkeEhKCt30oXWHoZOYW9CC00Vhtrtpg2QKSTQ3GyfMpiuCH+QwBQQzwl+G74QHChthaG
         zvgKBqTkrKpCs63901F5NNq05LZLB0sbICFQXuZiF5Tj2DmJUOUNZj8DAdT+JZtFXtuz
         BKwZmpDm83qVWj5T7eE6iHfDuC3ce6Owe2a9+kp8BZY/V63kycx4+Od2hfToOYZ7S1/X
         F+x9d6odKOD4o+VwqeVjqhWbzd6srQM2wPvW4TEI2CDxu70euSmkEaD7symh0wS3UUf+
         pe9A==
X-Gm-Message-State: APjAAAVUWTN0+bbqDkQswRZUx2RnXNYSPRCO13Fk6TW1vHb3kAAC6Y2h
        diilnjK2t07Odlq04pVYyOZTyw==
X-Google-Smtp-Source: APXvYqwIZlSLDSybVYp++8LzZ91boGCACbVxcoAb9anmR3Fz0rOVecZifUt5x7t7Risgbey7DBgAcQ==
X-Received: by 2002:aa7:8f05:: with SMTP id x5mr1979774pfr.86.1576275089947;
        Fri, 13 Dec 2019 14:11:29 -0800 (PST)
Received: from rj-aorus.ric.broadcom.com ([192.19.228.250])
        by smtp.gmail.com with ESMTPSA id d38sm10991179pgd.59.2019.12.13.14.11.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2019 14:11:28 -0800 (PST)
Subject: Re: [PATCH] ARM: dts: NSP: Use hardware I2C for BCM958625HR
To:     Florian Fainelli <f.fainelli@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        "maintainer:BROADCOM IPROC ARM ARCHITECTURE" 
        <bcm-kernel-feedback-list@broadcom.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>
References: <20191213195102.23789-1-f.fainelli@gmail.com>
From:   Ray Jui <ray.jui@broadcom.com>
Message-ID: <667acf12-cff3-8955-8849-b99db50375bb@broadcom.com>
Date:   Fri, 13 Dec 2019 14:11:26 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191213195102.23789-1-f.fainelli@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 2019-12-13 11:51 a.m., Florian Fainelli wrote:
> Now that the i2c-bcm-iproc driver has been fixed to permit reading more
> than 63 bytes in a single transaction with commit fd01eecdf959 ("i2c:
> iproc: Fix i2c master read more than 63 bytes") we no longer need to
> bitbang i2c over GPIOs which was necessary before to allow the
> PHYLINK/SFP subsystems to read SFP modules.
> 

This is good to hear!

> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>   arch/arm/boot/dts/bcm958625hr.dts | 15 +++++----------
>   1 file changed, 5 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/bcm958625hr.dts b/arch/arm/boot/dts/bcm958625hr.dts
> index a2c9de35ddfb..536fb24f38bb 100644
> --- a/arch/arm/boot/dts/bcm958625hr.dts
> +++ b/arch/arm/boot/dts/bcm958625hr.dts
> @@ -55,18 +55,9 @@
>   		priority = <200>;
>   	};
>   
> -	/* Hardware I2C block cannot do more than 63 bytes per transfer,
> -	 * which would prevent reading from a SFP's EEPROM (256 byte).
> -	 */
> -	i2c1: i2c {
> -		compatible = "i2c-gpio";
> -		sda-gpios = <&gpioa 5 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> -		scl-gpios = <&gpioa 4 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> -	};
> -

So I suppose GPIO 4 and 5 from the 'gpioa' controller are tied to the 
same SCL/SDA pins from i2c0 and they are internally muxed, right?

Is the mux to GPIO done automatically when pins are configured as GPIO, 
and therefore you don't require any additional changes to pinmux to make 
this work, after changing it back to use real I2C0 block below?

>   	sfp: sfp {
>   		compatible = "sff,sfp";
> -		i2c-bus = <&i2c1>;
> +		i2c-bus = <&i2c0>;
>   		mod-def0-gpios = <&gpioa 28 GPIO_ACTIVE_LOW>;
>   		los-gpios = <&gpioa 24 GPIO_ACTIVE_HIGH>;
>   		tx-fault-gpios = <&gpioa 30 GPIO_ACTIVE_HIGH>;
> @@ -74,6 +65,10 @@
>   	};
>   };
>   
> +&i2c0 {
> +	status = "okay";
> +};
> +
>   &amac0 {
>   	status = "okay";
>   };
> 

Change looks good to me.

Reviewed-by: Ray Jui <ray.jui@broadcom.com>

Thanks,

Ray
