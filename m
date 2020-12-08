Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 453002D25BE
	for <lists+devicetree@lfdr.de>; Tue,  8 Dec 2020 09:22:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726830AbgLHIWa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Dec 2020 03:22:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725208AbgLHIWa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Dec 2020 03:22:30 -0500
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com [IPv6:2a00:1450:4864:20::242])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBBBDC061749
        for <devicetree@vger.kernel.org>; Tue,  8 Dec 2020 00:21:43 -0800 (PST)
Received: by mail-lj1-x242.google.com with SMTP id y22so3296205ljn.9
        for <devicetree@vger.kernel.org>; Tue, 08 Dec 2020 00:21:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/L9ij+xi4aU+RA5FHQP+6+0fS+qsQ1KICkMdHJmFYFc=;
        b=bYPvkZyzHphpd2LIG29zK/pI8TNd8M64LXuz04KBFAzCVM2tn6HgtLC4y0krAVsJGv
         HmZ6aUEcKYzXhARN1OGrWuBrOKpnEmmtqa7ywUSjV2r3A/jB2vpbQwNsgZOlxEJUcsl8
         QPPgKvurbDc295hFdI/W3mWEddd+hjtVyjNxtB0fT1BAi4cCrNQVH6032xcs8asD7CgZ
         EjanTiW0Fb3w7kLQrHr//TwXgV/cX7v7abUMsryIbh+Zh3qx0UasUnD0LEuYbhxqaqX1
         Y8uQ6gjPAkp/qoxxPhEYKuWcbegGalJQIMuDoMvXI7pe3d8Y1O/e8XVdhZAy05EJc7mH
         8j8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/L9ij+xi4aU+RA5FHQP+6+0fS+qsQ1KICkMdHJmFYFc=;
        b=W8xRUazR4AJBBEUUzZ5BPXUpZ1orao1R1v3xMaU4xUA4V89KK25nWFK8U35MksJtBE
         huiWSvSTdrTD2oTqfKjegjfE8Cw5LFPPlUZeCMTIK9StGICZ6g1WyLolrdQstgrAXRY4
         E7kJxWPMgKa4c02Fpqa7s1Lpz/9Ph8ZB6DEtTgSX3r74ekfYWebf3VMVEgUtjYk1QUOK
         5FQfFN4rDrm97ZRS07rcneWfQfzzTgEosEr1Q1Yf/7RtAIsBMm3A7oX2K6PRLIxMkuXC
         VPBF5NiOHoTINQqjVdGpJ6ov6b0BjAf5HYfZH2t3OTR59vHqTOkxnOblWCj+K9+Ge0+r
         GPuA==
X-Gm-Message-State: AOAM532dLzpbPjSqRLNsHB82EN9zLjsNDr2JP+l16YZ021Pgy0LdY7Rp
        j4jUcOJ5PC/2hpbjzD4p+zoMXGYRBysGawRjLrgIFkxjOaxMWg==
X-Google-Smtp-Source: ABdhPJz3QSFZPxGv2N/pnXp+VezSxPYZ2V9M6+O2npQftKaRSLMZh4qMKQdxMJx/Ncz13H34GLneBICqZoSBqKisFV4=
X-Received: by 2002:a2e:b1c9:: with SMTP id e9mr10482058lja.283.1607415702493;
 Tue, 08 Dec 2020 00:21:42 -0800 (PST)
MIME-Version: 1.0
References: <20201208075523.7060-1-sergio.paracuellos@gmail.com> <20201208075523.7060-3-sergio.paracuellos@gmail.com>
In-Reply-To: <20201208075523.7060-3-sergio.paracuellos@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 8 Dec 2020 09:21:31 +0100
Message-ID: <CACRpkdY_Me8kO-Fa-vUspJNv+2vy0fswTM-RaUoaZJ5rCfuynA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] pinctrl: ralink: add a pinctrl driver for the
 rt2880 family
To:     Sergio Paracuellos <sergio.paracuellos@gmail.com>,
        Greg KH <gregkh@linuxfoundation.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Jason Yan <yanaijie@huawei.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 8, 2020 at 8:55 AM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:

> These Socs have 1-3 banks of 8-32 gpios. Rather then setting the muxing of each
> pin individually, these socs have mux groups that when set will effect 1-N pins.
> Pin groups have a 2, 4 or 8 different muxes.
>
> Acked-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>

Greg I'm happy if you just apply this right now for v5.11, as Sergio
is obviously on top of things and the DT bindings will get there
eventually so I don't see any need to hold back the de-staging just
waiting for patch 1 (which I will eventually apply directly anyway).

Yours,
Linus Walleij
