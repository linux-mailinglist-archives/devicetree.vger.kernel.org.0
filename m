Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB592580EF6
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 10:28:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238386AbiGZI2T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 04:28:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238411AbiGZI2R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 04:28:17 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7B9630549
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 01:28:15 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id va17so24880790ejb.0
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 01:28:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pQ7SCKqGlsciDqiv5/25YUIbbm5cmUkB/OzmAycWHs4=;
        b=aH6kYcPQVYfNdN4HasIYSyKPFkCWgnHO6Srd2x5F4w0hSGWjSRqpr83OO9oyk0qrn7
         8dS6r6TZLRRHgokNrpJSaoSpC/xdU3dOZR99dvDJ9Q0oXI69yVyEIVehcdXpNSUcb3s9
         LVZpY7atyK81IWKs2X1D5Sykg5VkCAfAsCCowC2TMx1BHMCkDC4xbhGlLbjzitG5ToeI
         5hWo0N4Dy32akeeJ0ByS50dDjUa1d8u4lPq/sQZElbq7/m57iWAUdY4tRXN+oeqRPX+F
         hgOH2hbfeo2nMBd46VlX2SBa0s50hIizwzzuUxM8Jog6ZxKlIksWuU7j2JsURTOqg6fP
         XF1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pQ7SCKqGlsciDqiv5/25YUIbbm5cmUkB/OzmAycWHs4=;
        b=UF7QYjSArjJeBXAhbm/Nw3Oca+0cqpoisa9rB70DY5JMu4j8RITZGuYU/pA7tCCU8D
         y/AlBUgg7Hm44Mwj9s8YhJ2HAL4lrO1+QQk+BEu0TaUaYUpAXs7/+WHXxoHco3aud+u2
         hAWAYioahGa/Ya5GQPh/5wZ457vTHWhm9iDeOyBc1NP6dselLP4um+bSakDMqeWI9WMA
         HdA92MyDaOOcEHEDdgqsr8JTwmiEjqoep8kP+RznuGAMx7TlL638M9U7lCAi5CCkcqCv
         u+JqKQ9w+J7hBQMttPcCCRbFPs0uUmhnvmTg2Z6UVsPJGdVImAFbp+WGmurdoRTLI4oi
         rqpA==
X-Gm-Message-State: AJIora+GJOKlZYQKzq81qhgxuq0x6ANXFSohAHob57018jmpqkF27Qwf
        mDC6Ei0zX/nUteWHGonKHP9ljUHMcjsx6xfbwPsnRg==
X-Google-Smtp-Source: AGRyM1sYtrse96Qmboq12Me95LO++XeqXPlJpwNW07yVUFwcz3QFl410kvwaL29kjTadN8oZTAiQyeznpNOh0s2KPnQ=
X-Received: by 2002:a17:906:58c8:b0:6fe:91d5:18d2 with SMTP id
 e8-20020a17090658c800b006fe91d518d2mr13404618ejs.190.1658824094135; Tue, 26
 Jul 2022 01:28:14 -0700 (PDT)
MIME-Version: 1.0
References: <20220721093422.2173982-1-marcus.folkesson@gmail.com>
 <CAHp75VddBhc9peHXfNfTyTNni246kC8CyLqCrMFadn67LGDarQ@mail.gmail.com>
 <CACRpkdaczrU1tM5Yt7P-Q2h+ge8STOi6HvvYeTM-g+JwS8_gZw@mail.gmail.com>
 <CAHp75VfaExrFYto7LWa5Vnbm6JbiAqtutKmk0HzfeHmmi3PwOg@mail.gmail.com>
 <CACRpkdYHgD-fmt_2PWJrmyGY=AOP0Z+4jTkH=n3wJ+a0aApqcg@mail.gmail.com>
 <CAHp75Vf_aDSocdB7R6zKFwEOBRwq0w2m6GdCM-5ujKoz4bGiqQ@mail.gmail.com>
 <CACRpkdbTypeq0M8VNb491GaZdBLyE9_TFpCDn5omnTe8D+BU7w@mail.gmail.com> <CAHp75Vfrgkq+yTtFxjkvUMnVOHCL+VyHGXPn4BN7i6C1cA=Uuw@mail.gmail.com>
In-Reply-To: <CAHp75Vfrgkq+yTtFxjkvUMnVOHCL+VyHGXPn4BN7i6C1cA=Uuw@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 26 Jul 2022 10:28:02 +0200
Message-ID: <CACRpkdYHN3PPBb-=4MU1aTUxDvij_qeX4YkC9A28FQtUTvam0w@mail.gmail.com>
Subject: Re: [PATCH 1/2] gpio: gpio-74x164: add support for CDx4HC4094
To:     Andy Shevchenko <andy.shevchenko@gmail.com>
Cc:     Marcus Folkesson <marcus.folkesson@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Ripard <mripard@kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 26, 2022 at 9:31 AM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:

> It's rather my common sense, because we have a clock here to shift a
> register. It's kinda obvious *to me* that when we have a latch, that
> latch shouldn't pass data on a level. Yes, there are buffers with
> level strobe, but it's different. So, as I said, the oscilloscope can
> finish our discussion one way or the other, but I believe it will be
> my way ;) I will very (badly) surprised if it becomes your way. It
> will ruin my beliefs in humanity. Not less.

I think you are right Andy, I trust your judgement better than my own
here for sure!

Yours,
Linus Walleij
