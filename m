Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 82ACE36EC77
	for <lists+devicetree@lfdr.de>; Thu, 29 Apr 2021 16:34:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239817AbhD2Ofn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Apr 2021 10:35:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234862AbhD2Ofn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Apr 2021 10:35:43 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12388C06138B
        for <devicetree@vger.kernel.org>; Thu, 29 Apr 2021 07:34:55 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id u23so4295311ljk.5
        for <devicetree@vger.kernel.org>; Thu, 29 Apr 2021 07:34:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1JY1YQAciLBg2SXCK38LTLT1Il7RxDxbwi4rPhLOMIU=;
        b=vGokkhrLWkftxs9CXzLZUdzyBzjMN+7lJmlAV3A0Q9Qr0f45z49OjbjQPSPDvVGnH9
         lUhmmV8MFmqaeVRkZAxUdysNw0UpFBTkC4DLJgKZviIwIVJiblLonYnrSb3kadnZaLge
         71+9E0bfNRr2wnfF0t1E8JaBIQkGrF8GikHiXrUAitTZ+0uCtZvLo+/0SiNjOGI2hymg
         8bxyGnRt68l0LfOFwrRkNBH+cX5cPrFtP+8DCgLL/XtdrPuIzfvjV3fit9EBVNS13xFE
         NjxodrUoQgQi5SiEGqou85DyDQIo4nCKsaF/c933fj0+C7RjAxj+VX94ut/kLWff+SAN
         b16Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1JY1YQAciLBg2SXCK38LTLT1Il7RxDxbwi4rPhLOMIU=;
        b=NncF2LlttJ7RCqk9WDGhAuiauLJ6GVG2wwat1IrJ14K/6EU4we6Y4lIN/9eZAcHwLr
         aduwA1vGrM5wGR1rjSzT3kwdA4nwZ5ye7eEYrDFSNOLihtM/sdtFZh1VKCvPwEIfmF1h
         CfNVPuBNSxsa1hQfgxlwS4raMhXaXd8N1Oo6u8v7m5eN4C4x/ZwA1mt3vh5A8+BwmlRz
         L92bkWYDZsb4wO5yd1LyiGk+z26AmIP6rC/7apQiyoZGf+oqTEXiFHCgXINgtmEtkk/i
         Ps3jLjpQEWaG1FuKycsOpPXTJk73HXRBLXSetk1jqTtqmsXoPET1VPuC8cZ3eLbN4N+w
         u3jw==
X-Gm-Message-State: AOAM533NvpwUzr8FHYXAANhtQwtcgL+e1rK7zajkuwKa+fRVjfA9VipG
        1rW6IC4Kh517KOBzzyfWo/Fg7rfXLP3vs1GjLdp09TevHKc=
X-Google-Smtp-Source: ABdhPJzpAtvS8SvpH5ijGaUyYzuFfu/GqADQI5kuGerH21whrN7qZWKTmJRI1VlfQqqj4SZDgZJ68ZS5/4yUqL/zZjg=
X-Received: by 2002:a05:651c:503:: with SMTP id o3mr24655828ljp.368.1619706893639;
 Thu, 29 Apr 2021 07:34:53 -0700 (PDT)
MIME-Version: 1.0
References: <20210405234713.3190693-1-linus.walleij@linaro.org>
In-Reply-To: <20210405234713.3190693-1-linus.walleij@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 29 Apr 2021 16:34:42 +0200
Message-ID: <CACRpkdZVDN2tGLiVT2sZKAT7PKYi-Opk2Gzop3DAj5Lm0OVdzw@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm/panel: Add DT bindings for Samsung LMS397KF04
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        Doug Anderson <dianders@chromium.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Apr 6, 2021 at 1:47 AM Linus Walleij <linus.walleij@linaro.org> wrote:

> This adds device tree bindings for the Samsung LMS397KF04
> RGB DPI display panel.
>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Someone on DRM misc up to review and/or apply these two
patches?

Doug? I bet you have some patch(es) you can toss back at me to
review in return.

Yours,
Linus Walleij
