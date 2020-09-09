Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 56604262E3D
	for <lists+devicetree@lfdr.de>; Wed,  9 Sep 2020 13:55:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727804AbgIILzY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Sep 2020 07:55:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728954AbgIILmN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Sep 2020 07:42:13 -0400
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com [IPv6:2a00:1450:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14B42C061786
        for <devicetree@vger.kernel.org>; Wed,  9 Sep 2020 04:41:37 -0700 (PDT)
Received: by mail-lf1-x143.google.com with SMTP id d15so1391051lfq.11
        for <devicetree@vger.kernel.org>; Wed, 09 Sep 2020 04:41:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9QFqZ8T4Z8Uwssi88QoBtFjRyO2k2yhi/Ck4LHpw7Qk=;
        b=bndKyFALCwNbpGG6biL5LEJoMyzVE3/sE7fOKzM0bdlDG5LYKrVzIyaoIPdR2j3xo9
         ++yPbukmQM8z67YpiR6rloFUdCvnbCIQIwtrfXT11Y3f8mIL6IxU4Ws1RsASWnWA1VXr
         Jk4QHqNo+AhOG+O7PZKZxH/j0N9bJZKi7cSrxQvpusImfogn4uS06eckyz/qrYsyCO1t
         Isn93zwFT14OXhtBmKB6DgUDDY8TndPFTtlvWtMdxc40O0hECK8K5IDySLim670nVZDx
         QhGxOUNiRKJRcPSHjXp2Ggt2pgO9wX7XRbPen0Din2y0bZ5+oALUJdnSVu7jg6Plf+RZ
         KGQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9QFqZ8T4Z8Uwssi88QoBtFjRyO2k2yhi/Ck4LHpw7Qk=;
        b=pbbKR2TQaE0UHHDj4eHAUReGmOmt33YJVH1Rw3YGsZOFdMTgwnyImzzzBEx9r/z+An
         8XIi611HUsMTQhsAwXfmOr32tU5hI/5vBhHLsed0ZTlBufIL1fm2Lz+amBmFlvprSxJL
         ZkRwbiQzPx9M/68jssLf1GTddfSFZGNw0V4Fft7qWWCTRAqQjjb4+I7gapZTisNIMsD1
         XwPlXsPlW2TzL4/PMacMbeByLt+8+A2y0acTeKIpATToaOJ5zerSqr5Z7T9A6Dl9ID7I
         yCxO1kE6WJXCe2ThquS97wve3mQxBlaCQYjCKNjNnYRSiJOZhuivj0XVuzoRK/D6uz49
         +erA==
X-Gm-Message-State: AOAM533oh7jEV+DPO5dqhzmaQX/fM0NEVEmROwLkCgsgASYDQLeAiFCw
        6po8A18VpYF0/zk16OvFytVt19124qlvYraovv18mA==
X-Google-Smtp-Source: ABdhPJx1689AN6ZBjH9cFKkBhgvwX3Sn72kLkZELmRxndnnmRkhFO6EY5qp4HI+dRiZKRBpPZpNKfjqIAxtiWfATgOw=
X-Received: by 2002:ac2:5541:: with SMTP id l1mr1734063lfk.89.1599651696103;
 Wed, 09 Sep 2020 04:41:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200822163250.63664-1-paul@crapouillou.net> <20200822163250.63664-2-paul@crapouillou.net>
In-Reply-To: <20200822163250.63664-2-paul@crapouillou.net>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 9 Sep 2020 13:41:24 +0200
Message-ID: <CACRpkdZmiar+2RrMb8=2UdyH83_8KQD0VvX2oWcBezmCdVwzzQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/6] dt-bindings: display: Document NewVision NV3052C
 DT node
To:     Paul Cercueil <paul@crapouillou.net>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Noralf Tronnes <noralf@tronnes.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        od@zcrc.me,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Aug 22, 2020 at 6:33 PM Paul Cercueil <paul@crapouillou.net> wrote:

> Add documentation for the Device Tree node for LCD panels based on the
> NewVision NV3052C controller.
>
> v2: - Support backlight property
>     - Add *-supply properties for the 5 different power supplies.
>       Either they must all be present, or 'power-supply' must be
>       present.
>     - Reword description to avoid confusion about 'driver'
>     - Use 4-space indent in example
>
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

> +            reset-gpios = <&gpe 2 GPIO_ACTIVE_LOW>;

This has the right polarity but the code in patch 6
seems to use a device tree that does not?

Yours,
Linus Walleij
