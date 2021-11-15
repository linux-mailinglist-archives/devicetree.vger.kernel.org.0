Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 44428451846
	for <lists+devicetree@lfdr.de>; Mon, 15 Nov 2021 23:54:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242226AbhKOW5N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Nov 2021 17:57:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348862AbhKOWyf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Nov 2021 17:54:35 -0500
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D7B0C03AA3F
        for <devicetree@vger.kernel.org>; Mon, 15 Nov 2021 14:06:07 -0800 (PST)
Received: by mail-ed1-x52b.google.com with SMTP id x15so78366411edv.1
        for <devicetree@vger.kernel.org>; Mon, 15 Nov 2021 14:06:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pensando.io; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DydRu7SpBSGXsY1o+1JsxVZaNRTPESv1WbRFhErfJMM=;
        b=NsZfxABNmHEDn3cAEnxfzvehuxWUKowwXgKM2/RzHN1gLJBC2Xbn4Kmf7YkcAbdSQY
         Wvjred1hNAkJMPqPI74nlx9auc5zLsTgpHtzZA9DgkYndFOWzEF/M6Xo9y7ScSKQAiRT
         4x6aB4KBn0QPgpWdz6ZmI+xN6jJ9m0Sg72N+L1tk6h2fqM/BY5nX10HGkE9zYHLaZvIb
         QjwndfZqoBl8hupCCgNgE8JcrZ9WWx4h1sIEjiCXAu9KivroAGA8boMT9Q+mTdiBYQmC
         wX+OZ8qBocm1oEPw2/9/Vzz719VkQEz5/GWml2T3umjZ7AgD1MtLVw+rZeRTgQSIQXSP
         Nfcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DydRu7SpBSGXsY1o+1JsxVZaNRTPESv1WbRFhErfJMM=;
        b=DBlgowa4Oj0qcQdQcxfnOgCQraFrr0OXnZm6SkO6udjKK+WA6KJXoZUicb+KzymsPp
         1Y4eKg2oFUPnSRu8VaJBxdqyWucetEvpvzb5WLRgaXAUvRtRddn/mJt+829JvXdjTkCE
         Ff5gXnMFwjUz+FsxcCjZ72HppbiKxIOoS3hPUcgF6q7Ukl8MBe0j5Wn7YsJSTYyeD6Tg
         qC0N6JsCduSuZZ+ZPzD0fgBIv3nbIX0qVFC3kD6SpPz+UPH3arDHW64DmuskUXlwWuA+
         pu9jBhJ+PtLLlSxM3JnSfIKoIj0XlAEqLOcljgeXmwr2b2DRLgNbwRuStaG04mA6/6xV
         xjrg==
X-Gm-Message-State: AOAM531cqaRfSU4YP9b66TQo5l0Eu/TsTkqObLg5XoaYP/7vAIK+2ytO
        P7VpoSXBV1MnbmJii56TujyQEUTxrd3Nh976t1NHMA==
X-Google-Smtp-Source: ABdhPJwSi1BR2b9pVA2sLcVwhXu9OEXIKNaFyg+koHsL/tNEQcgfiypLJF0L+hXMaCL8HnPm+3CzHQPwuJd+6mtEA64=
X-Received: by 2002:a17:907:1dd5:: with SMTP id og21mr3099771ejc.233.1637013965985;
 Mon, 15 Nov 2021 14:06:05 -0800 (PST)
MIME-Version: 1.0
References: <20211025015156.33133-1-brad@pensando.io> <20211025015156.33133-5-brad@pensando.io>
 <20211028072616.p3mazud3vi5jgynk@mobilestation>
In-Reply-To: <20211028072616.p3mazud3vi5jgynk@mobilestation>
From:   Brad Larson <brad@pensando.io>
Date:   Mon, 15 Nov 2021 14:05:55 -0800
Message-ID: <CAK9rFnwjDrGO5u83vc19QenFoCmYs07Nzo1N76SsKC8BLXHbvw@mail.gmail.com>
Subject: Re: [PATCH v3 04/11] dt-bindings: spi: Add compatible for Pensando
 Elba SoC
To:     Serge Semin <fancer.lancer@gmail.com>
Cc:     Serge Semin <Sergey.Semin@baikalelectronics.ru>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Mark Brown <broonie@kernel.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Olof Johansson <olof@lixom.net>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        linux-spi <linux-spi@vger.kernel.org>,
        linux-mmc <linux-mmc@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sergey,

On Thu, Oct 28, 2021 at 12:26 AM Serge Semin <fancer.lancer@gmail.com> wrote:
>
> Hello Brad
>
> The patch name "dt-bindings: spi: Add compatible for Pensando Elba
> SoC" doesn't mention to what bindings it is referring to. For the sake
> of having a more representative git log I'd suggest at least to add
> "cdns" vendor name in the title, like: "dt-bindings: spi: cdns: Add ..."
> Otherwise it's impossible to understand to what bindings you're adding
> a new compatibility especially seeing you are doing the similar thing
> for the DW SPI in the next patch.

I'll add "cdns" to the git log for the re-spin.

Thanks
Brad
