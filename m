Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8828F2CBC54
	for <lists+devicetree@lfdr.de>; Wed,  2 Dec 2020 13:05:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727434AbgLBMEE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Dec 2020 07:04:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725899AbgLBMED (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Dec 2020 07:04:03 -0500
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com [IPv6:2a00:1450:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 838A8C0613CF
        for <devicetree@vger.kernel.org>; Wed,  2 Dec 2020 04:03:22 -0800 (PST)
Received: by mail-lf1-x143.google.com with SMTP id t6so4192930lfl.13
        for <devicetree@vger.kernel.org>; Wed, 02 Dec 2020 04:03:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JrDxXawKFmfpC0PtwoTfICjU4fGQp1m9XOEUHodRjh4=;
        b=Jh/GPoSevt3SV5RTaTwsaYQj/V/NpTGVQ3t2qKS6vUGGD7/pTECzTRoxKeELr0B6Rk
         LzYQFvUHkFufV1RTkLkcaD5H3Qb8Enb+Uo3wGL8Ht0OC1x93y1MY6QbYdC0jgRh1hJ99
         WQN7urB/BiCmG3Xwm6GHNyP0jUcAfLHEVAqbQofZbzr7xjUOBkx0+32G6WGaLnyqyRnG
         qXZeXNhYFWSunVN5xBCJ0ZQXYMqw+kjEp/5IQgBAWU0Zts63QXdNW338WQuR6+cd/maW
         8tX488nHz6Sy/LJtorpFMSyJdhXnuA9vIZ68PUWr6KfTU8+1QFeFDCPbaiAQHU+MY2DB
         EOjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JrDxXawKFmfpC0PtwoTfICjU4fGQp1m9XOEUHodRjh4=;
        b=SPWzu+BHxgG6r1Di2LdKYfDWBckFIOLmq4a9Adcv2iglC+e441FX2XMPHX0s3CC4D1
         mHNIOwHWlFiMj3tAt1NgU+ODmhrngNFi0Gto95uzDpmqQ9tlHrSUG2BreNJzcg9rxEvE
         Arv2tIBMIjfHpof4IeQnCG2qm3QYTrsH0QsXxfey/U8MpPpUiGVY1nUGVoPIOBVUQDu6
         74flpLyS83XC1hEpnmnGb8nY+FDlnITu1/FXc8ttT1pre8AYR54TSJf24b41ZcDL9CCj
         oQsxhv89kLSTNgQFxtrNmhcpgFaJAlwutErIeVhLiNOPSfhd4ohEvih5MfktaZb9gXGD
         Q5fg==
X-Gm-Message-State: AOAM530lHGf63Kw4sMNf9i++AX3r8t3VHRQRzHk1rzG25gyYgRNVqQcl
        MP8w8e9wwpFWlX3iffSb1qbi/lwXV9PJjIlKevmKAg==
X-Google-Smtp-Source: ABdhPJw7g4cvh7G0ozEBAQSqX9C4nQr6bZEWkCOmw7+SjxIub91liuDU293pDkzEei2xmCSi1V1nY2t7JtcuqqXZOxY=
X-Received: by 2002:a19:ad41:: with SMTP id s1mr723702lfd.571.1606910601052;
 Wed, 02 Dec 2020 04:03:21 -0800 (PST)
MIME-Version: 1.0
References: <20201202093322.77114-1-stephan@gerhold.net> <20201202093322.77114-4-stephan@gerhold.net>
In-Reply-To: <20201202093322.77114-4-stephan@gerhold.net>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 2 Dec 2020 13:03:10 +0100
Message-ID: <CACRpkdb7-sa+9fqa4zuEmvTBKNDR4Nw2pPbeWDu6GhWfUTUNpQ@mail.gmail.com>
Subject: Re: [PATCH 4/4] iio: gyro: bmg160: Add rudimentary regulator support
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
        Rob Herring <robh+dt@kernel.org>,
        linux-iio <linux-iio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "H . Nikolaus Schaller" <hns@goldelico.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 2, 2020 at 10:33 AM Stephan Gerhold <stephan@gerhold.net> wrote:

> BMG160 needs VDD and VDDIO regulators that might need to be explicitly
> enabled. Add some rudimentary support to obtain and enable these
> regulators during probe() and disable them during remove()
> or on the error path.
>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Reviewed-by: Linus Walleij <linus.walleij@linar.org>

Yours,
Linus Walleij
