Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4BE8678529B
	for <lists+devicetree@lfdr.de>; Wed, 23 Aug 2023 10:24:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233228AbjHWIY2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Aug 2023 04:24:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234142AbjHWISb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Aug 2023 04:18:31 -0400
Received: from mail-vs1-xe2f.google.com (mail-vs1-xe2f.google.com [IPv6:2607:f8b0:4864:20::e2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B530619A3
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 01:14:08 -0700 (PDT)
Received: by mail-vs1-xe2f.google.com with SMTP id ada2fe7eead31-44d4cef5effso1176340137.1
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 01:14:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1692778448; x=1693383248;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9BqnoaQrc+k/EGaIhjvlmrLzZhJHDQjGpktA3aeLEYU=;
        b=Lxd1xBz4QhTQBil+19Nth+mmfytAAWGErXLm7pP3QMD3JbyPH3q26Ux4lJypdghqNH
         wpPkhIsgoio8g/OPXqHrBJrUgkHCPJiS2PZTvqcPEKcG5hWADioTJakWZiBDgoI1VfSn
         pHP+eXlPlWLoG3z4MfdhtQYtGBI4nflQCHOjY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692778448; x=1693383248;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9BqnoaQrc+k/EGaIhjvlmrLzZhJHDQjGpktA3aeLEYU=;
        b=kEwTuFKmuzIdRWytKq7VaOEjShmSYRKp3A5DpT3knWpoLPkKd8chRhGXkLmaGfUSbg
         ctz80exqxNfMAv72iv6t9IVySJk4SOJQqBLajxljPFWiFbptUe0/GzFjpdlmMdUT88Bq
         rOAu4dt8g15UZ8HdWD6bwe7pF5R6VLeSb8lka7IhpGXTc0EQSTEYiN1x+zri7U0aYBMo
         RCsVN7ZuMZLzwjEhkStUKwPBylU5vftrxe532Cz+Tydi1uy6GLKgoREZz3F7LtW/dnuI
         v6xZCANmjsUKGlVWoX+Q5ormjHdxPNh3OgdHbh/rSu9qDxpRW0W0e9/UYD+w4U1uqMr1
         py9g==
X-Gm-Message-State: AOJu0Yy9FgePTS6OkKxFurVpy4OCpoVNfzoC/OKj1Ep4TZbOjfopxlub
        Bt8HLZBDqoa7nuNQAyn3HgNleyE9VOTfPRp0oqu7CAAcah2FFOOH7+c=
X-Google-Smtp-Source: AGHT+IH4+6ztIqeKvjoE4Y07evhyiEKAgLnuWl8fEl2206g85MjP70+R3xLs9H41CAsIZm89sGQsPoMer8AWCZBvYeQ=
X-Received: by 2002:a05:6102:18c:b0:44d:3ba7:b617 with SMTP id
 r12-20020a056102018c00b0044d3ba7b617mr7906256vsq.32.1692778447964; Wed, 23
 Aug 2023 01:14:07 -0700 (PDT)
MIME-Version: 1.0
References: <20230822084520.564937-1-wenst@chromium.org> <20230822084520.564937-4-wenst@chromium.org>
 <5ad5ff92-1367-ba96-b126-da80511a2769@linaro.org> <CAGXv+5Gc+R-hUJi5gm8an+dkq3JMD2JGwP4kDakKaHbAX2P0gQ@mail.gmail.com>
 <e1c69599-a894-4cc8-123b-f4654b08412d@linaro.org>
In-Reply-To: <e1c69599-a894-4cc8-123b-f4654b08412d@linaro.org>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Wed, 23 Aug 2023 16:13:57 +0800
Message-ID: <CAGXv+5GL+Ltn-X-Hzxj7Wz_ztPVkCfo=WV6XdXGw_-j6ZhCF6w@mail.gmail.com>
Subject: Re: [PATCH v2 03/11] regulator: dt-bindings: mt6358: Convert to DT schema
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Mark Brown <broonie@kernel.org>,
        Zhiyong Tao <zhiyong.tao@mediatek.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 23, 2023 at 1:48=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 23/08/2023 05:54, Chen-Yu Tsai wrote:
> >>> +
> >>> +    regulator {
> >>> +        compatible =3D "mediatek,mt6358-regulator";
> >>> +
> >>> +        buck_vgpu {
> >>> +            regulator-name =3D "vgpu";
> >>> +            regulator-min-microvolt =3D <625000>;
> >>> +            regulator-max-microvolt =3D <900000>;
> >>> +            regulator-ramp-delay =3D <6250>;
> >>> +            regulator-enable-ramp-delay =3D <200>;
> >>> +            regulator-allowed-modes =3D <MT6397_BUCK_MODE_AUTO
> >>
> >> mt6397?
> >>
> >> Both cases look a bit confusing.
> >
> > There's only two regulator binding header files, mt6397 and mt6360.
> > They seem to correspond to the two classes of PMICs that MediaTek has.
> > I believe the two header files and thus the macros are meant to be
> > shared?
>
> Defines have specific model name, so they do not look like meant to be
> shared. If all the values of the binding match, they can be shared, but
> then this should be mentioned in the binding plus it should be used in
> the driver. I don't see your driver patches add include of this header.

Indeed. AFAICT the original raw values 0 and 1 just map directly to the
register bitfield values. And those are common across the series of PMICs.
I'll look into cleaning it up.

ChenYu

> > MT6397 and co refer to their AP PMICs, i.e. PMICs that are companion
> > chips to the SoC and provide most of the power rails a system needs,
> > along with things like RTC, audio codecs, etc.. The MT6358 and MT6366
> > belong to this class.
> >
> > MT6360 and possibly others refer to their charger PMICs, which integrat=
e
> > a battery charger, USB type-C PD stuff, LED drivers, and a handful of
> > regulators.
>
>
> Best regards,
> Krzysztof
>
