Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3751E7B116
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2019 20:02:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727167AbfG3SCB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Jul 2019 14:02:01 -0400
Received: from mail-io1-f67.google.com ([209.85.166.67]:34596 "EHLO
        mail-io1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729302AbfG3SB6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Jul 2019 14:01:58 -0400
Received: by mail-io1-f67.google.com with SMTP id k8so130266505iot.1
        for <devicetree@vger.kernel.org>; Tue, 30 Jul 2019 11:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NcAR3GqqxpAusQVog8Fhc1feuDH351bpfQTCcdx/nxs=;
        b=STnYbrirbKr1yAmc2nPF92sj0DFq3tq71Bs1c1x0ibWy4hdKDtZ8Tq4VPh1Kn85/6B
         w6lcKTR8uT01woEtqCg9jLmTWvC64bWHDataDtPgVlKtQQaaffkWMeVo4I/xwBfioTRL
         EcR2XKnbW3Nia+1xvzACV2DzMbUJEtS9EKIhY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NcAR3GqqxpAusQVog8Fhc1feuDH351bpfQTCcdx/nxs=;
        b=BI1HAhU6bxsWrvvxEI+kvFA3RaF9HRGEEUJacWF4VCkNOM4sOAsEWHDSvAQCK4ovXM
         FCtkvRFRUTUXtm6h/x3b+7Lhp2ovtWQzQnqhbXoN8e/74kc3V/NbHdbXXQK6+HS1CG6W
         87/vpsr6uYJZNRjNVN8TPbVdmnA1g8PtqvsbV5JnF8s93hllS8u6RD5FfP5nTHsdXCg/
         5AEBlrw/9IlxWl2T13skf5+VYj3ux5/bgqKx5zdpEyvJtPVJoVqwHc/KMSSku1yaHq5U
         ofC1Y/ClYlJVoXc/qTkJ/HgZ0yD9w9PO347yDOPZhjy0bROLEHs/yWLKLHchufvQrMX2
         nN3g==
X-Gm-Message-State: APjAAAUZ2bv+p9KYjEl5gOGjIl2FfeA01A1gnmBk2i3qk1PV/0IFjOMb
        payOisQvk+/uPJsIhjIxmpJnhsACusw=
X-Google-Smtp-Source: APXvYqx8V1z2muvd6hsOAoxRDBowzUX8vMk3XUE0NqRwRrAJS1EtK7+P1RRcCVPSG8YQRjy42qa0/A==
X-Received: by 2002:a6b:ee12:: with SMTP id i18mr47012055ioh.172.1564509716304;
        Tue, 30 Jul 2019 11:01:56 -0700 (PDT)
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com. [209.85.166.49])
        by smtp.gmail.com with ESMTPSA id t133sm97248612iof.21.2019.07.30.11.01.54
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jul 2019 11:01:55 -0700 (PDT)
Received: by mail-io1-f49.google.com with SMTP id i10so16873105iol.13
        for <devicetree@vger.kernel.org>; Tue, 30 Jul 2019 11:01:54 -0700 (PDT)
X-Received: by 2002:a6b:5103:: with SMTP id f3mr103345503iob.142.1564509714317;
 Tue, 30 Jul 2019 11:01:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190730173444.56741-1-mka@chromium.org>
In-Reply-To: <20190730173444.56741-1-mka@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 30 Jul 2019 11:01:42 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wub9Wkc5t4iQRjBK8R_d_oh4PoHPwLHb4T5+Meij7sSg@mail.gmail.com>
Message-ID: <CAD=FV=Wub9Wkc5t4iQRjBK8R_d_oh4PoHPwLHb4T5+Meij7sSg@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: rockchip: A few fixes for veyron-{fievel,tiger}
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Jul 30, 2019 at 10:34 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> @@ -130,12 +138,13 @@
>                         regulator-max-microvolt = <1800000>;
>                         regulator-name = "vdd18_lcdt";
>                         regulator-state-mem {
> -                               regulator-on-in-suspend;
> +                               regulator-off-in-suspend;
>                                 regulator-suspend-microvolt = <1800000>;

Please remove "regulator-suspend-microvolt = <1800000>;" which doesn't
make sense once you have "regulator-off-in-suspend".


>                         };
>                 };
>
> -               /* This is not a pwren anymore, but the real power supply,
> +               /*
> +                * This is not a pwren anymore, but the real power supply,
>                  * vdd10_lcd for HDMI_AVDD_1V0
>                  */
>                 vdd10_lcd: LDO_REG7 {
> @@ -145,7 +154,7 @@
>                         regulator-max-microvolt = <1000000>;
>                         regulator-name = "vdd10_lcd";
>                         regulator-state-mem {
> -                               regulator-on-in-suspend;
> +                               regulator-off-in-suspend;
>                                 regulator-suspend-microvolt = <1000000>;

Please remove "regulator-suspend-microvolt = <1000000>;" which doesn't
make sense once you have "regulator-off-in-suspend".


>                         };
>
> @@ -159,7 +168,7 @@
>                         regulator-max-microvolt = <3300000>;
>                         regulator-name = "vcc33_ccd";
>                         regulator-state-mem {
> -                               regulator-on-in-suspend;
> +                               regulator-off-in-suspend;
>                                 regulator-suspend-microvolt = <3300000>;

Please remove "regulator-suspend-microvolt = <3300000>;" which doesn't
make sense once you have "regulator-off-in-suspend".


Other than those things, this patch looks good to me and feel free to
add my Reviewed-by.  NOTE: when I tried applying this to my tree git
complained and I had to apply manually.  Could you try sending this
patch atop Heiko's for-next tree?  The yell I got:

error: sha1 information is lacking or useless
(arch/arm/boot/dts/rk3288-veyron-fievel.dts).
error: could not build fake ancestor


-Doug
