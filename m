Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A201F2E92F2
	for <lists+devicetree@lfdr.de>; Mon,  4 Jan 2021 10:54:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726246AbhADJxu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jan 2021 04:53:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726434AbhADJxu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jan 2021 04:53:50 -0500
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FC9BC061795
        for <devicetree@vger.kernel.org>; Mon,  4 Jan 2021 01:53:09 -0800 (PST)
Received: by mail-ed1-x52f.google.com with SMTP id cm17so26696802edb.4
        for <devicetree@vger.kernel.org>; Mon, 04 Jan 2021 01:53:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pUWTniSHvQQ76L9k41lTs1LgXDjPdq16yIvZuuTtw2o=;
        b=yQq/pVPI+7ebgB+5T5wnUZJjCEJHuAxRGM7H3+92VWxT/A55gThesrr/RBoFg5sN+Y
         UaBtmiTBbuXWZHqcHQLXyQ7HtBYm4MRO3Gw3Y9o0HZjgcyfeVVJzI35X6+3PUknTVHRG
         EcQ4w7qiLV274uymJ1GJlVhMRf5CqH1ybMA1wTD0Oxa0OXTMnhWpxO5KPEk6D8yWRAK5
         x+sGxEKoz2zYWsDBDZSLVNzI05U6m4MvVR+WUg9NRYP4MAWc32KQ0cbiCGsrNS/RDZN3
         8+GHpnldSLPTlB3g9FRYh2YnYKji20fdekv5XKjwb06rJM1mtwAzfl7bpiRUeN/P1JZU
         c9sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pUWTniSHvQQ76L9k41lTs1LgXDjPdq16yIvZuuTtw2o=;
        b=MqtjQrgVUDpRLR+bH5MypJlD/6HBgs8BTgRwRzW3eM12wgjf3m50+vfsmPLVBzzZF2
         pO1FqgWCzJygLuFCnYrgs95TEgRLRsIz/E/55glLz9XOuYAwgpOLGVcaE3VyaSdfZFug
         0egJykrAAXrjN0UqAdNXohAEU9rpdMlj2B2Tj5PCntc2lva6pjLCW0W4IIIdE0sLAXSS
         pIKZeyzor1bt7Aepllb7c0Qc7WnNu3EdFjLrmgPIa8aYALGvuQiU+62XYYoPLkw8YXcX
         ycU+sKUPYQfp+mmLakZfZCax157NZxKQw2IXO5l/LONUIRfM6NliJHBvqgAQOux+6Rd0
         LRng==
X-Gm-Message-State: AOAM531voxXq6upefR4eLjHuPHp4OVl8b7z6PEeihvy5vl36E/5ZY7hx
        Yy7NJi3MQl0rZS+SjI3s7WeMNrrH4+cLrr+W0BcjaQ==
X-Google-Smtp-Source: ABdhPJwCWSyixz8p/RHPD0EloMZbmtrEhw6f6F8Xqw07Y2jxng57m5awJmUUw3I15y2aKKntJOcCau+FzR6WZyX212Q=
X-Received: by 2002:a05:6402:17:: with SMTP id d23mr17576990edu.341.1609753988292;
 Mon, 04 Jan 2021 01:53:08 -0800 (PST)
MIME-Version: 1.0
References: <cover.1607601615.git.baruch@tkos.co.il> <CACRpkdaDzNyUUARs63ydC+XkW29vxvZBjtj4K5rp7+_WEUeeAQ@mail.gmail.com>
 <87pn2l9gwa.fsf@tarshish>
In-Reply-To: <87pn2l9gwa.fsf@tarshish>
From:   Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date:   Mon, 4 Jan 2021 10:52:57 +0100
Message-ID: <CAMpxmJVyJOT9O6mqPrhLccDJkKeCUC7kssFGsVOYB=Jz5Ff+TQ@mail.gmail.com>
Subject: Re: [PATCH v4 0/3] gpio: mvebu: Armada 8K/7K PWM support
To:     Baruch Siach <baruch@tkos.co.il>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Chris Packham <chris.packham@alliedtelesis.co.nz>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Ralph Sennhauser <ralph.sennhauser@gmail.com>,
        linux-pwm@vger.kernel.org,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 4, 2021 at 10:43 AM Baruch Siach <baruch@tkos.co.il> wrote:
>
> Hi Linus,
>
> On Mon, Jan 04 2021, Linus Walleij wrote:
> > this series seem to have missed the previous merge window due to
> > remaining comments, will you rebase on v5.11-rc1 and resend them?
>
> This series applies cleanly on v5.11-rc2. I have just tested.
>
> As far as I understand there are no remaining comments. Rob acked the
> DT binding change.
>
> Would you like me to post the series again anyway?
>
> Thanks,
> baruch
>

Yes, please resend it with RESEND PATCH in the tag.

Bartosz
