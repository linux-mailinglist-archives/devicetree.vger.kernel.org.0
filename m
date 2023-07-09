Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E6AA474C7F0
	for <lists+devicetree@lfdr.de>; Sun,  9 Jul 2023 21:57:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229888AbjGIT5c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 9 Jul 2023 15:57:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229481AbjGIT5c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 9 Jul 2023 15:57:32 -0400
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com [IPv6:2607:f8b0:4864:20::1130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03513120
        for <devicetree@vger.kernel.org>; Sun,  9 Jul 2023 12:57:30 -0700 (PDT)
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-5776312eaddso47044027b3.3
        for <devicetree@vger.kernel.org>; Sun, 09 Jul 2023 12:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688932650; x=1691524650;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XgkK/cTKfOK8S9x6ub2ynsjCNrDYz2SCb+BJn2q9Unk=;
        b=xjcxJaKv9jAGc1Dv87OP97bV/xl+fCCJZ+nU0lk6whIQ3WhP1oann1gAglnF9TMkEW
         xAZiuDwINGsBZjoRwi00MYneTlQ0BhHL0eX3AW1VoxnGXikik2QJ22OmU7ySrreugd5B
         ZPO81iHotzDRGsQU2Ro82k/YKWevyvFrN0/LNEeQio2u8Sy9j5wEMVQIhFNCVSymam/q
         IY1hcSpjeSaqYEo430Ats2iCNdVBz2RNk3nFQG+gYa7yqiBirr66+R6MKBT5i/BSFEWX
         VhHQyTPgcp/X1W6pZaIRa7Rcy23W3OB5ukYwZl8PSDKsGxaOL6j6AEng0XqhOnlDyzTO
         9guQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688932650; x=1691524650;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XgkK/cTKfOK8S9x6ub2ynsjCNrDYz2SCb+BJn2q9Unk=;
        b=luOaYbQaefaT6WqE+XDF+GMj30VTKovzVi8/Y71Q2WsHcRiDrjuYkihlEK2wKYNfKO
         9cj7KPlsV4f6iEgn+4wz0AOkMm52uEWimWu3W3kgIoEqs/YELMHSmmsmgN81jRhNhdg7
         Zlv+r3HcE3NSfapmVSfmnoriN1QVBxhwslgB/kti+xCGrLRvnu1KaxG5DD912ckV0lwT
         FbLANXuIJGGreh6+BRcbiSeEor7xCmADcjvUal3jtOd65IfHo2GFbTAm+sf48dl63+3y
         yVSXc0VhGZAnebWLHRCY2gwHQGKEP9UUrZMhx5ID7VVZfJo9XFhYt2NaVqvf1evcrIvP
         ZtLA==
X-Gm-Message-State: ABy/qLZIZyLtGjMEFtxwQ2PTDLrzPguJuWQdpe2T/xpCG6YhxWLxV9IC
        g5vYOkxG5KgaeA2haBncdYQ5QRhdg8ZlfAtcoKxtCQ==
X-Google-Smtp-Source: APBJJlEWiLC1rRoN9gpdE5lrRVxDT8GaXCmFXOsicSSUM/3fTD8jbXZmvNCrkiCQdAzvV1e9R57hEVnz+A8I8+HCzk0=
X-Received: by 2002:a81:9283:0:b0:579:ef7e:d560 with SMTP id
 j125-20020a819283000000b00579ef7ed560mr10575341ywg.23.1688932650127; Sun, 09
 Jul 2023 12:57:30 -0700 (PDT)
MIME-Version: 1.0
References: <20230708173720.3548414-1-dmitry.baryshkov@linaro.org> <CAOMZO5ByECB18dytkbuhKJkX2haRHMRGh8G7De-swth2W6pkBg@mail.gmail.com>
In-Reply-To: <CAOMZO5ByECB18dytkbuhKJkX2haRHMRGh8G7De-swth2W6pkBg@mail.gmail.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Sun, 9 Jul 2023 22:57:19 +0300
Message-ID: <CAA8EJppvGd=S6WeJZGhn1tsxbHuFknemvSXEcM4MhpW_EhsCCA@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: nxp/imx: limit sk-imx53 supported frequencies
To:     Fabio Estevam <festevam@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 9 Jul 2023 at 15:25, Fabio Estevam <festevam@gmail.com> wrote:
>
> On Sat, Jul 8, 2023 at 2:37=E2=80=AFPM Dmitry Baryshkov
> <dmitry.baryshkov@linaro.org> wrote:
> >
> > The SK-IMX53 board bearing i.MX536 CPU is not stable when running at 1.=
2
> > GHz. Disable that frequency.
> >
> > Note, officially i.MX536 is rated up to 800 MHz, but running it at 1 GH=
z
> > proved to be stable.
>
> If the datasheet says the maximum operating frequency is 800 MHz, just
> adhere to it.
>
> Running at 1 GHz on an 800 MHz device is not guaranteed that it works
> on all the temperature range and across all devices.

I had to doublecheck this. Original board manufacturer (Starterkit)
lists it as "FreeScale iMX536 (ARM Cortex-A8 1000MHz, ...". However I
have verified that the board has MCIMX536AVV8C, SoC, which indeed is
rated only up to 800 MHz. I'll send v2 using max 800 MHz for safety.

--=20
With best wishes
Dmitry
