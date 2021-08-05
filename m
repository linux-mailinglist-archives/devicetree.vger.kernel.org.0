Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1DEE83E1DB3
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 23:06:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241703AbhHEVG7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Aug 2021 17:06:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241555AbhHEVG7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Aug 2021 17:06:59 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3ED2AC0613D5
        for <devicetree@vger.kernel.org>; Thu,  5 Aug 2021 14:06:44 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id n17so11020455lft.13
        for <devicetree@vger.kernel.org>; Thu, 05 Aug 2021 14:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gjsfNCUHDF2l128sssKavdGD8G0WYEjRlXid67kgpQE=;
        b=E5dkRMn1u1x4oHRzSK8ctsaIs1Y8FaUyF1l2yBxY0aejO82HvzfgtGuQGpSbmTzGCk
         kWhXg4Wqsd0OkPJJL/SKWSQxgwLgahoZkCGnZanZm73yyCBeWKcsAncBkun/BGz+JU5q
         RHeFdEVRPp/5g/sJMpgU6kaE5EjRbJEnbSh97ikKLyY+aTn4k+8UHgSTEpHh2ko/fYFW
         fJZ0KRg31OUELKj0RUlG6RZr+fE4+1FTJekYo+OZJxahEdutd6OpbpGXzn6moKRC23/L
         m0KABb2OdH4xnmHuBn5lUvw/1BE6jlGen/jmSM0gs1THeBC+Qo0ezE/Ckek1qn3qKdxU
         dm7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gjsfNCUHDF2l128sssKavdGD8G0WYEjRlXid67kgpQE=;
        b=LYhVQ1J6AGjCWJC6TgANlt8DwoaF6ifUouQGsqKTa8ivpcPFN5EHlRggWzyf1RAYz3
         N8B4t8OHJcDqXBoAkGjfxUTp7ibKFU9RA85q9tD+9uYwFh8N35REmFVb1lyrPxs5y2Od
         5DfTQdnW3et4RHpNsvXMzegZZPHfHhz1JpfZl48LtBiyswAKhdV3v48hhQtRKBb5a+lC
         q6RTrUXS63oSXqmuHTxHt5cnYs1gK47hf+J4bd+uIkHnVGRNOUUfQLAg3LBHNu/SAijV
         yBV62i5Lbe7h3s80GfcRw2pOfMuN644fAKLRozyle4q/axdN16tsig+Oos1ZIIBRvdAW
         lFWQ==
X-Gm-Message-State: AOAM5304qAUydrPslICXuxjeX1SKDHoF740wTutnK9KoWMf7TS4olZmg
        LJsBJ1x9FmnycIWMRcCD0jaQWAPiG8SFx8QWMQvpOA==
X-Google-Smtp-Source: ABdhPJw6fssTolA66bgLiBJnBkcfc29bVY2AgY8ZqmtT5FPqQrFnL8uE0+7E0eO0eFAT06+vRoVWmNhOddMcF1y09zA=
X-Received: by 2002:a19:7b14:: with SMTP id w20mr5150929lfc.29.1628197602250;
 Thu, 05 Aug 2021 14:06:42 -0700 (PDT)
MIME-Version: 1.0
References: <YQmG6EbBherV+8px@ravnborg.org> <20210805133343.27032-1-markuss.broks@gmail.com>
 <20210805133343.27032-3-markuss.broks@gmail.com>
In-Reply-To: <20210805133343.27032-3-markuss.broks@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 5 Aug 2021 23:06:30 +0200
Message-ID: <CACRpkdZXRtP4Z2UEQz-gwuPFkVhXTth0nFDioO9a+JKOtHXU4w@mail.gmail.com>
Subject: Re: [PATCH 2/2] drm/panel: s6d27a1: Add driver for Samsung S6D27A1
 display panel
To:     Markuss Broks <markuss.broks@gmail.com>
Cc:     linux-kernel <linux-kernel@vger.kernel.org>,
        phone-devel@vger.kernel.org,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Markuss,

sorry for reacting so late!

On Thu, Aug 5, 2021 at 3:36 PM Markuss Broks <markuss.broks@gmail.com> wrote:

> +#define s6d27a1_command(ctx, cmd, seq...) \
> +({ \
> +       struct mipi_dbi *dbi = &ctx->dbi; \
> +       int ret; \
> +       ret = mipi_dbi_command(dbi, cmd, seq);  \
> +       if (ret) { \
> +               dev_err(ctx->dev, "failure in writing command %02x\n", cmd); \
> +       } \
> +})

You don't need this wrapper anymore, just call mipi_dbi_command() directly
everywhere you use s6d27a1_command().

Because I merged this patch:
https://cgit.freedesktop.org/drm/drm-misc/commit/include/drm/drm_mipi_dbi.h?id=3f5aa5ac0b0f9704f0c60f5fbbbcdc8c043d6eb6

Yours,
Linus Walleij
