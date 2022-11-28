Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9A9C63A946
	for <lists+devicetree@lfdr.de>; Mon, 28 Nov 2022 14:17:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231921AbiK1NRj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Nov 2022 08:17:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231724AbiK1NRR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Nov 2022 08:17:17 -0500
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com [IPv6:2607:f8b0:4864:20::1133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75BF1205F5
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 05:15:05 -0800 (PST)
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-3bf4ade3364so54751657b3.3
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 05:15:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nir2DDV24QI1lAJZ/sR0gu7ScDFOnoig9JIeHzWIuAk=;
        b=Ayr1dW2G6+j/MA1Qd6yC4oAWcQcZ6AggxoB80GJhisG8eG2BtAnWo1k7BnSy4uw4vs
         6GTA+N9/6/ZIA4Qey1iwiLvxUybiN4tFB4gHwIOF8woFWmA8jpBZpZlJr6Gb+vcnUSQh
         p+dPlsbGlRi9Dix6pdVMzbqTC0e0rCL71QUNEnCwpKHslcPE00XMmtOCcYFPQahzE9U4
         o+Cc7KxBhGfXPT3mc1e/ZtQzc8iKAd/+YtHj/V2PXU9jl4YHH5zmhu91u7Njg9oYL09k
         DYvnmWhjBg7xFvU5J689uHGsyWbMxFh55D/NCsSKFKKXUibbcRGZN5MIlKCz1gP+Awbh
         +/2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nir2DDV24QI1lAJZ/sR0gu7ScDFOnoig9JIeHzWIuAk=;
        b=WJqEpt6Qbs6tCU0+abLaNMI2x8soDgHyODI3x20sB8i6xUg5CwSyXTG1BhHi3dZcr/
         RC3PcM7S7G0la0w+Fw+ifqWeSqBN1TXwXfXiz4uLyhPzI/6rOZ4YZe8zXpvphMLgstBK
         7AgJHK/sunkOhHsc94CUQrBqxHugeXvHBUlh3x8jVlzfMS639vI4NpDIpppAPF48Hw0K
         h/DeG3zOzXknYxB3Vh56GbXlyVdMST2QphjkCUyU/fm3dNDll3s6xWtGyTr9mskNXH9B
         o0kr83nFfXcUqQfh9QFdmXW/xy8VRCmiNHOu7HLAN/1hMUMs34rr/4dKsepvwQCTn/ck
         h19g==
X-Gm-Message-State: ANoB5pljYTzfxr7Jb5JM307hBXBBpQvEP8jdYee87ooR2gOTikoSSUHh
        K/F55CAeMH1I9TNe2ZSqOr9es/opeYumyjUuLJRqXEu23E4=
X-Google-Smtp-Source: AA0mqf4T7jJbzlT52JoPciidorGsMEwUaZ4lFjHCDv1Y0DFdhqApzNyibk412/x3/4MVedYYSLxgdwcppuDDbfOW9Xs=
X-Received: by 2002:a81:598b:0:b0:3b7:78c8:a205 with SMTP id
 n133-20020a81598b000000b003b778c8a205mr17682238ywb.188.1669641302947; Mon, 28
 Nov 2022 05:15:02 -0800 (PST)
MIME-Version: 1.0
References: <20221128130545.857338-1-dmitry.baryshkov@linaro.org> <48aa8f92-d28b-0164-06da-5fcca909413e@linaro.org>
In-Reply-To: <48aa8f92-d28b-0164-06da-5fcca909413e@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Mon, 28 Nov 2022 15:14:52 +0200
Message-ID: <CAA8EJpr4B4MgS=PjYbfdNWwtU8Y58+3hTXopy3Voead=bp-Fjw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: qcom: split MSM8974 Pro and MSM8974
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 28 Nov 2022 at 15:11, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 28/11/2022 14:05, Dmitry Baryshkov wrote:
> > The MSM8974 Pro (AC) and bare MSM8974 are slightly different platforms.
> > Split the compat strings accordingly to clearly specify the platform
> > used by the device.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/arm/qcom.yaml | 10 +++++++---
> >  1 file changed, 7 insertions(+), 3 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> > index 463509f0f23a..5977b4fdf38e 100644
> > --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> > +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> > @@ -165,14 +165,18 @@ properties:
> >
> >        - items:
> >            - enum:
> > -              - fairphone,fp2
> >                - lge,hammerhead
> > -              - samsung,klte
> >                - sony,xperia-amami
> > -              - sony,xperia-castor
> >                - sony,xperia-honami
> >            - const: qcom,msm8974
> >
> > +      - items:
> > +          - enum:
> > +              - fairphone,fp2
> > +              - samsung,klte
> > +              - sony,xperia-castor
> > +          - const: qcom,msm8974pro
>
> Just like msm8996 this should be followed by qcom,msm8974 from logical
> reasons (it is still compatible?) and ABI.

Ack.

-- 
With best wishes
Dmitry
