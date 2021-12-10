Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4589046FBEA
	for <lists+devicetree@lfdr.de>; Fri, 10 Dec 2021 08:39:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230216AbhLJHnP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Dec 2021 02:43:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230138AbhLJHnP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Dec 2021 02:43:15 -0500
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E20EC061746
        for <devicetree@vger.kernel.org>; Thu,  9 Dec 2021 23:39:40 -0800 (PST)
Received: by mail-lj1-x231.google.com with SMTP id v15so12572332ljc.0
        for <devicetree@vger.kernel.org>; Thu, 09 Dec 2021 23:39:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:to:cc:references
         :from:in-reply-to:content-transfer-encoding;
        bh=AA2QRu1j+KXwSFiRDZh+BE+5TYK9vAtNOlEYRWlHjwQ=;
        b=iLB0zxWOhbsp62cnauOqtvZ6GSyBPZbQExfccv/4o2moPwIprc7RSQwzcYV99OUe/N
         Sesf3cT7VeUmkRc1MOsvC01BWcRAzKKl3EykUatzSdj+qASemVSPwTuDLTvGdJDlcjAW
         G99wRC6nzM5tZ7ekoY1UXFyzrtBJ8SShlocWWIxh2IJi5RX5GAMB1bciPutc0M8kGieA
         5zT/+0pl21B6Tl0/vR7uuBdTAzGxGq4PbsNRPcCt3V9YgXByhTKJNNhSEmFHeUDff323
         XRgMk8CWMaga4RStZxIr2aPkjWJz5cBmL2HMm4ZwGQXbS9ROS7vFs885+Xqq2OcjKgE5
         tyrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :to:cc:references:from:in-reply-to:content-transfer-encoding;
        bh=AA2QRu1j+KXwSFiRDZh+BE+5TYK9vAtNOlEYRWlHjwQ=;
        b=DixohUw0cvi7VJtlKD9Iayp0YKkZ/af8XPWPCQXhPixVQlLC2dIlr4CfB+yreIQOSd
         Kkay7B0NX80rZJriT/KO6yvXfBV8mJuA28t4xutKRlPngZ3xD9xuJYtelR8IjFVw7MfV
         jhcrZ6lWmBaVVxdbunTqsdqSCvdGR2GePfK7OS573LE5P/sGQYEsJ+GSYdZwXlE7R7a7
         GxWeGmeeieIMVLFkpYSIaE/NPi0y7AHX7DJSE/DrcHns63DNZNGHRKYtzfxSpyzn9fXF
         4io/0aOtcFn34hXJo60ZTJ6ICTJ8l9BTYKqysq5rAlynvvh4tp1/QxX8580aBlZQ6yP5
         JyPA==
X-Gm-Message-State: AOAM531xIPEzDAnYtkFsvy24hcVwJ5s0lg4lFD7DxlI7hYn5yczG0mHy
        eYs3rSvmY9bQwyVAqDvbim8=
X-Google-Smtp-Source: ABdhPJw4Cy9i8/DIU7BY3H4BhSgH0WotzDqMUJWR7YNJ6RC4lYCVTNqnNLql4LM3f328MuMQfFIELQ==
X-Received: by 2002:a2e:9ed6:: with SMTP id h22mr11106621ljk.410.1639121978673;
        Thu, 09 Dec 2021 23:39:38 -0800 (PST)
Received: from [192.168.26.149] (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.googlemail.com with ESMTPSA id v2sm229254ljv.6.2021.12.09.23.39.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Dec 2021 23:39:38 -0800 (PST)
Message-ID: <cc83723a-cf88-66bc-9ab9-101355f3801f@gmail.com>
Date:   Fri, 10 Dec 2021 08:39:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:96.0) Gecko/20100101
 Thunderbird/96.0
Subject: Re: [PATCH] ARM: dts: BCM5301X: Add USB GPIO and missing LEDs on
 Netgear R6300v2
To:     Lisa Hill <f11o1iomh3dmt141n@icloud.com>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
References: <74E33696-D05A-4009-8C40-927A4DBDD4EF@icloud.com>
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
In-Reply-To: <74E33696-D05A-4009-8C40-927A4DBDD4EF@icloud.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10.12.2021 07:53, Lisa Hill wrote:
> Set GPIO controlling power for both USB ports properly and add two WAN LEDs and a USB LED missing for the Netgear R6300v2.
> 
> Signed-off-by: Lisa Hill <f11o1iomh3dmt141n@icloud.com>

Nice work!

One more comment on sending patches: please configure your e-mail client
to send text only (text/plain) without extra HTML version (text/html).

If you can't configure your e-mail easily you can also try
"git send-email" command line tool.

See:
https://www.kernel.org/doc/html/v5.15/process/submitting-patches.html#no-mime-no-links-no-compression-no-attachments-just-plain-text
https://www.kernel.org/doc/html/v5.15/process/email-clients.html

Also see comments below.


> ---
>   .../arm/boot/dts/bcm4708-netgear-r6300-v2.dts | 27 ++++++++++++++++---
>   1 file changed, 24 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts b/arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts
> index 4c60eda296d973..5810c95ab239ae 100644
> --- a/arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts
> +++ b/arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts
> @@ -34,20 +34,33 @@
>   			linux,default-trigger = "default-on";
>   		};
>   
> -		power0 {
> +		power-green {
>   			label = "bcm53xx:green:power";
>   			gpios = <&chipcommon 2 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger = "default-on";
>   		};
>   
> -		power1 {
> +		power-amber {
>   			label = "bcm53xx:amber:power";
>   			gpios = <&chipcommon 3 GPIO_ACTIVE_LOW>;
> -			linux,default-trigger = "default-on";
>   		};
>   
>   		usb {
>   			label = "bcm53xx:blue:usb";
>   			gpios = <&chipcommon 8 GPIO_ACTIVE_LOW>;
> +			trigger-sources = <&ohci_port1>, <&ehci_port1>, <&xhci_port1>;
> +			linux,default-trigger = "usbport";
> +		};
> +		

No tabs in empty separator line please.


> +		wan-green {
> +			label = "bcm53xx:green:wan";
> +			gpios = <&chipcommon 10 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger = "default-on";

I think it's a rather bad idea to blindly set WAN LED on. It should be
up to operating system to decide under what conditions turn it on.
I think you should drop that linux,default-trigger.


> +		};
> +		

No tabs in empty separator line please.

> +		wan-amber {
> +			label = "bcm53xx:amber:wan";
> +			gpios = <&chipcommon 10 GPIO_ACTIVE_HIGH>;
>   		};

It's unlikely both WAN LEDs (green & amber) are controlled by the same
GPIO (10). Please verify that.
