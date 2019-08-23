Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 96E5C9AAE4
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2019 10:57:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732973AbfHWI5R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Aug 2019 04:57:17 -0400
Received: from mail-lf1-f68.google.com ([209.85.167.68]:43233 "EHLO
        mail-lf1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731191AbfHWI5R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Aug 2019 04:57:17 -0400
Received: by mail-lf1-f68.google.com with SMTP id c19so6573644lfm.10
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2019 01:57:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=a/R2J79LKOKlLeZ/xIkFf9uifEgRMGT7tAE/FX+J+fk=;
        b=h8cIzFHRwV5mKvh20JVoTWYAVSCIkWyjSzPx/vFSHkOSlO5Q4g9CCbm+693s4TXchd
         FgS3UGD0guDUAw5xUViOFwLDP+ix8kP+F+oK5Shgc5An7QkANVSs7IZOKKfE0WiEXnef
         kPY2tdrxMXtW0xoIni2RPvEfgFvOX+gRUf2nclzTLsMc0FJCRgdhGKlGBy3IVnZWfltC
         LqxGoZo26oS2KvwARlRA8I8eNM6EWNRO4SaOtPtGfw1U39DRvi2A98cs++ugvTCGYM7d
         2Ge1VMDoj2+9Xy/800qepwswucADX+MTC27muULbqLYD+3WVK9Ym9l1yrBdICpClSvpX
         HflQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=a/R2J79LKOKlLeZ/xIkFf9uifEgRMGT7tAE/FX+J+fk=;
        b=hfjjf9hRC1o1bgdBAhgRKEYr3Q1vxZq7E22jxCZ+UM8loGfBaZSUz/64wdNFt5NBk5
         QwA1p5dNUNvmBNz+b7sPafGuLWwzgafXU65aNY3JjkUFgxAQVTG8woS6c/GzCSGehQPl
         hV7V9XmCloprnV2NhMnOF+bzgZXb0bPmrdOJIyuKyv07BQTTOt2DBk9znO0jaC35KZ/G
         l/FaGH+4G74+4NBcPYXA/g3kCpQUabsJIkIiUAf2rPmB8nyg6EfUSuH73uhvzwHnSEBT
         JHfboTdNjdKGqLcFbatpGm6DuMqoa6uj/5P5/zssWpjr73jQHSnyvPA+dsuMr3djNLZd
         bohA==
X-Gm-Message-State: APjAAAWyBLRlwD8kYxiNnBbb/uW4NAkKz2kHsj3NZ0WmGiSWXdcZpHEt
        DmRXa5jYgaLAWgJbEyrUlazbFboaIB3j8/hCAfdiAQ==
X-Google-Smtp-Source: APXvYqyiIRQnPqOMRMnznsHxW2APqKA5JW/FUTpLK9hj/I1LedUm+QCEFmX2UPpcBK5I9whssuW2AmLbJBfUVKBqcLU=
X-Received: by 2002:ac2:5939:: with SMTP id v25mr2135109lfi.115.1566550635185;
 Fri, 23 Aug 2019 01:57:15 -0700 (PDT)
MIME-Version: 1.0
References: <1566206502-4347-1-git-send-email-mars.cheng@mediatek.com> <1566206502-4347-6-git-send-email-mars.cheng@mediatek.com>
In-Reply-To: <1566206502-4347-6-git-send-email-mars.cheng@mediatek.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 23 Aug 2019 10:57:03 +0200
Message-ID: <CACRpkdZa_sQgvWC3ic0NxrVi9gS1cNTsV-wa-SDpA0e5kutBRw@mail.gmail.com>
Subject: Re: [PATCH v2 05/11] pinctrl: mediatek: avoid virtual gpio trying to
 set reg
To:     Mars Cheng <mars.cheng@mediatek.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Marc Zyngier <marc.zyngier@arm.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Sean Wang <sean.wang@kernel.org>,
        CC Hwang <cc.hwang@mediatek.com>,
        Loda Chou <loda.chou@mediatek.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, wsd_upstream@mediatek.com,
        mtk01761 <wendell.lin@mediatek.com>,
        linux-clk <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 19, 2019 at 11:22 AM Mars Cheng <mars.cheng@mediatek.com> wrote:

> for virtual gpios, they should not do reg setting and
> should behave as expected for eint function.
>
> Signed-off-by: Mars Cheng <mars.cheng@mediatek.com>

This does not explain what a "virtual GPIO" is in this
context, so please elaborate. What is this? Why does
it exist? What is it used for?

GPIO is "general purpose input/output" and it is a
pretty rubbery category already as it is, so we need
to define our terms pretty strictly.

> +bool mtk_is_virt_gpio(struct mtk_pinctrl *hw, unsigned int gpio_n)
> +{
> +       const struct mtk_pin_desc *desc;
> +       bool virt_gpio = false;
> +
> +       if (gpio_n >= hw->soc->npins)
> +               return virt_gpio;
> +
> +       desc = (const struct mtk_pin_desc *)&hw->soc->pins[gpio_n];
> +
> +       if (desc->funcs &&
> +           desc->funcs[desc->eint.eint_m].name == 0)

NULL check is done like this:

if (desc->funcs && !desc->funcs[desc->eint.eint_m].name)

> +               virt_gpio = true;

So why is this GPIO "virtual" because it does not have
a name in the funcs table?

> @@ -278,6 +295,9 @@ static int mtk_xt_set_gpio_as_eint(void *data, unsigned long eint_n)
>         if (err)
>                 return err;
>
> +       if (mtk_is_virt_gpio(hw, gpio_n))
> +               return 0;

So does this mean we always succeed in setting a GPIO as eint
if it is virtual? Why? Explanatory comment is needed.

> @@ -693,6 +693,9 @@ static int mtk_gpio_get_direction(struct gpio_chip *chip, unsigned int gpio)
>         const struct mtk_pin_desc *desc;
>         int value, err;
>
> +       if (mtk_is_virt_gpio(hw, gpio))
> +               return 1;

Why are "virtual GPIOs" always inputs?

Yours,
Linus Walleij
