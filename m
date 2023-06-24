Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0305E73CC88
	for <lists+devicetree@lfdr.de>; Sat, 24 Jun 2023 21:12:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232078AbjFXTMG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Jun 2023 15:12:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229662AbjFXTMF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Jun 2023 15:12:05 -0400
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com [IPv6:2607:f8b0:4864:20::b36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8830B5
        for <devicetree@vger.kernel.org>; Sat, 24 Jun 2023 12:12:02 -0700 (PDT)
Received: by mail-yb1-xb36.google.com with SMTP id 3f1490d57ef6-bd0a359ca35so1239636276.3
        for <devicetree@vger.kernel.org>; Sat, 24 Jun 2023 12:12:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687633922; x=1690225922;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NtWxvzR4uTKbUwOB1AIsZeFNL0PNxlG/EmtMr5TnJiQ=;
        b=wt32RpXDMbDbbikjXhaLI9xRb4hmK9Oh+EQ+2Xr1WE5YrCH4BTvYkIgThJcsmPk2MS
         PGgJVna75bQdhLdETfmjHL0l9NePlSH0a2mAelTpO4afxsLohqkG/GbyimZvtxLQjI2D
         VmSkyAMPkXMj+GYPzDLluwFhp3a2I6vdXO8IIHQmCfPnWua5P3X+UbSIqWYY/JYc7kCX
         ON++MCEn1oik/Un7U/ClrK49WMMVvpj5ISww7V+HuYqaZS5TUUNq/ed7pbbidKzDlejy
         PkZWWz/YMnQ+IfGKULB0QNBXbWzs0OPmTGJSB1n9k+lMm6FK3hsSV74YZtUHmm9KU4aI
         Ffvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687633922; x=1690225922;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NtWxvzR4uTKbUwOB1AIsZeFNL0PNxlG/EmtMr5TnJiQ=;
        b=mBRqM8tfA5HXr3MxXaT4KVwCU3P3PgTo3qIDERnx7Sntl0QTCxOicXpb7W0pdEgqbd
         iLOIKP6SgE6i13PQV+yYunOC8ztS5ydr6vL+xraaZPovFXTkdRf8IsMFJyvJa8lQ1pkb
         SLPDb1+BTz7et5NfT2rV/LZ7uWmIvOrOwniFS1egTUoR0ahNATgu0CdPe70q2fBRNC+L
         wHBdydENP9mMoUAPKMB0lC3lfKWAnPtIoX2z0/bU21dl192CLn5OOaqhEo2bFU63+pmN
         j55GOVUWaGgd8xyn5x6ma1+tp04AidkIfKxF52XumCYD3PMlXFbzTBJi24Hw8b+Hdzct
         +uOg==
X-Gm-Message-State: AC+VfDzuOd+fEpETP+U/LwbwU6tjTVzhR0VDTWQnp8W3SxPRay9acCAf
        A4SIKYTtP1thzvRjaMIpXAW/5EFlzGuhEfaHqTH4Lw==
X-Google-Smtp-Source: ACHHUZ4Fxc3tNghyeBZz8mFIClfbkSqctAt/Q+uSfLRzdZmNIXLLgOsC3Q32jk+9huyth6+cT/C5h/htReBze+JOqRc=
X-Received: by 2002:a25:6d45:0:b0:bc6:8015:1dc8 with SMTP id
 i66-20020a256d45000000b00bc680151dc8mr15218355ybc.33.1687633920950; Sat, 24
 Jun 2023 12:12:00 -0700 (PDT)
MIME-Version: 1.0
References: <20230623080135.15696-1-fabrizio.castro.jz@renesas.com> <CAMuHMdVNG_LENbU_nu-W+x_snXxbz3vbs=Yb-__FF3DBR2JEUA@mail.gmail.com>
In-Reply-To: <CAMuHMdVNG_LENbU_nu-W+x_snXxbz3vbs=Yb-__FF3DBR2JEUA@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 24 Jun 2023 21:11:49 +0200
Message-ID: <CACRpkdavQ1X29LyZscvdkBOS53H5sdYhZbKhWL9fpdghiddCTw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: rzv2mevk2: Fix eMMC/SDHI pinctrl names
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Magnus Damm <magnus.damm@gmail.com>,
        linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Chris Paterson <Chris.Paterson2@renesas.com>,
        Biju Das <biju.das@bp.renesas.com>,
        Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
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

On Fri, Jun 23, 2023 at 10:40=E2=80=AFAM Geert Uytterhoeven
<geert@linux-m68k.org> wrote:
> On Fri, Jun 23, 2023 at 10:01=E2=80=AFAM Fabrizio Castro
> <fabrizio.castro.jz@renesas.com> wrote:

> > the below issue:
> >
> > pinctrl-rzv2m b6250000.pinctrl: pin P8_2 already requested by 85000000.=
mmc; cannot claim for 85020000.mmc
> > pinctrl-rzv2m b6250000.pinctrl: pin-130 (85020000.mmc) status -22
> > renesas_sdhi_internal_dmac 85020000.mmc: Error applying setting, revers=
e things back
>
> To me, that sounds like a bug in the pinctrl core.
> Or am I missing something?

The pin control core tracks on a per-pin basis, it has no clue about
the name of certain dt nodes.

This bug would be in the DT parsing code for the different states
I think, and rzv2m is not using the core helpers for this but
rather rzv2m_dt_subnode_to_map() etc.

Yours,
Linus Walleij
