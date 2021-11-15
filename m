Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 087FF450147
	for <lists+devicetree@lfdr.de>; Mon, 15 Nov 2021 10:25:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237190AbhKOJ2m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Nov 2021 04:28:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237633AbhKOJ1m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Nov 2021 04:27:42 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1B38C061204
        for <devicetree@vger.kernel.org>; Mon, 15 Nov 2021 01:24:45 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id b12so29324296wrh.4
        for <devicetree@vger.kernel.org>; Mon, 15 Nov 2021 01:24:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=7YV6XXg8h8hJhDgn/7ARhXJWKWuxziOFXex2XBPVdnA=;
        b=D/CAVXjzTScTjviy18Ml468lD008OZsgJwfASTRCSEfDh/y8GWN5v9BMFSNzBwuaF9
         EooA9ydGblJ8rK30zdQ/b3Mo+MTGZ3B62X1j4CTIpqBjWFWuhTo+6DgoFJ1+7IjSc2VP
         o6qGFlHEtTo85Wilj/JXwMUj1sLRonSzkQ0fhteR9fBd9Bu9W1aXJzpwC9BDGi61HbYn
         BE+0ZCQMlVkeINO54sPy7tkWnRlvPZIR/z0h0pJ77KgK0kqmIbzZy8l/uRQEcsLDK02Y
         0/K8GnWcAT6zSxv1+3BLlpbQllPqaLtSK0WzhnYn2/XVKFrTs0f5ekwNP6eYOjz+tc1h
         ILXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=7YV6XXg8h8hJhDgn/7ARhXJWKWuxziOFXex2XBPVdnA=;
        b=qsjbGPfHB2utcrGZlRB/mMzD3Hug8eUaerYudipZZjWqppyUUVT3zBqsato0C4OeoO
         S9j28ogQF4upRKydbkIjSaMshqJLKreamJwrpdqCuiR/eTw83FmPiYyPe6ZPxiQQB63g
         btVFcVwow3g5cqjUnTnM6bjTO0yUGuBMXJkk5zcMWS80JoKofDdiwbKEGiU0w0PTySTk
         qCA4vqM2fMaIOZP4q2A8B6rcHam0FrjuGgcUNxe6Gucp01ASTC3xAiOpZl8wCj3r+rzc
         MdOuknXgg+hoieigb9ErA6B8H4rPkAYLZkOLrXH5/kS3wkOUHUoYFqLbrdo0Gs/PdjN7
         J8vg==
X-Gm-Message-State: AOAM533Id9u8ry/jzsuHoX2I9EU4NlVdAg9L22ndobpbOuGVXp2bJsIM
        pRE+lg1iPZzFVTS8QXLxHRdXjA==
X-Google-Smtp-Source: ABdhPJx3QrHD/y228kMTNLG7embXZAa6H6Op9TithBAqUOw10x78H3OU9ZhjpbcZy9j8usfkkpSmWQ==
X-Received: by 2002:a5d:4b45:: with SMTP id w5mr43771146wrs.272.1636968284000;
        Mon, 15 Nov 2021 01:24:44 -0800 (PST)
Received: from ?IPv6:2001:861:44c0:66c0:f56f:2409:301:93ad? ([2001:861:44c0:66c0:f56f:2409:301:93ad])
        by smtp.gmail.com with ESMTPSA id p12sm13871922wro.33.2021.11.15.01.24.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Nov 2021 01:24:43 -0800 (PST)
Subject: Re: [PATCH 1/3] arm64: dts: meson-gxbb-wetek: fix HDMI in early boot
To:     Christian Hewitt <christianshewitt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Kevin Hilman <khilman@baylibre.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20211012052522.30873-1-christianshewitt@gmail.com>
 <20211012052522.30873-2-christianshewitt@gmail.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <d9f6ec32-63eb-b19c-867f-1cd9b54bb0e3@baylibre.com>
Date:   Mon, 15 Nov 2021 10:24:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211012052522.30873-2-christianshewitt@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/10/2021 07:25, Christian Hewitt wrote:
> Mark the VDDIO_AO18 regulator always-on and set hdmi-supply for the hdmi_tx
> node to ensure HDMI is powered in the early stages of boot.
> 
> Fixes: fb72c03e0e32 ("ARM64: dts: meson-gxbb-wetek: add a wetek specific dtsi to cleanup hub and play2")
> 
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
>  arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi
> index a350fee1264d..8e2af986ceba 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi
> @@ -64,6 +64,7 @@
>  		regulator-name = "VDDIO_AO18";
>  		regulator-min-microvolt = <1800000>;
>  		regulator-max-microvolt = <1800000>;
> +		regulator-always-on;
>  	};
>  
>  	vcc_3v3: regulator-vcc_3v3 {
> @@ -161,6 +162,7 @@
>  	status = "okay";
>  	pinctrl-0 = <&hdmi_hpd_pins>, <&hdmi_i2c_pins>;
>  	pinctrl-names = "default";
> +	hdmi-supply = <&vddio_ao18>;
>  };
>  
>  &hdmi_tx_tmds_port {
> 

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
