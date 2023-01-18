Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6615167156E
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 08:53:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229687AbjARHxd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 02:53:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229682AbjARHxO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 02:53:14 -0500
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com [IPv6:2607:f8b0:4864:20::112e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E652066CD5
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 23:20:43 -0800 (PST)
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-4d4303c9de6so305565447b3.2
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 23:20:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QHYjNboy8i6R9pkgUzP7nFs+iFK9QG1SwwhxlUp7l3M=;
        b=UvYtut9XPZkKgSHzioy0kuwrqatZGmtMqiRohPNf0LkkqPhoaxWT6DnJdyUSehLWGL
         Aak74rM4QGI4BXUa/eIRNRbeoIEELMzp1G5Psr7FwraJOKbWrim31dvCrJB7UNnE9B+1
         i9/ASuwi0Y4zZlq0try9819MXRYpF6gxGlUmk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QHYjNboy8i6R9pkgUzP7nFs+iFK9QG1SwwhxlUp7l3M=;
        b=zBpW08UcpfPk14staJqwolCVBaYD/ZAIh21WjxPPHANRsdshJfJvApH0t6Sf8/s1l1
         A6aF+1Jl9OiCJKNG2+GlUzG6ZlPSQRrTTFDorsAKW5DHAT2fhsfMLcmhIAwn39Rc0yrv
         J9Tg2FotIz31NhgQkHbpqyMV8SQL7dsv3bxzgpFpHPmGt6ve58klgdqe3qx7Aw+NqxCM
         WQj5SYvfm2Wgy1MecpRrflklrzeTKlOlWIBncX72TeLcgmKFEt+/FNmTTAe6YmckgzhJ
         dJT0uy76hg/4wimGJuxKfJsabNexMIS+QpCnFqWK1zeVcmATAoe8TVGJrROZrDvg16ui
         g11w==
X-Gm-Message-State: AFqh2kq9HMyQAObBILZZFHKZfQq+YkSvDaPYvyaYxRcDq5Ek6CzjPyMn
        Y+TRwLDJtviSZik01Jr1aQwU7p3s2URlBGNq2P1Dd9GGBXwBAZ/1tKA=
X-Google-Smtp-Source: AMrXdXvtYDvMdtONGk24TUgUpLh2hVbPn7Lm7OA2tSJS7jb1XwdZK/sFwbClv6szed1mT098RXTqY7c7zA3yjmmsPuo=
X-Received: by 2002:a05:690c:852:b0:4d7:eb11:6bf7 with SMTP id
 bz18-20020a05690c085200b004d7eb116bf7mr739362ywb.235.1674026443094; Tue, 17
 Jan 2023 23:20:43 -0800 (PST)
MIME-Version: 1.0
References: <20230117105504.18296-1-jagan@amarulasolutions.com>
 <20230117105504.18296-4-jagan@amarulasolutions.com> <2dcb7b4a-9751-ec7a-f0ea-6de748ca3bf7@linaro.org>
 <CAMty3ZD_LWBR2+fu41Z5LEBcNw1KXEaY8P92Ypa-4rg2t8BH_A@mail.gmail.com> <c23bf1ef-de1d-ee64-f624-11e65915680a@linaro.org>
In-Reply-To: <c23bf1ef-de1d-ee64-f624-11e65915680a@linaro.org>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Wed, 18 Jan 2023 12:50:30 +0530
Message-ID: <CAMty3ZDjtmJ9Fh-muAOUTDVonM9wjPuP_Xw0Dz27hjOAgbBZkw@mail.gmail.com>
Subject: Re: [PATCH 4/7] arm64: dts: rockchip: Fix compatible and model for
 Radxa CM3i
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Chukun Pan <amadeus@jmu.edu.cn>,
        FUKAUMI Naoki <naoki@radxa.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 17, 2023 at 6:28 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 17/01/2023 13:52, Jagan Teki wrote:
> > On Tue, Jan 17, 2023 at 4:37 PM Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 17/01/2023 11:55, Jagan Teki wrote:
> >>> Fix the model name and compatible strings for Radxa CM3i SoM
> >>> and Carrier board based on Radxa recommendation.
> >>>
> >>> Fixes: 2bf2f4d9f673 ("arm64: dts: rockchip: Add Radxa CM3I E25")
> >>> Cc: Chukun Pan <amadeus@jmu.edu.cn>
> >>> Reported-by: FUKAUMI Naoki <naoki@radxa.com>
> >>> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> >>> ---
> >>>  arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi | 2 +-
> >>>  arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts   | 4 ++--
> >>>  2 files changed, 3 insertions(+), 3 deletions(-)
> >>>
> >>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> >>> index 225dbbe4955d..0c9a918b809a 100644
> >>> --- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> >>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> >>> @@ -7,7 +7,7 @@
> >>>
> >>>  / {
> >>>       model = "Radxa CM3 Industrial Board";
> >>> -     compatible = "radxa,cm3i", "rockchip,rk3568";
> >>> +     compatible = "radxa,radxa-cm3i", "rockchip,rk3568";
> >>
> >> Nope, second radxa is redundant.
> >
> > It is not redundant, Product name and vendor name is same. Vendor name
> > is Radxa and product name is Radxa CM3i
>
> If this was true, then on their website the product would be called
> "Radxa Radxa CM3i", but it is not. It is called Radxa CM3i, to denote
> the company name with the model name. Anyway, in the name of model you
> can call it. In the context of compatible it is redundant.

Is it mandatory to consider the manufacturer as well in order to
denote the model name of the product?

This I what I thought, correct me if I'm wrong. The recommended
compatible format is "manufacturer,model" so we can consider only the
model in compatible string in order to denote the model name, not the
manufacturer. So with "radxa,radxa-cm3i"  compatible the desired model
would be "Radxa CM3i"

>
> >
> >>
> >>>
> >>>       aliases {
> >>>               mmc0 = &sdhci;
> >>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> >>> index a4c33310ca42..8ca15b723799 100644
> >>> --- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> >>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> >>> @@ -4,8 +4,8 @@
> >>>  #include "rk3568-radxa-cm3i.dtsi"
> >>>
> >>>  / {
> >>> -     model = "Radxa E25";
> >>> -     compatible = "radxa,e25", "radxa,cm3i", "rockchip,rk3568";
> >>> +     model = "Radxa E25 Carrier Board";
> >>> +     compatible = "radxa,radxa-e25", "radxa,radxa-cm3i", "rockchip,rk3568";
> >>
> >> NAK. You just changed it in patch 2. Don't add broken compatibles in one
> >> patch (cm3i) and fix them next one. It's like adding intentional bugs
> >> and fixing them immediately...
> >
> > I did squash this with previous patch but the check patch showing
> > warning to separate the dt-bindings patch from actual devicetree file
> > change.
>
> Patch 2 was not a bindings patch, so you squashed wrong files.

I mean 3/7 patch - "[PATCH 3/7] dt-bindings: arm: rockchip: Fix
description and compatible for Radxa CM3i"

Jagan.
