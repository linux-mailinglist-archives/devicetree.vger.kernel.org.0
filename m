Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4509E4252B
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2019 14:11:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2406920AbfFLMLq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jun 2019 08:11:46 -0400
Received: from mail-lf1-f66.google.com ([209.85.167.66]:44701 "EHLO
        mail-lf1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2406690AbfFLMLq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jun 2019 08:11:46 -0400
Received: by mail-lf1-f66.google.com with SMTP id r15so11886937lfm.11
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2019 05:11:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Duu79dpq4xQ4GqJnetl02QLC2/nvLqahgO6AyVV2eW0=;
        b=i68wzTyTJMBYZeU/Uf8aHN3gFbC7lSoRCAZqZl+xhx72QGrEg3gqZ5/y1WcXz+vc9z
         FL6gxN8vFOSjCuJqXkAx9zVf6miod5Aahafo/JHI2RJw/2eez0ZDr7jeu/PJ79VymTvj
         3zzQbwQP5OZnLmuRwfuojhikVBJT1vGDYJSI9c/3KFaes0wXblo5dELdA/xtyE1gFn9z
         FRZcIDktNxleExVJgqFoQYntcptFTRamGrwaCQol0FxU7gCy4pyW/dnBjS+U71GaRy1b
         KNoRbWZNvqk5Vk3nntGu8CUDBKyEVszeEt4R72o/hqK3l8zTzt8VFBhODmKgqk6+COSf
         AAPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Duu79dpq4xQ4GqJnetl02QLC2/nvLqahgO6AyVV2eW0=;
        b=Wm0CXWfXA8AnJo4tnUuEQWc5zWCwhP1WBgsf9/7zHEk/2a/ZJvDXxQE8lokxaXNmHh
         QeN8UTpJiA07BTs1FUXFVedy1xiRY9fOttbEjBD0MWhaT5afK+ulCAJTOkXZokkZuahn
         jkyPtqB805N36YtPfBYswU+65gZfNYrUxTjZmL38fXiYK7Ud8dNmMpKetSby6McVEi60
         ZdxzDEwBMreQR2J71A9COUnEBNKBmwtzL4Q1TNLe8El7ZfeeBc3OmLCZRsKLAxCGJWzj
         O3jOuPvNPrBEN6EXCAXdfzLw0rmpXWiQBV0ULjfY5vThO7eDv9jHn0BkyyTXyTjwTZwd
         DqIQ==
X-Gm-Message-State: APjAAAXAqlVB8GGfWtzv+5QeXIy2ou0gMby8OJbTL1kyJjIdTe7djT5d
        TVZfgwcDaYhxTNOupZYdcFZOI56All9LqXcoCsKILg==
X-Google-Smtp-Source: APXvYqxeSw1G1TV/Mz5WMMi5ca+pxpZ1Zqv2pYg8vcbT68h3rpCYOTh6UCtYKXmOybD0IJolLu2MDJSxPI1hB0SKH8g=
X-Received: by 2002:ac2:598d:: with SMTP id w13mr39539109lfn.165.1560341504411;
 Wed, 12 Jun 2019 05:11:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190611140940.14357-1-icenowy@aosc.io> <20190611140940.14357-2-icenowy@aosc.io>
In-Reply-To: <20190611140940.14357-2-icenowy@aosc.io>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 12 Jun 2019 14:11:31 +0200
Message-ID: <CACRpkdaj-VkHaENpSqW32gFYBuLDErzqoKZ-aD4W4htORN_SiA@mail.gmail.com>
Subject: Re: [PATCH v2 01/11] dt-bindings: pinctrl: add missing compatible
 string for V3s
To:     Icenowy Zheng <icenowy@aosc.io>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Chen-Yu Tsai <wens@csie.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        linux-clk <linux-clk@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 11, 2019 at 4:10 PM Icenowy Zheng <icenowy@aosc.io> wrote:

> The pinctrl driver of V3s is already available and used in the kernel,
> but the compatible string of it is forgotten to be added.
>
> Add the missing compatible string.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> Changes in v2:
> - Add the ACK tag by Maxime and the review tag by Rob.

Patch applied to the pinctrl tree.

Yours,
Linus Walleij
