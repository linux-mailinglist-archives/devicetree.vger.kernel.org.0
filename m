Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8B9EFE095
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2019 12:32:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727693AbfD2Kce (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Apr 2019 06:32:34 -0400
Received: from mail-ua1-f67.google.com ([209.85.222.67]:43822 "EHLO
        mail-ua1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727560AbfD2Kce (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Apr 2019 06:32:34 -0400
Received: by mail-ua1-f67.google.com with SMTP id n16so3295129uae.10
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2019 03:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8b2cEiOwIFkqDrQwWdAjt6VF1fB8qiQz/fciHm7Mse8=;
        b=NWrXGb7VRDf7VArwNbZq3mfkZ/mEzdLLQOnDoNGqkHD+qe5I+el9Byc7lTeBzTWxV1
         Zcoq5eybd9Y96Vp2t33F73F8kSNFxenatKNwy+u1zdrLGXMOh0t78xdIek371AXeeK+l
         AvqudcclwmvCCZ8TExoiu4OF+pGfNardPP/IywWZwIM94wA1qdMiOpH5c2TU8AKf6M0G
         eg9gFxSk8ndkMUT87GMxIP67sT+3YPIElkGNr+0XJlRt4A6fv2/H1Wr6uY+wjMI+FFF3
         QIqWXkQeMvJZN3INJiqENsnZrrcLg31u/S7KOuuEwve7wACJVc3A6QDklIyKODxDmvmK
         ODFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8b2cEiOwIFkqDrQwWdAjt6VF1fB8qiQz/fciHm7Mse8=;
        b=YZsHb3KPXizl0DlAgyrGAYR6NgVQQLcH7eSY5DZQ1dtkw43G71w/V9mYB7RW00v41r
         s2pWiPVvuFnnMvB4UP704E2K7r99KvJVuXGgnOadtLZbuoeA+LQsWAPuPgnCHI2PIMDC
         DwTWeqIsWqYfbvZA/2kB9EjoRmhTFo6prxbF9NIKKMFGGr8oRjoN05lB2QvjMhS8oBN4
         1n9ATDkls0+aSItx/i5AzmCjou2YAyjzmHX1g2P5t47/enT/p65DXy+gYTZM/w+FGsx7
         OA/wfv+5dGxFgzMZISZSV8FGMi13tla8WYQ8kBZ9J0AuJxpD2DAcUePc9kyyDd5toboH
         OLig==
X-Gm-Message-State: APjAAAWPM4mfivh+mkg4XpNqhq6qikNTTedI949zBPLpp4yVgir9SGVI
        /1bf/urjo/Ile3Dc+iYXI/+IHSJe48z3fihj3WvBTg==
X-Google-Smtp-Source: APXvYqxb7hueDVUMb3fMwLwbCdvQGzw8jp5PicLihCwM99lR82KoE8Y14rvJ12sRpOS8QvSPQaWEH10powEv6UMe7HY=
X-Received: by 2002:ab0:2399:: with SMTP id b25mr30989522uan.129.1556533953648;
 Mon, 29 Apr 2019 03:32:33 -0700 (PDT)
MIME-Version: 1.0
References: <1556244405-15863-1-git-send-email-orito.takao@socionext.com>
In-Reply-To: <1556244405-15863-1-git-send-email-orito.takao@socionext.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Mon, 29 Apr 2019 12:31:57 +0200
Message-ID: <CAPDyKFrBJeBNOPh9H3Yn-6-um2B-9Gt6_pW8Qh0ZGQB26-tq+Q@mail.gmail.com>
Subject: Re: [PATCH 2/2] mmc: sdhci-milbeaut: add Milbeaut SD controller driver
To:     Takao Orito <orito.takao@socionext.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Masami Hiramatsu <masami.hiramatsu@linaro.org>,
        Jaswinder Singh <jaswinder.singh@linaro.org>,
        sugaya.taichi@socionext.com, kasai.kazuhiro@socionext.com,
        kanematsu.shinji@socionext.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

[...]

> +
> +static void sdhci_milbeaut_power_off(struct sdhci_host *host)
> +{
> +       struct f_sdhost_priv *priv = sdhci_priv(host);
> +
> +       gpiod_set_value(priv->power_gpio, 0);
> +       udelay(1000);
> +}
> +
> +static void sdhci_milbeaut_power_on(struct sdhci_host *host)
> +{
> +       struct f_sdhost_priv *priv = sdhci_priv(host);
> +
> +       gpiod_set_value(priv->power_gpio, 1);
> +}
> +

As stated for the DT doc patch, please use a fixed GPIO regulator
instead. In this way you will also get a the OCR mask based upon the
GPIO regulator, which is parsed out by the mmc core when sdhci calls
mmc_regulator_get_supply().

Otherwise, this looks good to me.

[...]

Kind regards
Uffe
