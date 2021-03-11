Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1380E337926
	for <lists+devicetree@lfdr.de>; Thu, 11 Mar 2021 17:21:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234538AbhCKQVB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Mar 2021 11:21:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234544AbhCKQUm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Mar 2021 11:20:42 -0500
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68249C061574
        for <devicetree@vger.kernel.org>; Thu, 11 Mar 2021 08:20:42 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id f26so2888922ljp.8
        for <devicetree@vger.kernel.org>; Thu, 11 Mar 2021 08:20:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4mfW5335h/WRWI9dVCvKJHe+RapkHx/nphEJf+JLEfY=;
        b=oj/xGKhwPlYIKGs7xGNB09v6HFRF++lyyRmlXCz0eDkY5xcQ3u8RrezpbRkdy11V9C
         +uhCGn6P/rPEbM965aoKuppk2Gvsz3XB7dmtWBEj3Emdg4PGblZQXIghdjISOtxHhdAD
         aY6hAoFGFd5oUpC/2iLC3lzxRzBo3LWLHI52K7qiGdsN4tHYQ8AaUxh9m7mzXK0nXhV7
         0TL4XbcYXCFYcfdH80iGpegLieJLpUbb16RFrglCRznxrD6QDUbtMYsNFXi/jR2aoDek
         tGQmVPJ4JxDfABjrXQPMXsTqvbWSOpjf20XOFkdOJqd+b5SE51BGdaLoFVP2lAZB4aB2
         wBwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4mfW5335h/WRWI9dVCvKJHe+RapkHx/nphEJf+JLEfY=;
        b=mfBpcyHHM+AihRKygZTixkHDGUySTbUVXUuOpNIx2KzqVRWQcV+yVDLtVq518QyUHj
         2FGXVmPPQJV/e80h03H2WW8uV3CUAAFoLxsoz8/aOl7cWFcr/9BZ0dSX7vcooa2x7/p5
         yYQKkx6CPJjTRZzUxZYP7Zt8caOXP+VXrAnk2OOv7DsGBqKtngI7+msf7RUVXGKmIINi
         xjG/jZ8f4hmuWlAi9h3h1ijhEYKK5eJKyNA63T+YCRZ3tDglQXrpO/g2mDbGlcQ9aE8E
         tVP6WbU/63L7vXHaM6wPDdqT0RRQmEd5N3i5HjSGga2x+TXGQKnwDYVGcSYSW7igbqsO
         8hBQ==
X-Gm-Message-State: AOAM533U1q0edhBYtc3VqlR74E1SJ5CrFmE8B2+Oq82UYwdI7aiZ3co3
        mCW72O18oMLbWkRndZTunJ7VOZAuZr1xgXmNoLNl8Q==
X-Google-Smtp-Source: ABdhPJxUPh5qHPBDejHPkQZGXI7Wr8UqPIjSZ7fl43pyrVqj46hUhhEA5svMYWySIqUU/pYnrGqKZGpg5zRKasOSBwk=
X-Received: by 2002:a2e:864a:: with SMTP id i10mr5068722ljj.467.1615479640987;
 Thu, 11 Mar 2021 08:20:40 -0800 (PST)
MIME-Version: 1.0
References: <20210115224420.1635017-1-dianders@chromium.org>
 <CACRpkdYUs2W3b_u8YrmYwq_kcUCf0DhZ-o2o6O2EmU5rdtv=BA@mail.gmail.com>
 <CAD=FV=WDVAj+OcVXaTJRUu8tvdDzySW0KOfiGqZHi5YvP42BTA@mail.gmail.com>
 <CACRpkda1Ast1cqNfVJ_u6zs8610DWSQGykPt4yBw+mFZFrUPSg@mail.gmail.com> <CAD=FV=Vj-6Y0X667o5vH0EL7hXi6sU4ZWs_a41B6h0D1s05_Hw@mail.gmail.com>
In-Reply-To: <CAD=FV=Vj-6Y0X667o5vH0EL7hXi6sU4ZWs_a41B6h0D1s05_Hw@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 11 Mar 2021 17:20:30 +0100
Message-ID: <CACRpkdZpy9yvp+bzHUGiZVyFBDpJHJcYSZQnBQreCfTQLOj1-Q@mail.gmail.com>
Subject: Re: [PATCH v2 0/5] drm/panel-simple: Patches for N116BCA-EA1
To:     Doug Anderson <dianders@chromium.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Clark <robdclark@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 11, 2021 at 2:01 AM Doug Anderson <dianders@chromium.org> wrote:

> If you happen to feel in an applying mood one other patch to
> simple-panel I think is OK to land is at:
>
> https://lore.kernel.org/r/20210222081716.1.I1a45aece5d2ac6a2e73bbec50da2086e43e0862b@changeid

I applied and pushed this as well.

Yours,
Linus Walleij
