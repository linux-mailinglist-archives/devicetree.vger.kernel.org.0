Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2B8EC12A952
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2019 00:22:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726866AbfLYXWL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Dec 2019 18:22:11 -0500
Received: from mail-lf1-f65.google.com ([209.85.167.65]:44686 "EHLO
        mail-lf1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726489AbfLYXWL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Dec 2019 18:22:11 -0500
Received: by mail-lf1-f65.google.com with SMTP id v201so17380778lfa.11
        for <devicetree@vger.kernel.org>; Wed, 25 Dec 2019 15:22:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+Gy6dk1JceW57KpSGmAR3pzf0NX9lVcNuOQ3hyF1SQQ=;
        b=QftLw47QATwWJrAK1J1ZkIPFgUbtVl/bijGpTQCZQnEbmlyWXU8+Dc1pLgxt2uazqb
         lepCE2/H22kDC4gA4qcIq/QOQoHLvRUlAB3fYrwilQRWmIs66vJLWx54zSUIdxu19VDz
         j0fBs5fg9aUMldgRX4sJosAL9Qiuc50NSjD50AK946tUKOhHZgRUDVOqlYzKAVBKPaR8
         Ku7SJiSO16CJzFdbcsHM4+/oDtfM2KM2QiKT4NXNCgnEE2sOFu63RSajiRinXumBwsA4
         pOlSidyJrjd9yR32tnhj9/F4+0zQ1oxftC0BgCZWFxhe8tsGhnF8NZERs7t3qNXfto2Z
         n6eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+Gy6dk1JceW57KpSGmAR3pzf0NX9lVcNuOQ3hyF1SQQ=;
        b=PGdNDoIFouBp0Ccb6VvCLcudMFhfbtjFMG/gNQhYuMCUzB8VnKEXT6hDlPp4HvG1Uu
         QGgm5ODUhysg05baOIaoDca+XL6DI2cYrUs8pK3Hf2zcDpn6cuOTii/0IUAKjiL5vsWM
         2qgxR0GGFv1ErO9HJmqyAsgP3FeVJVcSa2y6ZUxiwZIEn0Yw2+eEu0bFTAsreKCeiLzw
         ufSb9rP+dArP2bJ1tPbh5bqXaQH0ovwda6KSkv9WDlmS6wMGa4BFQsHPCYrTgySFdCZk
         QONZWRMT6bu0odfk0PwIj5yDhSDAjvQi1v9Yt7WwWuki27NdvMD5IzewV7FpCP0GG7Jn
         xSTw==
X-Gm-Message-State: APjAAAVghbhACHkwR//xYawNReTqsyfTL54ZwbFg+8cm3sRcTSFQjrBm
        AkttXOYLojEaieXYxJy0X2ssJ2MXzTJGi79Ujyt0f9Kw
X-Google-Smtp-Source: APXvYqxP+4vajSwjPFxjWCJawxrvcwrC5tMG1NUMTBSdIZQPpZe+BN3HpSqOaj2VfoRuz2wvDvieM3+jXWf32Siik2k=
X-Received: by 2002:a19:2389:: with SMTP id j131mr23035440lfj.86.1577316129048;
 Wed, 25 Dec 2019 15:22:09 -0800 (PST)
MIME-Version: 1.0
References: <20191219202052.19039-1-stephan@gerhold.net>
In-Reply-To: <20191219202052.19039-1-stephan@gerhold.net>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 26 Dec 2019 00:21:57 +0100
Message-ID: <CACRpkdaaK27UNxYkGM=LkeMXN+WzsmxvLgEpWdNd5GroA=4jdg@mail.gmail.com>
Subject: Re: [PATCH 0/9] Add device tree for Samsung Galaxy S III mini (GT-I8190)
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 19, 2019 at 9:21 PM Stephan Gerhold <stephan@gerhold.net> wrote:

> This patch series adds initial support for booting mainline on
> the Samsung Galaxy S III mini (GT-I8190), codename: "samsung-golden".
> samsung-golden uses the Ux500 SoC, which has great support in mainline.

I queued all the DTS changes in the linux-stericsson tree and will
send a pull request for it soon-ish!

Thanks for your hard work Stephan!

Yours,
Linus Walleij
