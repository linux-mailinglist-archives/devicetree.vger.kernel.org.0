Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 12E6E21056E
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2020 09:51:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728382AbgGAHvy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jul 2020 03:51:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728369AbgGAHvx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jul 2020 03:51:53 -0400
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com [IPv6:2a00:1450:4864:20::142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E460C03E979
        for <devicetree@vger.kernel.org>; Wed,  1 Jul 2020 00:51:53 -0700 (PDT)
Received: by mail-lf1-x142.google.com with SMTP id d21so13020051lfb.6
        for <devicetree@vger.kernel.org>; Wed, 01 Jul 2020 00:51:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=THSsMEdwUkIuQErJNTSneyWBjmNxLfAXVIDX4NKt1Z4=;
        b=lsK7zBiHNb6ChGBJ4kEzabV7KMiGLiwSMTGvcXRcsTVAcRdfAq7KHVGcId9mA+aMag
         V3ZkTiFnPCiQcsQjreRimXObyR1YN7YeU9t3zqhZGe6ukwB7Kabok9Pf6SsaQi0xWvWZ
         9sHML1TYiKIm/bLTyTuSMsZq0cPVfycCcZg0buB3K/pY3Uqlh+rXoFHg6xrSS2bQoxFs
         Tmpg/aD0TaD+trri+EoYsaNu6ha1j3ul/W8MxWsTcQ0JHj+DNnoFHNvZFzXnVfRbG14x
         g8WJxHQlpNJQ5fGDNlHD09PSFn10YiFyi6FJMnqDqjRbrcFbDdLmDhtViOSk9S2vyrCj
         JVjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=THSsMEdwUkIuQErJNTSneyWBjmNxLfAXVIDX4NKt1Z4=;
        b=j0ae6TCDwXxD5fqjAgtsPqNFVWSjZIme3QxpedB61t6kGA0Nj/0ys4So2Br+ZMfbnv
         PI7mUdKzBtUTw8pyUo+LupR8oHMA1ht9MWOrKx5hd5bUSARUih+jxd/A6ibFueqpP6nL
         NxYZhajkyS3OPB42RpaLJH+32lRtAlRw2RIURtnA4dbtdfw2ifVYa8CM4TEuljX7g3pX
         6TgbJ60V/tTHSUsR9/ituVAkqyqKhrT7sERGap6yoLEVRE1YJukyI2hUIvaKtyjmO646
         AZFYJDTQj0vuF478d3CgbDSqdL/Q4pzZ4K/LEV+a9TwWhiWOc64GZvra5cefqeN0ZY2g
         rN4Q==
X-Gm-Message-State: AOAM532LpKlPVUcAGk8ZQQB3bLWJH4oTixa9tDVKqJVWXA2CnOSOXDLG
        qOsTi1YEhCj8Fzo2Q0fly6jTaqPCNwcRZCvocYhuwg==
X-Google-Smtp-Source: ABdhPJzsrXRiDZ3PkD9so8U9yDLfPpdekZBYhYQLf31C8+u6SV4k6PNFMTYLo99L9aQ6TZ/WW4DiQG4fnfo9xGSuqc0=
X-Received: by 2002:a19:ccd0:: with SMTP id c199mr14351117lfg.194.1593589911704;
 Wed, 01 Jul 2020 00:51:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200626005601.241022-1-megous@megous.com> <20200626005601.241022-12-megous@megous.com>
In-Reply-To: <20200626005601.241022-12-megous@megous.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 1 Jul 2020 09:51:40 +0200
Message-ID: <CACRpkdab8pOgrssi91wmKSJC5v2gu7VoQKt1MWG0g5AkNxk+7w@mail.gmail.com>
Subject: Re: [PATCH v5 11/13] drm/panel: st7703: Assert reset prior to
 powering down the regulators
To:     Ondrej Jirman <megous@megous.com>
Cc:     linux-sunxi <linux-sunxi@googlegroups.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
        Purism Kernel Team <kernel@puri.sm>,
        Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>, Icenowy Zheng <icenowy@aosc.io>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Samuel Holland <samuel@sholland.org>,
        Martijn Braam <martijn@brixit.nl>, Luca Weiss <luca@z3ntu.xyz>,
        Bhushan Shah <bshah@kde.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 26, 2020 at 2:56 AM Ondrej Jirman <megous@megous.com> wrote:

> The reset pin is inverted, so if we don't assert reset, the actual gpio
> will be high and may keep driving the IO port of the panel.
>
> Signed-off-by: Ondrej Jirman <megous@megous.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
