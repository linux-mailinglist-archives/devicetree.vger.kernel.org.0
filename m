Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4F6B6301F70
	for <lists+devicetree@lfdr.de>; Sun, 24 Jan 2021 23:52:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726007AbhAXWwj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 24 Jan 2021 17:52:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726023AbhAXWwi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 24 Jan 2021 17:52:38 -0500
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2427C061574
        for <devicetree@vger.kernel.org>; Sun, 24 Jan 2021 14:51:57 -0800 (PST)
Received: by mail-lj1-x229.google.com with SMTP id f11so13059820ljm.8
        for <devicetree@vger.kernel.org>; Sun, 24 Jan 2021 14:51:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4HuGZS3FXmpI/CZ9WRJi1GTxY4eR6JlbnQlmIWJDvhs=;
        b=NUPplP+vwWcGNZku67kF6v0Zc3+oX52TgC4UVnC9NbzphbJ7yOo3lZgx0NHXvAzi4/
         xnRCAIHE0ruAJ8HvkZDbaiyl/5VEQFlcXHUyUOg5W0tXmw8xRR/9ZGxYRibTCKQd2Em3
         JGzKjFrj8IqxAGlyzt9x8qfsWUU1NwCPVqpRz2nhXoRxd+1G7sHECm9fdWqcPoKOiUDE
         xoPn9xr3ZkalTIBSogHq2aR3gkTcYeyYoFzZivXKeIY/XR4ENYkwdlJ7WamTamtbwtXi
         hTYSsVxmsDFQD9NO4GyfrEW+6KtsLs3TFca+J5YdXQ+PCtX8ME9+98DFYwf/wy+DY0Rd
         Gc0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4HuGZS3FXmpI/CZ9WRJi1GTxY4eR6JlbnQlmIWJDvhs=;
        b=h85ZKevtQaTtGpy0XygmLI1jmcO1Oyb7VFSsj42D2tWQxB6xj3V/Kf+yme7xNW0gHu
         tpdEuISsHbGms6GhxaYHG3OMBHuKXC4k1ZDs0pSXyJR2KFYG6jshyb4BdF5EVmQNBqsG
         019hsseEjzDnfMPitXs8Kirzl/ZQiYCigfDuZHNJuajtJ5+n9Bylknl9CF1ZV87moyKi
         wNHgotw6MteJ10d+5ofMnFdlAOger/AbRoO05GtJn/FLJ0JufPvDAeWrIENAB/H90Aww
         xafMJy23VIAxhM1o5lFkBJMtzz50ndLC9RoON2+JQV9z33hFuf+ewc5YvCwgZrU3jLYg
         pXzg==
X-Gm-Message-State: AOAM530qe0pZmG230wTZx5FBW/oVZF/M2DBZbl8oh+2aOhZbYivRTIHG
        su7GMD5KXQftjHA9ZJPniE8v48uQVwuVW/TIx/bEAg==
X-Google-Smtp-Source: ABdhPJxQyfKzJabalN+bedwoS7NGWpYLLpd54boyq2sKBZ7lVn6U5490067UEc04d3r+vv3OMoYA394NyqYfuciT6KQ=
X-Received: by 2002:a2e:9ec3:: with SMTP id h3mr120887ljk.200.1611528716487;
 Sun, 24 Jan 2021 14:51:56 -0800 (PST)
MIME-Version: 1.0
References: <20210124170258.32862-1-marex@denx.de>
In-Reply-To: <20210124170258.32862-1-marex@denx.de>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 24 Jan 2021 23:51:45 +0100
Message-ID: <CACRpkdaLN_Q9rmMnuVhB8wuZJzMMzqdc+O54WOKfc4a2bgnUwQ@mail.gmail.com>
Subject: Re: [PATCH V2 1/4] mmc: mmci: Add bindings to operate CMD, CK, CKIN
 pins as GPIO
To:     Marek Vasut <marex@denx.de>
Cc:     linux-mmc <linux-mmc@vger.kernel.org>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Ludovic Barre <ludovic.barre@st.com>,
        Rob Herring <robh+dt@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        linux-stm32@st-md-mailman.stormreply.com,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Jan 24, 2021 at 6:03 PM Marek Vasut <marex@denx.de> wrote:

> Add DT bindings to describe GPIO line associated with CMD, CK, CKIN pins.
>
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Ludovic Barre <ludovic.barre@st.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Ulf Hansson <ulf.hansson@linaro.org>
> Cc: linux-stm32@st-md-mailman.stormreply.com
> Cc: devicetree@vger.kernel.org
> ---
> V2: Rebase on next-20210122

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

I would probably add an example as well, but that can be
done separately and isn't super-important.

Yours,
Linus Walleij
