Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AB7BC54C98
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2019 12:44:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726908AbfFYKol (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jun 2019 06:44:41 -0400
Received: from mail-lj1-f193.google.com ([209.85.208.193]:43670 "EHLO
        mail-lj1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726509AbfFYKok (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jun 2019 06:44:40 -0400
Received: by mail-lj1-f193.google.com with SMTP id 16so15721415ljv.10
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2019 03:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=jsvGDP3O+XzFp/xfkf+e0ws5gNSJsQ+j5+W+9OgxK2I=;
        b=gpKBF6Fr3SWTHkXloOK3bqab5HWcaBUrFM84VNJ9gOYFWCzTe+yr+bVrp0jdUekwpd
         C3jKxlB1PLe01sjo0VHY78ITl1KTyKIjJMNa0GgnmLD4Mcsl0p2EBIUiJROgWxLYUv3c
         l/OuHbFSJMRMFHYsRV+jN5HL2uIudHx3Z3q5Vc8ghC1jTeFb7a6BOxcTP27CAxSgUxAG
         dRjlCKdxWX4u9w7WTPNE65fCJbUrGx/g5YLwFQuljqXkdGqryy/IpItwvIjPNHrPFp4L
         K1/8xfxZweoGz/MUjyxzj+hwbZPLAp0b3X2FdppqQlhErVa/nHI8p163GTc1jeyElC6T
         oNBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jsvGDP3O+XzFp/xfkf+e0ws5gNSJsQ+j5+W+9OgxK2I=;
        b=DtDjKO4ssShihE4/B4Q/Aq+wZ43bDTdt1aDzaHrCi6fiWkuO/3DDTeONG6Qd0uuHoh
         D53ibmyiKpdC7fOMMV/Agb0zAU4GirmqZ7imnxWWAl/E0MQPfLa+LVsJs0qlHw+IJ2uP
         GrZvHwCw7GgHO2y91dxUqSquDPgYzt6Zu7XBtpyIft3bDy1L/eJPYs3aS8VrVMhYbc+X
         AufTty8QKUjXNe7MJxWjyeOrk/taANA5c5Oy6y8a3MQJqjuP/tooIowk9PIaMlLyNKBC
         /kT7YpgK5+qUlZhFdA23kBUsXCiF3oD6sWUE50wfcw5pFnrrLZ3DXgj1xxSIBwVA/Zy+
         Ax2Q==
X-Gm-Message-State: APjAAAVAES1NuOKln9azSOk5/wcCGSMUlr3pAtSbqltMk8iQnpAukuVR
        PlcA8gzhmkrhkolJkBgkjeRlfQ==
X-Google-Smtp-Source: APXvYqxI2jFR9JznTkJkKHZQjIwY1mg/2t3rJgPvLAWFigH6qUGCnFy6MFatythU6HZZ5fwMjlS2bw==
X-Received: by 2002:a05:651c:150:: with SMTP id c16mr42375330ljd.193.1561459478823;
        Tue, 25 Jun 2019 03:44:38 -0700 (PDT)
Received: from [192.168.1.100] ([213.87.147.32])
        by smtp.gmail.com with ESMTPSA id h84sm2189770ljf.42.2019.06.25.03.44.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 25 Jun 2019 03:44:38 -0700 (PDT)
Subject: Re: [PATCH] ARM: imx25: provide a fixed regulator for usb phys
To:     =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Peter Chen <Peter.Chen@nxp.com>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org
References: <20190625100412.11815-1-u.kleine-koenig@pengutronix.de>
From:   Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <8b8ffbd5-e481-b425-aa8c-c1b13e93faee@cogentembedded.com>
Date:   Tue, 25 Jun 2019 13:44:30 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190625100412.11815-1-u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello!

On 25.06.2019 13:04, Uwe Kleine-König wrote:

> The usb phys are internal to the SoC and so it their 5V supply. With

    s/it/is/?

> this regulator added explicitly the following (harmless) boot messages
> go away:
> 
> 	usb_phy_generic usbphy:usb-phy@0: usbphy:usb-phy@0 supply vcc not found, using dummy regulator
> 	usb_phy_generic usbphy:usb-phy@1: usbphy:usb-phy@1 supply vcc not found, using dummy regulator
> 
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> ---
> Hello,
> 
> note I'm an USB noob, so please consider carefully before applying :-)
> I also put the regulator near the usbphy node instead of in alphabetic
> order. Not sure what is sensible/usual here, too.
> 
> Best regards
> Uwe
> 
>   arch/arm/boot/dts/imx25.dtsi | 9 +++++++++
>   1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx25.dtsi b/arch/arm/boot/dts/imx25.dtsi
> --- a/arch/arm/boot/dts/imx25.dtsi
> +++ b/arch/arm/boot/dts/imx25.dtsi
> @@ -614,6 +614,11 @@
>   		};
>   	};
>   
> +	reg_usb: regulator_usbphy {

    Hyphens are preferred to underscores in the prop names.

> +		compatible = "regulator-fixed";
> +		regulator-name = "usb-phy supply";
> +	};
> +
[...]

MBR, Sergei
