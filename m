Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 187657531C4
	for <lists+devicetree@lfdr.de>; Fri, 14 Jul 2023 08:09:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235106AbjGNGJb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jul 2023 02:09:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235101AbjGNGJ2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jul 2023 02:09:28 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E3B82680
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 23:09:27 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2b6ff1a637bso22495621fa.3
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 23:09:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shruggie-ro.20221208.gappssmtp.com; s=20221208; t=1689314965; x=1691906965;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=orndSSj2UwJllcFmURUAszpsDxToWW+bTCSrpDuMB50=;
        b=rSEucAgbUYeHVSTSXbX4h9GDYS7AeA8YfypaK3t0f6sWPqzBWQ/QvuRZTL8H2O6J1X
         zaZ2wmQb0KGIHIikVtnGAD1g4DfHldSNxbhWr1jKDz1mauD7+5RnWspMa4fLwtvagkMK
         wRPzB99gpXTCYAWWelL1AcWzOUjnPSspm6YWQhRlL9KARAvHdzc3c+bjQxEL7q/L52cq
         EFU9PekimSQVQl5N0LgDJ1Sdsh+D3Yr39lZpEq+etM8KnUCAHoKLdW8QGrTMFcQc13/3
         TO1Mw4QglCtfnsDEfqJ7KGed8AxkbcPl129VsMSxvmn84pht1j7uG9ZJW9Z5Xat/cyoR
         N7tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689314965; x=1691906965;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=orndSSj2UwJllcFmURUAszpsDxToWW+bTCSrpDuMB50=;
        b=lthPeC3k0/+CntQAusbTtY99BJ4Dcgitu5afQpX57Hiw5bovLYvJS+epuUV7ALKy2G
         VYIdGnF5ci/i33kNMjff0Rsl4ae1WqbKU2jGi3RQdBajjXsQZPYxYsIMSeXSaD9BHsH/
         JfaMZTmCGnRqaerIvyAGo2P2SLy4z+EbgcjTFPLy0PKBfrgJQ9rO7ocbgBJ0/xYSzYKX
         FJn+pWj6xRE5dyMCsSwqZl1/wVoHRg8FxQ5DhuOQY8lVJH1KlOQW8veusnpriT8jtsRV
         +i0Gc3kSuQ3XZ4orH9I7e+DaA32cD8TZdf2C/Tg0I7yJ+QxrK1O0MjjQbuVgE8B0LUAn
         8UKw==
X-Gm-Message-State: ABy/qLaezFdv7PQxPWifgOvhGu0dUjDEhh5z44FgWG29txHe+69JNgfK
        maFE9Y+I6LiiNuOSgnEY+N8/EY7Gwuma+RnhIe1WLA==
X-Google-Smtp-Source: APBJJlFjLd9SWBhGndhtxU1nyRlXyT203Tkpfb7Enzl8TGvLVxH8C8IUB34raRw1SX1qPqj8h/XE/oW4vWlS8LF/62A=
X-Received: by 2002:a2e:9284:0:b0:2b5:8a21:5627 with SMTP id
 d4-20020a2e9284000000b002b58a215627mr3394159ljh.51.1689314965292; Thu, 13 Jul
 2023 23:09:25 -0700 (PDT)
MIME-Version: 1.0
References: <20230713202123.231445-1-alex@shruggie.ro> <cad1d05d-acdd-454b-a9f8-06262cf8495b@lunn.ch>
In-Reply-To: <cad1d05d-acdd-454b-a9f8-06262cf8495b@lunn.ch>
From:   Alexandru Ardelean <alex@shruggie.ro>
Date:   Fri, 14 Jul 2023 09:09:14 +0300
Message-ID: <CAH3L5QrtFwTqqFKjPrMFCz4JgUWOFWFUJXpN71Gyprcd33A7hg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2 net-next] net: phy: mscc: add support for CLKOUT
 ctrl reg for VSC8531 and similar
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, davem@davemloft.net,
        edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, hkallweit1@gmail.com, linux@armlinux.org.uk,
        olteanv@gmail.com, marius.muresan@mxt.ro
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 13, 2023 at 11:35=E2=80=AFPM Andrew Lunn <andrew@lunn.ch> wrote=
:
>
> > +set_reg:
> > +     mutex_lock(&phydev->lock);
> > +     rc =3D phy_modify_paged(phydev, MSCC_PHY_PAGE_EXTENDED_GPIO,
> > +                           VSC8531_CLKOUT_CNTL, mask, set);
> > +     mutex_unlock(&phydev->lock);
>
> What is this mutex protecting?

This was inspired by vsc85xx_edge_rate_cntl_set().
Which has the same format.

I'll re-test with this lock removed.
I may be misremembering (or maybe I did something silly at some
point), but there was a weird stack-trace warning before adding this
lock there.
This was with a 5.10.116 kernel version.

>
>      Andrew
