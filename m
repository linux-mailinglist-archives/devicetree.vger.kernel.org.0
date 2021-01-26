Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 01FC5303349
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 05:52:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728255AbhAZEtj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jan 2021 23:49:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732044AbhAZBkz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jan 2021 20:40:55 -0500
Received: from mail-ua1-x92f.google.com (mail-ua1-x92f.google.com [IPv6:2607:f8b0:4864:20::92f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30617C061A29
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 17:03:23 -0800 (PST)
Received: by mail-ua1-x92f.google.com with SMTP id i3so1605560uai.3
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 17:03:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Vqg6bv6YX+UaRhVsv9trHQtX0ur2NbtvGMYILmAZAUM=;
        b=P1l4NPK1mg6P+cMqArKZZ6FOU2bUnkug0c0wiDxi8esJ1qNqlZ3Av8QbDtH3XtmBcH
         WWj2fRqK6jXXpp1LfZvMsxakWaQD2KL3193fxXG1tya7r5Ks1Cf+/sLSkxLCxuMGGHLw
         ZtmMx8T9UA0Fr/mvIqw0o3Yn6tUyNGjH4LTfo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Vqg6bv6YX+UaRhVsv9trHQtX0ur2NbtvGMYILmAZAUM=;
        b=FQHnS9IFlzggw1EXujjvdq6Z02ugjcofhgQKbOtdAbHO9VGVKCS6aVXjPgS5phKVSl
         IouZc6gQCfOaX83vxh3tWbiuBBWYMqIgTSMMyzlVjaqLYdn479eWB24j/7EY7suDnaxf
         yd3jc5yFaQxI0/dRqGjywu2GxSrbr5KWlV3njgwNOfTmtuXfJuVYIdo9LGEShjxKNdxP
         e0mqopvCZ7SyCFYuDMP6cx/prkDSw8f2BGzdt7iHuUnp7vP7QghQ/Y3vXjMGdG5CBGR9
         FGiFkBcXnKT7N+6J7BXXmux3RL+OgoNQvBiYAy/wik0dDX23YFChmnB37vhOT48kL179
         KBVQ==
X-Gm-Message-State: AOAM530UZN+i+NvQRQkQIvOH70WpOZ6AVoYTOS/FRK2PKxoNxbknTFmP
        oHo5n2GhJHIMUozSCFczgxSWAKOyZRYLJLxAkBzzAA==
X-Google-Smtp-Source: ABdhPJypAk1MRy9xAVulpTwXcpPdyH5UZC9neTdCesmTbQDgAfb7Ug9ZhO6Fi+/A0gtEIjD8oDzmrbw8YTyBtpr/oRs=
X-Received: by 2002:ab0:3043:: with SMTP id x3mr2487551ual.88.1611623002329;
 Mon, 25 Jan 2021 17:03:22 -0800 (PST)
MIME-Version: 1.0
References: <20210113060703.3122661-1-drinkcat@chromium.org>
 <20210113140546.v10.2.I9f45f5c1f975422d58b5904d11546349e9ccdc94@changeid> <20210125192658.GA806742@robh.at.kernel.org>
In-Reply-To: <20210125192658.GA806742@robh.at.kernel.org>
From:   Nicolas Boichat <drinkcat@chromium.org>
Date:   Tue, 26 Jan 2021 09:03:10 +0800
Message-ID: <CANMq1KCdCurhB0S_a4qRtNbOUWMZa9=ObZkz0VSGLgCnfV-k9Q@mail.gmail.com>
Subject: Re: [PATCH v10 2/4] arm64: dts: mt8183: Add node for the Mali GPU
To:     Rob Herring <robh@kernel.org>
Cc:     Steven Price <steven.price@arm.com>,
        Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
        Tomeu Vizoso <tomeu.vizoso@collabora.com>,
        Fei Shao <fshao@chromium.org>,
        Boris Brezillon <boris.brezillon@collabora.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Kristian Kristensen <hoegsberg@chromium.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Devicetree List <devicetree@vger.kernel.org>,
        linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
        lkml <linux-kernel@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 26, 2021 at 3:27 AM Rob Herring <robh@kernel.org> wrote:
>
[...]
> > +&gpu {
> > +     supply-names = "mali", "sram";
>
> Not a documented property, nor should it be.
>
> Did you run this against dtbs_check with your schema changes?

I did not, for some reasons I hit a strange issue (kernel build system
wouldn't pick up dt-* tools from ~/.local/bin... solved with a bunch
of symlinks to ~/bin). Gave up too quickly ,-(

Anyway, v11 coming with clean make dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml.

>
> > +     mali-supply = <&mt6358_vgpu_reg>;
> > +     sram-supply = <&mt6358_vsram_gpu_reg>;
> > +};
> > +
> >  &i2c0 {
> >       pinctrl-names = "default";
> >       pinctrl-0 = <&i2c_pins_0>;
