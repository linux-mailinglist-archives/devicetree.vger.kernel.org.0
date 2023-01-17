Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD86866DE31
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 13:55:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236446AbjAQMz6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 07:55:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236798AbjAQMz5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 07:55:57 -0500
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com [IPv6:2607:f8b0:4864:20::b31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDA687285
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 04:55:56 -0800 (PST)
Received: by mail-yb1-xb31.google.com with SMTP id c124so33813276ybb.13
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 04:55:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=r8xCLHLWVwPFFkZ7TOx5xM7KcS2r+Wpana/4i2E+sQU=;
        b=F08mw2PlvSgwJqK0kbeyWHrtqPYgzxdGfohxFDwjoRpIVQbDQsnim7BPaOb58LUmnj
         hg52ZwLerjlU08obdGx5qjgVjcsKtEKRQisT+FwK6iNFnlecV7K+rx5eWzDq7D40WQJ6
         WPOO29PLGh7U7+Xb2BFFWf34ilB95LcRakAHE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r8xCLHLWVwPFFkZ7TOx5xM7KcS2r+Wpana/4i2E+sQU=;
        b=RTHprpw1OMAgtPoL2jx5ObrM72adQj/Js9Ft2m4kDUEbEncRsXGuwREGomFnT+lWJZ
         NjyWkFde/SO6MuGuTJPkhoUzNJ39F8oFKQLA9etkupHuUuQ1RPvlnaJb+U5xT3fFNMum
         dLY8nCEcSrM4cZCRXTFPcdFnDTRKeuFha8MarsnHpOedxJwz0TDP8bu/sVS0NnCqrauX
         D88S4nzDIFkmPCf8Fv7+Csr0dLdAB/OgbBpdULEFhsjtZC3fsTpeKBTHK7CAGIMZEFNA
         WTI630401BkBLwAEw+qHkox7rdD5WcAMmYJD1zLP9jkGDcxkY/VHI7apL1gj2wAUP7oU
         eD+A==
X-Gm-Message-State: AFqh2krXRYiPCy0EDCiFZJsCGtkiKdrWSgEo5Egnf0fytgN0pbpgTk/Y
        UgGM1tM0ekNd84Sr1DvBQOYsrtdwmX/wXpVCqjL8EQ==
X-Google-Smtp-Source: AMrXdXvPvoCqAQG2BqWk87cM7kJJ0ivEMPWBPWHpmS8kYwK4TmK/gcjHWUrLUlDJp8VRy5Obx54DWd3q+ndQ1Nsee7o=
X-Received: by 2002:a25:bccb:0:b0:7b9:daf2:4117 with SMTP id
 l11-20020a25bccb000000b007b9daf24117mr488591ybm.408.1673960156182; Tue, 17
 Jan 2023 04:55:56 -0800 (PST)
MIME-Version: 1.0
References: <20230117105504.18296-1-jagan@amarulasolutions.com>
 <20230117105504.18296-3-jagan@amarulasolutions.com> <592dab00-9e4d-4445-2f77-ecff12b8ca70@linaro.org>
In-Reply-To: <592dab00-9e4d-4445-2f77-ecff12b8ca70@linaro.org>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Tue, 17 Jan 2023 18:25:44 +0530
Message-ID: <CAMty3ZD9f+_LB+vF+gnOcBTWMkNTVnRVzz8UaVqk9P_oOv_rUA@mail.gmail.com>
Subject: Re: [PATCH 3/7] dt-bindings: arm: rockchip: Fix description and
 compatible for Radxa CM3i
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

On Tue, Jan 17, 2023 at 4:36 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 17/01/2023 11:55, Jagan Teki wrote:
> > Fix the dt-bindings for Radxa CM3i SoM based boards with proper
> > description and compatible strings recommended by Radxa.
> >
> > Fixes: ae9fbe0b1f96 ("dt-bindings: arm: rockchip: add Radxa CM3I E25")
> > Cc: Chukun Pan <amadeus@jmu.edu.cn>
> > Reported-by: FUKAUMI Naoki <naoki@radxa.com>
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > index 3d3c59624483..6f276d787e50 100644
> > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > @@ -628,11 +628,11 @@ properties:
> >            - const: radxa,radxa-cm3   # Radxa Compute Module 3(CM3)
> >            - const: rockchip,rk3566
> >
> > -      - description: Radxa CM3 Industrial
> > +      - description: Radxa Compute Module 3 Industrial(CM3i) SoM based boards
> >          items:
> >            - enum:
> > -              - radxa,e25
> > -          - const: radxa,cm3i
> > +              - radxa,radxa-e25      # Radxa E25 Carrier Board
> > +          - const: radxa,radxa-cm3i  # Radxa Compute Module 3 Industrial(CM3i)
>
> No, it does not match your patch 2/7. It also does not make sense to
> duplicate vendor prefix.

2/7 follows the existing bindings and that one is incorrect as the
actual product name is radxa-cm3i not cm3i. This patch is trying to
fix that.

Jagan.
