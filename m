Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6DFA42FA334
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 15:37:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730501AbhAROhH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jan 2021 09:37:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2392966AbhAROhC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jan 2021 09:37:02 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF681C061574
        for <devicetree@vger.kernel.org>; Mon, 18 Jan 2021 06:36:21 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id v67so24395024lfa.0
        for <devicetree@vger.kernel.org>; Mon, 18 Jan 2021 06:36:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=VnozxiVtT8LfRAKBlvkwNTPKq2sjh1M1hTG/VkrbqVo=;
        b=Qe4heyHLyP5mc9Fdz+yXEEn/dBKE8DdByYTz/0Kwf27PCbYnm6cDJ6bMwk3/S7WUsB
         uwtkHl+a+JQs1d1TEHQhXA9f7Fke2uLspEjycST6DIFtQgcR4/7AEPOpsN1F8DkrAU3C
         4pqDfMFbNmwpZ1suoFp0zNb2roYAXPwBwe1mOggQZdluVE6a5goFUZaew6o5u9LiPOvz
         EFO/l0xeAkjgNyCmrdROvEIdBpy227iDtvtv5uxS5HlCTU3fO4r01twzAktPLU+HwwCO
         BUICPJLyvS/tRgbVIOEmSJCqQFlVYUMZBxas+LxiRgLoibuGWprW1z4s4VOO2rMtYcA4
         y/vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=VnozxiVtT8LfRAKBlvkwNTPKq2sjh1M1hTG/VkrbqVo=;
        b=gM7BPIMYJmHVJSuzYGFlJuwwnRHrXCzMlfEN7edDT5YUnVpfT1EpuoDJ7Qz6m1U0Dj
         a+3eHqhJVnAahrZWiRED/FI7w7GSCS/jUsyAbF7fFveQhHSdma1NfeQ0S8trk8/NwCHQ
         f06lxvgmyRR+7IM4H3phJGNH5+pkV40lr9yH+Ir0f/Lm8VMYlsZQmNXqkT9jYyet/ahj
         h+HT3yjvKJhrG3cQL2ORDIcqJMZHCuHbY6ZiirKMk3vJC8bo+c6o3EJMWlSaJbDUMae3
         WQo/5tSGJEpm05lxx0sLrVsNLpeuiR/fMqQIfNqJZmXuXlf4X82SY2jIyfPYDOtYLxJj
         bTVw==
X-Gm-Message-State: AOAM532U38SHyOF36plpgzTYK0XeiEeEmtFVfLyOxkywmugpvY12FIS6
        a+q/XBfh5Jri3hDnL4Y+dK1eWKYYEF8HHRAsay6tcg==
X-Google-Smtp-Source: ABdhPJyY7OJUJYXQs3eY5XSmWodhWuHtWw5KwgWFtzcCkS/5ZqzHMaJgigjXuUNfYcnXVVp3q4tmd1c9nu1+kQpgVmI=
X-Received: by 2002:a19:8bc6:: with SMTP id n189mr11007722lfd.291.1610980580204;
 Mon, 18 Jan 2021 06:36:20 -0800 (PST)
MIME-Version: 1.0
References: <20210113194952.104734-1-u.kleine-koenig@pengutronix.de> <20210113194952.104734-2-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20210113194952.104734-2-u.kleine-koenig@pengutronix.de>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 18 Jan 2021 15:36:08 +0100
Message-ID: <CACRpkdbVKzE_pe0mPb4H2c0RVJGxEtiFEfMpTCoEO+7qdVBHFQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: gpio: pca953x: increase allowed length
 for gpio-line-names
To:     =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Sascha Hauer <kernel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 13, 2021 at 8:50 PM Uwe Kleine-K=C3=B6nig
<u.kleine-koenig@pengutronix.de> wrote:

> Some supported chips (e.g. pca9505) support 40 chips. To be able to give

40 lines I guess? (No big deal. Everyone understand what you mean.)

> each line a name the length of the gpio-line-names property must be
> allowed to contain up to 40 entries.
>
> Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
