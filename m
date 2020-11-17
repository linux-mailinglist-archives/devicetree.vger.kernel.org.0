Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 95CDA2B7048
	for <lists+devicetree@lfdr.de>; Tue, 17 Nov 2020 21:39:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727106AbgKQUji (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Nov 2020 15:39:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726558AbgKQUji (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Nov 2020 15:39:38 -0500
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com [IPv6:2a00:1450:4864:20::142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3705AC0613CF
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 12:39:38 -0800 (PST)
Received: by mail-lf1-x142.google.com with SMTP id u19so25775496lfr.7
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 12:39:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=TW4fOYeIg/u1zGPE0iEC2QQGsw2Uq7uzL4wMscSA2zk=;
        b=T5exhl46sT7EUaNZjoY5MMETY+QO3+bwfOtvS0a3Hp4vgrq4rwlfc5TRbeNNOGwEx7
         ec6q91FR+mP57JAWKDUSTxGUp06+33YD4O4i8rlXwgWYcOoWVIky0NBIvkWTrxIvNap3
         waJQ8iEG0FrgWTDtBV1rk9Ys8gTtJIU/oqHKswqJ0bViixHg4vyhoSPTT4JDaN+Dyuus
         Ni8acRhtrUcv68l6oSvoTvMuYdQKvL5aCTnO/nOFRk5H0V4ISOR6htWuq34/Ji+9zvRP
         nytQN6G8ewc0T3avod8tKilMvx5xEtJBN8TgGfzWPN0DVSvIscw/nbwxlDUkae5v6mJc
         aotQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=TW4fOYeIg/u1zGPE0iEC2QQGsw2Uq7uzL4wMscSA2zk=;
        b=EOwdqBsCs7h20jsYphjdd71X0dDR3n1sLzr9l4oQiACUq+2Kf7M6FSUsQlgp4n3RAh
         KS6j+2mlPWmiPe/ymbPdN1LDm5ng1/PX1JB6ofvqrpfCzrUjxxCLVl2hkdp+vsewiwdI
         /x1TP4OWuTnWJCwZ0Lg/+P1I0WNzuj8uQ3KQcKScyXSj3VGAEOpcle5hMqGyZqhv7U0i
         40y9Aq70NsJ/skAueJuWzjrqa66SxobPPlGPhaGdYaR2qUPBjECprLhF8TxBNYWYVucg
         p5bs3ZD6x3NU3mibJYjONYQBv6hO2PY2Z19Ba5Y552//ES1NWRnk9EIn/HWMWebJwILz
         qgxg==
X-Gm-Message-State: AOAM533+cpUnuThSrJPRw9kukFKNmmVoMMRcq5Ve7bcnPnYEs6pwyls7
        qAeacwS2z9glu8pz0+tEtrfeODGaZYRE33U7ulXKVA==
X-Google-Smtp-Source: ABdhPJwYT09wCqu7ROVdSFo8fIUdRO7ngevgHInPjXkOSe8hUIn1JpiOhcoYMkkFEb2MJtlIp1ObjNrWlbJN8LLfq0Y=
X-Received: by 2002:a19:e08:: with SMTP id 8mr2225929lfo.441.1605645576700;
 Tue, 17 Nov 2020 12:39:36 -0800 (PST)
MIME-Version: 1.0
References: <cover.1605635248.git.agx@sigxcpu.org> <567ba3729289c2cf907bda2578e97752e20e143b.1605635248.git.agx@sigxcpu.org>
In-Reply-To: <567ba3729289c2cf907bda2578e97752e20e143b.1605635248.git.agx@sigxcpu.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 17 Nov 2020 21:39:25 +0100
Message-ID: <CACRpkda3c_=ygcixJppOR5cuTm1yMUdHt-fa18i3v-gQNtDXvQ@mail.gmail.com>
Subject: Re: [PATCH v1 3/6] drm/panel: mantix: Allow to specify default mode
 for different panels
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

> This can be used to use different modes for differnt panels via OF
> device match.
>
> Signed-off-by: Guido G=C3=BCnther <agx@sigxcpu.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
