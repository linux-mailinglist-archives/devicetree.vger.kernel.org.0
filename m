Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4FC9953C8CE
	for <lists+devicetree@lfdr.de>; Fri,  3 Jun 2022 12:36:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243761AbiFCKgL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Jun 2022 06:36:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239070AbiFCKgK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Jun 2022 06:36:10 -0400
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94BE33BBED
        for <devicetree@vger.kernel.org>; Fri,  3 Jun 2022 03:36:09 -0700 (PDT)
Received: by mail-yb1-xb2f.google.com with SMTP id p13so13016206ybm.1
        for <devicetree@vger.kernel.org>; Fri, 03 Jun 2022 03:36:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Zcr1s3ugeaE9p3nhhIdLCJU637n5hOiY3Yql49RPVHo=;
        b=ye/c5xFuBegN//8byZFYsM0JGxi8XQHnnDnHJeYnWzmaLAMnLWaHpwPsEEIQyArNM/
         ZX0sQvd/mDqx6tD04xoDIhL56ZDeSUb2IFYUHoOKgSELMqm2r9pcYwtrD3iUOHJnr0G9
         n7qDswsdpTzoEu/flnrb3i0fVFDffGF6DTu9+LUv7SP9ubaFb4IYPEnzKzFje6oKe5kn
         7pKtw7w5bSV9NRkDXhCt/VTPix+fKXvec1UvSegzCDQM04VpaaI9Lu4vyHjUMpKSVHUP
         p6IVaoHnf6gbbSgmeUFdbgdJVQdZ+ry3Lm+TZYMtdFL9N6iimJj9Exv5nuWXa6uzvfir
         1f8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Zcr1s3ugeaE9p3nhhIdLCJU637n5hOiY3Yql49RPVHo=;
        b=IWvM1/c1b828QDX66TNtM1y8DlDjZ2y9oe+uIKPFJdrOjdfgn0gakxPya7YHp7ocL/
         uN1v3MvM9ZZHbqEhMT8WAU9HEBBgHryFWaqNrMzD+AzEK8l5hAmiVbOQYfOJyp6hvUHR
         hShYsODq5NzG3weVvBjha75D4vs3sZD4lt7ZIEox/lJE07TDUS3MtU8IKh/pB963s/rV
         KJUfPKOTt8B9MH947QvD1e2ntqp5KXYRWIbj8zR6Poz2o/pVqp2GlI9ZOrhP0G93rKaQ
         skSdZ+rGc9PIGEJBdqDvNuGA8GzBOjDrWs3hN696/NVaWjTL7zqxF6osOcE6KABBn4+Z
         yJeA==
X-Gm-Message-State: AOAM531wLq3bMhMjqz8tPOdFVb0yo9Wmmgu4YtMT8x7ymOFRcFh954Ce
        n+5Y5OmQ5EmKp7/i4+2KwggdKO8DQJORw8EyntKaroZHfSTUnw==
X-Google-Smtp-Source: ABdhPJxl+08Zn/lYdSINCrN0AMJJoC21Ex/5MKiRcxgoQhyNTV2ssDVGcuudIFlulouWleLEtWVvAyJyT1x9WmwmgUk=
X-Received: by 2002:a25:df50:0:b0:65c:e053:3449 with SMTP id
 w77-20020a25df50000000b0065ce0533449mr10779582ybg.291.1654252568890; Fri, 03
 Jun 2022 03:36:08 -0700 (PDT)
MIME-Version: 1.0
References: <20220427144620.9105-1-pmalgujar@marvell.com> <20220427144620.9105-3-pmalgujar@marvell.com>
 <CACRpkdaqeTs-jHPBmtdiz+LdMM0pz0zqt4diX=e+YpgaGr0Jbw@mail.gmail.com> <20220603090618.GA27121@Dell2s-9>
In-Reply-To: <20220603090618.GA27121@Dell2s-9>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 3 Jun 2022 12:35:57 +0200
Message-ID: <CACRpkdaOd0-k_mt0ZrKT-DbVc3f0b5uXXmXpBNH=hq3BGCB+vQ@mail.gmail.com>
Subject: Re: [PATCH 2/5] dt-bindings: gpio: gpio-thunderx: Describe pin-cfg option
To:     Piyush Malgujar <pmalgujar@marvell.com>
Cc:     linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, brgl@bgdev.pl, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, rric@kernel.org,
        cchavva@marvell.com, wsadowski@marvell.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 3, 2022 at 11:06 AM Piyush Malgujar <pmalgujar@marvell.com> wrote:

> The purpose of this pin-cfg entry is different than the standard GPIO pin config usage.
> It is to write a value to GPIO_BIT_CFG register which is used to configure fields like
> pin function, selecting which signal is reported to GPIO output or which signal GPIO
> input need to connect, filters, XOR and output mode.

Then implement pin control for this driver instead of inventing a custom hack?
https://docs.kernel.org/driver-api/pin-control.html

Several drivers implement pin control with a GPIO front-end, for example:
drivers/gpio/gpio-pl061.c is used as a front end with
drivers/pinctrl/pinctrl-single.c

There are also composite drivers in drivers/pinctrl that implement both
pincontrol (incl muxing) and GPIO, such as drivers/pinctrl/pinctrl-sx150x.c

Yours,
Linus Walleij
