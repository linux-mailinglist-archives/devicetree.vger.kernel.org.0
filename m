Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2F79A38D227
	for <lists+devicetree@lfdr.de>; Sat, 22 May 2021 01:55:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230228AbhEUX45 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 May 2021 19:56:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230216AbhEUX4z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 May 2021 19:56:55 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D7C6C0613ED
        for <devicetree@vger.kernel.org>; Fri, 21 May 2021 16:55:28 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id z13so32074068lft.1
        for <devicetree@vger.kernel.org>; Fri, 21 May 2021 16:55:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=v4JwRZa9StUOWu+uyIm0h+xDZPb2Vrykvc6o8gtd0B4=;
        b=rHb3lfBJCE9Mx9n/BYp/yEvxrIMlWaV76KfBsLya5hGpYMabhQMZjasOO8SBTpTWbB
         37GqY4Is7No6tTOFPfP1lGdL0I59ID7eYDDyLdxdxFAQyOJ4glisq8UR+7usNrLwFRZk
         doPUwXGMspXb1+iofsgvrbbPaHND9OZqFq+R3sIynxXjQecSXX1Y+DFRE5qv07/PUpck
         86hCcuNrTcc2d1hiUPF2Nkv4TcwhmE+ZOi6oJjf/5lapvPTDA4xq05aMe7RGEC3PmsgG
         uiLEqDZmRCdu2UJ/sc7jjCnr63b2LUapGlRqh/qrg4mPNJOacp+WR0xNbhYX964Yjk0b
         /gsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=v4JwRZa9StUOWu+uyIm0h+xDZPb2Vrykvc6o8gtd0B4=;
        b=pQDrSBLsFJof+munyjLBJk7CzK9uRoSkl42l9rsFyi6LfY1uDtSn1aWYgB2SAI2L7w
         d1W74DxxlnK/dMUx77+uY6HdU5IeIoQxZaFx0nG4i2089srgO+PoiP2qn/PD2+J4940U
         fhVD0HkgmE65pFGqEZxrvmyl2+kgNkq97vvNrwl5Nk8puYAUT/0aRLvUlInEce2/rytE
         MkratvBBQXUoZWjc2BqFr6KalhQoNcedt0Pi7/jwLIrVfix8Sz78GqNRlSbKZZ2/Fs2L
         Ns8rxjsS9W0ZLOxqcH1tiVDKgYMY6+cCsQ2mZPZ7cv9qpZfRQDUDttrmszos7t4YVSes
         9DKg==
X-Gm-Message-State: AOAM5324Z/hbkBEuqCcn6ottDRb6PjzJe9V7TvcQJ3g3TIDZmJch+fIr
        9Fe5d25k9mx/QMhYgn9MIF/ZfEBIGHAGaUTTcls3vA==
X-Google-Smtp-Source: ABdhPJzBChhkZ2/JZvtrSi2TQkgxeb22PAkXYeeuXJXqQtZsukhS8dZ2Ju4vf2tQzzIuCuUgHNvltdsgfT9slARBr7I=
X-Received: by 2002:a05:6512:1185:: with SMTP id g5mr3779084lfr.586.1621641326966;
 Fri, 21 May 2021 16:55:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210519203547.837237-1-clabbe@baylibre.com> <20210519203547.837237-2-clabbe@baylibre.com>
In-Reply-To: <20210519203547.837237-2-clabbe@baylibre.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 22 May 2021 01:55:16 +0200
Message-ID: <CACRpkdYACsLcJMD96vxrmOrJFjb675y5t3SXQF6YEOyfeoGekA@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] ARM: dts: gemini-dlink-dir-685: Remove address
 from display port
To:     Corentin Labbe <clabbe@baylibre.com>
Cc:     Dave Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Hans Ulli Kroll <ulli.kroll@googlemail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 19, 2021 at 10:35 PM Corentin Labbe <clabbe@baylibre.com> wrote:

> The address and reg adds no value to the port node, remove them.
>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>

Patch applied to the Gemini tree.

Yours,
Linus Walleij
