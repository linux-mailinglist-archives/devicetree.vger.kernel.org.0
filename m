Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 530462C998B
	for <lists+devicetree@lfdr.de>; Tue,  1 Dec 2020 09:34:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728666AbgLAIcb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Dec 2020 03:32:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727135AbgLAIcb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Dec 2020 03:32:31 -0500
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2562AC0613D4
        for <devicetree@vger.kernel.org>; Tue,  1 Dec 2020 00:31:51 -0800 (PST)
Received: by mail-wm1-x341.google.com with SMTP id e25so3236943wme.0
        for <devicetree@vger.kernel.org>; Tue, 01 Dec 2020 00:31:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=references:user-agent:from:to:cc:subject:in-reply-to:message-id
         :date:mime-version;
        bh=TxYCO6cWwJuHI7h5DWT27KZsbPoNU+/ayiJlqSncKfw=;
        b=rqb2bw6eKpmf53iOTGKAcD99gWWxxeOsA8KlODalPevcpYj640jondhUuOrOR9OoKm
         8dKDV3Yu8hZn/K6RJUnVr4xfPXVIlBxG/P+W9OgHhl8TP/EsO8gBe7hQ/kEvPDwxtxI6
         EtrAJW0QwlOjcDkHciPEFope7B46Gmh8rFzVfqcCt+INzGTddWiDP3AD/rvRzb4XyjvS
         pjKn16q4Yuhkhmg2outK20lnWXFIk08Xe79TbobHlhohxOz79fKCUkgZR5WlGbmom2yE
         6IBKVu1/GzRCQGdh29DFyuMZyweI/ClTZ8Lh9gm+ElkUSGyRcYr4U5ik0sMMSufLN6MD
         IJ6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:references:user-agent:from:to:cc:subject
         :in-reply-to:message-id:date:mime-version;
        bh=TxYCO6cWwJuHI7h5DWT27KZsbPoNU+/ayiJlqSncKfw=;
        b=I1hllWjaasj2LVJcekMgMYzC8+9BSQeDjr3RIl+v5VDzpftd2Z/FdAnp4/Y5XvBtzC
         CwnQ+fDk+IFbbGRi/9sxYBDxUkkF//WSH8BIShQroEwRd7LDVii6HeSA4AR8EXmxbyxr
         MPPiDRVwIhH6L1pF6R8/eXT4EWu3szmmne8RGle9MzRtspTuykEHZeqzKzhjHC+zimjd
         AghT+nqGjvRlj9M9JZSFcgDt12/nlEpLjZiv+WlCe7/HOpN1xezfkzbaOGsuU8dcK4QO
         mZ+/43sHc66GI+YFDLbr7gbAyWZdRFq/S4xRWInsNIa/bnwDU2aVnQE/u1y5JmlBnkfH
         +NSQ==
X-Gm-Message-State: AOAM532xacMj7w9fG279u151hwLom8itpKYhckEgaIw04yaeKHyN/6Qq
        eIa9IxL5REr67Isex7V7FR1RPg==
X-Google-Smtp-Source: ABdhPJysze0Tk/EFsjvf7saAh4/g3+BzAjZd8SNKiyvNLDFY7ZwWNB2mQsNM5BotMYyX6kOS9bPtzA==
X-Received: by 2002:a1c:220a:: with SMTP id i10mr1501475wmi.93.1606811508544;
        Tue, 01 Dec 2020 00:31:48 -0800 (PST)
Received: from localhost (82-65-169-74.subs.proxad.net. [82.65.169.74])
        by smtp.gmail.com with ESMTPSA id z19sm1635915wmk.12.2020.12.01.00.31.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Dec 2020 00:31:48 -0800 (PST)
References: <e4df74aed2a7cff09366e72c87d408f41317907f.1606782187.git.stefan@agner.ch>
User-agent: mu4e 1.4.10; emacs 27.1
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Stefan Agner <stefan@agner.ch>, robh+dt@kernel.org,
        khilman@baylibre.com
Cc:     narmstrong@baylibre.com, martin.blumenstingl@googlemail.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: meson: fix PHY deassert timing requirements
In-reply-to: <e4df74aed2a7cff09366e72c87d408f41317907f.1606782187.git.stefan@agner.ch>
Message-ID: <1j8sai7wr0.fsf@starbuckisacylon.baylibre.com>
Date:   Tue, 01 Dec 2020 09:31:47 +0100
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Tue 01 Dec 2020 at 01:25, Stefan Agner <stefan@agner.ch> wrote:

> According to the datasheet (Rev. 1.4, page 30) the RTL8211F requires
> at least 50ms "for internal circuits settling time" before accessing
> the PHY registers. This fixes an issue where the Ethernet link doesn't
> come up when using ip link set down/up:
>   [   29.360965] meson8b-dwmac ff3f0000.ethernet eth0: Link is Down
>   [   34.569012] meson8b-dwmac ff3f0000.ethernet eth0: PHY [0.0:00] driver [RTL8211F Gigabit Ethernet] (irq=31)
>   [   34.676732] meson8b-dwmac ff3f0000.ethernet: Failed to reset the dma
>   [   34.678874] meson8b-dwmac ff3f0000.ethernet eth0: stmmac_hw_setup: DMA engine initialization failed
>   [   34.687850] meson8b-dwmac ff3f0000.ethernet eth0: stmmac_open: Hw setup failed
>
> Fixes: 658e4129bb81 ("arm64: dts: meson: g12b: odroid-n2: add the Ethernet PHY reset line")
> Signed-off-by: Stefan Agner <stefan@agner.ch>
> ---
>  arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
> index 6982632ae646..a5652caacb27 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
> @@ -413,7 +413,7 @@ external_phy: ethernet-phy@0 {
>  		max-speed = <1000>;
>  
>  		reset-assert-us = <10000>;
> -		reset-deassert-us = <30000>;
> +		reset-deassert-us = <50000>;
>  		reset-gpios = <&gpio GPIOZ_15 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
>  
>  		interrupt-parent = <&gpio_intc>;

Thanks for sharing this is Stefan,
The title of your patch should probably be modified to show that it
addresses the odroid n2 only, as it stands.

I have checked the RTL8211F doc I have, v1.9, and this one mention
"72ms at least - not including the 1.0V supply rise time" before
accessing the PHY registers :/ ... so 80ms maybe ?
