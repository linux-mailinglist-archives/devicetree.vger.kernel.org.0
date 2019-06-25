Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 87CDC550EB
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2019 15:55:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727070AbfFYNzV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jun 2019 09:55:21 -0400
Received: from mail-lf1-f67.google.com ([209.85.167.67]:46175 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727919AbfFYNzO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jun 2019 09:55:14 -0400
Received: by mail-lf1-f67.google.com with SMTP id z15so12663537lfh.13
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2019 06:55:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FMqlAp58Lm3MdFL1/oLfn8r6VrExYv+Qlr+51/E8+CI=;
        b=HBCIky80cw7b2VS9iWLL0Ww6oY2T4Czf/fAe41KlVer5eCS70N2T9N6i+HMJWbByYC
         s+fMTPIHVitU4jqxF2KA93qimnYLgc650UEYlCKuf1gfuyyQ33gDonObiXqXZe+gjs8O
         waAx5wLbgWDVZc3uKTHvWP6rM/o1xiWun8bYPuYn4HvHH+wq2MYhGCsRznPA1MyLWkA1
         /ZYctoRM+yOUBYmZXs29rpsTNWSfiQjdOe2MFcf487r4GU8KskEXpOGER/nADBI5ZvoK
         ABMpuOMCDGJwjkf6gnqacfGJeTxgqj9SsNuIcRnbDZ0aJsB+cfzaUGMtzb0UkeOYZUqV
         97DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FMqlAp58Lm3MdFL1/oLfn8r6VrExYv+Qlr+51/E8+CI=;
        b=BfKhlgAIU3G5f958djh6C8NZ2Xqr8dNOny0zMa/1VfyMF2YioPHVhpKWrw9cB5FZB4
         Dtjd0Xi58UJn0W+oL7oj5k1M12RWrUUbwZgYG7vXaCyMo4+p7veTPJV3P+CRFKhb8emn
         G+fj6l/cqSTIGodVfJ9gPJELTZj6nEycjDi5ILZuahogPzIBgHHB+aYXI2IBKpUkL5Vm
         +Xui8pANEtLDX2c3t2186TGM3CjNPW5jbLsI1a0VrHty3cp1mrcs9js650YdzeTiBr7/
         u6kcyWctmGmjFfENoVdZhcHCmxfW3tHoO6xDEm2IW8xYg2mZNdwbz9cIHRNh1++HS0y9
         YpVA==
X-Gm-Message-State: APjAAAXfT/69rL0HOuStPZkoJZWSaQfnFb7wLlKOsfl0FcO+p44KbJ9G
        sgsT9XavXifGU8+68lODHMeF4tClACM4OZX0KGEuOQ==
X-Google-Smtp-Source: APXvYqx4zfh4abumT8QCcMwPsQ4kGAi3uQZl6qg+f4xwtibi7ko9pWMCa9GCVANnvSnW7NG6HG7bW+OUwbld6KRMjBE=
X-Received: by 2002:ac2:598d:: with SMTP id w13mr250893lfn.165.1561470912218;
 Tue, 25 Jun 2019 06:55:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190623043801.14040-1-icenowy@aosc.io> <20190623043801.14040-6-icenowy@aosc.io>
In-Reply-To: <20190623043801.14040-6-icenowy@aosc.io>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 25 Jun 2019 15:55:00 +0200
Message-ID: <CACRpkdbbxgeGPh1oKfyKKOMhpXiz4sQWjZv23FbYaafCz6NyCQ@mail.gmail.com>
Subject: Re: [PATCH v3 5/9] dt-bindings: vendor-prefixes: add SoChip
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

On Sun, Jun 23, 2019 at 6:39 AM Icenowy Zheng <icenowy@aosc.io> wrote:

> Shenzhen SoChip Technology Co., Ltd. is a hardware vendor that produces
> EVBs with Allwinner chips. There's also a SoC named S3 that is developed
> by Allwinner (based on Allwinner V3/V3s) but branded SoChip.
>
> Add the vendor prefix for SoChip.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> No changes in v3.
>
> Changes in v2:
> - Add the review tag by Rob.

Should I apply this to the pinctrl tree? Rob?

Yours,
Linus Walleij
