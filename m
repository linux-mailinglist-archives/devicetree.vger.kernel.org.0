Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB12D6C44F8
	for <lists+devicetree@lfdr.de>; Wed, 22 Mar 2023 09:33:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229778AbjCVIdE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Mar 2023 04:33:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230181AbjCVIdB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Mar 2023 04:33:01 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54ADC768F
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 01:32:58 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id v1so10012057wrv.1
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 01:32:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679473977;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UiWL/lZ2skulVxFFnlJvXX89DF4CayLI/QTdiEskW+g=;
        b=rIS+YiL3B/ENyQ7QcB/1Vi3kyORiXTh7xa6wvw6jchMqkGXn0YnuBuGHkgTKDebTxP
         Crhp25/WM3EfaSfGBtmwVcNMDAHus5UrtnglblO0MrqRLnbaz1sxTUmCk0xSZ4ixgMxe
         Z59K1urd8FTn/yfO6ZINcAwBfwS/Wc+YUZz5397fnNEvKgh9hyXdtKnc2d7AMA2ubY/n
         1vnJVX8n3AZfMhw+gdfFzwgdBO/+JIwZ6mkRvT+C8VTsT6NjsL4+tGSr18Ve0pDpoaHc
         u7TNBZoohW4qxw1qkTOAjQauI/t9PaFGny2sAfPyx9LCrW11+9h/B9IoUf8eF7MloFXQ
         LrnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679473977;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UiWL/lZ2skulVxFFnlJvXX89DF4CayLI/QTdiEskW+g=;
        b=jN2yi5UbPQ9cH69mglpKLR3foegGC4A4CtULVf7xEbfr1DdKDNQSsPIlKpmMJS1yG0
         GB98rxJyCKgnn7qfB+ldZuyB/jiCVuINSSKFOqOFuuYhgTKbx+ev5yWppsnN8iVhYKF8
         j4PAk6IWwekGd7FlEuVPonGHDgwfXqcLYlRJcQV1gnrhsBVmkvvIYXHbjijnx734UP9E
         GgQYPOoS4tRYLBbFS6s30htqUzFXs+/Q/BeEr63EgNKCWtaUMQRSAOurbwpJuFQ3+60P
         ce/zx8z5mt1UvoBXyw75YQkQxl9+1Wzq8JHgh+YHJF0rzhJfpF3GTs8Pa/qoyhHtsl/U
         K5eg==
X-Gm-Message-State: AO0yUKXgS41GUys9yqOAzGfXy2dRKwubwx1aITGe60etTLykQZjMy6Jd
        odrWjKDWzm29Y6JO6SaxgS8TmbpHMfQQfVj3FyE9Gg==
X-Google-Smtp-Source: AK7set+MQadPiKz4l1YrADrNL38dCb91yYO2V7w9Nci9n8Bj1a8iFI/ZcSdYUv+qdiz8quIPFnDGXr6JO9suB/n4kRE=
X-Received: by 2002:adf:f88f:0:b0:2ce:817b:846d with SMTP id
 u15-20020adff88f000000b002ce817b846dmr1185115wrp.4.1679473976692; Wed, 22 Mar
 2023 01:32:56 -0700 (PDT)
MIME-Version: 1.0
References: <20230321184811.3325725-1-bhupesh.sharma@linaro.org> <3d00adbb-a19e-3c0e-c25e-fb6accbf2c7a@linaro.org>
In-Reply-To: <3d00adbb-a19e-3c0e-c25e-fb6accbf2c7a@linaro.org>
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date:   Wed, 22 Mar 2023 14:02:45 +0530
Message-ID: <CAH=2Ntw3Mqsk=DexPa9X0ctUnr3k8dH9orCGhmrD3vh4i4oxGg@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] dt-bindings: dma: Add support for SM6115 and
 QCS2290 SoCs
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     dmaengine@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, agross@kernel.org,
        linux-kernel@vger.kernel.org, andersson@kernel.org,
        bhupesh.linux@gmail.com, vkoul@kernel.org,
        krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
        vladimir.zapolskiy@linaro.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 22 Mar 2023 at 00:58, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
>
>
> On 21.03.2023 19:48, Bhupesh Sharma wrote:
> > Add new compatible for BAM DMA engine version v1.7.4 which is
> > found on Qualcomm SM6115 and QCS2290 SoCs.
> All compatibles upstream are QCM2290-themed, let's keep it consistent.
>
> [...]
>
> > +      - items:
> > +          - enum:
> > +              # SDM845, SM6115, SM8150, SM8250 and QRB2290
> The robotics SoC is QRB2210, but this should be QCM.

Sure, will be addressed in v2.

Thanks.

> > +              - qcom,bam-v1.7.4
> > +          - const: qcom,bam-v1.7.0
> >
> >    clocks:
> >      maxItems: 1
