Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 35B5F76B73D
	for <lists+devicetree@lfdr.de>; Tue,  1 Aug 2023 16:22:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232198AbjHAOWf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Aug 2023 10:22:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232086AbjHAOWf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Aug 2023 10:22:35 -0400
Received: from mail-ua1-x929.google.com (mail-ua1-x929.google.com [IPv6:2607:f8b0:4864:20::929])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13E55DC
        for <devicetree@vger.kernel.org>; Tue,  1 Aug 2023 07:22:34 -0700 (PDT)
Received: by mail-ua1-x929.google.com with SMTP id a1e0cc1a2514c-79a0b4c6314so4328489241.1
        for <devicetree@vger.kernel.org>; Tue, 01 Aug 2023 07:22:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1690899753; x=1691504553;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nyZJ3Cjn6eWnyhN4yOoiSRL0cGrtHk9oj5ZQtim6lTY=;
        b=WeeEG+1shg5tWP0vpsbkKTy3jkuImemjTac+K9K83GLNb0KgY8XwxF13nhpRHhIf7/
         VNYwH5gwxfMhRU+IC50XgHCkr7iQd2bOm1BZW/J0iI376voPAY+coPHxEWBz0Zc6JiJx
         cyOLbhMIB9Pu6MNDa3D93viKoLm/Bp/8ZY0O5FJmWybGRyXsSJYaATcKHZVD+Ow3djnB
         VgOWhUkOVZ884gYU0vb+N7vu2Z6SMEGAJfZps2aduYPww+L4nN9YZVETxOZJ5pvggZfQ
         xLTh9oms1ynAh4UDjdmEINMNWU0+dVpkLeVUcK/hU0MklSFgUc5t3fXQLq3XEnvWbNQh
         wVkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690899753; x=1691504553;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nyZJ3Cjn6eWnyhN4yOoiSRL0cGrtHk9oj5ZQtim6lTY=;
        b=Zw8F6EQqy9QnBfAdmJ+HVVU9BCDyux6NIk/hsqxbVhs+doCD+5pdsfM7K2q4csAkvo
         IDsjtV6SDw1/N+wxaw/zl7AgPuCfaIBVzw2mRiU5lU3RqpG1xHLVj1Y0QPoTkB+RUNGv
         UMYLMqVUlcj4PLoiBatgcef1whQDwQCfjyK1OosHtHwP5jJiLw5zwZd1xl1hk/U/My34
         TOePx2OMSbIE4MtXc08X8vbQBv+RYExWtEDqQ/0ntvdWYxiIFxA9iMDlLkxS9SUh3vi/
         3sJdhuONawz+amFWVh2LQXSdjasWYVspU1yZxGKBjeMHBd0LzHineVGJb41dBar+KnQD
         v9Ww==
X-Gm-Message-State: ABy/qLYn0l+atpntHRNByx0NonApMzLPlSumaFT01i+nawFSQI+2fpdj
        LV3LSGvIGiTJMLwwzz1m2esn8tamUZqJFSVQc3Ew5Q==
X-Google-Smtp-Source: APBJJlGpUZe9/gSGM5xG19zASKE82H1o8cTXGR0eOpLSM8ZacZlz+5YQ14Xtpxz6XfhBPmkKGRefy3PYiYFNyz+55nI=
X-Received: by 2002:a05:6102:fa8:b0:447:6ef3:e02e with SMTP id
 e40-20020a0561020fa800b004476ef3e02emr1334350vsv.1.1690899752939; Tue, 01 Aug
 2023 07:22:32 -0700 (PDT)
MIME-Version: 1.0
References: <20230731215515.20682-1-laurent.pinchart@ideasonboard.com>
In-Reply-To: <20230731215515.20682-1-laurent.pinchart@ideasonboard.com>
From:   Dave Stevenson <dave.stevenson@raspberrypi.com>
Date:   Tue, 1 Aug 2023 15:22:17 +0100
Message-ID: <CAPY8ntD07rCC5ttudKtbXkDcKFLJb5htRdawWR+S7p914ti4MA@mail.gmail.com>
Subject: Re: [PATCH v4 0/2] ARM: dts: bcm2711-rpi-cm4-io: Add rtc on a
 pinctrl-muxed i2c bus
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        Florian Fainelli <f.fainelli@gmail.com>,
        =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <uwe@kleine-koenig.org>,
        Cyril Brulebois <kibi@debian.org>,
        Maxime Ripard <mripard@kernel.org>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Umang Jain <umang.jain@ideasonboard.com>,
        Phil Elwell <phil@raspberrypi.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Laurent

On Mon, 31 Jul 2023 at 22:55, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hello,
>
> This series is an attempt to revive support for pinmuxed I2C0 on the
> Raspberry Pi BCM2711-based board.
>
> On BCM2711-based boards, the I2C0 controller can be muxed between pins
> 0+1 or 44+45. The former is exposed through the 40-pins GPIO connector,
> and the latter is used for the RTC on the CM4 I/O board, but also routed
> to the display and camera connectors on the Raspberry Pi 4B board. The
> other BCM2711-based board, the Raspberry Pi 400, does not expose or
> connect anything to pins 44+45.
>
> A previous version was posted ([1]) a year and a half ago by Uwe. It
> bundled the pinmuxing and RTC in a single patch, with the mux added to
> the CM4 I/O board device tree. This version splits this in two, and
> moves the pinumxing to the bcm2711-rpi.dtsi to also support the
> Raspberry Pi 4B.
>
> The Raspberry Pi downstream kernel has a more complex DT architecture in
> order to support different I2C0 pinmuxing for other boards. Two files,
> bcm283x-rpi-i2c0mux_0_28.dtsi and bcm283x-rpi-i2c0mux_0_44.dtsi, define
> the two I2C0 pinxmuxing options (pins 0+1 and 28+29, or pins 0+1 and
> 44+45). Each board .dts then includes the appropriate file. I'm hoping
> to avoid this additional complexity for now, by addressing the I2C0
> pinmuxing for BCM2711-based boards only. If/when support for I2C0
> pinmuxing on boards will be needed, we can revisit this topic.
>
> Compared to the Raspberry Pi downstream kernel, the two muxed I2C buses
> are labelled i2c0_0 and i2c0_1 instead of i2c0 and i2c_csi_dsi. This
> change was made to keep the naming of the I2C controller labels
> consistent, avoiding renaming of the I2C0 controller's label from i2c0
> to i2c0if.
>
> Dave, are you fine with the differences between this patch series and
> the downstream kernel, or do you expect them to cause issues ?

I've checked with Phil. There's nothing too untoward that will cause
us any significant grief.

Phil has commented that the RTC is an PCF85063AT, so that compatible
string should be "nxp,pcf85063a" if you actually want to make use of
the alarm output.
Then again the driver support for the alarm output appears to want it
routed to an IRQ rather than as a system reset/wakeup, so it probably
makes little difference. It llargely depends on how exact you want to
be in your hardware description.

  Dave

> [1] https://lore.kernel.org/linux-arm-kernel/20211231115109.94626-1-uwe@k=
leine-koenig.org/
>
> Uwe Kleine-K=C3=B6nig (2):
>   ARM: dts: bcm2711-rpi: Add pinctrl-based multiplexing for I2C0
>   ARM: dts: bcm2711-rpi-cm4-io: Add RTC on I2C0
>
>  arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts | 16 ++++++++++++
>  arch/arm/boot/dts/bcm2711-rpi.dtsi       | 31 ++++++++++++++++++++++++
>  2 files changed, 47 insertions(+)
>
> --
> Regards,
>
> Laurent Pinchart
>
