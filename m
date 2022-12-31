Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 72D6165A53C
	for <lists+devicetree@lfdr.de>; Sat, 31 Dec 2022 16:05:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235440AbiLaPFo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Dec 2022 10:05:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231875AbiLaPFn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 31 Dec 2022 10:05:43 -0500
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9795E6371
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 07:05:41 -0800 (PST)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-46d4840b51fso273624017b3.12
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 07:05:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=otCJd+mbWKew73SAuEiOsVxEPv8TQTUETo28KN4US0M=;
        b=YL5L8alik3IIWKSY2wXmnkmJjxNQcZTzSY5wbniTbbdAo6rd0gfxqh5v9dnsXfRd46
         QkdhjoVLpeUZXfVUZqCOUER31lHNXSIwx8ctZvpJTf1t4dFaFmkIYcgNIpK6RpSRN4Ql
         wIB2tdYKrx5E0VSNaGW39Nv+p5jeVLuAqKSEdzU2NW0AmZPDlrgEt1PDgyFH95j5Ua2W
         BjOie02Uh2Di975rx7dANxuy5tGc/NmL9HMHvrRkRzKL23mR1TKv38eE1nLGOb4Nzx6C
         vkBXkciBjJ1ydiuOVmkb/lHXpvaa8qvNlYVLp3LuA5TE1b0o9ZIxT2BBPLe02kNADyzX
         cXuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=otCJd+mbWKew73SAuEiOsVxEPv8TQTUETo28KN4US0M=;
        b=SC7GXE4EFCmOKCC4Ji6ILZIkE7ht0wHtwZjbt77aKjH6OU4O7qlfZhyrOR4g73MzUh
         8duytxQVZcMU0ABNU6+3SfD6+j/3s8L5COvB0IR8n/H+8QBaCGE9gVUoLpYU6nhJLSnt
         NpKDOpBlRQIiMjUKoVL7ZDB9MLiUZgBHxMoRUzeZU9IZAw4jJVF7BVa7dHY+PhGibUt5
         Ojr/OhWB0FOejW7Lk4bk+zOeLDZjsIPlATQtgj2KhuT8p6g2ISHtljOcVVTQwRF9q9aw
         EgJmFT/pKAkBMG351ySL2RPm3ICEObIBlMm+KWmsKUndQ07+cMJ9hAzAJCByxDPIA+cI
         GXnQ==
X-Gm-Message-State: AFqh2kpohzMCLFucsDUKi1xsk5kVXuFAjUycej34JaPwtNWtf6Ad7Z+1
        AONVpB/yetO3at8zubxBeecr6NB2R1BqNndapqO+g6+3g+Wv64Lh
X-Google-Smtp-Source: AMrXdXvuKogl+BhNjHR9CEtgpZ8sliM6Bymjhqy9uSGsUaQrKltCMlksICHuv702289b6mmp6Cdca9QOijpc1MTeWEw=
X-Received: by 2002:a0d:dc86:0:b0:3d5:ecbb:2923 with SMTP id
 f128-20020a0ddc86000000b003d5ecbb2923mr4536583ywe.485.1672499140811; Sat, 31
 Dec 2022 07:05:40 -0800 (PST)
MIME-Version: 1.0
References: <20221229115932.3312318-1-dmitry.baryshkov@linaro.org>
 <20221229115932.3312318-2-dmitry.baryshkov@linaro.org> <167241774332.1928179.4447846135439331544.robh@kernel.org>
In-Reply-To: <167241774332.1928179.4447846135439331544.robh@kernel.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Sat, 31 Dec 2022 17:05:30 +0200
Message-ID: <CAA8EJpr2nEq3XYNmvWRcHBxS7mZjphXpSw=tfLb7oJwXQGRYAA@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: qcom,pcie2-phy: convert to YAML format
To:     Rob Herring <robh@kernel.org>
Cc:     Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-phy@lists.infradead.org,
        Kishon Vijay Abraham I <kishon@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 30 Dec 2022 at 18:34, Rob Herring <robh@kernel.org> wrote:
>
>
> On Thu, 29 Dec 2022 13:59:31 +0200, Dmitry Baryshkov wrote:
> > Convert the bindings for the Qualcomm PCIe2 PHY into the YAML format
> > from the text description.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  .../bindings/phy/qcom,pcie2-phy.yaml          | 86 +++++++++++++++++++
> >  .../bindings/phy/qcom-pcie2-phy.txt           | 42 ---------
> >  2 files changed, 86 insertions(+), 42 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/phy/qcom,pcie2-phy.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/phy/qcom-pcie2-phy.txt
> >
>
> Running 'make dtbs_check' with the schema in this patch gives the
> following warnings. Consider if they are expected or the schema is
> incorrect. These may not be new warnings.
>
> Note that it is not yet a requirement to have 0 warnings for dtbs_check.
> This will change in the future.
>
> Full log is available here: https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20221229115932.3312318-2-dmitry.baryshkov@linaro.org
>
> phy@7786000: '#clock-cells' is a required property
>         arch/arm64/boot/dts/qcom/qcs404-evb-1000.dtb
>         arch/arm64/boot/dts/qcom/qcs404-evb-4000.dtb

The fix was a part of the v1 of the series and was picked by Bjorn already:

https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git/commit/?h=arm64-for-6.3&id=977e9262c3542e87b513d4dad4c57b2c85e16c8c


-- 
With best wishes
Dmitry
