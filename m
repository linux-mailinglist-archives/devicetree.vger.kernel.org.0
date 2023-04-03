Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C060B6D495A
	for <lists+devicetree@lfdr.de>; Mon,  3 Apr 2023 16:37:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233682AbjDCOha (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Apr 2023 10:37:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233677AbjDCOh3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Apr 2023 10:37:29 -0400
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com [IPv6:2607:f8b0:4864:20::112e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F5591767B
        for <devicetree@vger.kernel.org>; Mon,  3 Apr 2023 07:37:01 -0700 (PDT)
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-5416698e889so555830667b3.2
        for <devicetree@vger.kernel.org>; Mon, 03 Apr 2023 07:37:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1680532620;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=opY0CnpCl2TUFSQwRkx2YgWWlRNGdg8wXm3hOTsdndA=;
        b=mucEXEm7Z0gG1+z8vtgoSN1UvxLmgwQUPa4Ef9yzRBaCKoP83Sc42BnrJv3A/EZ8p4
         yhxB6VVXZipyGm/anOLC8oOheTLMRHL4o8W/qI69nHCk8s5iZzHZKa8fUH0a5k0n2Jp2
         COZOC3FzyKTE+etbPDy6Qn6MLWrULMvecpcwQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680532620;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=opY0CnpCl2TUFSQwRkx2YgWWlRNGdg8wXm3hOTsdndA=;
        b=CPVj/Wn/La1xutzgYX7/6tW2hovq9DKhW2Qwxtj21PH4PWPldsgfl1jqFYlsKlHBeN
         Vs9kKf+aN+X8CbO6e5F1jgupmvHO74IGdUGLvJWcyckKavUClQjZ0cYR9LEyM2sIVANO
         mRorcda0H6+UrBantxdKCv6DCZ05yWW3a6IHjqO6qcSo3QazOvXigbdstzpcel4SdzOL
         3f1kqzarefvKdlcua6RNuUxu9d+hTdEktUyPEta93OhymSiWaoZajMtztobpK++QaCqO
         2+zHBDBSCC2qewMOoiz/TW63d0M0PO9+qgGfognRLQ+eZYxeOHgS7TIBBstqW7796WIr
         N3yw==
X-Gm-Message-State: AAQBX9e+SnVmgaJHlzYlBmO1K+q31XOnj9NXYlk0+jkfv6hu6GoN3Nv4
        rSJ7p2JFO2X81alZBpxqPoHXgwWxz2wnJ9h2H8T0lw==
X-Google-Smtp-Source: AKy350YndvfOE5H1g0lwwP52fPFaE7plvCDKzpKwLibQV9vvaySn0o5cIbhpFAA6zhyu23MQPfggf1c1fC72Kc9jqJI=
X-Received: by 2002:a81:a789:0:b0:549:143f:3d3 with SMTP id
 e131-20020a81a789000000b00549143f03d3mr2606494ywh.0.1680532619988; Mon, 03
 Apr 2023 07:36:59 -0700 (PDT)
MIME-Version: 1.0
References: <20230403124458.198631-1-festevam@gmail.com> <8f7f925f-638d-737c-bf47-2a66ce0eec59@linaro.org>
 <074183d480cf18948aacd98be60308f8@denx.de> <2ed6078f-7982-a5aa-863b-e61f8e9f846a@linaro.org>
In-Reply-To: <2ed6078f-7982-a5aa-863b-e61f8e9f846a@linaro.org>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Mon, 3 Apr 2023 20:06:48 +0530
Message-ID: <CAMty3ZDKTpTAHxqt6320NRVoABwUMOJjBPpUmPpZeP264wLeFg@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: bridge: Convert Samsung MIPI DSIM bridge
 to yaml
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Fabio Estevam <festevam@denx.de>,
        Fabio Estevam <festevam@gmail.com>, neil.armstrong@linaro.org,
        marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, inki.dae@samsung.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Apr 3, 2023 at 7:13=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 03/04/2023 15:25, Fabio Estevam wrote:
> > Hi Krzysztof,
> >
> > On 03/04/2023 09:49, Krzysztof Kozlowski wrote:
> >
> >>> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> >>> Signed-off-by: Fabio Estevam <festevam@denx.de>
> >>> ---
> >>> Changes since v1:
> >>> - Added samsung,mipi-dsim.yaml entry to MAINTAINERS file (Jagan)
> >>> - Added Marek Szyprowski entry to the samsung,mipi-dsim.yaml
> >>> maintainers section (Jagan)
> >>> - Mention that i.MX8M Plus is also supported (Marek)
> >>> - Remove endpoint@0 description as it only has one endpoint (Marek)
> >>
> >> Where is the changelog from original submission? How your v1 differs
> >> form it? Or did you just ignore all the feedback?
> >
> > I'm sorry, but it was not my intention to ignore any feedback.
> >
> > Which feedback are you referring to specifically?
> >
> > Some more context: last week I sent a patch adding a new property
> > for exynos_dsim.txt and you asked me to convert it to yaml first:
> >
> > https://lore.kernel.org/all/ff66c8b9-c7f7-1eb2-c730-4812b7ff6824@linaro=
.org/#t
> >
> > Jagan pointed out an earlier submission he did in 2021:
> >
> > https://lore.kernel.org/all/20210704090230.26489-9-jagan@amarulasolutio=
ns.com/
> >
> > That was my starting point.
>
> I think I saw v11 but maybe not. I cannot find it now. But anyway if
> this was the newest submission, it already got feedback which we do not
> need to repeat...

Are you referring to v11 based on DSIM series versioning? If so, the
DSIM series from v1 onwards never had this patch of converting .txt to
.yaml that series instead added the new dt-bindings on top of existing
.txt. The actual conversion patch from .txt to .yaml was initially
sent as RFC, so Fabio's versioning seems correct to me.

Thanks,
Jagan.
