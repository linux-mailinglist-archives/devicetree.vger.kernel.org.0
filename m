Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C26834EC35
	for <lists+devicetree@lfdr.de>; Tue, 30 Mar 2021 17:24:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232424AbhC3PYP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Mar 2021 11:24:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232267AbhC3PXk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Mar 2021 11:23:40 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52A9EC061762
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 08:23:40 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id g25so8635380wmh.0
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 08:23:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Amo0CjIod/3nZW+Fivc6j6ZuIk/uID3Z1EgHGr+VW0I=;
        b=Dj3+PMH8gySOY8WCvX+EJGbMwFjwagH9iYfuJJKBPiLzVyqgxt4MJlgqtA+uUPmJ2S
         xTRZ8Q7TWQSNoZlLrDwJIdbnXjCHMh5ABR53hZcUezXBQmISi47zkVM3rva4qPk5MRQ3
         u6oFKtpxKwiqCZteVdl+TVkAc3Z96Fd8y2ksZufva0jTbM/+UlWSGh90UugnW2H8iy9r
         CjcJPkbC/7AWvS13svxK+VmD27U6yazigtWby0MKWv4xrO7GwyJmNYTJztpMUyqHGw+k
         mejMFzM2a17b0a0wQULPY6MleVmyqYqHy4iz1WsrD97qqXDGWHPfj1f0T7e9HtuA4hWW
         Vmmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=Amo0CjIod/3nZW+Fivc6j6ZuIk/uID3Z1EgHGr+VW0I=;
        b=gsUojRHXsFqe4Ipc1YSDmekAwiK7Fn85JVSVIms/oVk0ZIpkBpA8ynBDhzUXiIQQiH
         +yOfPTKKELamNR6+A9Caemoc2L43Wsw8Oc5X32KOMrPXB5oaa0CXzswWQMZgxPJ7Jy5g
         H5GV7fm5hObC9GSQyh7MtvD/o51QFZrgSn5lMp8ZsCe9PMal2DN+ZNpAVaJKx0AccRci
         /DYiiZ2hI1QdYgm5bCQ8mtYubnCcQyrEMMqaYJAJg0/ed1l41D7nA10xWQkHfvIhPfD3
         /6YgVcl0c/e9wT2lNFvLeAU6aQ2+o7aTe8XMUJjJ/SsTwuH/4ybcmMgywb9bJUNQBXXz
         xL1Q==
X-Gm-Message-State: AOAM532PYVbtaLl6iaVj8rZyAbW7yLpI49guH7wItI+6HLniN+k8MMw5
        Ips05F7xajyLqbCpx+b3RupHPg==
X-Google-Smtp-Source: ABdhPJyHyjk1MlCCVtUroZ6z6Nq6EKCHEfiXpJZjOlXKBCwLGx/H5fL0c40xiOAQWr4LFFaxMopyhQ==
X-Received: by 2002:a1c:a916:: with SMTP id s22mr4713674wme.82.1617117818884;
        Tue, 30 Mar 2021 08:23:38 -0700 (PDT)
Received: from ?IPv6:2a01:e0a:90c:e290:2d11:7929:c1dd:292? ([2a01:e0a:90c:e290:2d11:7929:c1dd:292])
        by smtp.gmail.com with ESMTPSA id k24sm4130955wmr.48.2021.03.30.08.23.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Mar 2021 08:23:38 -0700 (PDT)
Subject: Re: [PATCH 2/3] arm64: dts: meson: add saradc node to ODROID N2/N2+
To:     Christian Hewitt <christianshewitt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Kevin Hilman <khilman@baylibre.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Hyeonki Hong <hhk7734@gmail.com>
References: <20210329161256.31171-1-christianshewitt@gmail.com>
 <20210329161256.31171-3-christianshewitt@gmail.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <94a092ba-78b6-4aa8-9bea-d3bb1f1a9d69@baylibre.com>
Date:   Tue, 30 Mar 2021 17:23:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210329161256.31171-3-christianshewitt@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 29/03/2021 18:12, Christian Hewitt wrote:
> From: Hyeonki Hong <hhk7734@gmail.com>
> 
> Add the meson saradc node to the ODROID N2/N2+ common dtsi.

Not sure why this is needed, does it fix something ?

Neil

> 
> Signed-off-by: Hyeonki Hong <hhk7734@gmail.com>
> ---
>  arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
> index 2f8d574c30c0..139c12cf9f66 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
> @@ -508,6 +508,10 @@
>  	status = "okay";
>  };
>  
> +&saradc {
> +	status = "okay";
> +};
> +
>  /* SD card */
>  &sd_emmc_b {
>  	status = "okay";
> 

