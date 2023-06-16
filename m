Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3EB2873319F
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 14:53:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243836AbjFPMxG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 08:53:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229560AbjFPMxF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 08:53:05 -0400
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C34530FE
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 05:53:04 -0700 (PDT)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-56cf00a04e5so7964897b3.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 05:53:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686919983; x=1689511983;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CC4+pWhIZunTVuA2ymJql5DGmR0KK8KjL/YmD5fofdc=;
        b=B/4ka6ITmEzsxEMx0GQ36klxPa8Yjb8CE6pScPqKHNm86oYRv6skCJmKi6R+LJtVSn
         pTCokeNSdBgjNoOCerTGRxbVGXxwT18On2/GXpTeAVpmxOuRNjzJ5cc+wTdcZh/xERUP
         rOh9FyvZ/sOJTtcpSsYF0kli9RzeIAVoEMuJwPIibPFOj784G2d8WoEX+UZhnAj5GYnY
         GQdxCG1JO/HhFrHWfT8Rfoogcd71cIAWPVQ0szkiQLLlFURVodk7CQ89dJUHQbmT2Cp5
         khYxpjIOm6gZK9PD9i73ZSCekZZaX7yRv+6i//c7F5ydsM4+cVVyToy29h7beuoTcVPK
         Iuwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686919983; x=1689511983;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CC4+pWhIZunTVuA2ymJql5DGmR0KK8KjL/YmD5fofdc=;
        b=PXNqBKwduW+nXxHxO4iyfVq+jLWioznPcZFbcMB8+onj4NuFOzos1rj7CbD6hmn552
         ibV0v1Lum9+5+T+6cFt2nOIXmoiqKbgD3y0hnatoItqfOt0FpeBzeqOy4iemQhON8J+P
         qkNLTHh2TE370esXVxcKrFGbMyxR1koTAcJz5uqbNXTVkTV0nIPYlrYmOQlAS1Y8GDKb
         xlo9GaJBRtdUF1XzIgfBKPpU96epKC4iU8CyfJ0+59CuelfQHDOVmleODD8k7EPq4pc6
         El9WpNf/XqiHi+Z+tc4PmL4+lFV1mYWX5oMqrnM8oyO54Rvrf33w4Ai/HUeFPS4kCvx0
         3nmA==
X-Gm-Message-State: AC+VfDwWpBd5ubxajaEgeYfCZraXny+pSxyrWJQQ2BYZ3Af7KOOQJDmp
        kLUqDNvOuAWvWQP9DR4+FZjYxTKVxsWm1/C23JmbwA==
X-Google-Smtp-Source: ACHHUZ5tzgmAO6NTdW16MM2p4xBolNh5C55obixHUitKfGfBPwj9jOy2ZwWteenp3/N1cvoaMpUp1DjEkRQSwMOnIRg=
X-Received: by 2002:a25:40c3:0:b0:bcd:3379:11b2 with SMTP id
 n186-20020a2540c3000000b00bcd337911b2mr1615849yba.52.1686919983691; Fri, 16
 Jun 2023 05:53:03 -0700 (PDT)
MIME-Version: 1.0
References: <20230607151127.1542024-1-pavacic.p@gmail.com> <20230607151127.1542024-4-pavacic.p@gmail.com>
 <CACRpkdbrEA54qmfTKSsFRG9ZS4u8hM6P5TXtOjRAiW+TD_v-fQ@mail.gmail.com>
 <CAO9szn00vRFm+iM1m7KgkW0WRuKyJEgVU4tVx4f5tF6KPnE=2w@mail.gmail.com>
 <CACRpkdaw8M3dSkmiV5QDOt3BBB7Jo6NxT0Og=zvA4REMA_7y9g@mail.gmail.com> <CAO9szn29A0qCABG0ACni42UGpsGKLwG7OT1y_ho3DgQ0WLvfmw@mail.gmail.com>
In-Reply-To: <CAO9szn29A0qCABG0ACni42UGpsGKLwG7OT1y_ho3DgQ0WLvfmw@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 16 Jun 2023 14:52:52 +0200
Message-ID: <CACRpkdYXtQwmZR1u-1fwmyC_8Yq4bMkjDBcUCfuGqSz_UhXWJQ@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] drm/panel-fannal-c3004: Add fannal c3004 DSI panel
To:     Paulo Pavacic <pavacic.p@gmail.com>
Cc:     neil.armstrong@linaro.org, sam@ravnborg.org, airlied@gmail.com,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 16, 2023 at 2:31=E2=80=AFPM Paulo Pavacic <pavacic.p@gmail.com>=
 wrote:
> pet, 16. lip 2023. u 13:44 Linus Walleij <linus.walleij@linaro.org> napis=
ao je:
> >
> > On Fri, Jun 16, 2023 at 11:57=E2=80=AFAM Paulo Pavacic <pavacic.p@gmail=
.com> wrote:
> > > =C4=8Det, 15. lip 2023. u 21:55 Linus Walleij <linus.walleij@linaro.o=
rg> napisao je:
> > > >
> > > > I doubt that the display controller is actually by Fannal, but I gu=
ess
> > > > you tried to find out? We usually try to identify the underlying di=
splay
> > > > controller so the driver can be named after it and reused for more
> > > > display panels.
> > >
> > > Yes, of course, the controller is ST7701S.
> >
> > Hm did you try to just refactor
> > drivers/gpu/drm/panel/panel-sitronix-st7701.c
> > to support your new panel?
>
> Yes I have tried, but there are too many changes needed and I wasn't
> sure whether I would be breaking compatibility with st7701 based
> panels.

For the community it creates a problem that now two drivers for similar
hardware need to be maintained, and that burden will land on the DRM
maintainers. For this reason it would be better if a joint driver could
be created.

I am sure the users of the old driver will be willing to test patches to
make sure their devices keep working.

Yours,
Linus Walleij
