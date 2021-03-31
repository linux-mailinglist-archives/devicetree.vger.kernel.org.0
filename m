Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7470034FAB6
	for <lists+devicetree@lfdr.de>; Wed, 31 Mar 2021 09:49:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234032AbhCaHsz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Mar 2021 03:48:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233925AbhCaHsg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Mar 2021 03:48:36 -0400
Received: from mail-qv1-xf2c.google.com (mail-qv1-xf2c.google.com [IPv6:2607:f8b0:4864:20::f2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24205C061574
        for <devicetree@vger.kernel.org>; Wed, 31 Mar 2021 00:48:36 -0700 (PDT)
Received: by mail-qv1-xf2c.google.com with SMTP id t16so9460396qvr.12
        for <devicetree@vger.kernel.org>; Wed, 31 Mar 2021 00:48:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jms.id.au; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TcHTMg2iLIDJnGDB9Kaft4m85Uo8IfdtBj6klXtJpyE=;
        b=FJiZz4ZmH/G2Zr1F54iy3Jk5XSEWTppjpzEhglogAQpCbZhRhgxHSryf7yrAq/6fEQ
         hulNxBUeYQ251Hz6HWH2ceizKsDnY+YMdamrZjyXoSXYVAsu+rW/JGZXycpLNRAL2hGC
         0vjiE8sJb8k04bajmkrFyh1bFirqDHAtUOvCo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TcHTMg2iLIDJnGDB9Kaft4m85Uo8IfdtBj6klXtJpyE=;
        b=CGoAY6kEmrHlmahuaRB6AUDkBXIHIcDivXOFh0HY9RHSSVxo3uoOpPOozo51HspuF1
         GGqaEaVsIwT9f/RfXq0FfiBHkAoTlPS8FPYDn4O8W0g64QjemiaQFhi1mjGirmWrloBh
         un3ESzcfv8yYU7ApMRNA2REYXZSZpTNtbeofl/kIZRmjM6/TcLrfKQALg3NdN/rs8eWS
         ewc5GUusgsHuyFl1b9WSUo8ePX5itqDrZg3IsabkUYjrF/cJen9pnnRGc6nYvif++CSh
         t9gwGDc34nFncjoxN81cCQZXwC0ttRlHwm0SvgUUaHf9OjBxg14hEM9UhW8W5wPHjZou
         EEtg==
X-Gm-Message-State: AOAM533Ie0doMi7gLMNCwvFr++6Wx+smuByFT3Nif+xxAd74PK6y/OWN
        WZLdKCRKhrWDwejL451JX6DLO6TarQ4NA8j0/+0=
X-Google-Smtp-Source: ABdhPJzT05GGq7j0qfFdXN+Ja7au989BTKlLZwclCpPbapyscqqlvve47u3FSHQH5b2onjQ2Y/8kGB/3Zw2/b9QOeqg=
X-Received: by 2002:ad4:58e3:: with SMTP id di3mr1771117qvb.43.1617176915285;
 Wed, 31 Mar 2021 00:48:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210329094255.347713-1-rashmica.g@gmail.com>
In-Reply-To: <20210329094255.347713-1-rashmica.g@gmail.com>
From:   Joel Stanley <joel@jms.id.au>
Date:   Wed, 31 Mar 2021 07:48:23 +0000
Message-ID: <CACPK8XchKxK9zbogk2rix6Hq5RW+XJuTq4YS4rBhdg+Uw_18Jg@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: rainier: Update to access sensors via iio-hwmon
To:     Rashmica Gupta <rashmica.g@gmail.com>
Cc:     linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andrew Jeffery <andrew@aj.id.au>,
        devicetree <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 29 Mar 2021 at 09:43, Rashmica Gupta <rashmica.g@gmail.com> wrote:
>

Can you add a brief message about why we're adding a iio-hwmon bridge
for these sensors?

> Signed-off-by: Rashmica Gupta <rashmica.g@gmail.com>
> ---
>  arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
> index fefb0b8fd6d5..2dc72de07906 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
> @@ -173,6 +173,16 @@ i2c2mux3: i2c@3 {
>                 };
>         };
>
> +       iio-hwmon-dps310 {
> +               compatible = "iio-hwmon";
> +               io-channels = <&dps 0>;
> +       };
> +
> +       iio-hwmon-si7020 {
> +               compatible = "iio-hwmon";
> +               io-channels = <&si 1>;
> +       };
> +
>         leds {
>                 compatible = "gpio-leds";
>
> @@ -1972,9 +1982,10 @@ &i2c7 {
>         multi-master;
>         status = "okay";
>
> -       si7021-a20@20 {
> +       si:si7021-a20@20 {

That's a very short name. How about we call it humidity (or something else)?

Convention is to put a space after the colon.

>                 compatible = "silabs,si7020";
>                 reg = <0x20>;
> +               #io-channel-cells = <1>;
>         };
>
>         tmp275@48 {
> --
> 2.26.3
>
