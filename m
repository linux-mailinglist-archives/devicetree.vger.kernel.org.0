Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CA9DE2B7059
	for <lists+devicetree@lfdr.de>; Tue, 17 Nov 2020 21:43:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728135AbgKQUmr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Nov 2020 15:42:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727257AbgKQUmq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Nov 2020 15:42:46 -0500
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com [IPv6:2a00:1450:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D5A7C0617A6
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 12:42:46 -0800 (PST)
Received: by mail-lf1-x143.google.com with SMTP id s30so32024729lfc.4
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 12:42:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=L2XntWx1y1gpB2zza3sexbEVvLmMOFS8PQu3a25Ms+I=;
        b=WJypW+MHidKZaX64TWWzLmN6D07RxOwfKLvMUmMki4n6R9DuTk3yi7tRfOdJl/n4jx
         R/7T7OtppVTMUo5Bw5+NEZ1p+oqDhQOpEjVF2+sGPO42/Am/Y+X9Wy41MTZg4+awaMuZ
         +Ck/KOt01whYifxeNP9YyxwrAxJfAlmZyfxIn859V3X2+K/nvSivBAJKy8yRXadrxhxX
         81kAqDwKmDcedER8pf/GB8NKck15xAOOyQ072y//0MIzl1f+M+kYGj+07Eo0XnTG1711
         aXTYeWZ1yKHJtUxBXxokBge+JYcJDczwDoISNZ9e4FdaT4C1z8AhKU8FLN4MGI3zTIlu
         nnaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=L2XntWx1y1gpB2zza3sexbEVvLmMOFS8PQu3a25Ms+I=;
        b=cfNJyifECMYQpP1NSafsC+aG6g9bWSKRI4O+6dvd6DZZkvi6mttzzm8XPMQpPx00To
         S5ufoDLvYE99MxvTZG/+gFbnRuNVlhDgWkS7ZpfxuEEcAu0A2zHQIW35l7oUHTgqYkHs
         KR6XNQPRy8qOEhN9CRRVXY6HyeXaZs0LB41vTF96HozkdNucrGwSyO9mJyePNIDuY18q
         PhxOH9s+lLRXWiO3cNuQVNkwSH8K8mtCgGwc7aR/Dp+V8kcPMc3sdktvfxclc4kBYgsx
         TOXwQrAcuepAU2ntzsGaI7sON76RgGJlxVu3WJ2dQ+OTri51M0CBQGFzte5JnHivesDJ
         mKdQ==
X-Gm-Message-State: AOAM531MNbz0cg3la7Qa3K3FHloLP9jaS0diC8CZJ4EokYEKeauKWfO/
        wCA08Jc0giUhNpmSrdZiA7LC56AHSm7shyeZP7jABA==
X-Google-Smtp-Source: ABdhPJwCEFlugDpftC5aCbRFV58aiwRCbJbF7gyOc8c0nXAR58EkOd4ZGBwLbtPI/hao+2//l0/OetjMt0kKI3hEWWE=
X-Received: by 2002:a19:546:: with SMTP id 67mr2233621lff.502.1605645764854;
 Tue, 17 Nov 2020 12:42:44 -0800 (PST)
MIME-Version: 1.0
References: <cover.1605635248.git.agx@sigxcpu.org> <a4930fb7a7464e4feedbdae993fe25080c8f5490.1605635248.git.agx@sigxcpu.org>
In-Reply-To: <a4930fb7a7464e4feedbdae993fe25080c8f5490.1605635248.git.agx@sigxcpu.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 17 Nov 2020 21:42:33 +0100
Message-ID: <CACRpkdao_TMcpRsdK=7K5fNKJse0Bqwk58iWu0xsXdDNdcffVA@mail.gmail.com>
Subject: Re: [PATCH v1 5/6] dt-bindings: vendor-prefixes: Add ys vendor prefix
To:     =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Ondrej Jirman <megous@megous.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Lubomir Rintel <lkundrak@v3.sk>,
        Mark Brown <broonie@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        allen <allen.chen@ite.com.tw>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 17, 2020 at 6:49 PM Guido G=C3=BCnther <agx@sigxcpu.org> wrote:

> Add prefix for Shenzhen Yashi Changhua Intelligent Technology Co., Ltd.
>
> Signed-off-by: Guido G=C3=BCnther <agx@sigxcpu.org>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Doc=
umentation/devicetree/bindings/vendor-prefixes.yaml
> index e40ee369f808..d0f3abf2f12c 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -1220,6 +1220,8 @@ patternProperties:
>      description: Shenzhen Yangliming Electronic Technology Co., Ltd.
>    "^yna,.*":
>      description: YSH & ATIL
> +  "^ys,.*":
> +    description: Shenzhen Yashi Changhua Intelligent Technology Co., Ltd=
.
>    "^yones-toptech,.*":
>      description: Yones Toptech Co., Ltd.
>    "^ysoft,.*":

I think this should be in alphabetical order of the compatible string, i.e.
under yones.

Yours,
Linus Walleij
