Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 579F42B704B
	for <lists+devicetree@lfdr.de>; Tue, 17 Nov 2020 21:41:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727899AbgKQUkg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Nov 2020 15:40:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726759AbgKQUkg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Nov 2020 15:40:36 -0500
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com [IPv6:2a00:1450:4864:20::142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9DBDC0617A6
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 12:40:35 -0800 (PST)
Received: by mail-lf1-x142.google.com with SMTP id l11so19941242lfg.0
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 12:40:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=5O26wK6ZwRs5vg1Qkg4ioltHAshqMgwowNUpC8UIpCI=;
        b=kDoygA1AHcokY8M9AQIkp8xfBXm6+EPG0LfAD1aNHZSw/+ciWKhohQ5+/dhPHIKyFc
         Tkt7+xjxoHvcJ2I5FQTtU0FfLf2vlCTX4kBbd9OFw51Fw0jmBuGWHne6RjyyKxBuMVhA
         KMaTCPGh2WB/kFwaJ7fLjenfJ+9rCyrNIjqCMb2wC3sM65/0aHp8GvPDaW6b4JS1NyIY
         TfHEGFPR7e946MbKcdgUqmDqS+rs86qINmqtK60vjikTRi0ex6QTXIZFDRiLKo1uzY0e
         hE3xytSNoUn76SV7/UfGvRXFmni8esyP8ddpiH5uuqD05qxWPYIxAaDOr2XpbvyPNb6i
         eu3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=5O26wK6ZwRs5vg1Qkg4ioltHAshqMgwowNUpC8UIpCI=;
        b=nhQ+7OHKgAnzss4jNOHTnU9+zc2/p+895YGhnXsJvqIxVP+afIn8DUiq+T9OLZardP
         LCBVco95a9VMImaWXP6KmTRLrGMszpbmaCJfFkpvgJ0x9mw/fTkaxhYr3yGa6RDZNXak
         Xbif0KpuJi/ybRnFlJguv2zceBPvyw+MDUuy9Ku970I3Fodl4ryZ8pq6cwrYFDjcaPTq
         bsA+Y3kgCWkft717+1N9GFncYfITSmybnPbRfH86ud5MdgrvglvqmnYcFnLwe2+o7Loq
         dH14D+wLbfaRGy0j8NAX1bLOdHubIGHRdJz2Hm7aFQgb7xLtk8BxtbS4UF0xm1gxU5VR
         hj0w==
X-Gm-Message-State: AOAM532ltXFFTZftJsI2cuoVNl/De4inXp5MeuX3FmFtdy9vils1RAB8
        v1izlhotdVu5ysp8hSSsrudLztRaXGohSSs9TKK/qQ==
X-Google-Smtp-Source: ABdhPJy1rf9o0mryoLstKB7uDAsq71sImAeQEGBms3pp2vMP18NF/F1WATntf+diyrbKzkPyXkX/swGk3hzNqzyKpCA=
X-Received: by 2002:ac2:4ac7:: with SMTP id m7mr2260698lfp.572.1605645634325;
 Tue, 17 Nov 2020 12:40:34 -0800 (PST)
MIME-Version: 1.0
References: <cover.1605635248.git.agx@sigxcpu.org> <905595a5a25c6b8fb7760877fb93d057e98ce717.1605635248.git.agx@sigxcpu.org>
In-Reply-To: <905595a5a25c6b8fb7760877fb93d057e98ce717.1605635248.git.agx@sigxcpu.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 17 Nov 2020 21:40:23 +0100
Message-ID: <CACRpkdY84ppTs1MLUm3qHng622VDSWejaZC5M-fkpnmeOR9xZA@mail.gmail.com>
Subject: Re: [PATCH v1 4/6] drm/panel: mantix: Support panel from Shenzhen
 Yashi Changhua Intelligent Technology Co
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

> The panel uses the same driver IC and has the same resolution but a
> slightly different default mode. It seems it can work with the same
> init sequence.
>
> Signed-off-by: Guido G=C3=BCnther <agx@sigxcpu.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
