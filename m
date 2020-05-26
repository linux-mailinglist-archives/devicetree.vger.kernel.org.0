Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 147711C70B5
	for <lists+devicetree@lfdr.de>; Wed,  6 May 2020 14:48:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728596AbgEFMrk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 May 2020 08:47:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1728366AbgEFMrk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 May 2020 08:47:40 -0400
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com [IPv6:2a00:1450:4864:20::142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D560C061A0F
        for <devicetree@vger.kernel.org>; Wed,  6 May 2020 05:47:39 -0700 (PDT)
Received: by mail-lf1-x142.google.com with SMTP id z22so1239350lfd.0
        for <devicetree@vger.kernel.org>; Wed, 06 May 2020 05:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GHVvUB43yJMR2ywq8FjwLtRue3JBjP1es/NQQxOMgHk=;
        b=xTqz08J2AQ3jobyQwn6kTFMt6Dq8VbZ2Acjud74nn8JuVnxxnCv77Uvn1lrNTLjNIG
         OUXfAhgbA2ir3p2H0ysEHZVlDApXpjO5Mp7tNNK8nfl/2skS6FD1NgcVN3HinysBQGNa
         HvaqLulbsjnih3Dfk6oyYE1HFE3K2QfPUdgkBQm61mXPrMVNzycHiCWDDzpo08xIvNcc
         9JN3ACXFUTIaG8Y2dcMVxayD+9hrxgd0ibqDrJO9RUdgiKBRi3c0P7UlIrebxbrmIvTx
         PYUiTYO/O+Fb5YbsretlLsS7uVt4K6ASAmIAzNea0Y2r80H3EgemStUl3rv99TuErvm0
         6DEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GHVvUB43yJMR2ywq8FjwLtRue3JBjP1es/NQQxOMgHk=;
        b=sVayx8Aevg4aVHtkLDEu9vIHWTxwSjZoWMyeMnH7haMsvykA2KFp9RSeuIE6pbefcI
         6aQdmxVBMLwvtk933fMmzixNoVpTX4LHPCGMR15Wu/Ljw3JcVtGtUYcpvlEka6w8iqXm
         B5pQGYI1hhdNqIjLqAI7iKoswytqCn2BR1E1hDEL+V5Oeec14XxxhKxXygDdLGu+bqqR
         cCgZEWVKyrtAbsukg20SJJGB08QT7j8LjlUx8LKl6Yt+I0x9S0z6jhyM30u+lj1IooIe
         Quxj4USfUxiC111C2ZD57Efb2MZvk5sQIp+4wPcwSGthI1++wt5ARNWXkz06kmCjBH7o
         naaA==
X-Gm-Message-State: AGi0PuaTx93uQzogiIIesiED279aGriXMXaohnWmkfpwfDSuULgwkspF
        zvizdXKzUoMOR2o90fbJouQgth6xMXJ6S5at8BBCcA==
X-Google-Smtp-Source: APiQypKBbl7K+xy+RhSGXMmOQBxZEWjnqxgPMoR3N1qvMn2Wotn5IUAW/yAiP/gr5YCR7Sw7ovooKd8Y1hu1QPDahkc=
X-Received: by 2002:ac2:5e70:: with SMTP id a16mr5062159lfr.77.1588769257911;
 Wed, 06 May 2020 05:47:37 -0700 (PDT)
MIME-Version: 1.0
References: <BN6PR04MB0660046ABD79433EA94A85A9A3A90@BN6PR04MB0660.namprd04.prod.outlook.com>
In-Reply-To: <BN6PR04MB0660046ABD79433EA94A85A9A3A90@BN6PR04MB0660.namprd04.prod.outlook.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 6 May 2020 14:47:25 +0200
Message-ID: <CACRpkdbb89q2FRJZ1=2QoQs8JFYcwWpNZwJUbnjsVvZYEE-LKw@mail.gmail.com>
Subject: Re: [PATCH 0/5] iio: accel: Add bma023 support to bma180
To:     Jonathan Bakker <xc-racer2@live.ca>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Hartmut Knaack <knaack.h@gmx.de>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald <pmeerw@pmeerw.net>,
        Rob Herring <robh+dt@kernel.org>,
        linux-iio <linux-iio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Kate Stewart <kstewart@linuxfoundation.org>,
        Greg KH <gregkh@linuxfoundation.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Linux Input <linux-input@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, May 3, 2020 at 7:22 PM Jonathan Bakker <xc-racer2@live.ca> wrote:

> This patchset adds support for the bma023 three axis accelerometer
> to the bma180 IIO driver.  The bma023 is found on several ~2010
> phones, including the first-gen Galaxy S series.
>
> The bma023 differs from later chips (bma180, bma25x) in that it
> has no low power but still working mode and no temperature
> channel.
>
> The bma023 is already supported by a misc input driver (bma150), so
> when both are enabled, the iio driver is preferred.  The bma150
> is very similar to the bma023, but has a temperature channel.
> Support for the bma150 is not added in this patchset.

I'd say, if it's not too much trouble please also patch in
support for BMA150 and SMB380 to the IIO driver so
we can delete this old Input driver, we have done this
before and thes "input drivers" are just causing headaches
and wasting time for the Input maintainer.

It can be in a separate patch set from this one if you
don't want to get stuck on this.

Yours,
Linus Walleij
