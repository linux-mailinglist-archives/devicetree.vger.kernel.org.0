Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B3D088167E
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2019 12:09:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728086AbfHEKJm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Aug 2019 06:09:42 -0400
Received: from mail-lj1-f195.google.com ([209.85.208.195]:42709 "EHLO
        mail-lj1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727830AbfHEKJm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Aug 2019 06:09:42 -0400
Received: by mail-lj1-f195.google.com with SMTP id t28so78795933lje.9
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2019 03:09:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/xtjYgK/kMd57m6KfrfOB62bKyZiiQD+dYMhD8L2z0Y=;
        b=qIqjqetM/iqya25mvO1vrbiO42qMt9IyCAJYzpv0Wqpo9wqOGNluE4klznlIk2yZfv
         9KNaZg8QzFZY4Q48l5+z4eup/m2cpfChPGFOc5So/f9zrbncbo1LdwCbt/dw/Fjny/Qs
         8hQB3eiqnuhdTMb10EfyqrD3JPS+t1xX8aimYVGXXyk2bZN8P/AXvG0DZYn9hRECbBdM
         KHITvzTv2nInLM5fAiQTjnMtAjqRx7hmRFWsdvHjhN0DX60+eJHy1THDkvhV2DlONPnz
         LBWK4DrWvRSIY9dvL9VTn4DQSlR2B5z6GZrJAw6qQq1nF78r/A95zOz6L6+4rnQ+9gtI
         /3tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/xtjYgK/kMd57m6KfrfOB62bKyZiiQD+dYMhD8L2z0Y=;
        b=RS/H9nlTeiza1qFJzzPIZ2hvVelpyDBF3y7jqEC6mxysBHNCwr5e+vI7NTnaCB1Vmn
         E7fRurkpFkFrn9l33n5WtuMTBkfRXZ7YhyCCwE8qokNrgWl40UoL17rI9NQ8UncFYm+B
         Fmysw7iC1CLJHCeki5Y+/ZW8EMSlodC8tuXxnTNobaKCOtummeSFqnIO8xmhoH18T+nj
         Sa7sQ/B3Az0gE1bzngzTmK/c60XCmoqbJGkhpshl92xBqvKObhSA6j0JVtqxooOR9X2n
         ZLxGd+IPNwPBwYuHVRI+uXn99dME4vuCb6FrwfSRLtHkRT7JmUVonU9C2ZuZb0DVIno8
         jNjA==
X-Gm-Message-State: APjAAAVs4OZJTJg5xmwdZMQFJAxw+rBy5/YtgwjJSOfUKpanOVHTsSA0
        OzcVBbrYbfJ56qJOydQdvYKrgtP5mZD/uEyoWE3ljQ==
X-Google-Smtp-Source: APXvYqzw2Nx2CZBhSBfHRJe0EXDJKGkQ1w/cgOlJvHSUKAdSOSviOHbRJqsbQQlq6jDi9G5H9DWZgPS60Bpa9u1KaYw=
X-Received: by 2002:a2e:2c14:: with SMTP id s20mr16414381ljs.54.1564999780576;
 Mon, 05 Aug 2019 03:09:40 -0700 (PDT)
MIME-Version: 1.0
References: <1563958245-6321-1-git-send-email-chunfeng.yun@mediatek.com> <1563958245-6321-3-git-send-email-chunfeng.yun@mediatek.com>
In-Reply-To: <1563958245-6321-3-git-send-email-chunfeng.yun@mediatek.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 5 Aug 2019 12:09:29 +0200
Message-ID: <CACRpkdZRgUubUF3qc7S-6zoe_L-dLDy284R3qK93qRTLyYOwbg@mail.gmail.com>
Subject: Re: [PATCH v8 02/11] dt-bindings: connector: add optional properties
 for Type-B
To:     Chunfeng Yun <chunfeng.yun@mediatek.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Biju Das <biju.das@bp.renesas.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
        Li Jun <jun.li@nxp.com>,
        Badhri Jagan Sridharan <badhri@google.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Hans de Goede <hdegoede@redhat.com>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Min Guo <min.guo@mediatek.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        linux-usb <linux-usb@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 24, 2019 at 10:51 AM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:

> Add id-gpios, vbus-gpios, vbus-supply and pinctrl properties for
> usb-b-connector
>
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> v8 no changes

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
