Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE00552057F
	for <lists+devicetree@lfdr.de>; Mon,  9 May 2022 21:52:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240676AbiEITxU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 May 2022 15:53:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240672AbiEITxS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 May 2022 15:53:18 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57AD03FDBD
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 12:49:20 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id j4so25650851lfh.8
        for <devicetree@vger.kernel.org>; Mon, 09 May 2022 12:49:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=k5+eavqJv4exrkKNYLwOmHOp14d0Q1oE4bipYRwlLow=;
        b=Rak9MbjTdNbtc5DjqX/X5g6leDv8/HvSjfFURJvhKEjd1WtmRgzJlV9AIyxVkRNIZa
         Sdc1GFTT9ht1m21wZ0DNAHY/wR8GY5E7R1JzbQUcKL/ozKH7uVt9BxvCvVMasfW8asdr
         G1mjDIfky2Ll10LtGKmdT7iF7W5EiSJdPNtrQg721ZxhsKxj7w8lf3q1dvBUqTwrPXIA
         BkD3vflaN139riMJrp6UFJ74XIBTjBq20xPeEJEh+otM0WzxrZTRSTh7sYTFGx0L/E1w
         yqlmj+XSSB/dLI0Hr5P9luIM27hnOKErgyXVKriiQlSsAX9DsgfjtUk/ysVQ2hEu2foD
         C1kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=k5+eavqJv4exrkKNYLwOmHOp14d0Q1oE4bipYRwlLow=;
        b=0t3aOMmDdwYBvmbvOc90UwGrdy712kHqEV9fJEnraoPeDXpLwjEJ9xaeCRRRyBA26B
         10BEv4zsqEnnkGHceE7RQ3JDfJ4Kxkzs9L5SrMZoJskmytvxRKe+CioQ7H+T8Dto2w2W
         csFgx5EHE4Dfk2n8KNp0kZBmUDhQcprclW9GVSyTmAgukMsMdeO4jrKZhLZ7iWCiJlr0
         uHZxjUMPCxgTbs0b96dx+LE9sCGGwdmjX9paeiZezvHsnEWIRFBf54/Bsjx4cv6bjGnz
         d7mfRjANGrMUh9btwuW3o6DC1MA26hcrkynWQjRlotLdBXetCmTDsQkTi9jxSw5gthS1
         IjWg==
X-Gm-Message-State: AOAM533KtD0FDnvnJdO/zLU1txRrw3ONGcUzc0gWe2LaTxATkqFkuIRn
        gSXLlzlm7UnoISDs82w0EkA=
X-Google-Smtp-Source: ABdhPJxftZHd/ebk/ERPxawYj51fcaIMUCfEX9TLUnnV8KowQvlvwmIbYHmfMCtsarE56f0njUmUaQ==
X-Received: by 2002:a19:ca50:0:b0:471:f556:92b with SMTP id h16-20020a19ca50000000b00471f556092bmr13630335lfj.587.1652125758517;
        Mon, 09 May 2022 12:49:18 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl. [31.178.191.245])
        by smtp.gmail.com with ESMTPSA id j15-20020a2ea90f000000b0024f3d1daea0sm1902744ljq.40.2022.05.09.12.49.17
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 May 2022 12:49:18 -0700 (PDT)
Content-Type: text/plain;
        charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
From:   Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <CAMdYzYrz7DRj7F9hGaAPaTSiZkQ4eMNujAp8uPuE9geL6kAz4g@mail.gmail.com>
Date:   Mon, 9 May 2022 21:49:16 +0200
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        dri-devel@lists.freedesktop.org,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Sandy Huang <hjc@rock-chips.com>,
        =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        kernel test robot <lkp@intel.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <812AC0DB-A6D0-4DA3-BCDC-7743E8F61821@gmail.com>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de>
 <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
 <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
 <0E6FE020-C95E-47CF-A9D6-AC3F2B2D334F@gmail.com>
 <CAMdYzYobfJ7WGN+UQ7t5e1Zy9knjfHLse8KzrGrHPfeMkkG0gw@mail.gmail.com>
 <9F2D8CFF-1EAE-4586-9EE9-82A9D67840BB@gmail.com>
 <CAMdYzYrz7DRj7F9hGaAPaTSiZkQ4eMNujAp8uPuE9geL6kAz4g@mail.gmail.com>
To:     Peter Geis <pgwipeout@gmail.com>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

>=20
> If you want to confirm the hardware is configured correctly you can
> remove the cec pin from the hdmi node and set up a cec-gpio node.
> =
https://elixir.bootlin.com/linux/v5.18-rc5/source/Documentation/devicetree=
/bindings/media/cec-gpio.txt
>=20
> For some reason the board developers decided to make this selectable,
> check the location of R90652 and R90653.
>=20

Peter,

my board is v1.31 and is using HDMITX_CEC_M1 i think.
I verified this by temp. changing to HDMITX_CEC_M0

For M1:
2022-05-09 21:12:37.130188 I  CECAdapter: Using physical address 1.0.0.0 =
from EDID
2022-05-09 21:12:37.173267 I  CECAdapter: Found 1 CEC devices(s).
2022-05-09 21:12:37.173299 I  CECAdapter: Device 1: path '/dev/cec0' com =
port 'Linux' SELECTED
2022-05-09 21:12:37.173307 I  CECAdapter: Trying to open device =
/dev/cec0 (Linux).
2022-05-09 21:12:37.180095 I  CECAdapter: connection opened
2022-05-09 21:12:37.545229 I  CECAdapter: setting HDMI port to 1 on =
device TV (0)
2022-05-09 21:12:37.904145 I  CECAdapter: >> source deactivated: =
Playback 1 (4)
2022-05-09 21:12:37.904311 I  CECAdapter: Source 4 Deactivated
2022-05-09 21:12:38.284452 I  CECAdapter: >> source activated: Playback =
1 (4)
2022-05-09 21:12:38.284492 I  CECAdapter: Source 4 Activated
2022-05-09 21:12:38.284694 I  CECAdapter: CEC client registered: libCEC =
version =3D 6.0.2, client version =3D 6.0.2, firmware version =3D 0, =
logical address(es) =3D Playback 1 (4) , physical address: 1.0.0.0, git =
revision: v12.0.0-v32.0-16-g611cac15cc+59-07dc900~dirty, compiled on =
2022-04-23 05:50:57 by piotro@/bin/sh: hostname: command not found on =
Linux 5.16.14-arch1-4 (x86_64), features: P8_USB, DRM, P8_detect, randr, =
Linux
2022-05-09 21:12:38.519394 I  CECAdapter: Opened CEC device.
2022-05-09 21:12:38.636950 I  CECAdapter: << powering on 'TV' (0)
2022-05-09 21:12:38.754023 E  CECAdapter: Failed to turn TV on.
2022-05-09 21:12:38.754313 I  CECAdapter: >> source activated: Playback =
1 (4)
2022-05-09 21:12:38.754343 I  CECAdapter: Source 4 Activated
2022-05-09 21:12:38.872079 I  CECAdapter: << Playback 1 (4) -> broadcast =
(F): active source (1000)
2022-05-09 21:12:38.974698 I  CECAdapter: Asked TV to switch to this =
input.
2022-05-09 21:13:07.292069 W  CECAdapter: CEC device can't poll TV: TV =
does not respond to CEC polls
2022-05-09 21:13:37.296372 W  CECAdapter: CEC device can't poll TV: TV =
does not respond to CEC polls=20

for M0:
2022-05-09 21:37:47.632175 I  CECAdapter: Using physical address 1.0.0.0 =
from EDID
2022-05-09 21:37:47.680618 I  CECAdapter: Found 1 CEC devices(s).
2022-05-09 21:37:47.680644 I  CECAdapter: Device 1: path '/dev/cec0' com =
port 'Linux' SELECTED
2022-05-09 21:37:47.680654 I  CECAdapter: Trying to open device =
/dev/cec0 (Linux).
2022-05-09 21:37:47.694974 I  CECAdapter: connection opened
2022-05-09 21:37:56.341846 I  CECAdapter: setting HDMI port to 1 on =
device TV (0)
2022-05-09 21:38:17.675457 I  CECAdapter: >> source activated: Playback =
1 (4)
2022-05-09 21:38:17.675561 I  CECAdapter: Source 4 Activated
2022-05-09 21:38:17.675657 I  CECAdapter: CEC client registered: libCEC =
version =3D 6.0.2, client version =3D 6.0.2, firmware version =3D 0, =
logical address(es) =3D Playback 1 (4) , physical address: 1.0.0.0, git =
revision: v12.0.0-v32.0-16-g611cac15cc+59-07dc900~dirty, compiled on =
2022-04-23 05:50:57 by piotro@/bin/sh: hostname: command not found on =
Linux 5.16.14-arch1-4 (x86_64), features: P8_USB, DRM, P8_detect, randr, =
Linux
2022-05-09 21:38:30.475336 I  CECAdapter: Opened CEC device.
2022-05-09 21:38:34.741846 I  CECAdapter: << Playback 1 (4) -> broadcast =
(F): active source (1000)
2022-05-09 21:38:39.008432 I  CECAdapter: << powering on 'TV' (0)
2022-05-09 21:38:39.008506 E  CECAdapter: =
CLinuxCECAdapterCommunication::Write - ioctl CEC_TRANSMIT failed - =
tx_status=3D00 errno=3D22
2022-05-09 21:38:39.008526 E  CECAdapter: =
CLinuxCECAdapterCommunication::Write - ioctl CEC_TRANSMIT failed - =
tx_status=3D00 errno=3D22
2022-05-09 21:38:43.275094 E  CECAdapter: Failed to turn TV on.
2022-05-09 21:38:43.275201 I  CECAdapter: >> source activated: Playback =
1 (4)
2022-05-09 21:38:43.275224 I  CECAdapter: Source 4 Activated
2022-05-09 21:38:43.275375 W  CECAdapter: CEC device can't poll TV: TV =
does not respond to CEC polls
2022-05-09 21:38:47.541811 I  CECAdapter: << Playback 1 (4) -> broadcast =
(F): active source (1000)
2022-05-09 21:38:47.541898 E  CECAdapter: =
CLinuxCECAdapterCommunication::Write - ioctl CEC_TRANSMIT failed - =
tx_status=3D00 errno=3D22
2022-05-09 21:38:47.541909 E  CECAdapter: =
CLinuxCECAdapterCommunication::Write - ioctl CEC_TRANSMIT failed - =
tx_status=3D00 errno=3D22
2022-05-09 21:38:47.541924 E  CECAdapter: Failed to switch to this =
input.
2022-05-09 21:38:51.808626 I  CECAdapter: << Playback 1 (4) -> broadcast =
(F): active source (1000)
2022-05-09 21:38:51.808722 E  CECAdapter: =
CLinuxCECAdapterCommunication::Write - ioctl CEC_TRANSMIT failed - =
tx_status=3D00 errno=3D22
2022-05-09 21:38:51.808735 E  CECAdapter: =
CLinuxCECAdapterCommunication::Write - ioctl CEC_TRANSMIT failed - =
tx_status=3D00 errno=3D22
2022-05-09 21:38:57.142091 I  CECAdapter: << Playback 1 (4) -> broadcast =
(F): active source (1000)
2022-05-09 21:38:57.142109 E  CECAdapter: =
CLinuxCECAdapterCommunication::Write - ioctl CEC_TRANSMIT failed - =
tx_status=3D00 errno=3D22
2022-05-09 21:38:57.142117 E  CECAdapter: =
CLinuxCECAdapterCommunication::Write - ioctl CEC_TRANSMIT failed - =
tx_status=3D00 errno=3D22
2022-05-09 21:39:02.475097 I  CECAdapter: << Playback 1 (4) -> broadcast =
(F): active source (1000)
2022-05-09 21:39:02.475115 E  CECAdapter: =
CLinuxCECAdapterCommunication::Write - ioctl CEC_TRANSMIT failed - =
tx_status=3D00 errno=3D22
2022-05-09 21:39:02.475123 E  CECAdapter: =
CLinuxCECAdapterCommunication::Write - ioctl CEC_TRANSMIT failed - =
tx_status=3D00 errno=3D22

> I have some concerns about the DTS you've built here. For instance how
> come you are modifying the power domains?

This was experiment as I was advised:

"32k clock needed for cec and this clock is generated by the rtc which =
is embedded in the rk8xx regulator.
So you should make sure it is enabled when hdmi is powerd on, eg adding =
it to the RK3568_PD_VO powerdomain should help"

power domains entries in dts was attempt to play with above cec clock =
sugestion.

M0/M1 logs in this email are from cleaned dts: =
https://pastebin.com/0pgwpdsS

> USB3 is broken because the rock3-a is a rk3568 device and you're
> missing combophy0.

Perfect. all 4 usb ports are now working.
Also no errors in dmesg.=20
Thx!

