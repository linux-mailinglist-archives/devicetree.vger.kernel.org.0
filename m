Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE26668DC76
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 16:07:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231435AbjBGPHs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Feb 2023 10:07:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231258AbjBGPHr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 10:07:47 -0500
Received: from mail-qv1-xf2b.google.com (mail-qv1-xf2b.google.com [IPv6:2607:f8b0:4864:20::f2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB95159D5
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 07:07:45 -0800 (PST)
Received: by mail-qv1-xf2b.google.com with SMTP id b7so5147644qvo.6
        for <devicetree@vger.kernel.org>; Tue, 07 Feb 2023 07:07:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HkSCjLdUMbkRcy5M2VMFDvWFmaZReMGTzub0Z/+Lv00=;
        b=od40iVkZnRcKetlnOzi/+lrBuU1VLihE6VwkR3ed/yDrNRI4ZTyQQfAwNhPwa5oO4N
         AvtCZtZ/GgUu9UutBjOomHb+7MsrRr12xUcz8ZokfUSZTiL8QcjslKS7xRNwZ20F5TEM
         numJHNv2k4fJjNdjgQ0Wpp6bDu7UMvRbruwAK7U9fkxEugJdSU5/BRs0CPFMIyL7wvGW
         9jL7BuavPJH82qqq9PU+wGEKOPa6pOBG/0jF6g90MF5Mp3JE1zqWAiZL0iZTwL9cfLvq
         W5rpfOgEtnDDymD+fNRvUZ9rWY5iKQ3NO2DHXgUqc6u7VbaHnSOOI4GIhWsIi4v56LL5
         OqPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HkSCjLdUMbkRcy5M2VMFDvWFmaZReMGTzub0Z/+Lv00=;
        b=19PV7Ja7mWr5fscBwCVrqZm8c77uNyeGnS8FGWnbg2sGSELoCqnoQVCZ1Z113ivi5q
         7gTZ0UFR/6VSy8I1UVsFaQvWJ6f4dUw8xB/3wz+hK+uwAeMuw1IMGqsoBCADxiS/WNmf
         84OUXcD4TQKNC1d6whm6WO64Gq1emNcka88H2Y+KyAemyZoGNrfOEO3oR4vPHjzEyIwh
         gGO14D/VF2fLaBSjRVtl/xtkOvcLY/n1+gJ48Y/8P8/zyAVCChNEY1MwTFUv3nD8m7xT
         1vNHQqQgoq/bYZm5xCBaDTAnoiXNuh68OctSVXzH/Mg2Lah3O/kKJqtNuDEeAtGJnwhm
         Q1wQ==
X-Gm-Message-State: AO0yUKV95tv5nKHgA6mOFDCY3oqKjTN7iJN7MsX4QYECCR7Um8NwFKOl
        nGiFoUVjypfQG61hCKhs9Cp87DJyS14=
X-Google-Smtp-Source: AK7set+gs5qHLFn9kfkPOrs3FSKRyYQmF9P6pi6XtN3MHUIXnkMVMvKD+WxpRgOQN50s44d/CVpXPQ==
X-Received: by 2002:a05:6214:20af:b0:56b:fee1:e873 with SMTP id 15-20020a05621420af00b0056bfee1e873mr5830828qvd.47.1675782464958;
        Tue, 07 Feb 2023 07:07:44 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id g4-20020a37e204000000b0070d11191e91sm9567536qki.44.2023.02.07.07.07.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 07:07:44 -0800 (PST)
Date:   Tue, 7 Feb 2023 10:07:42 -0500
From:   Trevor Woerner <twoerner@gmail.com>
To:     Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org
Subject: gpio-line-names policy
Message-ID: <20230207150742.GA36689@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Linus Walleij,

I would like to ask a question about the gpio-line-names policy, before
sending in a patch.

The gpio line naming policy, outlined in

	Documentation/devicetree/bindings/gpio/gpio.txt

says you don't want to see line names such as "GPIO0" or "PortB_8", you
want to see lines being named according to their function, such as "MMC-CD"
or "ethernet reset". That makes complete sense... for lines that are
connected to things that are soldered onto a board. Lines whose function
could never change for the life of a device-tree source file.

But what about those lines that go out to general purpose headers such as
the 40 pins of the Raspberry Pi header? Most SBCs have some set of header
that's available to users to connect whatever devices they wish, many of
them have adopted the rpi's 40-pin layout.

When a user wishes to connect something to these pins, they have to go "find"
the pin so they can control the device they've connected. This might start
with the user running "gpioinfo". Sadly, in many cases the user's query is met
with:

	# gpioinfo
	gpiochip0 - 224 lines:
		line   0:      unnamed       unused   input  active-high
		line   1:      unnamed       unused   input  active-high
		line   2:      unnamed       unused   input  active-high
		line   3:      unnamed       unused   input  active-high
		line   4:      unnamed       unused   input  active-high
		line   5:      unnamed       unused   input  active-high
		line   6:      unnamed       unused   input  active-high
		line   7:      unnamed       unused   input  active-high
		line   8:      unnamed       unused   input  active-high
		line   9:      unnamed       unused   input  active-high
		line  10:      unnamed       unused   input  active-high
		line  11:      unnamed       unused   input  active-high
		...

The user still has no idea how to "find" which gpio line is connected to a
specific pin on an SBC's header. At this point their only recourse is to look
for a schematic, dig up the SoC's manual, and look through the kernel code. If
they're successful in all of that, then the might be able to associate one of
the 224 gpio lines with a specific pin.

These lines, by definition, are general purpose, and fresh out of the box
don't have any specific function assigned to them. So I can't send in
a patch to rename line 64 to be "1-wire temperature", because that only
becomes valid when I connect a 1-wire temperature device to pin 31 of my
board. This won't be valid for anyone else.

Ideally I would like to send in a patch that renames line 64 from:

	# gpioinfo
	gpiochip0 - 224 lines
		...
		line  64:      unnamed       unused   input  active-high
		...

to:

	# gpioinfo
	gpiochip0 - 224 lines
		...
		line  64:  "Pin31 [PC1,gpio21]"  unused   input  active-high
		...

(or some variation thereof)

One of these names will make sense to someone using this board. By virtue
of it telling the user this is pin 31 that should be enough. If they look
at the SoC's documentation then they'll know this to be PortC_pin1. Or if
they look at the card that comes with the SBC that describes the header
pins they'll know this to be gpio21. In any case, no work is required by the
user to dig into schematics, code, or processor manuals to know how to connect
a device to pin31.

Can we ammend the policy to make an exception for general purpose pins found
on SBCs?

Interestingly enough the dts file for BeagleBone (am335x-boneblack.dts)
contains:

	&gpio0 {
		gpio-line-names =
			"[mdio_data]",
			"[mdio_clk]",
			"P9_22 [spi0_sclk]",
			"P9_21 [spi0_d0]",
			"P9_18 [spi0_d1]",
			"P9_17 [spi0_cs0]",
			"[mmc0_cd]",
			"P8_42A [ecappwm0]",
			"P8_35 [lcd d12]",
			"P8_33 [lcd d13]",
			"P8_31 [lcd d14]",
			"P8_32 [lcd d15]",
			"P9_20 [i2c2_sda]",
			"P9_19 [i2c2_scl]",
			...

which lists off pin names, and the dts file for the rpi3 contains:

	&gpio {
		gpio-line-names = "ID_SDA",
				  "ID_SCL",
				  "SDA1",
				  "SCL1",
				  "GPIO_GCLK",
				  "GPIO5",
				  "GPIO6",
				  "SPI_CE1_N",
				  "SPI_CE0_N",
				  "SPI_MISO",
				  "SPI_MOSI",
				  "SPI_SCLK",
				  "GPIO12",
				  "GPIO13",
				  ...

which gives GPIO names.

I realize "they did it so I want to as well" isn't a justification. But that
it is being done indicates there is a need, and there is a gap in the policy.

Best regards,
    Trevor
