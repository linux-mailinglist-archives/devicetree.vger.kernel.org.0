Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B662B2B703C
	for <lists+devicetree@lfdr.de>; Tue, 17 Nov 2020 21:38:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728673AbgKQUhI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Nov 2020 15:37:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728638AbgKQUhI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Nov 2020 15:37:08 -0500
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com [IPv6:2a00:1450:4864:20::242])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50D8AC0617A6
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 12:37:06 -0800 (PST)
Received: by mail-lj1-x242.google.com with SMTP id i17so24735509ljd.3
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 12:37:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=VBawTBZeGDei1h6v3qT5rtQtXBaTES0YnmaYqJM2GNs=;
        b=D+N/vgCe2QB5LLybajWeW3aLxWfyO6wqQ0s1MXm5AKuHEiaMK+zq0b6I+SbTc5jNMb
         fVgahe8wLHQTjRL5PEMhtUFS1/zunYiAzwibsGLFHlmb2q/q+sOyfThNJAnFdXDcMlQa
         bDPDKADnIiE60UbmgItJ1BP+RNIVmplSStluy/36J3KtDJGRcDhPKtwGXBBs4bfz4hrX
         C/d7fAogdTgk+F6kFerrwo9wl+7tG2esiZEaD40ieVHUuezWchN/w/Sm1m8u0lDcwNWl
         SZ8pg1OE1r/N3fKHQKDeD7b9bGEJ+2FKWk2HKvAFuufmRDSmP8qqeR691T4cNIzfkYJW
         m48w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=VBawTBZeGDei1h6v3qT5rtQtXBaTES0YnmaYqJM2GNs=;
        b=Oc0qM6jl/LQ7WKG1AePEu3ru6mm5p+FTG9MVV+aLrGysTFV7kxm86cnJqbjKpc62Lw
         druBUjvKIHDgtzcSDvDX6FIY5Th5k1QWL88xFf3YvqBBG/1DG8XpWk3qRIlbqj16UaRC
         UtohK8h30SeNYt4j9npO7PduSD/BxhDjq8bioNjcIJsc9h62GBmadeQgyyjDO3lIgTzJ
         DsIQAEb0U7fyOCmhN42gLOEQ9VleD/LCzFNIsBUlCN8DWvGcV5fBfhmX3rZZPsFJ2jj5
         efaHMN1VDaM2wvxHmw1M+eI7qMGhXmf7auNlB938pt1RW8CiiyP9sinIFeZt6PxIqO9q
         EDPw==
X-Gm-Message-State: AOAM532VVltNmlL5HcyC3lvC/OqVk11byB3vgP7JgHCGoXChV/jyhyPX
        p5ID/ErjuXWIb0rw5Ta+tbyzKv3XDtWhhTBj6306pQ==
X-Google-Smtp-Source: ABdhPJwaS2B6HfL/+PScb1mQInpJJpSlRKinA0MJAmBjiWs9aJ0EGtMf1sjwzqSjWpH0V50ABOt7UCdKF0FZIH63EBE=
X-Received: by 2002:a2e:b1c9:: with SMTP id e9mr1535370lja.283.1605645424802;
 Tue, 17 Nov 2020 12:37:04 -0800 (PST)
MIME-Version: 1.0
References: <cover.1605635248.git.agx@sigxcpu.org> <1321f3abdc3df6e9d1999bd32b436ae71e89c27e.1605635248.git.agx@sigxcpu.org>
In-Reply-To: <1321f3abdc3df6e9d1999bd32b436ae71e89c27e.1605635248.git.agx@sigxcpu.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 17 Nov 2020 21:36:53 +0100
Message-ID: <CACRpkdbkcYz7RHz8_7ab-vVvBpOaD+SEosPZpvh8NNqDBuzfqA@mail.gmail.com>
Subject: Re: [PATCH v1 2/6] drm/panel: mantix: Tweak init sequence
To:     =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Ondrej Jirman <megous@megous.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Lubomir Rintel <lkundrak@v3.sk>,
        Mark Brown <broonie@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        allen <allen.chen@ite.com.tw>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 17, 2020 at 6:49 PM Guido G=C3=BCnther <agx@sigxcpu.org> wrote:

> We've seen some (non permanent) burn in and bad white balance
> on some of the panels. Adding this bit from a vendor supplied
> sequence fixes it.
>
> Fixes: 72967d5616d3 ("drm/panel: Add panel driver for the Mantix MLAF057W=
E51-X DSI panel")
> Signed-off-by: Guido G=C3=BCnther <agx@sigxcpu.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
