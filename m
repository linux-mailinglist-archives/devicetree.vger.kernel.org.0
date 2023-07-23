Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DCD8975E475
	for <lists+devicetree@lfdr.de>; Sun, 23 Jul 2023 21:22:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229665AbjGWTWF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jul 2023 15:22:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229571AbjGWTWE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Jul 2023 15:22:04 -0400
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com [IPv6:2607:f8b0:4864:20::1130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDD8C1BE
        for <devicetree@vger.kernel.org>; Sun, 23 Jul 2023 12:22:02 -0700 (PDT)
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-583b4522927so16936807b3.3
        for <devicetree@vger.kernel.org>; Sun, 23 Jul 2023 12:22:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690140122; x=1690744922;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fquRMBRj9ZKqtHZyYUupyMW1B32z8De1kiiyymiS6II=;
        b=elN31IJY1iHFOuFJlXhVERTNIognMnWyaoIqk4XbLYrR/dqY4+4zCyHHAfj/GvTodg
         u5Qsr5toLHA4xAoeSMji+9UA6ErZp66b7H6vF/Nql1H41cABdt/j/ayUpyDNj/hhbBaj
         V8Vb1T0/A9UFx3glSYHxplAckjNNlgYVRixk/zzhupIqx6S2zfbj1e58/2wYSafgiRBE
         //EhHzuGoJFosu8DnMGGKbCRbtRznqaLg4/fOzRtyFvyDXcQ+SrfSpbKNELIa0wklH03
         sLxvKuD9MuqJqc3I3FmjZ70VsYmumNfYTIgJKubsBSDhCqkdJXVKG3vbBkjtX2hvxCEP
         fdqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690140122; x=1690744922;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fquRMBRj9ZKqtHZyYUupyMW1B32z8De1kiiyymiS6II=;
        b=YR5cgShn8CzlW9oHUYeqdCAyHJUNsdYNsIvJrpXAqsOhRQqyAdfONGWdTTxiFncM/O
         wf1zGJoCgDk9uh3puxuj7f41L/doyxVZVKA77ET3ithS6T7ElKR4y6tI7/ySVYxXKUC+
         ZQ2FRePhm6kcPpJ9iWnreIQIy4U7R9h+8fUg1k9wmFjHQ968xu+RF3jupPvr2RMtr2+q
         Fszx5JyIQhM9FsT+10lEv0muifPZNSWlDcmYLtY2uvrOdcOZIy3mxDshRDamuazZIuHi
         i4CNeN4yf58EUjP1Ka0pdvXfpZYT6A22KqJqPzXKWTS+rirGfL6kAV6rw4DuGr5Mu1D4
         h4Og==
X-Gm-Message-State: ABy/qLaELwd68gs5nAwiU0opRAD4OIwlheRo2vty/oPSHTZXEV06RKl8
        WSAZb4f5cEQoGO1T6Ng3byySRr5XfGBtt+yYHFVTnw==
X-Google-Smtp-Source: APBJJlFQTsRtV2Lfbo2xvto2SS5L44j+argU3fk97wrQhIMB6JGqzRsGIo/hPeDhFQB6VbWRPFTB0A/lm1tvJPnqI0A=
X-Received: by 2002:a81:6f55:0:b0:577:3b66:441 with SMTP id
 k82-20020a816f55000000b005773b660441mr4296179ywc.50.1690140122199; Sun, 23
 Jul 2023 12:22:02 -0700 (PDT)
MIME-Version: 1.0
References: <20230714122441.3098337-1-huqiang.qin@amlogic.com>
 <20230714122441.3098337-3-huqiang.qin@amlogic.com> <CACRpkdbbUga0biH=1tkCgRzUqNiDGdVf2woda5X2s43ct-na7Q@mail.gmail.com>
 <3e71a3cd-dc40-c3c3-8fe7-5c95096cc462@amlogic.com>
In-Reply-To: <3e71a3cd-dc40-c3c3-8fe7-5c95096cc462@amlogic.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 23 Jul 2023 21:21:50 +0200
Message-ID: <CACRpkdaEnfG5=zqBNG0gpHfva1dDf=YBUPd8yhkKLSi_-Fvb=A@mail.gmail.com>
Subject: Re: [PATCH V3 2/2] pinctrl: Add driver support for Amlogic C3 SoCs
To:     Huqiang Qin <huqiang.qin@amlogic.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, neil.armstrong@linaro.org,
        khilman@baylibre.com, jbrunet@baylibre.com,
        martin.blumenstingl@googlemail.com, brgl@bgdev.pl, andy@kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 17, 2023 at 9:25=E2=80=AFAM Huqiang Qin <huqiang.qin@amlogic.co=
m> wrote:

> > Andy had more comments about the header inclusion. Please
> > include all used headers directly as requested, I think it's a good
> > idea and avoids confusing compile problems.
>
> Yes, this is a good idea, but when many files must include the same batch
> of header files (seems to have become a kind of template), it seems like
> a good choice for us to put them all in pinctrl-meson.h (actually been do=
ing
> this a long time ago).

OK I'd say that is up to the taste of the driver maintainer so it's OK.

Yours,
Linus Walleij
