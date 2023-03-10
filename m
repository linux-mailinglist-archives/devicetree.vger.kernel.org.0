Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1BCEF6B54C7
	for <lists+devicetree@lfdr.de>; Fri, 10 Mar 2023 23:51:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231522AbjCJWvM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Mar 2023 17:51:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231328AbjCJWvL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Mar 2023 17:51:11 -0500
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com [IPv6:2607:f8b0:4864:20::1130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B21A10BA76
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 14:51:09 -0800 (PST)
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-536c2a1cc07so126272837b3.5
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 14:51:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678488668;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5LQ2HzZ5/bi/kOKo7NEBlYoMYy0KUYQz8z6lYvJaO88=;
        b=CsRc5Yj4v6oMwTHZDXSBIJu1WUd+WKnNbbnBRzECCKZQKqAeYyk3g2skIyqllyml9N
         YkuB1zIVR4Gz09ofgcAlgItEpzD2ZN3zrZZc7yQDar9fCWLsETqJzHdA++8HZbrRUGIB
         a8WLKRX6xoN+4ZGFFJKJYeERlLfRbze0ycq2elEM1zAfUoNmLjjMQf2hxremPynCPFxg
         hoIlggBNAGgThOr1cX9poKYS0U9KhEqkA54OWmkqxtTU031rj5Q2CNrhAmArdrUbC7Ze
         5B90KoNaRJHfbtbuEAW+CvZriQxfb/bCQYgh72mBblBbL39CthVhQBJKMdIBJj8aurqr
         IFpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678488668;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5LQ2HzZ5/bi/kOKo7NEBlYoMYy0KUYQz8z6lYvJaO88=;
        b=HSIp0h1efzGBoMFakmc/oQ/QSIawS8q+APDyLKgAVX/D5X6GtO9lWhjv+3Fak9RYb0
         5sgpzkp8bAyp+KUz1OAtlwZ6o9HW1RQi+svJ7/oLquPEhANbZGK0AkOpuqxmfNvsxPEB
         kWCqqY50eiW/k/qufeFUXIm1M+dEkLzo9+WAh2nZyv9oeN+aaIn0gwThTT4Rd4my9AiS
         H2cP1+4EhkgwGUFsVZTjAbhdWyV/W7RoQNlq4VSPKoJVkjw5Tb4bunMLSRejzSzWkcou
         WpuGsh1Cn4JVoWTR0yyDtoPZmFo1TS5FFpwzLqo73IaRTokPQj9eGMXxENNkMn0gHRwu
         QEcw==
X-Gm-Message-State: AO0yUKXOAgJG9jhM2eusRKsFjFHXtMFmRD9ZK+zZakWOzF3WU+5aYu+h
        hF/Yy1D3ayj/KGeZJ3NKBZ6bHokTw8Pxn54f/DqnKg==
X-Google-Smtp-Source: AK7set9Vgsn5Grv4otQPAm23jXoXW/OhNMlrjQMLAs7IGnb7QimXeWnLl/d1v7+vmSUynvjW6CwEXRyAR13UOuRdqy0=
X-Received: by 2002:a81:ad1e:0:b0:540:7a8d:2ae8 with SMTP id
 l30-20020a81ad1e000000b005407a8d2ae8mr944258ywh.10.1678488668485; Fri, 10 Mar
 2023 14:51:08 -0800 (PST)
MIME-Version: 1.0
References: <20230310132144.2241-1-lujianhua000@gmail.com> <20230310132144.2241-2-lujianhua000@gmail.com>
 <6539f132-c740-b9b6-8810-0affd6ab91ba@linaro.org> <ZAt4fTNEnyLteaas@Gentoo>
In-Reply-To: <ZAt4fTNEnyLteaas@Gentoo>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 10 Mar 2023 23:50:57 +0100
Message-ID: <CACRpkdavjBPaNq1sRfi-FYiT7T3W19fU-mjha0pAtooUyf-8XQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] drm/panel: Add driver for Novatek NT36523
To:     Jianhua Lu <lujianhua000@gmail.com>
Cc:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 10, 2023 at 7:35=E2=80=AFPM Jianhua Lu <lujianhua000@gmail.com>=
 wrote:
> On Fri, Mar 10, 2023 at 07:10:21PM +0100, Konrad Dybcio wrote:
> >
> > > +#define mipi_dsi_dual_dcs_write_seq(dsi0, dsi1, cmd, seq...)        =
\
> > > +           do {                                                 \
> > > +                   mipi_dsi_dcs_write_seq(dsi0, cmd, seq);      \
> > > +                   mipi_dsi_dcs_write_seq(dsi1, cmd, seq);      \
> > > +           } while (0)
> > This should be in the same file as mipi_dsi_dcs_write_seq, imo
> I have sent a patch to do it, upstream don't think this wrapper is a prop=
er
> approach to deal with dual dsi and wrap all of mipi_dsi_* function is
> useless.
> https://lore.kernel.org/lkml/20230310110542.6649-1-lujianhua000@gmail.com=
/

We can keep it locally if the fight isn't worthwhile, but I will try to ent=
er
the discussion.

Yours,
Linus Walleij
