Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 187432FFFB5
	for <lists+devicetree@lfdr.de>; Fri, 22 Jan 2021 11:05:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727755AbhAVKCy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Jan 2021 05:02:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727761AbhAVKBD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Jan 2021 05:01:03 -0500
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CB31C06174A
        for <devicetree@vger.kernel.org>; Fri, 22 Jan 2021 01:50:30 -0800 (PST)
Received: by mail-lj1-x234.google.com with SMTP id u11so5750775ljo.13
        for <devicetree@vger.kernel.org>; Fri, 22 Jan 2021 01:50:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=pKapt/M6y/PyIWz6wXtu/tZ4eGaVQitNaXfiOXO+clw=;
        b=Ai0IGzb/825iKbCNaOMRzOq/NIIdsqb1K/mSaEkhPBqb1st67Cwqu2faoXi+pSoqJa
         V2tZFQR6tYIfGfYruJlgPDBN0Z+sgVFc5yef1OIl/FFJq3Vk/kcjX7CxSS1T8kbBLJzr
         qs6iP9UOHVE6ZPNXVAyBWzzeTyJ6VAtidhIQHD7x3IdolPgEfcrghaNVbG4c0/3Ggpq8
         chr72u2wzD1Cwa5ND9zXe/wBBqwzB/vmzVmlYWqDTQ+uqqvWncpAzgIdHSLSwPIRwuSe
         8FGmf9sxtu6UYFEnluZ/lBJ0YgkS0509F02OlCSSf3foc7RzmkOzpejlQ/V37r+N60b9
         fJ+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=pKapt/M6y/PyIWz6wXtu/tZ4eGaVQitNaXfiOXO+clw=;
        b=LiqqM8tJhWbPe8B1BKzqIV4cxYTdUI+YSDzH33VDeK0U+t+KX6dDwkdRtuw6aQ4s+4
         JZ3M43Qh8dKppHFKud665nIXj9HY3oZY/d1mzS/xml+rR+Eac9HIwL6Vh/vM2x66hIjW
         wvKFvWzwHbbbY4SKZ+k3HUSPakYPGDVG5KnvhjDiynKSdRKV0iwPZRcsbtSg7ZjxMJ9A
         KogLsVtCMdaOycP+58UHWeSG8q7ycGcNP6WNBrf4qgyBuBsUEAbfUU1QSfMRte+7rdRg
         FUtvTs8hWHLO1UFaoD6gctrv+A7j58ALKGo9P4v1vU/PnGOUd+K6CD+trG0ydZ4abTjX
         B7Wg==
X-Gm-Message-State: AOAM533ImuWJVor+vgw6xH28iYKU27iASJ9opMyfDgmUktakOBWYHlhA
        NLqwpegDNY3s0i38bG4e5A8nKW3abwgvc9Gipty6PQ==
X-Google-Smtp-Source: ABdhPJwxAUKeWHiEudGoJqNviXtDPynvQ8t1kMzlIC2gud45legMMte2/A/VmDnms7BnWvZCVVE4QvXAtgPdQPsWOAA=
X-Received: by 2002:a2e:b047:: with SMTP id d7mr298641ljl.467.1611309028785;
 Fri, 22 Jan 2021 01:50:28 -0800 (PST)
MIME-Version: 1.0
References: <20210113194952.104734-1-u.kleine-koenig@pengutronix.de>
 <20210113194952.104734-2-u.kleine-koenig@pengutronix.de> <CACRpkdbVKzE_pe0mPb4H2c0RVJGxEtiFEfMpTCoEO+7qdVBHFQ@mail.gmail.com>
 <20210118145721.6puoqfd6jx3x76jh@pengutronix.de>
In-Reply-To: <20210118145721.6puoqfd6jx3x76jh@pengutronix.de>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 22 Jan 2021 10:50:17 +0100
Message-ID: <CACRpkdY03=pawFPJqxwfdxL=dUUDOVvcpt+s+qTHfa9Wg6-eiA@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: gpio: pca953x: increase allowed length
 for gpio-line-names
To:     =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <kernel@pengutronix.de>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 18, 2021 at 3:57 PM Uwe Kleine-K=C3=B6nig
<u.kleine-koenig@pengutronix.de> wrote:

> Who will pick up this series (preferable v2 instead of this (implicit)
> v1)? Will they notice this Reviewed-by?

Bartosz is collecting GPIO patches to Torvalds for this merge
window.

Yours,
Linus Walleij
