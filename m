Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 23AA7733038
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 13:44:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344479AbjFPLob (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 07:44:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344478AbjFPLo3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 07:44:29 -0400
Received: from mail-vs1-xe31.google.com (mail-vs1-xe31.google.com [IPv6:2607:f8b0:4864:20::e31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05E0C30F8
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 04:44:10 -0700 (PDT)
Received: by mail-vs1-xe31.google.com with SMTP id ada2fe7eead31-43dc7a78a37so212372137.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 04:44:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686915844; x=1689507844;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oB5XD+iAFsa6BpjNlxD9JxMbG+RhSE7xi6kN/8wWgEI=;
        b=xfxUs3Oozpk0bv89JYbgckRsUv2DfT+oPr0M+haaeuC/ZWFXOvQ4d+Mx/zkf68RwuF
         +oeAdSvtHV0aciPK8Yz/6hbskIryWreY3paf4TTjjvFjyfqRvRG30LD+dsBKGFHwIe7v
         Pqp6w9cNz0hFQFqLCiSbPUQAD0/Ve32QFhervrAlAQ+CLbRLtovAqXXGMUkTNAve0zUT
         urglOfPjVN2B1Wf1GR9IcuhtDFVwlIJhHUSKAuwjZObLdijtvAhFE38OBg1qECWfGhku
         g5Bc5nLQpJtLMFBY2nCkI17YuSWo1pslnpkQGWOQtL0gFMy917hPjl7Q+gV8N0nBpkFR
         Xxwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686915844; x=1689507844;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oB5XD+iAFsa6BpjNlxD9JxMbG+RhSE7xi6kN/8wWgEI=;
        b=HiJh+nmfCdDrQV0XorCMglygLdiKhlw2/C8PKcsJrsdYGHKGHiPbYXNn3GYuAzSkBy
         SbZHmFp31Rh5dV/6UZn1MhRHIMqq7dPeVWVNuM1GogiqtNFNhQPmBvI8C3IUp3LHARWi
         rnFwlVSNdkPFGLtU1uBA+egAtxkvf9L4wVDbYxwxISfpxE6joCwgCaKEYBBcLGxqrfCS
         9fPrqXNDkmamOREgMb0e4bXNelUWxw0ad3LnPDypAY5qTeOErUHNir9L+hMnKkt3jMmX
         hm9wUZ+98woCFuWM9drQ3mVenPmuChg4VEDJNDMXzN63nn0dSnt2WFUNYW7tpWQhoDfQ
         baxA==
X-Gm-Message-State: AC+VfDyBVngW6cq18NfLy2nNmrUPuV2y/Br1qRhP4NXGm9VntBcMg//j
        hApIlvOjRG4W+VQfBWp/1FBU1B2fzFqRzy82UqonN+2XKotzUH/KuKQ=
X-Google-Smtp-Source: ACHHUZ4jLlWRn5phN+P6OMzwDhUjx4u50eUQ4fFLvwxzFDmB9IsvALU9pV2SQC00cwc3EVvQQFQSug79d9kT2vdw3+w=
X-Received: by 2002:a05:6102:482:b0:434:8401:beae with SMTP id
 n2-20020a056102048200b004348401beaemr1412583vsa.34.1686915844223; Fri, 16 Jun
 2023 04:44:04 -0700 (PDT)
MIME-Version: 1.0
References: <20230607151127.1542024-1-pavacic.p@gmail.com> <20230607151127.1542024-4-pavacic.p@gmail.com>
 <CACRpkdbrEA54qmfTKSsFRG9ZS4u8hM6P5TXtOjRAiW+TD_v-fQ@mail.gmail.com> <CAO9szn00vRFm+iM1m7KgkW0WRuKyJEgVU4tVx4f5tF6KPnE=2w@mail.gmail.com>
In-Reply-To: <CAO9szn00vRFm+iM1m7KgkW0WRuKyJEgVU4tVx4f5tF6KPnE=2w@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 16 Jun 2023 13:43:52 +0200
Message-ID: <CACRpkdaw8M3dSkmiV5QDOt3BBB7Jo6NxT0Og=zvA4REMA_7y9g@mail.gmail.com>
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
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 16, 2023 at 11:57=E2=80=AFAM Paulo Pavacic <pavacic.p@gmail.com=
> wrote:
> =C4=8Det, 15. lip 2023. u 21:55 Linus Walleij <linus.walleij@linaro.org> =
napisao je:
> >
> > I doubt that the display controller is actually by Fannal, but I guess
> > you tried to find out? We usually try to identify the underlying displa=
y
> > controller so the driver can be named after it and reused for more
> > display panels.
>
> Yes, of course, the controller is ST7701S.

Hm did you try to just refactor
drivers/gpu/drm/panel/panel-sitronix-st7701.c
to support your new panel?

One major reason would be that that driver knows what
commands actually mean and have #defines for them.

Yours,
Linus Walleij
