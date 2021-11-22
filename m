Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 47D174586FE
	for <lists+devicetree@lfdr.de>; Mon, 22 Nov 2021 00:19:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231199AbhKUXWn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Nov 2021 18:22:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231292AbhKUXWk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 Nov 2021 18:22:40 -0500
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A809C06174A
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 15:19:34 -0800 (PST)
Received: by mail-ot1-x32a.google.com with SMTP id h16-20020a9d7990000000b0055c7ae44dd2so26147078otm.10
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 15:19:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=niG4LhykdMe2sCgAWkzlpTzAknhhfhfFKN7/kHVLdb8=;
        b=wcakSBzJXl9BZALRNXqLiyhsCB+m6PdHwbi8HzqWYQSDqzOUzvEqpnvo21ThgDfiUG
         YeyUYuOqKliWaPSXP/3LV4nTzhJ67sErjZ9XmD8vEyQ0pDW321Hx2roOzp9DvJ0BEA7J
         2IWUMeWBcGigOgZN2CdXyeomJHmgrZ/hwlM+gUea3h48Ioa5ZpPo0L3VUny+fxgUQ0ks
         /ZLvb22GhtsiEvG5gQXnXcMFBm5AfOhDm+50f7dWkr6nQIM/zeugbt4FCtIx6kcdwEIS
         IWPVkQyjCfhxRQIYm1R2CrQsPeeRMtMsD9QvTBmJ8X3sG9ojs8/p/EM1lQ+VBLpDkc4q
         TKDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=niG4LhykdMe2sCgAWkzlpTzAknhhfhfFKN7/kHVLdb8=;
        b=5QGApyFgHJaVm1jUv6D60mekl2jxsU1Df1AFtAHAdDRy+wZiqotfGysR9HudF4XLbg
         eFD6/73vCdHlFR7/V6bQOMfsZid+Oebxfg7GrfsiskSE/15blQNP58uPnxp1Cz3r3Wfa
         rCmuXNssYjj4Kx4TxzThHPzy0GmNNLwYiPq3yaw/+IpJBoPymoOI6dt0et0jmET8cEVw
         bNkK1BpoUFTAJQqLrPa3q3FgkQG0xn1qPInhKO8bjeDRV1gUn6dCeRATitbqYXj6tTlt
         Qi7tHNJcEcHPQJqKhlJz8Z+D9x+FpzMQuzHSu7LqKBSu4WAnxhZefWctZndVWxTv/or3
         9xWw==
X-Gm-Message-State: AOAM532UiNBhNs9Tc1FWaQ0VFXyPDSnyA1EO+lODEUAjFTqS13U7YYtx
        N5CuBgUR8lg9yN4AZ3t97ZqGa25F0EejrbKl1sWoWw==
X-Google-Smtp-Source: ABdhPJyVdtjQUoLHr9GMlVhAVr/1N/sztecCcTj39EJlBe5nSjbyIi50Oo/ofoA+ROJrbzFktx9bDGshBDQgVsRlEgw=
X-Received: by 2002:a9d:ed6:: with SMTP id 80mr20546619otj.35.1637536773648;
 Sun, 21 Nov 2021 15:19:33 -0800 (PST)
MIME-Version: 1.0
References: <20211102161125.1144023-1-kernel@esmil.dk> <20211102161125.1144023-12-kernel@esmil.dk>
 <CACRpkdb0CrJ_uTbtfg-xGq8uu0AKoqfAB03mF2CA_G8ys_8Lzg@mail.gmail.com> <CANBLGcwvGptHxP5+JQEQV1Y7G=dNTt86QuVgfUuvQDDBfNrzOA@mail.gmail.com>
In-Reply-To: <CANBLGcwvGptHxP5+JQEQV1Y7G=dNTt86QuVgfUuvQDDBfNrzOA@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 22 Nov 2021 00:19:22 +0100
Message-ID: <CACRpkdbsP1zibFvg2yL67ndQJ1MxBRmH5j+cZ-giZkmrnGROdw@mail.gmail.com>
Subject: Re: [PATCH v3 11/16] dt-bindings: pinctrl: Add StarFive JH7100 bindings
To:     Emil Renner Berthing <kernel@esmil.dk>
Cc:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-clk <linux-clk@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Jiri Slaby <jirislaby@kernel.org>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Sagar Kadam <sagar.kadam@sifive.com>,
        Drew Fustini <drew@beagleboard.org>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Michael Zhu <michael.zhu@starfivetech.com>,
        Fu Wei <tekkamanninja@gmail.com>,
        Anup Patel <anup.patel@wdc.com>,
        Atish Patra <atish.patra@wdc.com>,
        Matteo Croce <mcroce@microsoft.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        soc@kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 12, 2021 at 12:04 AM Emil Renner Berthing <kernel@esmil.dk> wrote:
> On Tue, 9 Nov 2021 at 01:46, Linus Walleij <linus.walleij@linaro.org> wrote:

> > As it appears to have some cross dependencies I assume
> > it will be merged through the SoC tree?
>
> I don't know. I've never tried this before, so whatever is easiest I
> guess. Do I do anything special other than cc'ing soc@kernel.org for
> v4 to make that happen?

You create a pull request with git request-pull and sent it to
soc@vger.kernel.org and linux-arm-kernel on Cc that should
work fine and it appears here:
https://patchwork.kernel.org/project/linux-soc/list/

Yours,
Linus Walleij
