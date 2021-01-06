Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B652D2EC0B1
	for <lists+devicetree@lfdr.de>; Wed,  6 Jan 2021 16:54:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726220AbhAFPx7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jan 2021 10:53:59 -0500
Received: from mail-vs1-f44.google.com ([209.85.217.44]:40668 "EHLO
        mail-vs1-f44.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725800AbhAFPx6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jan 2021 10:53:58 -0500
Received: by mail-vs1-f44.google.com with SMTP id x4so1993271vsp.7
        for <devicetree@vger.kernel.org>; Wed, 06 Jan 2021 07:53:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8ND1E+ytxvU1+JHKxbNVD1gZTf9vXvLvS5uIHqOdni4=;
        b=k5RFN68JwO0DlnGDDtN8XOXE9EuYuZj+IiPNfQtlVfG9J4U7Jp4UMGHcGVaj4qJnnp
         VcgUIRqAaHpw5PgPaZlQ1b06mMAdLDWplJn1bYI8YcgSeVAioprMLfS8vFTb1F4W7ZDx
         JqUPn9SpCugTD8fpeV80P18zO6P/SStlvd3IW+JMP2xeFDlkFMGXzAAqaHsnUeFKnkYi
         sHS87ndCBW5rfHsgd5lTnRNPzgMdabd45/jzeXaL9a45Xiz3wBUod1AOFGMRiEosw5/f
         jD8Bj64NX8gFedqPH/oVvZwXSQv2+jn1tL/UWL4X12DEo57DLmqpkr5qe02Tz4WoUCu+
         kqww==
X-Gm-Message-State: AOAM531n6tANYPofxxWRlpXehaELaEnspefvCf8S+5LZgRKhFGO8eDcE
        2lJSlSahi/MnvQWnrYvP++sOwtx4dVFs+Q==
X-Google-Smtp-Source: ABdhPJybRQPiJYGi1Gt7wzf5EMi+SPG5y6JlTarEk5egm8RHg45iW1PE0+GOq3XZSRSIjKiJfpdHHw==
X-Received: by 2002:a05:6102:7ca:: with SMTP id y10mr3803744vsg.34.1609948397637;
        Wed, 06 Jan 2021 07:53:17 -0800 (PST)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com. [209.85.217.47])
        by smtp.gmail.com with ESMTPSA id 30sm376770uab.18.2021.01.06.07.53.16
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jan 2021 07:53:17 -0800 (PST)
Received: by mail-vs1-f47.google.com with SMTP id b23so1982589vsp.9
        for <devicetree@vger.kernel.org>; Wed, 06 Jan 2021 07:53:16 -0800 (PST)
X-Received: by 2002:a67:fd88:: with SMTP id k8mr3678704vsq.17.1609948396828;
 Wed, 06 Jan 2021 07:53:16 -0800 (PST)
MIME-Version: 1.0
References: <20210106150525.15403-1-andre.przywara@arm.com> <20210106150525.15403-3-andre.przywara@arm.com>
In-Reply-To: <20210106150525.15403-3-andre.przywara@arm.com>
From:   Chen-Yu Tsai <wens@csie.org>
Date:   Wed, 6 Jan 2021 23:53:06 +0800
X-Gmail-Original-Message-ID: <CAGb2v65oDBjO2dgcTfhe5Dephc6KBN9-epBieQ4mV0cwMizNvw@mail.gmail.com>
Message-ID: <CAGb2v65oDBjO2dgcTfhe5Dephc6KBN9-epBieQ4mV0cwMizNvw@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 2/7] arm64: dts: allwinner: Pine64-LTS: Add
 status LED
To:     =?UTF-8?Q?Andr=C3=A9_Przywara?= <andre.przywara@arm.com>
Cc:     Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Icenowy Zheng <icenowy@aosc.io>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-sunxi <linux-sunxi@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Jan 6, 2021 at 11:05 PM Andre Przywara <andre.przywara@arm.com> wrote:
>
> The Pine64-LTS board features a blue status LED on pin PL7.

I'd like some clarification about this.

My Pine64-LTS was a used unit personally given to me by TL Lim, which came
with LEDs that I assume were soldered on by hand as their mounting angles
are slightly off. My Pine64+ (the original from the Kickstarter campaign)
and SoPine baseboard (a new unit, also given to me by TL Lim) came without
LEDs soldered on.

I'm OK with adding the LED to the device tree. I'm just not sure about the
color.


ChenYu

> Describe it in the DT.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../boot/dts/allwinner/sun50i-a64-pine64-lts.dts      | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> index 302e24be0a31..55bf4a0fc31c 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> @@ -1,10 +1,21 @@
>  // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>  // Copyright (c) 2018 ARM Ltd.
>
> +#include <dt-bindings/leds/common.h>
>  #include "sun50i-a64-sopine-baseboard.dts"
>
>  / {
>         model = "Pine64 LTS";
>         compatible = "pine64,pine64-lts", "allwinner,sun50i-r18",
>                      "allwinner,sun50i-a64";
> +
> +       leds {
> +               compatible = "gpio-leds";
> +
> +               status {
> +                       function = LED_FUNCTION_STATUS;
> +                       color = <LED_COLOR_ID_BLUE>;
> +                       gpios = <&r_pio 0 7 GPIO_ACTIVE_LOW>; /* PL7 */
> +               };
> +       };
>  };
> --
> 2.17.5
>
> --
> You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/20210106150525.15403-3-andre.przywara%40arm.com.
