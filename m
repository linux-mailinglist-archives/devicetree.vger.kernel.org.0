Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 11D4736F0FE
	for <lists+devicetree@lfdr.de>; Thu, 29 Apr 2021 22:26:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234803AbhD2UX1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Apr 2021 16:23:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229674AbhD2UX0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Apr 2021 16:23:26 -0400
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com [IPv6:2607:f8b0:4864:20::72c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3068C06138B
        for <devicetree@vger.kernel.org>; Thu, 29 Apr 2021 13:22:39 -0700 (PDT)
Received: by mail-qk1-x72c.google.com with SMTP id q127so9388505qkb.1
        for <devicetree@vger.kernel.org>; Thu, 29 Apr 2021 13:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QxFmOQwYpvfFl26HR2J/lIuaiWz/UN+EBx51IROMZs8=;
        b=hzLQuZ/7rMiKX1bt5E5t3c2FdBOL35x7Ym3yz6DDcoUDpg5JKlKcTOPSUuZW9s0Lmw
         txUfnulVFoYaGs6ee0YFbDw+bwIEisM0FVWUzmEVr+QmYMTWY7WjTIdUOTPapVsZBE8Q
         7PopzCGm2G1nxZssLXEs7HdoaLiXxSnv6sbQY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QxFmOQwYpvfFl26HR2J/lIuaiWz/UN+EBx51IROMZs8=;
        b=b0klr7Yby7fgf2SY65XzUfpq9+jgNc4FY/mpMwDTotZLyJoVthCSiz8qQ0cwgo2lqU
         06/kF5jGVIOC/Q8c+/bF9/vsORxukvgoquDxly/uAniWv27Z4qbioR0pCor95C4s0Tr3
         ddfuCYqL/1Q8W/tq8kOWryY3ftpjrg7feMR1tgp3ZCVM/BS4bzVUleuAVLhuxdJw6uTo
         pfaueW37YXrr8ftx3dvaDUZc9+PxIi1AvTNBrLF8LXUIz9Ce5HHKI1+1AWPIDfg23aHM
         wi7W51ORuz8bxu3A5CkOI18v+okPFxWI/eaNzMtxib9Ln70I234RYuZm0pxlYVzlE8vu
         Sabw==
X-Gm-Message-State: AOAM53294IRXs0CSGQ6et8rCJQMOz+D2Qg2w/t/6gWnfs8w3hS7+hlZ6
        8IhWvaRLKaNvtv9y5n4+17iqOeBdHIq7og==
X-Google-Smtp-Source: ABdhPJzN5HquV8VLa1EO/sXeaZDDPvlM1Zu0YFtwM2mZF83XZoM1zoxP4uHfa4T/mtFxvsVh9ckqZg==
X-Received: by 2002:a37:40d5:: with SMTP id n204mr1568798qka.79.1619727758404;
        Thu, 29 Apr 2021 13:22:38 -0700 (PDT)
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com. [209.85.219.177])
        by smtp.gmail.com with ESMTPSA id h8sm690504qtp.47.2021.04.29.13.22.37
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Apr 2021 13:22:38 -0700 (PDT)
Received: by mail-yb1-f177.google.com with SMTP id 15so2962442ybc.0
        for <devicetree@vger.kernel.org>; Thu, 29 Apr 2021 13:22:37 -0700 (PDT)
X-Received: by 2002:a25:6088:: with SMTP id u130mr1999909ybb.257.1619727757565;
 Thu, 29 Apr 2021 13:22:37 -0700 (PDT)
MIME-Version: 1.0
References: <20210405234713.3190693-1-linus.walleij@linaro.org>
In-Reply-To: <20210405234713.3190693-1-linus.walleij@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 29 Apr 2021 13:22:26 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UH4JSppo1ss7DPQSoaEkZE-gjbMddo2v_N00oEi2hjrg@mail.gmail.com>
Message-ID: <CAD=FV=UH4JSppo1ss7DPQSoaEkZE-gjbMddo2v_N00oEi2hjrg@mail.gmail.com>
Subject: Re: [1/2] drm/panel: Add DT bindings for Samsung LMS397KF04
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        LinusW <linus.walleij@linaro.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Apr 29, 2021 at 8:39 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> This adds device tree bindings for the Samsung LMS397KF04
> RGB DPI display panel.
>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  .../display/panel/samsung,lms397kf04.yaml     | 74 +++++++++++++++++++
>  1 file changed, 74 insertions(+)

Probably not needed since you have Rob Herring's review, but:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
