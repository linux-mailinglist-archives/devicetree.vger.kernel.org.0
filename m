Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BAC8E716D42
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 21:16:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233030AbjE3TQJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 15:16:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51622 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232184AbjE3TQI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 15:16:08 -0400
Received: from mail-vs1-xe34.google.com (mail-vs1-xe34.google.com [IPv6:2607:f8b0:4864:20::e34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24FBEF9
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 12:16:07 -0700 (PDT)
Received: by mail-vs1-xe34.google.com with SMTP id ada2fe7eead31-437e8282c1fso1145505137.2
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 12:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1685474166; x=1688066166;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jso9vHih5+6IaxHyoE18jYidSmiugbdBSe011FzYys0=;
        b=nt3lyA9yKe2IFAX8DzfpyFJjoan1Vkrz6VMvV+KjgPwf532xcV5PWuVUlFBPuO9DEg
         bCOOl+ojZIDU/sDdv59+RfwEQfC4kchhY2Byt/lcNZSwzhmY9RpuMH1KEUBRvpqbrKPU
         28cdisGVp8R7ekRvyo6ebXyCbOJbAcdyOkcCQVyxiHUejIiQQbfOy1UwAtE2apJl4Dn8
         UzDeE0PluyWpOPqlaFulSpTeQJCpAfRQCwW4v+Q5+Zv7pY1YmeA5JSYLuPX0zD00rnDw
         JjXmS/HtVZsrHyxF6/AwAN7GMwvQyRYgEVsMUZ3VaX9tLrZGCaD+HlTv0iIsxq1nvpps
         zb5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685474166; x=1688066166;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Jso9vHih5+6IaxHyoE18jYidSmiugbdBSe011FzYys0=;
        b=h+7jFmhtmOq0dcDGs8p8BgwDa7vy/kQ0oJoWUKo/FKDX70Iser06J2VHK99LlVUjHL
         okMvlndkI/fML88GPOJgXKP8OliJMl6QYSK4T+yJnCRma8XKzut6j3Fj18vpc/4jRj5W
         UjwnxCN7CmiBu6+q/yGk+o0ETxKN/QOn9D9mOp7EIxcw2I50+pYmVmgvycJ7LU5ifyUz
         ilqbOf1bT2U29QgwBOSjouB0KqZitRhaenNGSfGQLYksz6daXmKCfOkAZ19+gnEy9lAS
         PLpI1A/2iaVaWbjz/4H+MtQdSGtGSuBkpGi971fbqdNECMFiGVqEn3z6arZBIEFKQ46Z
         CbSg==
X-Gm-Message-State: AC+VfDzlAIyGBGcOecr768AJj5mCCxM9o27rO8WZVJUiu7utnKmM+Q3A
        oZy2XPpJxkQ8bU39IcQ4uJfZBOWTS3UTgvaqJvnj+w==
X-Google-Smtp-Source: ACHHUZ5N2LwKgso09mwWA+/M63l/0oFgwj9MsQ6//dZ/DMKciaWGSRkV1i4KVZvS8LImOQY9WolzBXCVch4VWL8DUJs=
X-Received: by 2002:a67:fe84:0:b0:434:6d2e:d0ac with SMTP id
 b4-20020a67fe84000000b004346d2ed0acmr1281192vsr.9.1685474166252; Tue, 30 May
 2023 12:16:06 -0700 (PDT)
MIME-Version: 1.0
References: <20230530151946.2317748-1-u.kleine-koenig@pengutronix.de> <ZHYbnDHgc9ZMc7rj@sol>
In-Reply-To: <ZHYbnDHgc9ZMc7rj@sol>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Tue, 30 May 2023 21:15:55 +0200
Message-ID: <CAMRc=Md3wCLuiS0tt2_v8Q1peqP+AkSrUNj1jg_8aZfDnj+2SQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] gpio: introduce hog properties with less ambiguity
To:     Kent Gibson <warthog618@gmail.com>
Cc:     =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, kernel@pengutronix.de,
        Andy Shevchenko <andy.shevchenko@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 30, 2023 at 5:52=E2=80=AFPM Kent Gibson <warthog618@gmail.com> =
wrote:
>
> On Tue, May 30, 2023 at 05:19:44PM +0200, Uwe Kleine-K=C3=B6nig wrote:
> > Hello,
> >
> > this is another approach after
> > https://lore.kernel.org/linux-gpio/20210503210526.43455-1-u.kleine-koen=
ig@pengutronix.de
> > two years ago. I switched back to "active" and "inactive" from
> > "asserted" and "deasserted". The poll about the naming is ambigous, but
> > I think with a slight preference of active/inactive over
> > asserted/deasserted (with my unbiased self preferring active/inactive,
> > too :-)
> >
>
> FWIW, this makes sense to me too - the active/inactive naming is used in
> both the GPIO uAPI and libgpiod v2, so it would be consistent with that,
> if nothing else.
>
> Bart, just wondering if gpio-sim should support the aliases as well?
> I realise they don't support active-low, so polarity isn't an issue, and
> it could even be confusing to support the alias, but just throwing it
> out there...
>

I'm not sure what you need aliases for? Value is only shown, never
stored (where you'd need "active", "inactive" strings).

Bart
