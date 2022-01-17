Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A492490A5A
	for <lists+devicetree@lfdr.de>; Mon, 17 Jan 2022 15:30:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239194AbiAQOao (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jan 2022 09:30:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239004AbiAQOam (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jan 2022 09:30:42 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FB51C061574
        for <devicetree@vger.kernel.org>; Mon, 17 Jan 2022 06:30:42 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id bg19-20020a05600c3c9300b0034565e837b6so8200549wmb.1
        for <devicetree@vger.kernel.org>; Mon, 17 Jan 2022 06:30:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1qCDtK0pn2oxt/dygNI3dBfTIc8Ow2NP2GJorgRm9sA=;
        b=tC0xSuKFutKm9eO/94iduqujirQJ/J/cZSJASDLdN3De2Q8dwRjZEOS7gNymWSZtJk
         nJ4h6NgRWKUZFHxeib0pOht0apN3VL48llsfJc8ay91rjw4KiRm7kHeuWSgfnz5Z57EE
         aAqk43UviPgI8fRAywyd5JCxul27SxUkkz9cR9jOBSZCIFKIDmdb6I3Aoi7EQKaexCXl
         wFGjiAoLDJ/sTvl33QO2EVNS4c/ZPpWg1juygPJjlrfESgUpfwIefrSMcaBbroZUA2T9
         Xz5lNn78G5Ih/PtIuBmxC6WHNj1Ov8v1IUPjV8WLyO6cXHJ7iTZcZJGMiq0aJOKqHAXa
         RlDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=1qCDtK0pn2oxt/dygNI3dBfTIc8Ow2NP2GJorgRm9sA=;
        b=dtGMcGcsjah0WoXIHwT9YDjBLzFAiRRa7Cnnn+7Q9BCepFR7KLarwQEXT+rn8gGlz4
         +PBS7bT5DQBCsjmGpMdi1/k9vKHBghIjjsd1wnEA68ipcYWbT2SzQsonk0wpul+AhYRP
         mybdZlIAWYzh/EXF7J8993SXXSKb0c6TLBU6Z0aOdhYCaVywGJnMFSgRyeOEgIkv4FHx
         UDGaykT9/UQdb2O4o5AIKRoFqiI8S59HLUBqRROg/zrm+vN3zIS0+19cCEu/zqi6wfr6
         tG2HP82bu22sYaVD82PXtH4ZTTQdrMyD1rE8ewOeVmsB/AGS4i6TUnNawhkleIU52jp6
         eDhA==
X-Gm-Message-State: AOAM533I6+9JUDLiO7wn94rmTc7gzZSD6auNvBjEH4sHtycAvS512CsF
        kLQSw8a/I6TlQxZkoUPJ0BfaJKT/4ry6wA==
X-Google-Smtp-Source: ABdhPJwiQM+eAaGs9tYAY5xvpnrS+AV2fSNWJAZH9VzjH87QRF+7ENwGFzuPyU57bwh6CbY/aqM+XA==
X-Received: by 2002:a5d:42c3:: with SMTP id t3mr19995885wrr.301.1642429840767;
        Mon, 17 Jan 2022 06:30:40 -0800 (PST)
Received: from ?IPv6:2001:861:44c0:66c0:c004:9fe1:fbda:2d0c? ([2001:861:44c0:66c0:c004:9fe1:fbda:2d0c])
        by smtp.gmail.com with ESMTPSA id x8sm13243778wru.102.2022.01.17.06.30.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jan 2022 06:30:40 -0800 (PST)
Subject: Re: [PATCH 3/3] arm64: dts: meson: remove Broadcom WiFi/BT nodes from
 Khadas VIM1
To:     Christian Hewitt <christianshewitt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Kevin Hilman <khilman@baylibre.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220113041746.16040-1-christianshewitt@gmail.com>
 <20220113041746.16040-4-christianshewitt@gmail.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <2236d8a8-77e7-7dc9-fd32-b3ade335a128@baylibre.com>
Date:   Mon, 17 Jan 2022 15:30:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220113041746.16040-4-christianshewitt@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 13/01/2022 05:17, Christian Hewitt wrote:
> The Broadcom WiFi/BT SDIO nodes are now inherited from the P212 common dtsi
> so we can remove them from the VIM1 board dts.
> 
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
>  .../amlogic/meson-gxl-s905x-khadas-vim.dts    | 19 -------------------
>  1 file changed, 19 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
> index 6ab1cc125b96..108232a5aa2e 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
> @@ -217,25 +217,6 @@
>  	pinctrl-0 = <&pwm_e_pins>, <&pwm_f_clk_pins>;
>  };
>  
> -&sd_emmc_a {
> -	max-frequency = <100000000>;

The SDIO freq is marked as 50000000 in the p212 DTSI and was explicitly changes
by Jerome in adc52bf7ef16 ("arm64: dts: meson: fix mmc v2 chips max frequencies")

The change is ok if you change the p212 DTSI to 100000000 aswell.

> -
> -	brcmf: wifi@1 {
> -		reg = <1>;
> -		compatible = "brcm,bcm4329-fmac";
> -	};
> -};
> -
> -&uart_A {
> -	bluetooth {
> -		compatible = "brcm,bcm43438-bt";
> -		shutdown-gpios = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
> -		max-speed = <2000000>;
> -		clocks = <&wifi32k>;
> -		clock-names = "lpo";
> -	};
> -};
> -
>  /* This is brought out on the Linux_RX (18) and Linux_TX (19) pins: */
>  &uart_AO {
>  	status = "okay";
> 

With the change in p212 dtsi:

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>

Thanks,
Neil
