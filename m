Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B4A7E435E97
	for <lists+devicetree@lfdr.de>; Thu, 21 Oct 2021 12:05:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231655AbhJUKIJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Oct 2021 06:08:09 -0400
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124]:43407 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231371AbhJUKII (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 21 Oct 2021 06:08:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1634810752;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=OGJuGgtDPx6oFIaSi1hNMo6S5k5dak1uMNO1VJPHxFE=;
        b=JHchKhZUf3UVtELN8yItu2f3oJTYB9kQSCX4QFAGwIhzveptzp2tlSVzoWnCgstKzQ0Jdl
        yZaEglBtECVIaMrJJhJ2hxqAON9hI9BNllZUhWbAJvwP5xWc+tn6C2lTcmSm7mszPIurDc
        e9ezRBFl78wyfr1UvbSY8JgKkP+4GMQ=
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com
 [209.85.214.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-71-I0ZuuuRiOIquqHi2V9sc5A-1; Thu, 21 Oct 2021 06:05:51 -0400
X-MC-Unique: I0ZuuuRiOIquqHi2V9sc5A-1
Received: by mail-pl1-f198.google.com with SMTP id y3-20020a170902d64300b0013fc50eb97eso6963plh.17
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 03:05:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OGJuGgtDPx6oFIaSi1hNMo6S5k5dak1uMNO1VJPHxFE=;
        b=cN5Pt4+ps+grwp+pRUQrVObUzd1X7JfZxY9BtjOBQIdpSgL/tjpkPoJb9IZt+HAq8/
         10hB8na0eYhOZLAM/K1FLWm988w0OzvHq5UVk5rGv3nxiIAOAqdecV9KhM6nn1asZKF0
         pZroWLs7UlvmodLDAt5k6O5Tn4uRcuQSAWcsiJ4/zgug0lO31USqXUN4ImvADKiDVs8O
         tNGOU6c6p3HeZwNbu3FHRYxS75j80QOX0gWtrkaw1CEPeDIyTCxHEI8mX3XO2LLxTCUl
         1UCgeNQ/W2OafZudkXIvMSZ7RJh0NYitm1TI0mtFNLqgk12xrJs/UCpLSB+ts6KMGQ4Q
         gglg==
X-Gm-Message-State: AOAM531j+Yhyt48SMvSLSD5imSiX/oFNILVwy+XyEvoJ/Hjp5UEanf1k
        qH2mM3LYS+x44jstbLMgb6Y8VAB+qsA1WB3utk/L7w5P3k1D4dgPYq6RCT0zoe+1XxubcJ63kUK
        v1GtnEj9Vw7fcULVgtQCaW3QceJHLB3zgd3kZdw==
X-Received: by 2002:a62:5304:0:b0:44c:719c:a2c with SMTP id h4-20020a625304000000b0044c719c0a2cmr4461587pfb.13.1634810750229;
        Thu, 21 Oct 2021 03:05:50 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyTESYzdC+s7ND80mBlLJkwm3zpKysVZ2TDB8sOhj9e2qyfKZqcTsjG/GRhajqpBqMfx5LXnPbc9Q1coduy7Pw=
X-Received: by 2002:a62:5304:0:b0:44c:719c:a2c with SMTP id
 h4-20020a625304000000b0044c719c0a2cmr4461563pfb.13.1634810750002; Thu, 21 Oct
 2021 03:05:50 -0700 (PDT)
MIME-Version: 1.0
References: <20211021095107.116292-1-alistair@alistair23.me> <20211021095107.116292-2-alistair@alistair23.me>
In-Reply-To: <20211021095107.116292-2-alistair@alistair23.me>
From:   Benjamin Tissoires <benjamin.tissoires@redhat.com>
Date:   Thu, 21 Oct 2021 12:05:39 +0200
Message-ID: <CAO-hwJKY7-qyVQmWAe=eejCmtuNEGAA_1f+MgA_uS63Ma7LiiQ@mail.gmail.com>
Subject: Re: [PATCH v12 2/3] HID: quirks: Invert X/Y values for rM2 Wacom
To:     Alistair Francis <alistair@alistair23.me>
Cc:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>, Jiri Kosina <jikos@kernel.org>,
        "open list:HID CORE LAYER" <linux-input@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Alistair Francis <alistair23@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 21, 2021 at 11:51 AM Alistair Francis
<alistair@alistair23.me> wrote:
>
> Enable the HID_QUIRK_XY_INVERT quirk for the Wacom digitiser used on the
> reMarkable 2.
>
> Signed-off-by: Alistair Francis <alistair@alistair23.me>
> ---
>  drivers/hid/hid-ids.h    | 2 ++
>  drivers/hid/hid-quirks.c | 1 +
>  2 files changed, 3 insertions(+)
>
> diff --git a/drivers/hid/hid-ids.h b/drivers/hid/hid-ids.h
> index 29564b370341..9dc17bf3e550 100644
> --- a/drivers/hid/hid-ids.h
> +++ b/drivers/hid/hid-ids.h
> @@ -1260,8 +1260,10 @@
>  #define USB_DEVICE_ID_VTL_MULTITOUCH_FF3F      0xff3f
>
>  #define USB_VENDOR_ID_WACOM            0x056a
> +#define USB_VENDOR_ID_WACOM_HID                0x2D1F
>  #define USB_DEVICE_ID_WACOM_GRAPHIRE_BLUETOOTH 0x81
>  #define USB_DEVICE_ID_WACOM_INTUOS4_BLUETOOTH   0x00BD
> +#define I2C_DEVICE_ID_WACOM_REMARKABLE2                0x0095
>
>  #define USB_VENDOR_ID_WALTOP                           0x172f
>  #define USB_DEVICE_ID_WALTOP_SLIM_TABLET_5_8_INCH      0x0032
> diff --git a/drivers/hid/hid-quirks.c b/drivers/hid/hid-quirks.c
> index 2e104682c22b..b081af3329a5 100644
> --- a/drivers/hid/hid-quirks.c
> +++ b/drivers/hid/hid-quirks.c
> @@ -186,6 +186,7 @@ static const struct hid_device_id hid_quirks[] = {
>         { HID_USB_DEVICE(USB_VENDOR_ID_TURBOX, USB_DEVICE_ID_TURBOX_KEYBOARD), HID_QUIRK_NOGET },
>         { HID_USB_DEVICE(USB_VENDOR_ID_UCLOGIC, USB_DEVICE_ID_UCLOGIC_TABLET_KNA5), HID_QUIRK_MULTI_INPUT },
>         { HID_USB_DEVICE(USB_VENDOR_ID_UCLOGIC, USB_DEVICE_ID_UCLOGIC_TABLET_TWA60), HID_QUIRK_MULTI_INPUT },
> +       { HID_I2C_DEVICE(USB_VENDOR_ID_WACOM_HID, I2C_DEVICE_ID_WACOM_REMARKABLE2), HID_QUIRK_XY_INVERT },

Well, there is no guarantee that this PID will always be installed in
this particular configuration.

Can you instead set the quirk in i2c_hid?:
- retrieve that information from the DT in
drivers/hid/i2c-hid/i2c-hid-of.c (with the generic touchscreen OF
properties)
- amend the signature of i2c_hid_core_probe() to account for extra quirks
- after having allocated the device, add the provided quirks

Then I still need to figure out how we can add tests for the quirk.

Cheers,
Benjamin

>         { HID_USB_DEVICE(USB_VENDOR_ID_WALTOP, USB_DEVICE_ID_WALTOP_MEDIA_TABLET_10_6_INCH), HID_QUIRK_MULTI_INPUT },
>         { HID_USB_DEVICE(USB_VENDOR_ID_WALTOP, USB_DEVICE_ID_WALTOP_MEDIA_TABLET_14_1_INCH), HID_QUIRK_MULTI_INPUT },
>         { HID_USB_DEVICE(USB_VENDOR_ID_WALTOP, USB_DEVICE_ID_WALTOP_SIRIUS_BATTERY_FREE_TABLET), HID_QUIRK_MULTI_INPUT },
> --
> 2.31.1
>

