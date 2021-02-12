Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 24695319BDE
	for <lists+devicetree@lfdr.de>; Fri, 12 Feb 2021 10:30:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230039AbhBLJ1e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Feb 2021 04:27:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229756AbhBLJ1c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Feb 2021 04:27:32 -0500
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D01AC0613D6
        for <devicetree@vger.kernel.org>; Fri, 12 Feb 2021 01:26:52 -0800 (PST)
Received: by mail-lj1-x22e.google.com with SMTP id a22so10724638ljp.10
        for <devicetree@vger.kernel.org>; Fri, 12 Feb 2021 01:26:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tYyTdHiOphi5wy20sCohGohSDGJFzJ14qi5hSzM5U+A=;
        b=Wo5odOySF/CFjO72mwfuehexVpDt5boeTBrjIi8eYdCX5x91Ji2sDZLyQY0eiM1n7J
         JR2GkNIaK5Y3PyjM+xg4Dkaublh/xAdcOhoNGhuS5QTsZikUhv+DZprC9Q25ghrVeerl
         jh2sYwpMfJcWeG1pUt0h6qPLrHnYxwzUpkWdWKWmYwNcWDRRILxxRh/P87sZR8ZIHQMB
         dqqwC1BFHhlq+4x++uWHc6z4Cl4Pse2K7iluG4dEEQ0pCh6UylDjSgKVkQ2kr/SjbCQo
         exvFjK6ZWi2hKR9YxMWiLG449QDlyi1psLns9RExwklkzgPexbJ4O198qXtn4aOou7Ff
         m9zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tYyTdHiOphi5wy20sCohGohSDGJFzJ14qi5hSzM5U+A=;
        b=TbuUecVABDL+twdUrXy+8++5RkO5c2e7vQV4Sq6twNDxwkFXE9z0xFvZ9vsPCzUj75
         nEzVE7NGlo1SvnhbfICnJHrg8JnlWftebDOQe9Guc60+UgHbCW+q/aWYV37458IuBjxW
         byXDwjHQocIHxyzbGrOo0OfieR9/O31vXeejwUnOE+Qs51PKBQ0hj1T/wpnTgcjT5Pif
         CMpPoM7T68gehqLZ709xWfCkvAYfLFdHl920ptZhnmpj817j03uTDOLE6i1NfDeYgaXC
         LAxOeeFaj83ktDKwBzJrlSqd5WGwy92fhAB+BdYHyR/V2oicNyH6lEorvW2k054/hhcg
         yM0g==
X-Gm-Message-State: AOAM533Ita7RvcFHeNRA6wgPAI/l7buOGf164Zjdgc86eobzdo4uQkIl
        LFso8dFYkLZnq/z0ikNLj0Bv2G+3kfL+/08zHdb0KA==
X-Google-Smtp-Source: ABdhPJyTM3mAjXEWmeU9qHDaKPjX79dsGxohgA/kWmyN9gOGAk4Q6lBeaCJkUYRDfjmJdhz1GKgMtr5vBbKYhePpE30=
X-Received: by 2002:a2e:6c17:: with SMTP id h23mr1222875ljc.326.1613122010712;
 Fri, 12 Feb 2021 01:26:50 -0800 (PST)
MIME-Version: 1.0
References: <20210208135347.18494-1-o.rempel@pengutronix.de> <20210208135347.18494-3-o.rempel@pengutronix.de>
In-Reply-To: <20210208135347.18494-3-o.rempel@pengutronix.de>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 12 Feb 2021 10:26:39 +0100
Message-ID: <CACRpkdZ5ZQDcy5RP=CVPJ14Lyktw_4yOuELJRweeDpPKRL3RVA@mail.gmail.com>
Subject: Re: [PATCH v5 2/2] counter: add IRQ or GPIO based event counter
To:     Oleksij Rempel <o.rempel@pengutronix.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        William Breathitt Gray <vilhelm.gray@gmail.com>,
        Ahmad Fatoum <a.fatoum@pengutronix.de>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        David Jander <david@protonic.nl>,
        Robin van der Gracht <robin@protonic.nl>,
        linux-iio <linux-iio@vger.kernel.org>,
        Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 8, 2021 at 2:53 PM Oleksij Rempel <o.rempel@pengutronix.de> wrote:

> Add simple IRQ or GPIO base event counter. This device is used to measure
> rotation speed of some agricultural devices, so no high frequency on the
> counter pin is expected.
>
> The maximal measurement frequency depends on the CPU and system load. On
> the idle iMX6S I was able to measure up to 20kHz without count drops.
>
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

From GPIO and interrupt point of view this driver looks good to me.
I don't know about the userspace interface etc.

Yours,
Linus Walleij
