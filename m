Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 11A1235BA13
	for <lists+devicetree@lfdr.de>; Mon, 12 Apr 2021 08:20:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229810AbhDLGVM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Apr 2021 02:21:12 -0400
Received: from mail-lj1-f180.google.com ([209.85.208.180]:41578 "EHLO
        mail-lj1-f180.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229461AbhDLGVM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Apr 2021 02:21:12 -0400
Received: by mail-lj1-f180.google.com with SMTP id a36so3122939ljq.8
        for <devicetree@vger.kernel.org>; Sun, 11 Apr 2021 23:20:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=igzuPkJhxst+MnvHXRdQo1m4AQpe2UounByOQCdu+6U=;
        b=dKSD49Yg23d+wZNebm7/kVYvXNj/JTJhsecs5KjIovNQwYd6IAWlyYX6ApnIvgqNnY
         OychU+U6Fr6tmrWn4AfcnjVPOeoFsAY24TFIKLgKtpOv7jRTxcq4dCoYIq55kxBQb9Vk
         qKyBOVU1qYwIijcIT4+c21QN88Kx048+aPRI5cfBL2eujhD1GXUdC0KBxcAcKgIRSufC
         tpkQIHoZq1C6pp/DN+X7AIi/zoo3hMfBc0y2wNXT/5OMSoeSpQe92AS4/BBVlY8OcGm6
         mMkESL9JuJXfbxlPb7+KgzemfKWqCbfBCznb9n6CHn8Ul52+zJ6bt3iywIe9M54tIz/9
         K2VA==
X-Gm-Message-State: AOAM532W8R+b78f3Tww/zW5gb/PJW3TtvT1IuVpvv+GeKpXxF4L27AGo
        vLLkWz6w/897F8T6hTbZPpRsJ4FY3WmG1w==
X-Google-Smtp-Source: ABdhPJzQB6GDtnD3cnfmWKVZ39yAHDNkMQh6DHglfK8ZeeUaWyu/C91AV3tU1EmrIPk3KiXQeZQO9A==
X-Received: by 2002:a2e:2f05:: with SMTP id v5mr255895ljv.63.1618208453327;
        Sun, 11 Apr 2021 23:20:53 -0700 (PDT)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com. [209.85.208.171])
        by smtp.gmail.com with ESMTPSA id l7sm2130632lfp.234.2021.04.11.23.20.52
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 23:20:52 -0700 (PDT)
Received: by mail-lj1-f171.google.com with SMTP id m7so3148331ljp.10
        for <devicetree@vger.kernel.org>; Sun, 11 Apr 2021 23:20:52 -0700 (PDT)
X-Received: by 2002:a2e:8559:: with SMTP id u25mr168139ljj.282.1618208452556;
 Sun, 11 Apr 2021 23:20:52 -0700 (PDT)
MIME-Version: 1.0
References: <20210412000813.13071-1-andre.przywara@arm.com>
In-Reply-To: <20210412000813.13071-1-andre.przywara@arm.com>
Reply-To: wens@csie.org
From:   Chen-Yu Tsai <wens@csie.org>
Date:   Mon, 12 Apr 2021 14:20:41 +0800
X-Gmail-Original-Message-ID: <CAGb2v65uwo5Ns_ODNyX9S4H=cS6TGWCgaEyzhMaRaayxUtif2g@mail.gmail.com>
Message-ID: <CAGb2v65uwo5Ns_ODNyX9S4H=cS6TGWCgaEyzhMaRaayxUtif2g@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH] arm64: dts: allwinner: Revert SD card CD
 GPIO for Pine64-LTS
To:     =?UTF-8?Q?Andr=C3=A9_Przywara?= <andre.przywara@arm.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        Michael Weiser <michael.weiser@gmx.de>,
        Daniel Kulesz <kuleszdl@posteo.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Apr 12, 2021 at 8:08 AM Andre Przywara <andre.przywara@arm.com> wrote:
>
> Commit 941432d00768 ("arm64: dts: allwinner: Drop non-removable from
> SoPine/LTS SD card") enabled the card detect GPIO for the SOPine module,
> along the way with the Pine64-LTS, which share the same base .dtsi.
>
> This was based on the observation that the Pine64-LTS has as "push-push"
> SD card socket, and that the schematic mentions the card detect GPIO.
>
> After having received two reports about failing SD card access with that
> patch, some more research and polls on that subject revealed that there
> are at least two different versions of the Pine64-LTS out there:
> - On some boards (including mine) the card detect pin is "stuck" at
>   high, regardless of an microSD card being inserted or not.
> - On other boards the card-detect is working, but is active-high, by
>   virtue of an explicit inverter circuit, as shown in the schematic.
>
> To cover all versions of the board out there, and don't take any chances,
> let's revert the introduction of the CD GPIO, and go back to the
> non-removable property for the Pine64-LTS. That should avoid regressions
> and should work for everyone.
> The SOPine card detect has proven to be working, so let's keep that
> GPIO in place.
>
> Fixes: 941432d00768 ("arm64: dts: allwinner: Drop non-removable from SoPine/LTS SD card")
> Reported-by: Michael Weiser <michael.weiser@gmx.de>
> Reported-by: Daniel Kulesz <kuleszdl@posteo.org>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> index e79ce49e7e6a..843338e19694 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> @@ -21,5 +21,5 @@
>  };
>
>  &mmc0 {
> -       cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>; /* PF6 push-push switch */
> +       non-removable;          /* card detect is broken on some boards */

So a revert is good, but has anyone tried using the "broken-cd" instead?
That way, at least on Linux, the mmc core resorts to polling for a card.
At least this way the card is still removable.


ChenYu
