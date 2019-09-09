Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9C20BADF2C
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2019 20:56:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727862AbfIIS4n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Sep 2019 14:56:43 -0400
Received: from mail-pl1-f195.google.com ([209.85.214.195]:38217 "EHLO
        mail-pl1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727164AbfIIS4m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Sep 2019 14:56:42 -0400
Received: by mail-pl1-f195.google.com with SMTP id p9so2235662plk.5
        for <devicetree@vger.kernel.org>; Mon, 09 Sep 2019 11:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=9PpVHKOkn7AvbOWw4B8dKfxzmxwCcW0yqGrQBUq0hN8=;
        b=DhYg+foHMBNgIp8ZI6L0UbWWMEHpLnOxeSdowJUQ0hVIusLXPBuzB5YrlNfmFeh+K6
         Xm1rdE3/IBzPQjUatOMjcobzfLiFnLZihws9zc6ra29d7Wwo8P3N3LBSRVlys2Nug1v3
         s+0LaXu2s4EWSkKyG4IEoUsd5ohWbInVKmiAM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=9PpVHKOkn7AvbOWw4B8dKfxzmxwCcW0yqGrQBUq0hN8=;
        b=FnG8jQCKyRHbCj1+VEGDa3hkwRqxP06/KFaZK/ecX5hH3fq0yS62hfVkyer7ZC1G2Y
         km89QYVYaIrWQt7O0tuYzqUFvcZC0oqerC128iMYEbPuEo7xuu2Mj+SR+y4ZYfaH6SZ+
         UqLmnydnfNd/qoB3W1kk0oJo7ny8a3buF8+45tL1Jy9Y7W878A7FqH9Iaqs3qjEgTq7f
         sqUaoNbVbYsAehUZo8ctH82YQGvtGm3iiykGyWQ0h3KnoqJ1/aDIwPxaPNQWxt28LzTw
         qh2IHd5r+NKYC/A2G9nqUi30OYOYyPZl/RPIN/r6kgG0VUD8xy/tEez4uLtRYJYWpMtO
         nwFA==
X-Gm-Message-State: APjAAAUHByyNrRpDFPRwUYq4LWx2kQSbjWgeOxG2N7co5DkGOzkOEwY+
        K1AjlOdTtDwNVKo+ZG04G4zXEQ==
X-Google-Smtp-Source: APXvYqxHAEqC9e+AAStf9IM6pukGCQTPomG2dj8gqDOX6pR5nm98F+0IcF0DggiI0chSTzXXODrb7A==
X-Received: by 2002:a17:902:166:: with SMTP id 93mr26449506plb.320.1568055401720;
        Mon, 09 Sep 2019 11:56:41 -0700 (PDT)
Received: from rj-aorus.ric.broadcom.com ([192.19.228.250])
        by smtp.gmail.com with ESMTPSA id l72sm270722pjb.7.2019.09.09.11.56.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Sep 2019 11:56:40 -0700 (PDT)
Subject: Re: [PATCH v1 1/1] arm64: dts: Fix gpio to pinmux mapping
To:     Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <1568018127-26730-1-git-send-email-rayagonda.kokatanur@broadcom.com>
From:   Ray Jui <ray.jui@broadcom.com>
Message-ID: <664091a5-7cc0-eeb9-425a-ce39c31b1dfc@broadcom.com>
Date:   Mon, 9 Sep 2019 11:56:37 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1568018127-26730-1-git-send-email-rayagonda.kokatanur@broadcom.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 9/9/19 1:35 AM, Rayagonda Kokatanur wrote:
> There are total of 151 non-secure gpio (0-150) and four
> pins of pinmux (91, 92, 93 and 94) are not mapped to any
> gpio pin, hence update same in DT.
> 
> Fixes: 8aa428cc1e2e ("arm64: dts: Add pinctrl DT nodes for Stingray SOC")
> Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
> ---
>   arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi | 5 +++--
>   arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi         | 3 +--
>   2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi b/arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi
> index 8a3a770..56789cc 100644
> --- a/arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi
> +++ b/arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi
> @@ -42,13 +42,14 @@
>   
>   		pinmux: pinmux@14029c {
>   			compatible = "pinctrl-single";
> -			reg = <0x0014029c 0x250>;
> +			reg = <0x0014029c 0x26c>;
>   			#address-cells = <1>;
>   			#size-cells = <1>;
>   			pinctrl-single,register-width = <32>;
>   			pinctrl-single,function-mask = <0xf>;
>   			pinctrl-single,gpio-range = <
> -				&range 0 154 MODE_GPIO
> +				&range 0  91 MODE_GPIO
> +				&range 95 60 MODE_GPIO
>   				>;
>   			range: gpio-range {
>   				#pinctrl-single,gpio-range-cells = <3>;
> diff --git a/arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi b/arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi
> index 71e2e34..0098dfd 100644
> --- a/arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi
> +++ b/arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi
> @@ -464,8 +464,7 @@
>   					<&pinmux 108 16 27>,
>   					<&pinmux 135 77 6>,
>   					<&pinmux 141 67 4>,
> -					<&pinmux 145 149 6>,
> -					<&pinmux 151 91 4>;
> +					<&pinmux 145 149 6>;
>   		};
>   
>   		i2c1: i2c@e0000 {
> 

Thanks for the fix. Looks good to me!

Reviewed-by: Ray Jui <ray.jui@broadcom.com>
