Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A5E4E2B3EAE
	for <lists+devicetree@lfdr.de>; Mon, 16 Nov 2020 09:33:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726189AbgKPIdJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Nov 2020 03:33:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726172AbgKPIdI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Nov 2020 03:33:08 -0500
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBFE8C0613D1
        for <devicetree@vger.kernel.org>; Mon, 16 Nov 2020 00:33:06 -0800 (PST)
Received: by mail-wm1-x344.google.com with SMTP id d142so22900021wmd.4
        for <devicetree@vger.kernel.org>; Mon, 16 Nov 2020 00:33:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:autocrypt:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=rpyHnH1kRRZPZrtXD4WkiTG22J/+k9qhuhbiORLkYck=;
        b=RSJQOj6qNNc5WM2jBQtain0ccAnLkFbn4OmVa1bluxeNOTK61ukFIjRsPQjUoYwq/M
         27ehNIbzj0tzmvi8v1fDkZAsqVocqTdfpBWajLOHfrdfPpfSgxAwMSYwaqZOtH2Seh/Z
         jum6/bJ1RrrwLh5Xsa8hYqOJUaAoax1cLY9+EGIDGtQIxwwMkT1H6Y2pIAqrenv8CYnY
         rHthhbzh4N1EGOMzlmnFPFNZ0jvh65JL5JS/BUVHmPhEww1mvZk0psHwc7MSwlukeW9g
         GN3FNABFu4q1+4rmfKbw05d6vf2+Fv3zn8LlEUgoOK3abyaP/zuOfEAwetC9KYTf9WTP
         cBYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=rpyHnH1kRRZPZrtXD4WkiTG22J/+k9qhuhbiORLkYck=;
        b=OLW4EbZPQ8yc0j6Asu0yXl38fg6rauY5T3OWjQg2EI5Ed2LOAtKOTdd4sY+hPvYSvY
         F+u3KHKTYHcDDvKvX51hb+GcSoVMkjEa2W2kZRCCFVhH9qBaB3WLEcaK3jiXOHhKTlLW
         o1QU/zAJt6eBekf19v/5kZ3l+4XXzBkQdWYI01iMp+P2mpPMwsbndPBBy1vcAn4Xeg6U
         2sLbsRyrnwjlwpJR4pNen+qkTSdKiYjx3PRoSpNkJ86A3oZuA+7hAr7fjMN+ckixU/27
         ScwdJ+CtG6AIuRKTlqJHWVWTQNvqIYzOJfKtVLxXs2iFg+RdcPIzDscbygUV82QBZ4wk
         MjnQ==
X-Gm-Message-State: AOAM532ZJyF6fQKYSs7yUnJ30FI5IdZDy5lHw85wCBTPEoS3hl1cRceY
        GzODoxQZMuioFZT656umRgxozg==
X-Google-Smtp-Source: ABdhPJwTlnMdZOTsiOyRrUcrAHx9UvwR02u8xqptyRTMzv2NqLUbQuBclSAHmGhHe0oveMEonf3FzA==
X-Received: by 2002:a7b:c841:: with SMTP id c1mr14060024wml.31.1605515585199;
        Mon, 16 Nov 2020 00:33:05 -0800 (PST)
Received: from ?IPv6:2a01:e35:2ec0:82b0:edb9:72a:9e35:6eb? ([2a01:e35:2ec0:82b0:edb9:72a:9e35:6eb])
        by smtp.gmail.com with ESMTPSA id f16sm22260522wrp.66.2020.11.16.00.33.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2020 00:33:04 -0800 (PST)
Subject: Re: [PATCH RFC] arm64: dts: Use separate dtb for Khadas vim3 usb3 and
 pcie controller
To:     Qu Wenruo <wqu@suse.com>, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        gouwa@khadas.com, nick@khadas.com, art@khadas.com
References: <20201115033917.83302-1-wqu@suse.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <25b4bbb5-07e8-4d82-a4cf-43f4d64c8983@baylibre.com>
Date:   Mon, 16 Nov 2020 09:33:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201115033917.83302-1-wqu@suse.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 15/11/2020 04:39, Qu Wenruo wrote:
> Although the plan is to make the bootloader (U-boot) to load overlay for
> the device, but currently the board doesn't have the upstream support
> yet.

No need for that, automatic PCIe enable is now support on upstream U-Boot
for VIM3 & VIM3L:
https://github.com/u-boot/u-boot/commit/adbff64af7b7cee3e0007b75df2644090edaafcb

Neil

> 
> This means even upstream kernel supports all the needed drivers, we still
> can't initialize the pcie controller.
> 
> As a workaround, make seperate device trees for pcie controller and usb3
> controller.
> 
> Now user still need to go into the factory bootloader to switch the mux,
> but they can easily boot the kernel with PCIE support by just swithcing
> to the pcie device tree.
> 
> And since we didn't modify the original dtb, the future upstream uboot
> can still use overlay to switch mode using the same dtb file.
> The added new pcie dtb will just be a workaround.
> 
> Tested on my VIM3 pro board, now I can boot the root fs on the NVME
> drive, with upstream kernel with the new pcie dtb.
> 
> Signed-off-by: Qu Wenruo <wqu@suse.com>
> ---
>  arch/arm64/boot/dts/amlogic/Makefile          |  1 +
>  .../meson-g12b-a311d-khadas-vim3-pcie.dts     | 39 +++++++++++++++++++
>  .../amlogic/meson-g12b-a311d-khadas-vim3.dts  | 23 +----------
>  3 files changed, 41 insertions(+), 22 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3-pcie.dts
> 
> diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
> index ced03946314f..a0b8d30539e2 100644
> --- a/arch/arm64/boot/dts/amlogic/Makefile
> +++ b/arch/arm64/boot/dts/amlogic/Makefile
> @@ -6,6 +6,7 @@ dtb-$(CONFIG_ARCH_MESON) += meson-g12a-x96-max.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-g12b-gtking.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-g12b-gtking-pro.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-g12b-a311d-khadas-vim3.dtb
> +dtb-$(CONFIG_ARCH_MESON) += meson-g12b-a311d-khadas-vim3-pcie.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-g12b-s922x-khadas-vim3.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-n2.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-n2-plus.dtb
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3-pcie.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3-pcie.dts
> new file mode 100644
> index 000000000000..93641a32eeec
> --- /dev/null
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3-pcie.dts
> @@ -0,0 +1,39 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 BayLibre, SAS
> + * Author: Neil Armstrong <narmstrong@baylibre.com>
> + * Copyright (c) 2019 Christian Hewitt <christianshewitt@gmail.com>
> + */
> +
> +/dts-v1/;
> +
> +#include "meson-g12b-a311d.dtsi"
> +#include "meson-khadas-vim3.dtsi"
> +#include "meson-g12b-khadas-vim3.dtsi"
> +
> +/ {
> +	compatible = "khadas,vim3", "amlogic,a311d", "amlogic,g12b";
> +};
> +
> +/*
> + * The VIM3 on-board  MCU can mux the PCIe/USB3.0 shared differential
> + * lines using a FUSB340TMX USB 3.1 SuperSpeed Data Switch between
> + * an USB3.0 Type A connector and a M.2 Key M slot.
> + * The PHY driving these differential lines is shared between
> + * the USB3.0 controller and the PCIe Controller, thus only
> + * a single controller can use it.
> + *
> + * This is the PCIE device tree.
> + *
> + * Until upstream uboot can boot the board and modify the nodes before booting
> + * It's much easier to just choose this device tree file to use PCIE controller.
> + */
> +
> +&pcie {
> +	status = "okay";
> +};
> +
> +&usb {
> +	phys = <&usb2_phy0>, <&usb2_phy1>;
> +	phy-names = "usb2-phy0", "usb2-phy1";
> +};
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dts
> index 124a80901084..9c111d76baec 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dts
> @@ -16,26 +16,5 @@ / {
>  };
>  
>  /*
> - * The VIM3 on-board  MCU can mux the PCIe/USB3.0 shared differential
> - * lines using a FUSB340TMX USB 3.1 SuperSpeed Data Switch between
> - * an USB3.0 Type A connector and a M.2 Key M slot.
> - * The PHY driving these differential lines is shared between
> - * the USB3.0 controller and the PCIe Controller, thus only
> - * a single controller can use it.
> - * If the MCU is configured to mux the PCIe/USB3.0 differential lines
> - * to the M.2 Key M slot, uncomment the following block to disable
> - * USB3.0 from the USB Complex and enable the PCIe controller.
> - * The End User is not expected to uncomment the following except for
> - * testing purposes, but instead rely on the firmware/bootloader to
> - * update these nodes accordingly if PCIe mode is selected by the MCU.
> - */
> -/*
> -&pcie {
> -	status = "okay";
> -};
> -
> -&usb {
> -	phys = <&usb2_phy0>, <&usb2_phy1>;
> -	phy-names = "usb2-phy0", "usb2-phy1";
> -};
> + * Vim3 default to USB3.0 instead of PCIE controller.
>   */
> 

