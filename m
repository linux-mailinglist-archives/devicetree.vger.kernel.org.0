Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D2E17675D7
	for <lists+devicetree@lfdr.de>; Fri, 28 Jul 2023 20:52:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229798AbjG1SwR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jul 2023 14:52:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230355AbjG1SwQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jul 2023 14:52:16 -0400
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com [IPv6:2607:f8b0:4864:20::b32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B79E630F3
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 11:52:14 -0700 (PDT)
Received: by mail-yb1-xb32.google.com with SMTP id 3f1490d57ef6-d167393b95aso5190051276.0
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 11:52:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1690570334; x=1691175134;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yk7KapaJ4ts4aXSDh+2c8nSS1WtAE7a/yp7yaQonlEs=;
        b=FmlK+tTxyX2ftu9UyyXtk+VsZzCfd8E4wrONCQeVzUaxE4DgiBQS5RNG7Lt6YY21Wl
         a1FtAWSEiOhtnn5UaOsM+9fxYoj3+04MZjqw20HTqx333lXbuD3UzDagRimhGv1pbptZ
         Ox8UAtKoZEKPynGgxdLBeac/E1rExkMh/FAfU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690570334; x=1691175134;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Yk7KapaJ4ts4aXSDh+2c8nSS1WtAE7a/yp7yaQonlEs=;
        b=TdjUQWximfHvXYAaJL90spXDO5Zspn7Stg0bU4Bkv04A1BQj/y9/ZKzpA+vvWlUaEc
         ZyN50uG2UWNN/Xnc1FIbHiplXGXJONnZjDcDKAe8HnF1J+3BEqFd5FDu+xbEGu0U9Cvp
         S1Tt3POfK3kPeTh91paAh09X1yXaodtZfOsTsKdfjj0vklNlrJrLHlGkuA4ts93ygTX3
         r9zexTfP3fhCT7tn+jbpKSeCn1Z1yZ+VhOVZq8FZCl4YDtlXb8kpc4e6KxAZ8uDQNGnv
         8PKfJ0P+KUx7fbLPZfQWy/HLl2sRrcASrIoRCfrMtB/Cz9qbuZ6lbCBzUVvM8iKwf4ww
         UMEw==
X-Gm-Message-State: ABy/qLYR1RLjt18DYpzvZbRdRwicQybAILpbxAwBGG2bFXWdk3JaQ8s5
        B3AZhCRNivNVzN9eUETZiOWeFGNHhoIXMX5NA1Rc7g==
X-Google-Smtp-Source: APBJJlGLS/Y9A5mFcOJhbSvQNfPBCHjXK1YnxnBpm0/puqVDUshKiWrog/DK4ot+hh6Y56SGceieuO+/NfGEKS/FznM=
X-Received: by 2002:a25:aea4:0:b0:d0c:7309:87f7 with SMTP id
 b36-20020a25aea4000000b00d0c730987f7mr3299342ybj.10.1690570333688; Fri, 28
 Jul 2023 11:52:13 -0700 (PDT)
MIME-Version: 1.0
References: <20230719122123.3702588-1-jagan@amarulasolutions.com> <51af40e5fa8e22411b654bbb894bb0fee19be8f9.camel@collabora.com>
In-Reply-To: <51af40e5fa8e22411b654bbb894bb0fee19be8f9.camel@collabora.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Sat, 29 Jul 2023 00:22:02 +0530
Message-ID: <CAMty3ZCR5vQBf-6GE9+cu5akv+8aPmpDvyqocm2uMdzaoTAJsA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable TYPE-C PD for ROC-RK3399-PC
To:     Christopher Obbard <chris.obbard@collabora.com>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Corentin Labbe <clabbe@baylibre.com>,
        kernel <kernel@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Christopher,

On Mon, Jul 24, 2023 at 7:25=E2=80=AFPM Christopher Obbard
<chris.obbard@collabora.com> wrote:
>
> On Wed, 2023-07-19 at 17:51 +0530, Jagan Teki wrote:
> > The power supply circuit in ROC-RK3399-PC is
> >
> > Power Supply (or PPS) =3D> FUSB =3D> MP8859
> >
> > VUBS pin of FUSB and IN pin of MP8859 is supplied via TYPEC_IN.
> >
> > The MP8859 operated with 2.8V to 22V supply voltage and typical
> > applications this supply can be 12V.
> >
> > This patch is trying to support the PD by changing the FUSB VBUS supply
> > to 12V and tune the I2C7 timings from downstream kernel.
> >
> > Tested with PD3.0 PPS with supply voltages of 12V/3A and 20V/5A.
>
> Hi Jagan,
>
> This series works fine with a "dumb" (no PD negotiation) 5.1V Raspberry P=
i PSU.
>
> It also works fine with a Dell 45W USB-C Laptop Power Supply (model AA45N=
M170) which provides 5V@3A,9V@3A,15V@3A,20V@2.25A, where Linux master fails=
 and just tells the USB-PD PSU to power-off.

Thanks for testing.

>
> It doesn't work with a Lenovo 65W PSU (model ADLX65YLC3D) which provides =
5V@2A,9V@2A,15V@3A,20V@3.25A, after negotiation the driver turns the PD PSU=
 off and on again, resetting the board.
> So it'd be great to get this fixed, but it seems like the sink-pdos shoul=
d already support this PSU ?

Yes, it is already supported. Seems like some issues on tcpm+fusb302.

>
>
> As a side note for full transparency, another issue is that with Linux ma=
ster or with this patch applied, applying power to the DC_12V header withou=
t a USB-C PSU connected (e.g. powering from the POE
> expansion shield), boot hangs and dumps to an initramfs shell with:
>
>   [    7.411798] random: crng init done
>   [   12.568138] platform fe3a0000.usb: deferred probe pending
>   [   12.568673] platform sdio-pwrseq: deferred probe pending
>   [   12.569162] platform fe3e0000.usb: deferred probe pending
>   [   12.569658] platform adc-keys: deferred probe pending
>   [   12.570123] i2c 7-0022: deferred probe pending
>   [   12.570533] i2c 4-0022: deferred probe pending
>   [   12.570944] platform ff940000.hdmi: deferred probe pending
>   [   12.571448] platform vcc3v0-sd: deferred probe pending
>   [   12.572000] platform vcc1v8-s3: deferred probe pending
>   [   12.572475] platform sys-12v: deferred probe pending
>   [   12.572933] platform vcc3v3-sys: deferred probe pending
>   [   12.573412] platform fe320000.mmc: deferred probe pending
>   [   12.573907] platform vcca-0v9: deferred probe pending
>   [   12.574371] platform vcc5v0-host-regulator: deferred probe pending
>   [   12.574935] platform ff770000.syscon:usb2phy@e450: deferred probe pe=
nding
>   [   12.575552] platform vcc-vbus-typec1: deferred probe pending
>   [   12.576090] platform fe300000.ethernet: deferred probe pending
>   [   12.576623] platform vcc-sys: deferred probe pending
>   [   12.577080] platform ff770000.syscon:usb2phy@e460: deferred probe pe=
nding
>   [   12.577697] platform ff320000.syscon:io-domains: deferred probe pend=
ing
>   [   12.578298] platform ff770000.syscon:io-domains: deferred probe pend=
ing
>   [   12.578901] platform fe800000.usb: deferred probe pending
>   [   12.579395] platform fe900000.usb: deferred probe pending
>   [   12.579904] platform vdd-log: deferred probe pending
>   [   12.580362] i2c 0-001b: deferred probe pending
>   [   12.580772] i2c 0-0040: deferred probe pending
>   [   12.581182] platform cpufreq-dt: deferred probe pending
>   [   12.581663] i2c 0-0041: deferred probe pending

I didn't test POE with this change, I will check this.

Thanks,
Jagan.
