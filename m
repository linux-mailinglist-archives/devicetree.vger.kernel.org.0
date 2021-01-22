Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6771730040A
	for <lists+devicetree@lfdr.de>; Fri, 22 Jan 2021 14:22:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727437AbhAVNVa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Jan 2021 08:21:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727756AbhAVNVW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Jan 2021 08:21:22 -0500
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C595C0613D6
        for <devicetree@vger.kernel.org>; Fri, 22 Jan 2021 05:20:42 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id i17so6513069ljn.1
        for <devicetree@vger.kernel.org>; Fri, 22 Jan 2021 05:20:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0ytvqF/ZqeSdIbyUwKUH9eT2gg+DzZJwumCDEIik8VE=;
        b=vTHteLhf3Hc4M8GUMorykIr4Fz8V7IhlXaOyz/Jl2vc8CI3f4b9YSoLVdUimaykGab
         zdaUNTg2TPxiSyNXl9LR+gCD9OUqmJkZ19NKD1obMt1T2554FBeKW3aCkJwJPl1KeTEC
         Lyq7yFbl5a5lQtEnT+PuHFOhTdn8umLYSlyuvyczo3gZYfA6TmcFXkMXP14U31WqgdqQ
         vyA/dZkU8gL2XpwJfA9IrL7+dpdeDjafr+pHKRS40xl9PqWKg6ZEHymCOZmUFORVtFoL
         xJ07KMfj5Xx8pCwXE680tiDtIMVs+F28zYlQEC7WNjSlKHNswp5D90xKpDNOXJG+ZaJk
         lEAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0ytvqF/ZqeSdIbyUwKUH9eT2gg+DzZJwumCDEIik8VE=;
        b=SinbACs8WvBwKQmKkle7et17QIaetRjFBIYrzLglfr0OfhmY7kBxXg5fs0YTQ+Wkch
         uFKrBJCgrDhVWuQQfnOvFhDqDoGDLBU0pYMeja6zpU2YPvO93ySRG574oyDsKD/kjsvY
         I+y6eQq689VmPQApwF0O2Aneam+UMs+3f/nxYD1LoWW5BIQWtFcsFf3F/6KabIRYNV4v
         msH9HPuxcgT0pybeAUtPU/l8yYLrb1MV+q4lD0SUblzzHnED9s9BxTBpowmveDwO0DxH
         /TH8vLaQn4dH5u1ymoZLCgJaFXmmPqEhpPVytO77xY4n8XqYz2kzPRFampu5oZqm5ZDb
         WQww==
X-Gm-Message-State: AOAM530qDO5w0qQ2bGmwa8afoaL5sljzlxPyGuI8CSjtfbIbM6JXuhSO
        67fDgIIzVLgPBEd5bbaytJPbZvYhj4AjxPRkHVaYiA==
X-Google-Smtp-Source: ABdhPJz2obQCjwabSzHHW28CA6Zz2X57g2dz9ds/UhMqC/vA4Af8AKjfdgsI4a+HItN2SazQGOStl6xwxxDpujPiGIA=
X-Received: by 2002:a2e:9dc3:: with SMTP id x3mr782769ljj.326.1611321640829;
 Fri, 22 Jan 2021 05:20:40 -0800 (PST)
MIME-Version: 1.0
References: <20210120050342.320704-1-drew@beagleboard.org>
In-Reply-To: <20210120050342.320704-1-drew@beagleboard.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 22 Jan 2021 14:20:30 +0100
Message-ID: <CACRpkdYnKcMyqj00_uVxhHVUva1W12Pd2sjmVbwXVz-Jy8xrBA@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: clarify #pinctrl-cells for pinctrl-single,pins
To:     Drew Fustini <drew@beagleboard.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Emmanuel Vadot <manu@bidouilliste.com>,
        Tony Lindgren <tony@atomide.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 20, 2021 at 6:04 AM Drew Fustini <drew@beagleboard.org> wrote:

> Document that #pinctrl-cells can be 1 or 2 for pinctrl-single,pins
>
> Fixes: 27c90e5e48d0 ("ARM: dts: am33xx-l4: change #pinctrl-cells from 1 to 2")
> Reported-by: Emmanuel Vadot <manu@bidouilliste.com>
> Link: https://lore.kernel.org/linux-gpio/20210115190201.9273b637a7f967e7e55bc740@bidouilliste.com/
> Cc: Tony Lindgren <tony@atomide.com>
> Signed-off-by: Drew Fustini <drew@beagleboard.org>

Patch applied!

Yours,
Linus Walleij
