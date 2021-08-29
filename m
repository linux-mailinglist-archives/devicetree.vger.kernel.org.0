Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8FD1F3FADF7
	for <lists+devicetree@lfdr.de>; Sun, 29 Aug 2021 21:10:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233327AbhH2TKx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Aug 2021 15:10:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231863AbhH2TKw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 Aug 2021 15:10:52 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03862C061575
        for <devicetree@vger.kernel.org>; Sun, 29 Aug 2021 12:09:59 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id w4so21922579ljh.13
        for <devicetree@vger.kernel.org>; Sun, 29 Aug 2021 12:09:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kZvGZdT6RSA5Fpa57FNTpKBZHVWz2QTfWSfFBXfNFHU=;
        b=DrCljDdfCo+lBGtGLRmyB4o6rQbv4TeyX4Drm8ehxEz1BJpi+BWVj1E428aI5VjRzT
         qSbqZmAUe9kgyv8l/JRyu4kCf1Uc0B0J7OXpqPXUFuzehoyQI3ZA9PqzaeMaFYO92KZp
         npO/c/TbB/6lA4nSF2O3A0jwhCVxH0kGxZZvXSkdXTVpTBiWHPwe4QU4JTs3v113yhCB
         xPcl1T4UejvU5qHSMoe6n84LYhN1WmQuC4pNoDesszxO63RgVewpD08pv9q47VpAydp7
         TjUt1kxU6P7ALMFcYSUAJ4FSrCJnFTUGdQ+rS8gAKYNwDpQuF8Pq0lRAR0aEqVK/Gs59
         Mfig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kZvGZdT6RSA5Fpa57FNTpKBZHVWz2QTfWSfFBXfNFHU=;
        b=prkP8AyX9+UU/0IC2C2glIru6QOfRS0o3zre0F7R2bPXbbja+ZcvXC/qFBlNf8F1uq
         vBeS9AXQoGpA7yLrXdCm+TcO/atjmJoQaVIN9a0oZBgY1rOEWlm82GUDxqOfItB118G9
         fc8rDZs2DUraQLhWwBVMxK7+FyeeTJ2wlSiuSetg1YIqjRxbm1fp+90l+vjDEESjSxBP
         +qedDYd7sa4qy1Q1hukcP2P5zlChq3DA9/8DSo9673lFtrY/mMTkG/CuwTDmVTDKNmM+
         4pkZlTck6Lckph33xP7QYxFZZvV+9XjWnQfKtfwb9LDT68cgeWNcAF9Oq4Tnh4QTOwkI
         Jf5g==
X-Gm-Message-State: AOAM530RYWkktMQOId9NDFLt04Q3yk1uMD4afSyc0kJA2rVD2EOXwRU2
        pnuzk9xSwi/IG9YUfUV70dtYupX1wnsXlbZR5S8ioe10VWA=
X-Google-Smtp-Source: ABdhPJxCSw20sOvXWZzeD9OCjtvjPdcCMXxl2xVeKRRntI5UnzuFb3gKYb5s+B1HPOovLKmDV45JcGagXUjMkhjkD58=
X-Received: by 2002:a2e:9d88:: with SMTP id c8mr17243245ljj.467.1630264198248;
 Sun, 29 Aug 2021 12:09:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210806090050.3510671-1-linus.walleij@linaro.org>
In-Reply-To: <20210806090050.3510671-1-linus.walleij@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 29 Aug 2021 21:09:47 +0200
Message-ID: <CACRpkdbdgdpg7CNQ+s4SkJBOsWfuOOWmXTar+cx2Eu_Wt5qNfw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: power: Bindings for Samsung batteries
To:     Sebastian Reichel <sre@kernel.org>
Cc:     Linux PM list <linux-pm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 6, 2021 at 11:02 AM Linus Walleij <linus.walleij@linaro.org> wrote:

> This adds device tree bindings for Samsung SDI batteries.
> Everything can be determined from the product number so the entire
> battery is just a specific compatible string.
>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Sebastian: can this be merged? I am working on corresponding code
for Linux to populate Samsung batteries from compatible.

Yours,
Linus Walleij
