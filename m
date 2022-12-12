Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A6FE464A2B7
	for <lists+devicetree@lfdr.de>; Mon, 12 Dec 2022 14:59:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233224AbiLLN7O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Dec 2022 08:59:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233260AbiLLN7M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Dec 2022 08:59:12 -0500
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32AF1D65
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 05:59:10 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id i9so90363edj.4
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 05:59:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QtYlaqGdtJxrt6tCxnP2pU5hNT62Vr9duNMI743UGxg=;
        b=uReIWLwHmmMLMnNVhBwF5CLAeppTLhyvi38h3PChAUjN7B1EzzbmGAAA2C9Fn+2eXF
         Iklh8Gd3mi6X4L+A6Y/GvjIwWnwjtNYszWFL6aIBVhpAuLFxSxS5/2foKo0IOq8Ow2L8
         GbHOkdb+D0vtsH95Xc6g/gnKBf0SD/1p/z0RSodEcJcQxpxPQVmdOY3BvgJ7kFTCmt2A
         0hvSzgEfvbe1Tlo1C6peMjTgsHRK9pOgrNFi49n+35bKYgRNH76Ll5pRhe5cPFRk2/OF
         z6PVEy5eQeUGTV85L58Cn/cVAtIgJ+o93coccOp6yIQi/24G71z6jLjD0oGqT17A4BOc
         94Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QtYlaqGdtJxrt6tCxnP2pU5hNT62Vr9duNMI743UGxg=;
        b=cqCuWyKfW0SdraUcytYZDSJ38Yh9cmdCgD8zgM94HX3Zej/nSNjAXn/lsheGmwP15v
         sFmj5GRXDeWm0T1pWd8p35zBivQOO/7Q6xfl8aFN3EhJXv26hhLLuVkxS6wRebUmq2++
         x3KHry5J1UqnOdIcXNOhl3sUwc9smiVklu80F28/gFpAZEh/wBbYVPLLGi6IP4RgEYkG
         ueXRe7gSj0KF76hq27QucjNyUbg47vR81Uh6xNuqmBnBsrl6W4/8Fcz8nZYzR7UbEv0T
         c5GZn9mtvHX14mdhxeRUWZ219GBDnZC8P3ACdhDAc2faw/GbNQnMeKiJKZWtMjiyQA6X
         gxnA==
X-Gm-Message-State: ANoB5pnofGITyumATw0Gc8N6CjToceF13z1ejsEujgfojj1oKuCwZ67X
        Xi4nn3w9QfIvdl1JVWRVgu3bPQ==
X-Google-Smtp-Source: AA0mqf4tOND28LLNS8ITj5qbVR699j7JeSEtMy91OxQ+pZSLjk9/ltkugQWJCb4SjQKaf1wcFWKgSw==
X-Received: by 2002:a05:6402:2408:b0:461:f0a7:156 with SMTP id t8-20020a056402240800b00461f0a70156mr14313686eda.36.1670853548686;
        Mon, 12 Dec 2022 05:59:08 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id y15-20020a056402170f00b0045726e8a22bsm3770267edu.46.2022.12.12.05.59.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Dec 2022 05:59:08 -0800 (PST)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date:   Mon, 12 Dec 2022 14:59:07 +0100
Message-Id: <COZW5FAXA36Z.175ARPIESQSLL@otso>
To:     "Pavel Machek" <pavel@ucw.cz>
Cc:     "Andy Gross" <agross@kernel.org>,
        "Bjorn Andersson" <andersson@kernel.org>,
        "Konrad Dybcio" <konrad.dybcio@linaro.org>,
        "Rob Herring" <robh+dt@kernel.org>,
        "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
        "Fenglin Wu" <quic_fenglinw@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-leds@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm7225-fairphone-fp4: configure
 flash LED
From:   "Luca Weiss" <luca.weiss@fairphone.com>
X-Mailer: aerc 0.13.0
References: <20221209-fp4-pm6150l-flash-v1-0-531521eb2a72@fairphone.com>
 <20221209-fp4-pm6150l-flash-v1-3-531521eb2a72@fairphone.com>
 <Y5S+6j1yJ62RJU/v@duo.ucw.cz>
In-Reply-To: <Y5S+6j1yJ62RJU/v@duo.ucw.cz>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat Dec 10, 2022 at 6:16 PM CET, Pavel Machek wrote:
> Hi!
>
> > Configure the pm6150l flash node for the dual flash LEDs found on FP4.
>
> > +&pm6150l_flash {
> > +	status =3D "okay";
> > +
> > +	led-0 {
> > +		function =3D LED_FUNCTION_FLASH;
> > +		color =3D <LED_COLOR_ID_YELLOW>;
> > +		led-sources =3D <1>;
> > +		led-max-microamp =3D <180000>;
> > +		flash-max-microamp =3D <1000000>;
> > +		flash-max-timeout-us =3D <1280000>;
> > +	};

Hi Pavel,

>
> I'm pretty sure the flash is not yellow.

The marketing term is Dual LED flash or Dual-tone flash, one LED is a
blue-ish white and one is a yellow-ish white, but from what I can tell,
in the original code it's always referred to as white and yellow so I
also followed that here.

Also the LEDs are right next to each other so in practise for torch just
both go on, and for camera flash I cannot really tell you but I guess
it's doing something there with the camera tuning.

See also this picture:
https://shop.fairphone.com/media/catalog/product/cache/b752d78484639b19641a=
8560800d919d/p/_/p_5b_main_camera_back.jpg

>
> Plus, how is the node in /sys/class/leds called? Can you make an entry
> in Documentation/leds/well-known-leds.txt and ensure the name stays
> consistent across devices?

/ # ls -al /sys/class/leds/white:flash/
total 0
drwxr-xr-x    3 0        0                0 Jan  1 00:00 .
drwxr-xr-x    4 0        0                0 Jan  1 00:00 ..
-rw-r--r--    1 0        0             4096 Jan  1 00:00 brightness
lrwxrwxrwx    1 0        0                0 Jan  1 00:00 device -> ../../..=
/c440000.spmi:pmic@5:led-controller@d300
-rw-r--r--    1 0        0             4096 Jan  1 00:00 flash_brightness
-r--r--r--    1 0        0             4096 Jan  1 00:00 flash_fault
-rw-r--r--    1 0        0             4096 Jan  1 00:00 flash_strobe
-rw-r--r--    1 0        0             4096 Jan  1 00:00 flash_timeout
-r--r--r--    1 0        0             4096 Jan  1 00:00 max_brightness
-r--r--r--    1 0        0             4096 Jan  1 00:00 max_flash_brightne=
ss
-r--r--r--    1 0        0             4096 Jan  1 00:00 max_flash_timeout
drwxr-xr-x    2 0        0                0 Jan  1 00:00 power
lrwxrwxrwx    1 0        0                0 Jan  1 00:00 subsystem -> ../..=
/../../../../../../../class/leds
-rw-r--r--    1 0        0             4096 Jan  1 00:00 uevent
/ # ls -al /sys/class/leds/yellow:flash/
total 0
drwxr-xr-x    3 0        0                0 Jan  1 00:00 .
drwxr-xr-x    4 0        0                0 Jan  1 00:00 ..
-rw-r--r--    1 0        0             4096 Jan  1 00:00 brightness
lrwxrwxrwx    1 0        0                0 Jan  1 00:00 device -> ../../..=
/c440000.spmi:pmic@5:led-controller@d300
-rw-r--r--    1 0        0             4096 Jan  1 00:00 flash_brightness
-r--r--r--    1 0        0             4096 Jan  1 00:00 flash_fault
-rw-r--r--    1 0        0             4096 Jan  1 00:00 flash_strobe
-rw-r--r--    1 0        0             4096 Jan  1 00:00 flash_timeout
-r--r--r--    1 0        0             4096 Jan  1 00:00 max_brightness
-r--r--r--    1 0        0             4096 Jan  1 00:00 max_flash_brightne=
ss
-r--r--r--    1 0        0             4096 Jan  1 00:00 max_flash_timeout
drwxr-xr-x    2 0        0                0 Jan  1 00:00 power
lrwxrwxrwx    1 0        0                0 Jan  1 00:00 subsystem -> ../..=
/../../../../../../../class/leds
-rw-r--r--    1 0        0             4096 Jan  1 00:00 uevent

There's also already flash LED on PinePhone and some MSM8916 devices,
but I think they also have white:flash based on the dt.

>
> Best regards,
> 								Pavel
> --=20
> People of Russia, stop Putin before his war on Ukraine escalates.

