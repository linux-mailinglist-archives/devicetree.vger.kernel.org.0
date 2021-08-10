Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6AA253E5A14
	for <lists+devicetree@lfdr.de>; Tue, 10 Aug 2021 14:38:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238816AbhHJMjG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 08:39:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237595AbhHJMjG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Aug 2021 08:39:06 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0C75C06179A
        for <devicetree@vger.kernel.org>; Tue, 10 Aug 2021 05:38:43 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id x8so41230891lfe.3
        for <devicetree@vger.kernel.org>; Tue, 10 Aug 2021 05:38:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yqPESqjgmWgALZq9dnXABMl8Vg5hguPUvo5W3Xrxf3k=;
        b=JVbUmhAH5zgYRhQNH4gd8yXFNNsCDkA64qbCAMYGZ223wkQ66XkcYiSesU4Obq4nIP
         xRBxrBrR8dWNDkg0njCTspEINYS1iNM5Qb+lj0e6Z5czdOFOIxuPIOYSuqKOXMF2sRnw
         7qPGKb+SBNOKbS7wpoHzOLzUW+CFPlpEL8P9cDPOdH38wpHuJecC1Qk7iIF2/7jkSg09
         4omrE9BIDqGu1dvL8fOijxPvA+rsqmUJV5InTLeRAhXM2t5Sc5pLnDedWFmlyNSu664w
         9GFzTmD5eQp8pkEgZry0kD7ALm9drjOFV2ga/m0JyM5V3CEoG5V8QQBt2V+p7XHAvv/Y
         Ys/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yqPESqjgmWgALZq9dnXABMl8Vg5hguPUvo5W3Xrxf3k=;
        b=A2o7MfsZB7Al3QWa/vZfN/8znz/l2h98zPrs6cfkxwX5jln1qcMmwI2Tb4KX9FGecl
         gIli76GJrhigU3biYN6mgmhv8ZcpTO1DGb0RWa3N7x2c71AQgvpyHh32HYheCtz7tF2T
         +rEdOnK5aQu8YtPsoNu7UPAOwd1g2xV98bZx9mFv1CzRbyXyDwl07XNvfKaYID7S+Qx+
         PLFbWBbdauRG+QMPKdMZwmsJetC3D1CWPpiog8TkF7C8wQF+adJZH/hRJy1ur1AUdPSY
         wvceom/qjdAcbbuNDi6DR6fbrTp3yb2gPGgBUfYc2rGQnCF4uakMXsV7m74uU2MCpN/M
         AYsA==
X-Gm-Message-State: AOAM533UmmQFMEI+BRRYiTmQQAL8Q3jt58HWBDX1Leot9ZCfckLYFvq1
        fLsRzL896nlflsOg2aQ/t6CnxdCNBzdmu2Anx/peCw==
X-Google-Smtp-Source: ABdhPJxCH32JmAlqn5LAdRI634JOmrxRSuLk6eTMuhYyoMuTesZ8ZwY0luzOzNE+RnBim73zKfg6EnPTOK7Nv5pLy2E=
X-Received: by 2002:ac2:5d4a:: with SMTP id w10mr21903717lfd.529.1628599122109;
 Tue, 10 Aug 2021 05:38:42 -0700 (PDT)
MIME-Version: 1.0
References: <20210629003851.1787673-1-bjorn.andersson@linaro.org>
In-Reply-To: <20210629003851.1787673-1-bjorn.andersson@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 10 Aug 2021 14:38:31 +0200
Message-ID: <CACRpkdb2BZ4Cpc4zm+rTyxjr16Z4ZJGSN78wKmQxZOAdQ0o7ng@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: qcom: spmi-gpio: Add pmc8180 & pmc8180c
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        MSM <linux-arm-msm@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 29, 2021 at 2:40 AM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:

> The SC8180x platform comes with PMC8180 and PMC8180c, add support for
> the GPIO controller in these PMICs.
>
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Patch applied, sorry for missing this. I blame stress.

I had to hand-edit in the DT changes, not even fuzzing worked
so check the result.

Yours,
Linus Walleij
