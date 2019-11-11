Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EC99AF79EB
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2019 18:28:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727058AbfKKR2d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Nov 2019 12:28:33 -0500
Received: from mail-vs1-f66.google.com ([209.85.217.66]:33482 "EHLO
        mail-vs1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726763AbfKKR2d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Nov 2019 12:28:33 -0500
Received: by mail-vs1-f66.google.com with SMTP id c25so8906297vsp.0
        for <devicetree@vger.kernel.org>; Mon, 11 Nov 2019 09:28:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1OTu7RzLc243iGue7chxiy8Vk2YRX4D1tgtKssbyxYs=;
        b=t5ZpWPMLeBDEvkNCdWobOXpY1rn8mKKbhlJAqH/nClIIPOo8xtotQlHbtDHya4Is2h
         oMEZKC6Qh/5PvNDFNmY7Qo0a3QcMJk8QVG0lTAlBXtjVdwYFZGnwxEfUmx0l/jfycAlA
         wQB0V12uNIgPHHMkZZzhcbKeXCUVhZeNQYZb9vvA6OAYGiQ1jyh3DqSXYUX4O4VUgcbM
         nntC2qRDQHoKCArmi5zgZ9chZOb3Z+WZDSz02rWVMpT8A+tmZWrPjxhJ990eCDT4/D7z
         1KGN6yioFbYO0lWiOBt1hF/sQINuGYPnD6hUG9Ty9K/hpA13WopK8gW42j8mHxk+adXW
         OKDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1OTu7RzLc243iGue7chxiy8Vk2YRX4D1tgtKssbyxYs=;
        b=tiA3tSFAbocA7hmhILzd09+dvd9lQtTZ3F2MqaLxV8bb5OmbbaYp49xs5lm8EKUkCB
         uv0FoF84xgEZ14cMFqgCGkOhaka9W5nOoIYdz3NH19+zsE+zjgpaakNR0OmdV9i1xr9r
         GOw81bJYhxTkJ6pk8HpUPxb+IwZ86p2ciYWDv8ZqpJNCubyjy+6xhignILBGZ8MfuaNE
         irrLIOQAH3LHpM3HX5VgD+X5Uaj2zCH2WYJekZ8YUB1HQvMZ3wMibBPiJl+E4pRLJkzX
         bqFd1JXv9ICNBbSYNVpz9pTwkw32HHzYLkYDQjFi5oQrJ4h5uxmRst9DnUYE+b5we+9O
         iLhA==
X-Gm-Message-State: APjAAAW8UcD3Mxdq08zZXKYqt2m9F1f1iyWCYQ9EHkGXTGdtLge9teTO
        RkO7DQC/kMfxPdaXbfk0LFWb+Oe6iGu7tLFlvO3ZLA==
X-Google-Smtp-Source: APXvYqwilC07dl1RnIx5npEnNIV0hBMmZ1Z8YLoBy1QbElednuBWAi2IH+P4714/fpUNZRzKUbKdgOH1iwmWYFORaFA=
X-Received: by 2002:a67:ef4e:: with SMTP id k14mr10817201vsr.165.1573493310523;
 Mon, 11 Nov 2019 09:28:30 -0800 (PST)
MIME-Version: 1.0
References: <f03c978c-86de-b8bb-22c2-177d7fafed94@fivetechno.de>
In-Reply-To: <f03c978c-86de-b8bb-22c2-177d7fafed94@fivetechno.de>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Mon, 11 Nov 2019 18:27:54 +0100
Message-ID: <CAPDyKFqn06LZZMXLD2o-M6A0R6KU97PFUTN=NgYnMtf=ESULTA@mail.gmail.com>
Subject: Re: arm64: dts: rockchip: Add SDR104 mode to SD-card I/F on rk3399-roc-pc
To:     Markus Reichl <m.reichl@fivetechno.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Jagan Teki <jagan@amarulasolutions.com>,
        DTML <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 11 Nov 2019 at 15:13, Markus Reichl <m.reichl@fivetechno.de> wrote:
>
> Add SDR104 capability and regulators to SD card node.
> While at it, fix a typo in lcd pinctrl and remove two
> undocumented bindings from pmic.
>
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
> ---
>  .../boot/dts/rockchip/rk3399-roc-pc.dtsi      | 31 +++++++++++++++----
>  1 file changed, 25 insertions(+), 6 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> index 33df95e384b4..e86a6db54499 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> @@ -135,6 +135,20 @@
>                 vin-supply = <&vcc_1v8>;
>         };
>
> +       vcc3v0_sd: vcc3v0-sd {
> +               compatible = "regulator-fixed";
> +               enable-active-high;
> +               gpio = <&gpio4 RK_PD6 GPIO_ACTIVE_HIGH>;
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&vcc3v0_sd_en>;
> +               regulator-name = "vcc3v0_sd";
> +               regulator-always-on;

This looks odd. A GPIO regulator being always on?

> +               regulator-boot-on;
> +               regulator-min-microvolt = <3000000>;
> +               regulator-max-microvolt = <3000000>;
> +               vin-supply = <&vcc3v3_sys>;
> +       };

Assumes this powers an SDIO embedded card. Often those have a specific
power sequence, just wanted to make sure the above are really
sufficient? No delays or external clock needed?

[...]

Kind regards
Uffe
