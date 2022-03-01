Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 441C34C9981
	for <lists+devicetree@lfdr.de>; Wed,  2 Mar 2022 00:51:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233574AbiCAXvx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Mar 2022 18:51:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233463AbiCAXvw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Mar 2022 18:51:52 -0500
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD39661A15
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 15:51:10 -0800 (PST)
Received: by mail-yb1-xb2c.google.com with SMTP id bt13so30551830ybb.2
        for <devicetree@vger.kernel.org>; Tue, 01 Mar 2022 15:51:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=a5mLia7OwCycmjGNk1Ex0zimV17FmiQ9bhoUU0ZGzaw=;
        b=VmfGGtSZw0NI3k3JLgYG+PXrZsac1uQfGEo0MjJ4S7rBGpNj3x/voZIe3ECioFrOF/
         /wCqH6AAQP64afyU0fVtJzeO6Nxbm2IkMz0GbxPKXijenPAFNOgKHDneR7ZBYzWokzb3
         Gmp85oa8zcKksiR2GZy4nGz03d0cu4XitFCqDtB9WeDpNoHXAufYIlaqAaLI8Ps4Iv0D
         r2sxGjMuzHGgnDymUGBCxr4iWJWZHCnu+HnvAd4ZDCwbCA8p4bV5BDSRgEP86emUUx5c
         UOpgRyRJy21ZzgOw0zvrSvLp6MHxT0c5vNNkCwdWXbV+IGiRiLKe/ns5lokkz2ln/lzi
         yezQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=a5mLia7OwCycmjGNk1Ex0zimV17FmiQ9bhoUU0ZGzaw=;
        b=iqUf3L5RX+HIUcibdEkq3BoRbZbqzy7N+ofUbHKRdZ82o1dKV3Zi8fz4qdaWs8BdRq
         I9yiVETE9X+dbnGqGkaELbnxO6Blss+XoZ0Jo4X8tO7LwoWWQa0EWi4PpTdC+VSmc5Bp
         vmwDcyttypGGzu3Lku5lZ1bcxQPy/zR/aEkl9shcQllRKRl6cTRIwLx/ZfP5tHyQv9+t
         oOX/7I40Jj3ZYz0FOoYvRFdSEO/jrZfHKopZrKWIRYO1I1yKXI3nZd0VySE4z1gcMEID
         gwI1+5qqPm1wYJ11u/Brb225t0bMnAmTR6PKECV1NkiTExJXXMeeF7bDo28PZtelKukA
         hD2g==
X-Gm-Message-State: AOAM532lMBxJ/gJHw72vV3XIQAC+BUwSExZ9/N6Kud8ESwR6/8NbtkTj
        YEC5oaIdeKyPOkfUac6gLjsJvvTlai7LM89M5jD1Zg==
X-Google-Smtp-Source: ABdhPJwcdZa8ar8vSatUcAMawcKU9dc2eJYDP4EhVXHl4AZs7w2olx606XPj/5256LkurD2l1/MYMieUMNLdYMDaNpM=
X-Received: by 2002:a5b:dc5:0:b0:624:f16d:7069 with SMTP id
 t5-20020a5b0dc5000000b00624f16d7069mr25884402ybr.295.1646178669943; Tue, 01
 Mar 2022 15:51:09 -0800 (PST)
MIME-Version: 1.0
References: <20220301225432.60844-1-absicsz@gmail.com> <20220301225432.60844-4-absicsz@gmail.com>
In-Reply-To: <20220301225432.60844-4-absicsz@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 2 Mar 2022 00:50:58 +0100
Message-ID: <CACRpkdb6jNUjDdTP+ggmg6=uE53rWnqTJO4LpUqgfNg+WOwL5w@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] iio: accel: add support for LIS302DL variant
To:     "Sicelo A. Mhlongo" <absicsz@gmail.com>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Denis Ciocca <denis.ciocca@st.com>, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, Lars-Peter Clausen <lars@metafoo.de>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 1, 2022 at 11:56 PM Sicelo A. Mhlongo <absicsz@gmail.com> wrote:

> Add support for STMicroelectronics LIS302DL accelerometer to the st_accel
> framework.
>
> https://www.st.com/resource/en/datasheet/lis302dl.pdf
>
> Signed-off-by: Sicelo A. Mhlongo <absicsz@gmail.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

As discussed on chat this sensor has the nice freefall-detection
feature which we should implement as an event in IIO one of these
days :)

Yours,
Linus Walleij
