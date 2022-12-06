Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 743D1644526
	for <lists+devicetree@lfdr.de>; Tue,  6 Dec 2022 14:58:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230093AbiLFN65 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Dec 2022 08:58:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232444AbiLFN64 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Dec 2022 08:58:56 -0500
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com [IPv6:2607:f8b0:4864:20::112b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEECF3B1
        for <devicetree@vger.kernel.org>; Tue,  6 Dec 2022 05:58:54 -0800 (PST)
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-3c090251d59so152682117b3.4
        for <devicetree@vger.kernel.org>; Tue, 06 Dec 2022 05:58:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kk7KJe+l4C4JmAt+wWsokFYlio8NUCGKV94MLBWYbDA=;
        b=BHgXv+BEt7kIAmkQh1TjjerUmDy2oEHCy0dumNs2RidUeA+YNC+vzLM/pxDKRnBxaO
         TPvRG8q20sNeo2XDfhuDUzbKTbXBTo7kER1LZXXtEL6ZK/4p2OGRH8herAgEgZetzi7z
         XZiypgzdegBGx4F3NTQmBEkJtzwv8OTluzZzVrhJQUQJc77V0t2jwBmyvaPrRmi+u749
         W260RaolAzGjs+F/5agcLPSDtSAP0wq+kO650SiGVfjtxIvubOQZqPWAfnSqFf2MfC/0
         upCUsxHh3eQ+EnSJFD/FdIXu7Nl96z9SmILaUDb5S4+CRxG93l7YQyGYoNt/T2Vm1nme
         RNdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kk7KJe+l4C4JmAt+wWsokFYlio8NUCGKV94MLBWYbDA=;
        b=z+R+sWguUqr3T2y8+bED2hkAGfFWz59FPMISq3kRS3eRvSy5djRTtcoXFC3SvkMc7R
         i9wZH5ebDgzPmfLZ12BK4eJntLACug1+K4jw1mtrB9X42xSUvk+w3q6hy5fH1DupfYd1
         c+ALjXLu1CnWn9dv3o2hdlWdIES8bdLZkJLp5zLpUN6LeTDKLEGnznKx89OYl4zyXe2n
         lvngjiPBHcY2EsEuw0h43m4Bi4ICMV331WSWSqVzCWwkCDBIVs5nlbuEdrAwUHYxpK98
         nS5d7kNXklRPvgjzNUQw+hbwWLc6PJRR8iUHUkj96XneQCA64RIAPcnK/Gq+qcwXtcmh
         as6Q==
X-Gm-Message-State: ANoB5pn+yYojOCCJYOzn/SV9P9Hp8Us9Sb+Y3v+S/tzdB1z91U22lQo8
        NsAfDrvVxXqosHvu4QtI4XBHCU5Z7ijYeM8IA9sQXg==
X-Google-Smtp-Source: AA0mqf7O/Bc2E8iMh0Jxk7krElAwDPuh3wCtAqmS2Th8NLmQlok4cFXrsdTrgPCeLONDwHr9Q6d5fwz9rwnpoVdCpYY=
X-Received: by 2002:a81:b8b:0:b0:3d4:532a:753d with SMTP id
 133-20020a810b8b000000b003d4532a753dmr27136303ywl.343.1670335134121; Tue, 06
 Dec 2022 05:58:54 -0800 (PST)
MIME-Version: 1.0
References: <20221129172912.9576-1-macroalpha82@gmail.com> <20221129172912.9576-3-macroalpha82@gmail.com>
 <CACRpkdZK9=Z1i3Uv=fwS=t=NXHJkucg9FYOCfog_qhomf9GV=w@mail.gmail.com> <7746700.MhkbZ0Pkbq@diego>
In-Reply-To: <7746700.MhkbZ0Pkbq@diego>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 6 Dec 2022 14:58:41 +0100
Message-ID: <CACRpkdZ1XX9Od4eUnQRYwcfLjs8Ct-reXNQvv1zaxmj85-4jdg@mail.gmail.com>
Subject: Re: [PATCH V4 2/3] drm/panel: Add Samsung AMS495QA01 MIPI-DSI LCD panel
To:     =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc:     Chris Morgan <macroalpha82@gmail.com>,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, maccraft123mc@gmail.com,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        thierry.reding@gmail.com, Chris Morgan <macromorgan@hotmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Dec 3, 2022 at 11:18 AM Heiko St=C3=BCbner <heiko@sntech.de> wrote:

> Though in past projects I've seen the same display-controller used with
> different panels (and different dsi-init-sequences). In one project the
> display manufacturer even EOL'ed the first panel and provided a replaceme=
nt
> with said same display controller (and a different init) - but the
> datasheets for the display-controller were for the same chip still.
>
> So while in my experience the actual display name from the manufacturer
> identifies the display + controller combo, I don't really think you can
> go the other way with the controller name identifying the display+control=
ler
> combination.

I don't mean we should do that.

What I mean is:

- Name the driver after the controller, if we know which one it is,
  such as panel-novatek-nt35510.c

- Provide identifications of the controller+panel combo in e.g.
  DT compatible strings, provide init data as arrays in the per-variant
  match data (or similar for ACPI).

Yours,
Linus Walleij
