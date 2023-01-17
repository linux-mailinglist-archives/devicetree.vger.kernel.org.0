Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3E0EB66DE27
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 13:53:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236431AbjAQMxz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 07:53:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237062AbjAQMxd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 07:53:33 -0500
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16D7A3864E
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 04:53:02 -0800 (PST)
Received: by mail-yb1-xb2c.google.com with SMTP id a9so17160383ybb.3
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 04:53:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9LkkVvu7FzyrV007GCsU3N43wRkzk8+7MQtFApKS2m4=;
        b=UizF4D/yzPWU0fN9GtaOBMa7MKxVrVmvQL7aB64c96fCbS9KlX6vOdjFZcDuOTJdkb
         nOzyuKDFtgjWhwLSJqaPsg7aNq5StexZtkZ6rabuZTQIKXd6oS5xNZHce4q6t7YdzvnL
         DLDdeLuWkKWYD8QPScaYZc+bOKxlyU0d7827w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9LkkVvu7FzyrV007GCsU3N43wRkzk8+7MQtFApKS2m4=;
        b=7ZfVEVf/WyiCNIVHq9g+IEPEKf2Yu2pRvkd3W0vTQ7CMIGPG0oxqFM4HNBa1eAMLNn
         T5btsG0AzqzlGd+SuMHPoTmM5a5FYjmdpuk0hFFUANZW9HU8pGt1trrYz7X68l1L4jIc
         2gzGRtkzp3BfQJktKPuTtwTcKDd5ZruX9dOZeJAjqfUbm1y4a3c937b+TwIu7Z0eX8lH
         IKIn2LaYuSuEvQb0qaRmgTnqtsuBnRzHqjWrVRwmrdMMBvpI1E4xJuC9AiMJFhQynuk9
         gaH/v/SGXutGue3u3X+Hq1IfLDB1HcWO7TLN8fyf6RYfUKSl+4Cm2RdG7u9KI2Pw/lr/
         v4eA==
X-Gm-Message-State: AFqh2kqRSHSnoVlc0I7+e0tjfBmDUEhH6cd3h8QlPpoXhw+mjtN0PxI/
        AV48QqDTvkl9GcLmXG74Rt9ienZvdl/PHybS9dhByg==
X-Google-Smtp-Source: AMrXdXuvT722mszRvsUSt3tgCxVajblDhyvGk41E1NwYt/EcPhEax8gX4KsXUJ0YcvBue9FF75Y36pFYBLusIgQKdLM=
X-Received: by 2002:a25:bd54:0:b0:7d3:851c:e744 with SMTP id
 p20-20020a25bd54000000b007d3851ce744mr469784ybm.84.1673959981220; Tue, 17 Jan
 2023 04:53:01 -0800 (PST)
MIME-Version: 1.0
References: <20230117105504.18296-1-jagan@amarulasolutions.com>
 <20230117105504.18296-4-jagan@amarulasolutions.com> <2dcb7b4a-9751-ec7a-f0ea-6de748ca3bf7@linaro.org>
In-Reply-To: <2dcb7b4a-9751-ec7a-f0ea-6de748ca3bf7@linaro.org>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Tue, 17 Jan 2023 18:22:49 +0530
Message-ID: <CAMty3ZD_LWBR2+fu41Z5LEBcNw1KXEaY8P92Ypa-4rg2t8BH_A@mail.gmail.com>
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

On Tue, Jan 17, 2023 at 4:37 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 17/01/2023 11:55, Jagan Teki wrote:
> > Fix the model name and compatible strings for Radxa CM3i SoM
> > and Carrier board based on Radxa recommendation.
> >
> > Fixes: 2bf2f4d9f673 ("arm64: dts: rockchip: Add Radxa CM3I E25")
> > Cc: Chukun Pan <amadeus@jmu.edu.cn>
> > Reported-by: FUKAUMI Naoki <naoki@radxa.com>
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi | 2 +-
> >  arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts   | 4 ++--
> >  2 files changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> > index 225dbbe4955d..0c9a918b809a 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> > @@ -7,7 +7,7 @@
> >
> >  / {
> >       model = "Radxa CM3 Industrial Board";
> > -     compatible = "radxa,cm3i", "rockchip,rk3568";
> > +     compatible = "radxa,radxa-cm3i", "rockchip,rk3568";
>
> Nope, second radxa is redundant.

It is not redundant, Product name and vendor name is same. Vendor name
is Radxa and product name is Radxa CM3i

>
> >
> >       aliases {
> >               mmc0 = &sdhci;
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> > index a4c33310ca42..8ca15b723799 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> > @@ -4,8 +4,8 @@
> >  #include "rk3568-radxa-cm3i.dtsi"
> >
> >  / {
> > -     model = "Radxa E25";
> > -     compatible = "radxa,e25", "radxa,cm3i", "rockchip,rk3568";
> > +     model = "Radxa E25 Carrier Board";
> > +     compatible = "radxa,radxa-e25", "radxa,radxa-cm3i", "rockchip,rk3568";
>
> NAK. You just changed it in patch 2. Don't add broken compatibles in one
> patch (cm3i) and fix them next one. It's like adding intentional bugs
> and fixing them immediately...

I did squash this with previous patch but the check patch showing
warning to separate the dt-bindings patch from actual devicetree file
change.

Jagan.
