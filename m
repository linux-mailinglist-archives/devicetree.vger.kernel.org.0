Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E3F96D2FD4
	for <lists+devicetree@lfdr.de>; Sat,  1 Apr 2023 13:12:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229458AbjDALMG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 1 Apr 2023 07:12:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229549AbjDALMF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 1 Apr 2023 07:12:05 -0400
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A0941F7B3
        for <devicetree@vger.kernel.org>; Sat,  1 Apr 2023 04:12:04 -0700 (PDT)
Received: by mail-yb1-xb29.google.com with SMTP id cf7so30042193ybb.5
        for <devicetree@vger.kernel.org>; Sat, 01 Apr 2023 04:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1680347524;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=puWBrOAa75bVzNbkWYedWZA8RYAVUknhCQ2nSA06Dl8=;
        b=kHRkPjzla4CIH0kv0NXEiWaCIZYqPCHiYYVJoMD+/r6bNXffRIKJnkZiyngQIeDLkm
         PwZbG/PYAM3uJ8KltCHC0FevGZadQpYv0amSAc9Bk0nu1VlQ4gNo0hSEs8uEylihO8t0
         lrSmEcCBEwQUuqx6EunigTXLaFfAYKdVQwnug=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680347524;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=puWBrOAa75bVzNbkWYedWZA8RYAVUknhCQ2nSA06Dl8=;
        b=lcGATlwDQrskJcKJxB1eptPnTBGpwP6UPJXawIVt7owBPFQETkMRrjCxVcKj9CET4I
         8fWgSz/6CQntgAZlvos9dpZNPDqUII2VzEUxo/lloapthO9ZzTp58ec6d9aZJE4ymzdy
         YGnWWT3sSRF9lWRXpdxuXbnyBjRiIapcSW+8KNKFLaAcQH56sjZC9JsN6gBf9zWi1L5M
         0G2qDu83W8M7efaeW4qXQqJZHQVFfi/FEVeX5w9hoMzfuxtspw/iw7mHU3mFnTCezeCP
         ckWLK6iSPda1SZrMav0elcZnPjWRUbEvBdgKsUAPOG9QZRPB/fKUYkc904/iLkNof04/
         rU+Q==
X-Gm-Message-State: AAQBX9dRhacgvYWV1vWiDZPk+Nje9wRbUubGz2JJw4mfR3uFPrPmqafr
        6oiQn0rAwG8Lo/YjG3iVo7VmWNu8WAX4hQqTHIhwiw==
X-Google-Smtp-Source: AKy350bWxH1itHV15Sfs1g5EC6sZCHgG4SvMBURRoCBE+ZpjFzd2ZWIzgcTLo9d5JYm3DG6v722PvfBZ+iaf/Tsspfs=
X-Received: by 2002:a05:6902:1141:b0:b73:caa7:f06f with SMTP id
 p1-20020a056902114100b00b73caa7f06fmr19613568ybu.5.1680347523808; Sat, 01 Apr
 2023 04:12:03 -0700 (PDT)
MIME-Version: 1.0
References: <20230331195746.114840-1-festevam@gmail.com>
In-Reply-To: <20230331195746.114840-1-festevam@gmail.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Sat, 1 Apr 2023 16:41:52 +0530
Message-ID: <CAMty3ZDsx_Z2MYxwPKVork0mKBoG-8wzwFu8WhBhOjUm2yq-Hg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: bridge: Convert Samsung MIPI DSIM bridge to yaml
To:     Fabio Estevam <festevam@gmail.com>
Cc:     neil.armstrong@linaro.org, marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, inki.dae@samsung.com,
        Fabio Estevam <festevam@denx.de>
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

 asOn Sat, Apr 1, 2023 at 1:27=E2=80=AFAM Fabio Estevam <festevam@gmail.com=
> wrote:
>
> From: Jagan Teki <jagan@amarulasolutions.com>
>
> Samsung MIPI DSIM bridge can be found on Exynos and NXP's
> i.MX8M Mini and Nano SoC's.
>
> Convert exynos_dsim.txt to yaml.

Thanks for rebasing this.

>
> Used the example node from latest Exynos SoC instead of
> the one used in legacy exynos_dsim.txt.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  .../display/bridge/samsung,mipi-dsim.yaml     | 275 ++++++++++++++++++
>  .../bindings/display/exynos/exynos_dsim.txt   |  92 ------
>  2 files changed, 275 insertions(+), 92 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/sams=
ung,mipi-dsim.yaml
>  delete mode 100644 Documentation/devicetree/bindings/display/exynos/exyn=
os_dsim.txt
>
> diff --git a/Documentation/devicetree/bindings/display/bridge/samsung,mip=
i-dsim.yaml b/Documentation/devicetree/bindings/display/bridge/samsung,mipi=
-dsim.yaml

Can you add this to the MAINTAINERS file.

> new file mode 100644
> index 000000000000..c131bd879caf
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.=
yaml
> @@ -0,0 +1,275 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/samsung,mipi-dsim.yaml=
#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Samsung MIPI DSIM bridge controller
> +
> +maintainers:
> +  - Inki Dae <inki.dae@samsung.com>
> +  - Jagan Teki <jagan@amarulasolutions.com>

Please add Marek Szyprowski <m.szyprowski@samsung.com> well as he
included in the MAINTAINERS file.

Thanks,
Jagan.
