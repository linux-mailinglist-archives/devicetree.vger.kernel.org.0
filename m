Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 16B8A304143
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 16:01:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405996AbhAZPBR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jan 2021 10:01:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390748AbhAZPAi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jan 2021 10:00:38 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D98CC061D7F
        for <devicetree@vger.kernel.org>; Tue, 26 Jan 2021 06:59:58 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id m22so23105695lfg.5
        for <devicetree@vger.kernel.org>; Tue, 26 Jan 2021 06:59:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5PPoqIyCpJtL/ek+tU9+EyocWfpZVKR5Q6N/JZNTSoc=;
        b=CJW5k+g5rrW0iG7J1Vqjf7EeICvtVMaqQr4Mrssy80eRmciKqXrKNu2x10XtIpUMjd
         2Q9fD9jJF+Yiw/QHFgpLarnnoC9HGqb7+JqNxEgSc6ULWHrPbJmfwNrJC6HhunyJagtg
         X99euSfrluWSS5ypVzSO5NDMQXTO+CUmJuikTOK8ZdbxbZzpn8/jxBjqRW7InmA6noQy
         kVpakp5prj7msQgdbf5j7iuW6hQhykXGedscqJrv+7qvBclJSxgfLk7uWbofhgk5yXoC
         HYVsH6NmMWQ2xYCfoGIVnVCnWAy7NrLg+zu14JIFrJsRVJ3PouFzyRQeh8veAj9pmYVy
         LVrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5PPoqIyCpJtL/ek+tU9+EyocWfpZVKR5Q6N/JZNTSoc=;
        b=YNQUpufoI9C18/b2W0wQGFTY5cOy4bkLjrk4z3BY/ybex9i02RK9wq91+w+IzVis7v
         6pdEh1O6wlkAzrTx4GJOCrhFwUmB0S6o39lknnKVkANbS0QSUSS+QqKvzv8/q9ryQhgZ
         gmgivhCmAltNbFLNp7lvFtR4mS4eSDz5rvAB8ocj0x2oKBUxM54Tpz5DnmQyX5pIe4di
         g0uR6a4eFQhgvPwycf0ajtOoRRpJNGhefyWhSXg0Mdx9tsvXb2hXq+5SUOPRx3A8RQVR
         X3EGuchdVg7fHGgq2zWM92Og5vUQNgUhJeQjKT1MlopwQvV/ZT2EFdyPZKRE6JhZwDKS
         4fyQ==
X-Gm-Message-State: AOAM533N7nIKydGL8bbAj06k0i08ZVmKhSII451Ij/DjDomXv86nQ9/+
        8I6ZwpQAv21nJotAhRePSphCcLjb+hlsszUNAtgFOw==
X-Google-Smtp-Source: ABdhPJw+UEQhd8vKQIGL6NeYSPSicxlz7dsriKTU3lH8LHsu7n43H+WLi/pKgx8+e/k/qqhhJKe1LW7Bfg9MZUXVmL8=
X-Received: by 2002:a19:495d:: with SMTP id l29mr2785470lfj.465.1611673197037;
 Tue, 26 Jan 2021 06:59:57 -0800 (PST)
MIME-Version: 1.0
References: <20210126132531.2084711-1-robert.foss@linaro.org>
In-Reply-To: <20210126132531.2084711-1-robert.foss@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 26 Jan 2021 15:59:46 +0100
Message-ID: <CACRpkdYPY3HxpWHMp08477z62PBYEjCKWpw3Uf0SQ7VHVB3jdw@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] dt-bindings: pinctrl: pinctrl-microchip-sgpio: Fix
 dt_binding_check warning
To:     Robert Foss <robert.foss@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Lars Povlsen <lars.povlsen@microchip.com>,
        Steen Hegelund <Steen.Hegelund@microchip.com>,
        Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        jiaxin.yu@mediatek.com, shane.chien@mediatek.com,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..." 
        <alsa-devel@alsa-project.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 26, 2021 at 2:26 PM Robert Foss <robert.foss@linaro.org> wrote:

> Silence indentation level warning reported by dt_binding_check in
> order to reduce noise during routine checks.
>
> $ make dt_binding_check
> mt8192-mt6359-rt1015-rt5682.yaml:10:4: [warning] wrong indentation:
> expected 2 but found 3 (indentation)
>
> Signed-off-by: Robert Foss <robert.foss@linaro.org>

I already have a fix for this in my tree, thanks anyway!

Yours,
Linus Walleij
