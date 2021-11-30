Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 30EA5463143
	for <lists+devicetree@lfdr.de>; Tue, 30 Nov 2021 11:41:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234617AbhK3KoS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Nov 2021 05:44:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234888AbhK3KoS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Nov 2021 05:44:18 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FFB1C061746
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 02:40:59 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id t9so26384211wrx.7
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 02:40:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=svu1vK4AHKyxZI5PFom9ScvanpNnAunnYWG5xr2hHV0=;
        b=gna0wbdNmsoRp3T86JmoocKgknU5P/d/QskEj3H6wSIPG6G0ECnxiZArcewdK3xp+R
         xN4pHa8GSCoBJTcnooa4sWsrmAu8kaHSr+BQcgz00NVwZan9iAS8aZnU51hA8jtbgAGv
         V3tuNMHOyZ21XrH+WoY+EuUAIN3PhNtEJFoiCAyjkTwvQiz/6St70sEzo3qHoWV57LiX
         t3Htgyus4E0Y31udJkXcJRe39kSxbgG+tfSF7TioOKYWCc2kPc5ep1ur31vhQI+ff7sk
         vuHo7tnpIhKl7RJHfj/Cee5gU+y9yOgO6G+GzxFnVMrNHqRXUInpGbBkW0/A3ncihRTv
         1O/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=svu1vK4AHKyxZI5PFom9ScvanpNnAunnYWG5xr2hHV0=;
        b=uYlo1swpm7LHi7wf2XKKxnfoqu5myxVog3bfTqs3UmEwZjJwzvhr52IkzwV5DUigjD
         gohxYO89QTToENA/DEr4czFg4gDyoN5ZdBXHrS0xMIIaxbxyUlxjSwPk+ynH7Lz0Fxju
         rS+4sxnkgA9G4m+pUrr7XTgUz41eqUBQfc5awu4qcbHVxVPRz8hdmXpx5iNe0AL1cLyn
         Y4od9vGmRMu61gsvVooFRTuKraAHs7SmNEo0N6L689AlpfXkwg2LzBusYAr3fWQxI5pi
         jo5nxm5a6CRLdC2dEdXI5ugJlfLC8bf2UJckaN826Nl1Cyv4/x0Hgow76b278ofZSfN4
         6R2Q==
X-Gm-Message-State: AOAM532fPiLP29SxLbwRCptB3ieobOBMA1O1QDdaROZGDtsMIKm2yUzg
        c2ahugGUExq05mvZ1LnzvX/p7w==
X-Google-Smtp-Source: ABdhPJxjhf7qvZcuAHdKIhJj5GEIO1KvQOMDC7R/51CRADIrDDTdlTPGgxJ/1bsjcYy5yLi2/HhiIA==
X-Received: by 2002:adf:f990:: with SMTP id f16mr38552589wrr.128.1638268857932;
        Tue, 30 Nov 2021 02:40:57 -0800 (PST)
Received: from ?IPv6:2001:861:44c0:66c0:f80b:b9bd:4d6e:b61a? ([2001:861:44c0:66c0:f80b:b9bd:4d6e:b61a])
        by smtp.gmail.com with ESMTPSA id f19sm2316115wmq.34.2021.11.30.02.40.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Nov 2021 02:40:57 -0800 (PST)
Subject: Re: [PATCH 1/2] arm64: dts: meson: p241: add vcc_5v regulator
To:     Jerome Brunet <jbrunet@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20211130100159.214489-1-jbrunet@baylibre.com>
 <20211130100159.214489-2-jbrunet@baylibre.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <36761ab4-d5d6-ffdc-cca8-bcc845e10b9e@baylibre.com>
Date:   Tue, 30 Nov 2021 11:40:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211130100159.214489-2-jbrunet@baylibre.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/11/2021 11:01, Jerome Brunet wrote:
> Add the VCC_5V regulator, which feeds the HDMI, USB and audio amplifier.
> 
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
> ---
>  .../arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
> index eb7f5a3fefd4..9d0684a8264b 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
> @@ -84,6 +84,14 @@ vcc_3v3: regulator-vcc_3v3 {
>  		regulator-max-microvolt = <3300000>;
>  	};
>  
> +	vcc_5v: regulator-vcc-5v {
> +		compatible = "regulator-fixed";
> +		regulator-name = "VCC_5V";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +	};
> +
> +
>  	emmc_pwrseq: emmc-pwrseq {
>  		compatible = "mmc-pwrseq-emmc";
>  		reset-gpios = <&gpio BOOT_9 GPIO_ACTIVE_LOW>;
> @@ -136,6 +144,7 @@ &hdmi_tx {
>  	status = "okay";
>  	pinctrl-0 = <&hdmi_hpd_pins>, <&hdmi_i2c_pins>;
>  	pinctrl-names = "default";
> +	hdmi-supply = <&vcc_5v>;
>  };
>  
>  &hdmi_tx_tmds_port {
> @@ -220,3 +229,7 @@ &usb {
>  	status = "okay";
>  	dr_mode = "host";
>  };
> +
> +&usb2_phy0 {
> +	phy-supply = <&vcc_5v>;
> +};
> 

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
