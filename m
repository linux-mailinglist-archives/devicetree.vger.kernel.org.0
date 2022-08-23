Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 078A559E84F
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 19:07:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343571AbiHWRAB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 13:00:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343579AbiHWQ7f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 12:59:35 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F339BD2AC
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 07:13:24 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id u15so19021974ejt.6
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 07:13:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=R3+PgxM8z5XizNVDlTIKe8aLZ80jC+MqfgMZyAGS5D4=;
        b=FDDV7apJRIiE2DzIe56wIm0optzGxjCbo8HJG5mD8+1twp0EVv4WS9APAyLEy06J+H
         5uc7xlKxvdIALiuK27lTdGfrX96Gh/aEYbefWe/pxZ+y0Wsk3VIdwW7PJo9wdIPx+z4i
         /OhVbsRv320afGgESBwnm0HH8Nz1Phj0F7YrM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=R3+PgxM8z5XizNVDlTIKe8aLZ80jC+MqfgMZyAGS5D4=;
        b=MCZEw+BOl/ZsIpeXzKOVK//qrDZh2sokINf7azJpHKlsq7cJmCZZbj4XTz04hJfVy/
         sKWVP4KDCYumGWad3MsoKI7bBry95nHMnjyCQzhK/rnqojzFLiaoeB7p/S/jle6K72Ow
         rAnrdwNM7/JIStmzfbaTRWUQiOv7rWpDlt/Ntv/AFBa6LWfRelo4cJ6mNhWG4MgQD9uI
         gGwN9SBwkUrdt8j3/ILci4IF+LATeUqefX3nrzvswBJbgy8fWW9QJM2i7mRmznPliFzO
         Ip/UsadBGmGepyoXa37zqgOvXqXDqjxBGxihAhD+GhPw1qU1Glx1ZzWwbIFE4zBkOxjf
         qqZw==
X-Gm-Message-State: ACgBeo1V+ZbON6gwycA7c8FEaU3/FxtPkZ8+mWs1S0++sNU1utGr8GhZ
        Z+9xSprwnBfuQw+JnZYW3lQxdkg1jPTo7JbvNvw=
X-Google-Smtp-Source: AA6agR4ycwfahxeolWugc0r+fRnuycMFsgdAkgrSNlKNHDbgkvrEgap4h1nmC14Hdfofl1aupkukQg==
X-Received: by 2002:a17:907:28d5:b0:73d:a37b:2a2e with SMTP id en21-20020a17090728d500b0073da37b2a2emr1716857ejc.436.1661264002435;
        Tue, 23 Aug 2022 07:13:22 -0700 (PDT)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com. [209.85.221.53])
        by smtp.gmail.com with ESMTPSA id q22-20020a1709064cd600b007306d478c62sm7488429ejt.62.2022.08.23.07.13.21
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Aug 2022 07:13:21 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id u14so17160041wrq.9
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 07:13:21 -0700 (PDT)
X-Received: by 2002:a05:6000:507:b0:225:5019:803b with SMTP id
 a7-20020a056000050700b002255019803bmr7303537wrf.617.1661264001119; Tue, 23
 Aug 2022 07:13:21 -0700 (PDT)
MIME-Version: 1.0
References: <20220822074139.3810-1-jensenhuang@friendlyarm.com> <23552842.6Emhk5qWAg@diego>
In-Reply-To: <23552842.6Emhk5qWAg@diego>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 23 Aug 2022 07:13:06 -0700
X-Gmail-Original-Message-ID: <CAD=FV=W-ajJDfYcP3P8Jyk_KgsUAbdTtmwiNXqJ=Ab2ojgrUGw@mail.gmail.com>
Message-ID: <CAD=FV=W-ajJDfYcP3P8Jyk_KgsUAbdTtmwiNXqJ=Ab2ojgrUGw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: add enable-strobe-pulldown to emmc
 phy on rk3399
To:     =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Chris Ruehl <chris.ruehl@gtsys.com.hk>,
        Jensen Huang <jensenhuang@friendlyarm.com>,
        Brian Norris <briannorris@chromium.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Aug 23, 2022 at 4:53 AM Heiko St=C3=BCbner <heiko@sntech.de> wrote:
>
> Am Montag, 22. August 2022, 09:41:39 CEST schrieb Jensen Huang:
> > Internal pull-down for strobe line (GRF_EMMCPHY_CON2[9]) was disabled
> > by commit 8b5c2b45b8f0, which causes I/O error in HS400 mode.
> >
> > Tested on NanoPC-T4.
> >
> > Fixes: 8b5c2b45b8f0 ("phy: rockchip: set pulldown for strobe line in dt=
s")
> > Signed-off-by: Jensen Huang <jensenhuang@friendlyarm.com>
>
> ok, so this looks like it restores previous functionality.
>
> I'm just wondering as the "offending" patch is from 2020, why this
> only turns up now. Any ideas?

Ah, I see. So before the offending patch we used to just leave the
pull state at whatever the default was when the kernel was booted.
After the offending patch we chose a default.

On kevin I see an external pull down on this line. Enabling both the
internal and external is probably not a huge deal, it'll just affect
the strength of the pull.

On bob I _think_ the external pull down is also stuffed.

...so I guess that would explain why it didn't cause a problem for at
least those two boards?

-Doug
