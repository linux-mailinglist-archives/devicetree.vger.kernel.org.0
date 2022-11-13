Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 51AFE626FE7
	for <lists+devicetree@lfdr.de>; Sun, 13 Nov 2022 14:50:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235249AbiKMNuS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Nov 2022 08:50:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235231AbiKMNuR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Nov 2022 08:50:17 -0500
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54E3610FED
        for <devicetree@vger.kernel.org>; Sun, 13 Nov 2022 05:50:16 -0800 (PST)
Received: by mail-yb1-xb2a.google.com with SMTP id s18so10682766ybe.10
        for <devicetree@vger.kernel.org>; Sun, 13 Nov 2022 05:50:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eceknYWf5pXSjf3uYAdpptzDpxH4rWxr35RcE2M9s1g=;
        b=FkMNT5XysKQDnMO4RcQWSQ6H7JCNFeKZZrJ2RLstMOmDyEPOw5EcHE0WBI5VTbk4Qr
         XR3eYK45+vctcOxbt3m64ODnkQhxCc8VxSO6pDr8uOeYZJCrCtrxFNJSvRp6Cfd/EYN2
         3GUeyTC5bjLbCPZHJEJ219NcIcqu3jKi2nvEAC1pEK3cLsSfm2/cIMJMUodj+yyOgoAH
         vVNL1n2OsEXwwJjcSA5PswuzthJu5PrWiB5y5ldAjsdlb2fAOoszqRkrWC1px0D0fHOm
         k7kxYvddZ1Z/iC1KvOEBUEyfWy2zh/A2ulFOjqMx+043APYWlftEZvQ9Zq9xgU3DrEoQ
         jnNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eceknYWf5pXSjf3uYAdpptzDpxH4rWxr35RcE2M9s1g=;
        b=SZ/Q94voIJSQ0PO864pg+G4lPpe6Mg15l19NeU34gvcntXuGHiL5ZKi++n4xQ7a65Z
         ijTYGQbjX5rrAl5BqzaKEC2IhODH48RJoWXkXappVvZGfyKDy8m4xBSTvunNtovEYIL3
         gxkye0j+huwpVXVkLnrNiBsGVD6Xjlgc8jN19O7b1Lt6+OHs8PIk18p8SXRSLvlz8Qs9
         dQUoFrasaY41NK7GqNIJRxyqZYiGyJn7C1yFlJUxHsTw7D0HcD0/RqzjDaS1MR+EuWSK
         VvjAdVBZyt56un2sXbe0eCLHqib1Gp2q6zEF0XartdkPGs/Kuid+rHGGBZ6Yvpous+0Y
         uoZg==
X-Gm-Message-State: ANoB5plMwto365a1bN4W2Th7yoZt1ABO2w0HUdbaJTbPV5mK1JmZk8sY
        jEtLkJq9PklKl6EfALGh9BYgJdJ0LwGChLpaplhU7A==
X-Google-Smtp-Source: AA0mqf6sABYM0kp61+uu3VEcuDtmXePEQdU78gemQ06iM60ToPaMLunsSHhpQ/NJfefnF7ny12NVXGvpNKORe+MuZos=
X-Received: by 2002:a25:8445:0:b0:6de:4801:a09b with SMTP id
 r5-20020a258445000000b006de4801a09bmr8780968ybm.15.1668347415574; Sun, 13 Nov
 2022 05:50:15 -0800 (PST)
MIME-Version: 1.0
References: <20220830065744.161163-1-krzysztof.kozlowski@linaro.org>
 <20220830065744.161163-2-krzysztof.kozlowski@linaro.org> <fe747000-a650-ed2f-8581-92b044f86f2f@linaro.org>
In-Reply-To: <fe747000-a650-ed2f-8581-92b044f86f2f@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Sun, 13 Nov 2022 16:50:04 +0300
Message-ID: <CAA8EJpruwhOVacH6_kN2TABmVR5Peu1pjFa1b4sag5p1zouqRA@mail.gmail.com>
Subject: Re: [PATCH v7 1/3] dt-bindings: arm: qcom: document qcom,msm-id and qcom,board-id
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Kumar Gala <galak@codeaurora.org>,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Bjorn, Krzysztof,

On Mon, 26 Sept 2022 at 13:30, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 30/08/2022 08:57, Krzysztof Kozlowski wrote:
> > The top level qcom,msm-id and qcom,board-id properties are utilized by
> > bootloaders on Qualcomm MSM platforms to determine which device tree
> > should be used and passed to the kernel.
> >
> > The commit b32e592d3c28 ("devicetree: bindings: Document qcom board
> > compatible format") from 2015 was a consensus during discussion about
> > upstreaming qcom,msm-id and qcom,board-id fields.  There are however still
> > problems with that consensus:
> > 1. It was reached 7 years ago but it turned out its implementation did
> >    not reach all possible products.
> >
> > 2. Initially additional tool (dtbTool) was needed for parsing these
> >    fields to create a QCDT image consisting of multiple DTBs, later the
> >    bootloaders were improved and they use these qcom,msm-id and
> >    qcom,board-id properties directly.
> >
> > 3. Extracting relevant information from the board compatible requires
> >    this additional tool (dtbTool), which makes the build process more
> >    complicated and not easily reproducible (DTBs are modified after the
> >    kernel build).
> >
> > 4. Some versions of Qualcomm bootloaders expect these properties even
> >    when booting with a single DTB.  The community is stuck with these
> >    bootloaders thus they require properties in the DTBs.
> >
> > Since several upstreamed Qualcomm SoC-based boards require these
> > properties to properly boot and the properties are reportedly used by
> > bootloaders, document them along with the bindings header with constants
> > used by: bootloader, some DTS and socinfo driver.
> >
> > Link: https://lore.kernel.org/r/a3c932d1-a102-ce18-deea-18cbbd05ecab@linaro.org/
> > Co-developed-by: Kumar Gala <galak@codeaurora.org>
> > Signed-off-by: Kumar Gala <galak@codeaurora.org>
> > Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> >
> > ---
> >
> > Changes since v6:
> > 1. Update header with defines
> > 2. Add Rb tag
>
> Hi Bjorn,
>
> Any further comments on this? Can it be applied?

A gracious ping from my side. I think it would be better to apply this
patch rather than having the undocumented and controversial propreties
in the device trees.

-- 
With best wishes
Dmitry
