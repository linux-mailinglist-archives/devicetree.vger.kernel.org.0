Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E09403971C3
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 12:44:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233106AbhFAKqN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 06:46:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230288AbhFAKqN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Jun 2021 06:46:13 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF9D2C06174A
        for <devicetree@vger.kernel.org>; Tue,  1 Jun 2021 03:44:30 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id w33so21029404lfu.7
        for <devicetree@vger.kernel.org>; Tue, 01 Jun 2021 03:44:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MNIiBPe7Xgkk/pQlTn5d5oBTgg8+i5Bf4QSJR9wISVM=;
        b=UXkQHT3eBr+4JEvtzopIhZ1FvV3ocxuIYgeJ+7Su7fYCJ+dkwEyccmnGDbXqTpQXBa
         4D+czka30Sntd5pqwadbJ+Fq33TIkGQPN/0YVo+5mMyrYwik/0aYGD2jMwvJjph5Rge8
         bNtZVVIfMKVzC/NorGzwfSkYaX5RvV5LNk72BsdEO4C+pupjQurW+qDzc5Y/IuE3T7xH
         iZSlq0ilBaxuxQtypbr/oNlRsEVlCHBT2DwLZ/AV1234NH1yvTnSH2mkoawJTx3nr8dF
         aA0TZ051QZhPIuAHoUCZdxCT+zP+kapzbmeLw7kbjQ0sx/riAhd+J1zA3hxxAY0dCTSl
         wAig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MNIiBPe7Xgkk/pQlTn5d5oBTgg8+i5Bf4QSJR9wISVM=;
        b=YtatEMnSGRuumn7KpX9FLSh1MfAKsoWQ3B1Btdtlvg3QfyUHKz0pP3p2dJ9H/uvylt
         HqY+5yneSqRyWkmUun/oUiEdZfhK5oHPXhbMq13d/2OtoooPrrHoIkdc6cKnA8SEX10k
         NXjQIi0JkN3EzNTz4jPHayrnQs+M09nkGAfPQF3IbhcJjP3OTucKw551ZkIYsMgBpnzs
         j4FyOwmm5nRwAcmh6W+pip9nL/oprD0mTd4A2DFtn5Qqd+AgV52T3BzYbWZ+4rYzThE8
         LH454cuPTUJta8gd4yYJcob3Tpchx6QLRQDWeN/iv7s4UsfVbXptJekvt6doh28Q6jUf
         NqyQ==
X-Gm-Message-State: AOAM533rk3fmw/HAWyG+q1b3nnv68LKxVjg/+ZGQhOOHD/jAKC+AKWTK
        ZjmF2fuD5eMPp0hVQd5Hz4jE+VZ0K8cuNd/quN0hBg==
X-Google-Smtp-Source: ABdhPJymNy/m+dkQx0iYjjTIrVKPk7L2Q0TqaniD+inM4naMM/JHehOqRI2qhFyGjgM79n4LG885n/7C85sCH1/cmGA=
X-Received: by 2002:a05:6512:3e03:: with SMTP id i3mr14333979lfv.529.1622544269211;
 Tue, 01 Jun 2021 03:44:29 -0700 (PDT)
MIME-Version: 1.0
References: <20210325122832.119147-1-sandberg@mailfence.com>
 <20210530161333.3996-1-maukka@ext.kapsi.fi> <20210530161333.3996-2-maukka@ext.kapsi.fi>
In-Reply-To: <20210530161333.3996-2-maukka@ext.kapsi.fi>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 1 Jun 2021 12:44:18 +0200
Message-ID: <CACRpkdZfdd=ogHoNGuLzGGZYkvw7xtNO2VJm-t-2vMibGNy=dA@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: gpio-mux-input: add documentation
To:     Mauri Sandberg <maukka@ext.kapsi.fi>
Cc:     Mauri Sandberg <sandberg@mailfence.com>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Drew Fustini <drew@beagleboard.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, May 30, 2021 at 6:16 PM Mauri Sandberg <maukka@ext.kapsi.fi> wrote:

> Add documentation for a general GPIO multiplexer.
>
> Signed-off-by: Mauri Sandberg <maukka@ext.kapsi.fi>
> Tested-by: Drew Fustini <drew@beagleboard.org>
> Reviewed-by: Drew Fustini <drew@beagleboard.org>

After some thinking I realized these bindings should not
be restricted to just input. There exist electronic constructions
such as open drain that would make it possible to mux also
outputs.

>  .../bindings/gpio/gpio-mux-input.yaml         | 75 +++++++++++++++++++

Rename it just gpio-mux.yaml

> +$id: http://devicetree.org/schemas/gpio/gpio-mux-input.yaml#

Also here

> +title: Generic GPIO input multiplexer

Generic GPIO multiplexer

> +description: |
> +  A generic GPIO based input multiplexer

Not just input

> +  This driver uses a mux-controller to drive the multiplexer and has a single
> +  output pin for reading the inputs to the mux.

Make this clearer and do not mention "driver".
Here is a suggestion:

This hardware construction multiplexes (cascades) several GPIO
lines from one-to-many using a software controlled multiplexer.
The most common use case is probably reading several inputs
by switching the multiplexer over several input lines, which in
practice works well since input lines has high impedance.

Constructions with multiplexed outputs are also possible using
open drain electronics.

> +  For GPIO consumer documentation see gpio.txt.

No need to mention this I think, not your problem :D

> +  pin-gpios:

I still want this renamed like in my previous mail.

Hope all is clear!

Yours,
Linus Walleij
