Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 19C0F38823E
	for <lists+devicetree@lfdr.de>; Tue, 18 May 2021 23:38:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352521AbhERVkJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 May 2021 17:40:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352522AbhERVkJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 May 2021 17:40:09 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E22BDC061760
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 14:38:50 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id w15so13165506ljo.10
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 14:38:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2W1+DjjDR1PzHAHB0iKIOBjqYLk0N/OCWglAnEURxiU=;
        b=XqonLZtzFwD9xdcn38HwBYY4vD6yrVbdymfeBBbcMFYaXsW/826cqUlemFTFHt0fMA
         Ci8cJvxNl9KEmUe6ckfjpfYtuRLVKVfRxw0O7608KrlKv13OIV8QqtCYntAYRQBowJQQ
         pjb5RSJSX6zxH49Hif78cQ4DtPv3UejY3vn7XDhiCBmZp/c9c1BFnb8fYYno0bNIe4Zw
         swFh8N4Z124VSQirOR0fq8CqhchL6vSSZRhsvhXG66JP3qR44/ZrqdJTTeXaKlP3iFrE
         t3uib9NKcaND1NOifZF6DuUcwbrUJrAxs0J58UbUBvx157a5aeh8jb7to2Yk/fETbrgs
         UZ3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2W1+DjjDR1PzHAHB0iKIOBjqYLk0N/OCWglAnEURxiU=;
        b=U7M2YFGbOSm2RjZzIJ81UrhmzgNH1J2qS+0BYw9euQ6U8rr3wQeGdqBrR72tIpKfqQ
         uo2P2AA9h4FMbbKIyLsO4BzchWr0fYhr3hC0cO22GKpeyOySVjxLbzcF5JhEyDKTglQe
         ZPe4AjP5eys2HEO+slas8m2va8trNLQrtjRZ5SuLDAjxkgHiR6QhaAfKN7nP65aT+31D
         UaCY4h3/PlP80/Yj5PCsl1sFnVGqWoiMehDyu8SCVpbHaeuWaRvGrp60yX/Y5V11Ly4/
         ihQp+TirCHAJO2BsyExjoVJr5RkxAcOc5LEBghRKnSssApnom6T0yBS0Rf20voZU5pF2
         gciw==
X-Gm-Message-State: AOAM533qPo/MEhOwz5FI2xfJJ3nfKGE/kY/O8cuV/8kLNF6htkg+VL/a
        SbtRoAWhCm3LLZB1iljNwKHufuEbJ7d4w66sud6ufyix7GQ=
X-Google-Smtp-Source: ABdhPJwRq7lDUNPROHEDF3nFQT2fbxp88IB7Z6nRtmRVI5xugU4a27mWVnbK4uJcIJfR10aiX4AiRMKIg9kg99+34Fc=
X-Received: by 2002:a2e:22c3:: with SMTP id i186mr5624837lji.273.1621373929345;
 Tue, 18 May 2021 14:38:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210518151655.125153-1-clabbe@baylibre.com> <20210518151655.125153-2-clabbe@baylibre.com>
In-Reply-To: <20210518151655.125153-2-clabbe@baylibre.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 18 May 2021 23:38:38 +0200
Message-ID: <CACRpkdZ5ced+S6fQBAMeMuYhC3RN1q88DLyEr=gaPO6h=i26vA@mail.gmail.com>
Subject: Re: [PATCH 1/5] db-dinding: crypto: Add DT bindings documentation for sl3516-ce
To:     Corentin Labbe <clabbe@baylibre.com>
Cc:     "David S. Miller" <davem@davemloft.net>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Russell King <linux@armlinux.org.uk>,
        Rob Herring <robh+dt@kernel.org>,
        Hans Ulli Kroll <ulli.kroll@googlemail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 18, 2021 at 5:17 PM Corentin Labbe <clabbe@baylibre.com> wrote:

> This patch adds documentation for Device-Tree bindings for the
> SL3516-ce cryptographic offloader driver.
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>

Apart from misspelled subject "db-binding" I don't see any problems
so
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
