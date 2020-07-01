Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2D0E121056B
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2020 09:51:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728459AbgGAHvZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jul 2020 03:51:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728229AbgGAHvW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jul 2020 03:51:22 -0400
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com [IPv6:2a00:1450:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF8E7C03E979
        for <devicetree@vger.kernel.org>; Wed,  1 Jul 2020 00:51:21 -0700 (PDT)
Received: by mail-lf1-x143.google.com with SMTP id g2so13042236lfb.0
        for <devicetree@vger.kernel.org>; Wed, 01 Jul 2020 00:51:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qA5bM+WCP+6+xrqHaHAfQZE4418oC7dBfKlNpFampf8=;
        b=ZZ7miNZVWKO46LJ8/TJl+yA0Ss4HFjwCQ1PS4s0VXxhfJW8E2Jda12hCRQW811RZAB
         rJ0G6F9L7j+s72JYwWteMsMWXhGguGPC6uKnDggH6FlBlnVMzjs4R+zzeBUCCH881MDm
         wSDDeUfbKti0XT7PZAM1hGGuTatJwiR+0N2CfoGeDTc/cWfiKbvR6xqwTihHm0PPBc1K
         32ca+MBKN3hCPSOozfWTmjbty1CRTMNtoGHNVGiiM55RomC+hUSpX2e1/qdf0809XS7b
         hcZLzAQpP7wZKj5F2vpZmvnbAlSdfyRrpeVLeC6RBZ00tG1Hviiw8oXq6WUv9vvARvzJ
         GMOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qA5bM+WCP+6+xrqHaHAfQZE4418oC7dBfKlNpFampf8=;
        b=YEDmsowI/KIPH7/ASK8ETGzL///n7eYgG0f30k8MUXb0uYjWBLe27GXpkOtG1MFomK
         Vkk1ixctdGopxHF1oX42S65uxjT8MUWMkDk4AepSjb4QExXA97w7tawVzZbFlOdEgFGH
         ysxsVULpRMAfRJsS/uEgSmQD81wvh1o5rQQc66s0ZZ1LufThXr/Pm4IkWd2leoShXKtR
         /O7ab5EpIdH2Pck8Q7zyzKIdSAfNHvjosZcT3hb3oUhDr0gbjzyQLxJ1CmBBK2zbKvH4
         F6ftPkntxInHOOoPELd1hMznSwVydTFFEwjcLl7ppg+ueJVziGiMykqabbimWI5BDNVo
         DOuQ==
X-Gm-Message-State: AOAM532+xZBPAn6R9FtOpI4rfGgh0mRLzL3k45Q4MfhsxfBtiOyALo8Y
        vDxNwCNGbyil8jRHhUb4QpoAXxqx5MdysSSJmu2f9g==
X-Google-Smtp-Source: ABdhPJyrJFAzSG4TfNUteKjvVvXNEtpwXJyb/bxaFmIvpSRTkSG+0rgLXE3upuXl29SouGIj3HRAshWvgCk19SJwY8Q=
X-Received: by 2002:a05:6512:3150:: with SMTP id s16mr3355246lfi.47.1593589880512;
 Wed, 01 Jul 2020 00:51:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200626005601.241022-1-megous@megous.com> <20200626005601.241022-11-megous@megous.com>
In-Reply-To: <20200626005601.241022-11-megous@megous.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 1 Jul 2020 09:51:09 +0200
Message-ID: <CACRpkdYHmZi+BCRs8xzCUqiCEK7RHynHWeptTtEzJ1WHToMRFg@mail.gmail.com>
Subject: Re: [PATCH v5 10/13] drm/panel: st7703: Enter sleep after display off
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

> The datasheet suggests to issue sleep in after display off
> as a part of the panel's shutdown sequence.
>
> Signed-off-by: Ondrej Jirman <megous@megous.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
