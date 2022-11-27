Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D2EF639D7E
	for <lists+devicetree@lfdr.de>; Sun, 27 Nov 2022 23:07:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229670AbiK0WHw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Nov 2022 17:07:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229518AbiK0WHw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Nov 2022 17:07:52 -0500
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com [IPv6:2607:f8b0:4864:20::b34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BF9C1BD
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 14:07:51 -0800 (PST)
Received: by mail-yb1-xb34.google.com with SMTP id k206so9923874ybk.5
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 14:07:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QTuQK++WvCw4AenD/ByjFB9xfaDXAXEdI7zL7dwhMYA=;
        b=xRmt3Iwow88UXHBQ1h1i38Y7tjZvkahSpU0bdukn+sTbwlRW6DjdetXY6xZyB0vzgt
         J0jGBR2Zc272ecTguS/7FeQhe0CbGXPm+4Nn2hswWY61EclZ7xwvQCTv2JW6ft6IEvOk
         DmW0yXNKxwyIDMjt0xX26a9ncE6SG8YTKZtIEDzAi9bB5OCttGQGof697ndPNeKvZyNw
         lF3jZH0Gidq6pxBsxQ0YTGskEXzsOekuYiA48fOukatjlG15ylaiAYoaBjzBy5l/M5Cj
         ODGBulmgjFy/6Rb1EB/nHTC6r7vverT5/NEchhk9hbali5OZ+bcvDBpxj6bSs1nnc/cg
         shSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QTuQK++WvCw4AenD/ByjFB9xfaDXAXEdI7zL7dwhMYA=;
        b=gImzq3sK88o4WT0HJw+i9ZTOS2Qta24F+aoRyX9/Xx7PTpzgXvoqjTFfF8Vj9hiG08
         uX2MFRLxlK6hW0Wv2Jkw6hiFxJUaNnNhOL28WrIHH/z7Hx+NxGjAICa8+7cH01pZy5Wk
         JMtkmI82cao+sA9FBN/8sBkIY96sxseXE9S6PrTnhCwdRJCgXTlUjStqopgSZuPsufV0
         wlqgilWx1KxF2jxOxprXsG/JncKgmzxlRrptUQrKEJYSn1rOaqFaP4TRf5lM+dTGm43y
         8llCzA7DDtB8Km+FwpNf8sDlhGomz7pjfgaiuWEnQziVBF6I0v/EDX7qdOItyXpJY6Zn
         au6A==
X-Gm-Message-State: ANoB5pnJyeECsb377evUHFZ+KrQ9l9x2cNQ9gAnxqY30K3+81EsgqS4S
        uNaEz+fcxfQJk8ETq4plcuWQTeedsmvU3l/Qm4/72A==
X-Google-Smtp-Source: AA0mqf4828ZPtJcTGa/IZef2ZjFxO4Gp3F1XLdaeCoJ+TITzHvqfT4VPRmT5o/R3Iu1aX9zy3Kf63CdiUHl6nAhnrtM=
X-Received: by 2002:a25:d8d4:0:b0:6f0:36e2:5fc2 with SMTP id
 p203-20020a25d8d4000000b006f036e25fc2mr21279966ybg.52.1669586870572; Sun, 27
 Nov 2022 14:07:50 -0800 (PST)
MIME-Version: 1.0
References: <3f75784c57dc0682b5e1758daddd93fee6bb4b27.1669585920.git.christophe.jaillet@wanadoo.fr>
In-Reply-To: <3f75784c57dc0682b5e1758daddd93fee6bb4b27.1669585920.git.christophe.jaillet@wanadoo.fr>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 27 Nov 2022 23:07:39 +0100
Message-ID: <CACRpkdZU3E_aFjC=yghzpyXPgyZGLa4xJTVr2jbLenGL1MManA@mail.gmail.com>
Subject: Re: [PATCH] gpio: Do not include <linux/kernel.h> when not really needed.
To:     Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Nov 27, 2022 at 10:52 PM Christophe JAILLET
<christophe.jaillet@wanadoo.fr> wrote:

> <linux/kernel.h> is included only for using container_of().
> Include <linux/container_of.h> instead, it is much lighter.
>
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>

This is fine.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

As Andy split out the container_of header file a year ago or
so he certainly want to ACK this too.

Yours,
Linus Walleij
