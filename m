Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A0CEE8E68A
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2019 10:35:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731044AbfHOIfY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Aug 2019 04:35:24 -0400
Received: from mail-lf1-f67.google.com ([209.85.167.67]:33321 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730446AbfHOIfY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Aug 2019 04:35:24 -0400
Received: by mail-lf1-f67.google.com with SMTP id x3so1171235lfc.0
        for <devicetree@vger.kernel.org>; Thu, 15 Aug 2019 01:35:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rIQuHahZHT61N3pBhyPaMSRx0lDKJTzgLeGkPUGpwnw=;
        b=Y+FH2yajTgKkaI7nsmE3WEZkZeDokd2RUNA2EldWJj3L3ayjASGWVw8k2Ij/OubaDA
         M5j0TR6ZH7t2zzUaVTqdINB8m5lZjQKpnPOSypEFo2alm8nos9NKEpcKFvMeG4r1uAGP
         8AaHAOiGbMsxK4DiqokN1Oe/6ULi7Td0OYQaU6PgDrUrliFei/NY6KsdXRXQTJ6grcA2
         +XXBHx1lgL1P0ofcfjauBj28vKllqp7gfVIDQ8OSvDzcvPiPEFztsRnRSqMrrh/2PyyG
         Dd0SqjtUzV6NYaebRMJOREUG+7ff7D1na1lXslQREjafp/2W4q53ICtF5IW5iS9XRfz6
         bsYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rIQuHahZHT61N3pBhyPaMSRx0lDKJTzgLeGkPUGpwnw=;
        b=og0zvZLAYScKmsyBSAU2CMS4b8Sg5z8Dipnq0jp2nswpJlWIHRob7oPrz8drzfI/e+
         8vsPaMU0ULmIjZ+6/GH0xjmH6r9zZwfl/1EVzXQgBa4gA4/0795+bl8thZdyfy+zgrM+
         TKPdV2gWSvQv7z643OwO5j/zm1V8QAmY3tPx77vzPgdGOFTGS1vxeydFdiwjplxtdq0p
         xGJRGFVgP5f1vRq8QVmES4OKg4LyoTPj8Ia+IPALggkHusYld9RkHidCixgImbyHHXZQ
         XIE+sKmkvN4DSILEW18vCn+oDoyQF5Xef7LkgAL5TZPoMwVdSmfdBQ0NdplHCcAzpgVw
         uM6g==
X-Gm-Message-State: APjAAAWmdMQzJg56O1acLnfTVuJrMU39FcbE0DZw7X0jD4Vdu6iT1sgM
        M5No+c4SX9j9gAvuVjIfhJXXi8V1BbC9wPRxLDiiYA==
X-Google-Smtp-Source: APXvYqy4JWhaSExzEs8fNpyvhhFIffJYnQjxDmgWOFMcNEneP7xcjaUdbR6c+1Du9tQXJhhtHsvVS1Z3y4aDb+ws8Qs=
X-Received: by 2002:ac2:5939:: with SMTP id v25mr1829550lfi.115.1565858122600;
 Thu, 15 Aug 2019 01:35:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190815004854.19860-1-masneyb@onstation.org> <20190815004854.19860-4-masneyb@onstation.org>
In-Reply-To: <20190815004854.19860-4-masneyb@onstation.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 15 Aug 2019 10:35:10 +0200
Message-ID: <CACRpkdbCwUbn68trGZTN8pe8rF8x6SeAW1gd7bwFTs3z-6vK=A@mail.gmail.com>
Subject: Re: [PATCH 03/11] drm/bridge: analogix-anx78xx: silence -EPROBE_DEFER warnings
To:     Brian Masney <masneyb@onstation.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Dave Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Mark Rutland <mark.rutland@arm.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        MSM <linux-arm-msm@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        freedreno <freedreno@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 15, 2019 at 2:49 AM Brian Masney <masneyb@onstation.org> wrote:

> Silence two warning messages that occur due to -EPROBE_DEFER errors to
> help cleanup the system boot log.
>
> Signed-off-by: Brian Masney <masneyb@onstation.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
