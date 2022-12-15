Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9950664D9D9
	for <lists+devicetree@lfdr.de>; Thu, 15 Dec 2022 11:57:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230020AbiLOK5S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 05:57:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229996AbiLOK5M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 05:57:12 -0500
Received: from mail-yw1-x112a.google.com (mail-yw1-x112a.google.com [IPv6:2607:f8b0:4864:20::112a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC26D2E68F
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 02:57:09 -0800 (PST)
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-3e78d07ab4fso35664027b3.9
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 02:57:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t8xgawo/jT/WZB/xT4ixkGLWrHF5TMWAcVs3g9/8wqM=;
        b=jlsR4CANeGOPhodCJDcVVzLcZmuoOrfnfctYMh8Ey/rJNSAAAw+PSh+sbPCy00CMUK
         +EcuJxF3cRH9/eOVyCUHRUyj7IBe9uSb3OB/+No52R/Ugx8fhZWwicEcQzCnuu262q9G
         KsTr/mfM40zKo98uKSl0eqRXA7ZqRu0iMDTVZVbfEyrelxLZiofP2TkXZ56AhNuPXbyA
         GHRHkVqXZX7RkLHY8+rvBhfAHfXiwrhjBPD5VKO3P6kifO0dhT8+Dvk5xuGvyYfNAskB
         h3kX/j0TSSJUd4VL4z2raZbGbRQTUCOaam6tcG2LE425F+r3YceUrdFTUNsPKWFq279x
         jqpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t8xgawo/jT/WZB/xT4ixkGLWrHF5TMWAcVs3g9/8wqM=;
        b=piptzrUia1KfG5OrXNVaMGIlm33sxBSzgtbIreVkznPHmMguHPoYImJpl7S9ylnmSB
         OdTNhXeOBNUDszUjNUX/rEx9Y7kTRoxSWsl7DT12j+MDUbENnwfcHCkA4CczM50t9Enc
         cE+kX/9ymCaoqFFqpbKe3LAt/BxhybWGK0Gly67ViZe4CFIIv2P0MGFjeKHCLrjuZkek
         DtVMJHrzKmLjHepAdTRW1wwXj3STf0BPv3HZTc3RPuXGSsJI5VGpzppRb/rCLvJ13OZx
         LHBgvSwBvhUFmbUTW7n2nnpbrVg4EXwOepeDHdERjHlKcbjUzRMkcz9HNtzf0VJnF2kd
         Hhcw==
X-Gm-Message-State: ANoB5plhT8+UtrhpcU/wuQ5N3c3UGxml1kqe30cac+vqMePwDhZgNaxA
        ouBuIta9BTNwvbKju1OkLxCqALbPfqqAXaqLvW1otg==
X-Google-Smtp-Source: AA0mqf5WA/yjmATtBLSYZL0zvHYGqaiWB2l82pIOL8Qz2xIElIRNP7vVCdcT5pILwpKUYt0VTR2oXUVbwfaHew1gcFc=
X-Received: by 2002:a81:b54b:0:b0:391:f64b:e3bb with SMTP id
 c11-20020a81b54b000000b00391f64be3bbmr26240950ywk.49.1671101829025; Thu, 15
 Dec 2022 02:57:09 -0800 (PST)
MIME-Version: 1.0
References: <20221212103525.231298-1-alexander.stein@ew.tq-group.com>
 <20221212103525.231298-2-alexander.stein@ew.tq-group.com> <CACRpkdYioW1GROHFxA1vuAEiXqHh6fAu5CXNLcTvW_w3mWjSPw@mail.gmail.com>
 <Y5hl1Sb8csSkbrDh@pendragon.ideasonboard.com>
In-Reply-To: <Y5hl1Sb8csSkbrDh@pendragon.ideasonboard.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 15 Dec 2022 11:56:57 +0100
Message-ID: <CACRpkdZ2G=HUTBMpXJrXeSh3kYgQQc8p8zaJZPL71HWA9362ZA@mail.gmail.com>
Subject: Re: [RFC PATCH 1/3] dt-bindings: gpio: Add optional ramp-up delay property
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        Marek Vasut <marex@denx.de>, Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Laurent,

thanks for the detailed brief!

On Tue, Dec 13, 2022 at 12:45 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:

> The circuit we're looking at is
>
>   +----------+           +-----------+
>   | SoC      |           |    VCC    |
>   |          |           |     |     |
>   |          |           |     _     |
>   |          |           |    | | R  |
>   |          |           |    |_|    |
>   |          |           |     |     |
>   |      [IOx|-----+-----|EN]--+     |
>   |          |     |     |           |
>   |          |     |     | SN65DSI83 |
>   +----------+    --- C  +-----------+
>                   ---
>                    |
>                    -
>                   GND
>
> The IOx pin is an open-drain output, the board has a 470nF capacitor to
> ground, and the SN65DSI83 has an internal pull-up off 200k=CE=A9. This gi=
ves
> an RC time constant of 94ms, far from being negligible.
>
> The delay is caused by the combination of the open-drain nature of the
> output (an intrinsic property of the GPIO controller), the pull-up
> resistor (an intrinsic property of the SN65DSI83) and the capacitor on
> the line (a property of the board). DT is notoriously bad at modelling
> this kind of setup.

Yeah :/

It's not like we don't model discrete electronics, we do that a lot,
but as you say, it is really hard to know where to draw the line
in cases like this.

> The alternative I proposed, adding a "GPIO delay" DT node to model this,
> would also offer a centralized solution to the problem, but with
> additional complexity both at probe time and runtime.

I have a slight preference for this, as it will be very explicit in the
device tree and we can just put all the code inside its own file and
depend on GPIO_OF so other HW description systems do not
need to include it.

At the same time it feels a bit overengineered, so maybe just adding
this delay as in the patch with some strings attached like comments
and docs is yet the best. It feels like we need some more input to
reach consensus.

> The regulator delays model the intrinsic delays when enabling or
> disabling a regulator, and they should stay. They address a different
> problem.

OK right. But someone not knowing exactly what they are doing
will end up abusing the delay property on the delay line
also for this delay. The risk of that is lesser with a separate
delay box.

Yours,
Linus Walleij
