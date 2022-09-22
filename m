Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0245A5E5CB2
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 09:54:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230103AbiIVHx6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 03:53:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229826AbiIVHxw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 03:53:52 -0400
Received: from mail-yw1-x1131.google.com (mail-yw1-x1131.google.com [IPv6:2607:f8b0:4864:20::1131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17AE4D33F2
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 00:53:51 -0700 (PDT)
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-333a4a5d495so89831517b3.10
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 00:53:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=3dhkt/pmaLP67fDV/pX1JEdiED5XsVvjRwmnhYIZRjA=;
        b=nINAGlslzDaXgZlJImYxvO5DqotqoytcUwTC4H1Nk9RYi9+lAAtHm7RDhZA0XYTtMi
         BaOfSKnLzWGRUtQvZSEpluxpjuz9LtNi7kZ372jAH74jk5kvPOeG79pCt70PQ8x9YO4A
         e/si6SDqlSozoATIhGdM7AK5OadzeokWp9OQeP6FWfjJiMEbPHMQQmIK0hv7xWYu/SJp
         K/2xMPZ4cIUkuyjWEnWcO1jWoY1o7xaki0HVL28dcPX4mMbP/BBG+Mf98QK94U0Sn4hC
         +kOxfIhK1sWQlb8CmVC9wlU0z9owG6fmiQC/tqwboE3iX497rdgn+wOZ87OePUhHaRYR
         HAPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=3dhkt/pmaLP67fDV/pX1JEdiED5XsVvjRwmnhYIZRjA=;
        b=dhlLx2rG+wKcaJvkfu6SE1QrV9+G3BgXc5cVZvkwgysgFB0oJwrdT2DjcrGaBHhGk/
         GLwBayUgqs5uOTB1E1C10dUmEhKMYTA+eLfMPTobOv0dlzRa26xP2c6JRak1zoRdJfVC
         MiKOTBhovYs/KmE3dGqu/vWaFHaQ28xPzW8wWcnqFfI7KwjZntWuHEqwEVQiwBBAdyrh
         KLsFWreNd8YKW+X978cguGrQNNWvWCvPng+Xoka8senunTeEHLuvi22C+XD6TSDWA+XT
         LOIokScxFjn4BNYw5OJwfr2kb1+tW/XncQoFItWeBwKTonhQkop34JJEjt4ozjle8NKU
         +GGw==
X-Gm-Message-State: ACrzQf1IWYGNeFfpJFQF69/YSQz1LhJg1XkpZ28218NIBVTz9hFwVZws
        L3+EFebFuR1dgsnCc4NxrMme8192gThcYDMHWikXHw==
X-Google-Smtp-Source: AMsMyM6x4JzSE8q/cOklOZOtgnPdkRv92ZnB4KCKoosNrYmNyvMKit7J750moIvfUR7OhLAdqHEj2fOm+iETVoKZGe4=
X-Received: by 2002:a81:1e0d:0:b0:33b:fb67:9895 with SMTP id
 e13-20020a811e0d000000b0033bfb679895mr1905601ywe.188.1663833230340; Thu, 22
 Sep 2022 00:53:50 -0700 (PDT)
MIME-Version: 1.0
References: <20220915133742.115218-1-dmitry.baryshkov@linaro.org>
 <20220915133742.115218-6-dmitry.baryshkov@linaro.org> <84c599c7-421a-78ed-b33e-ce1a4bd4356e@linaro.org>
In-Reply-To: <84c599c7-421a-78ed-b33e-ce1a4bd4356e@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Thu, 22 Sep 2022 10:53:39 +0300
Message-ID: <CAA8EJpoZbNEiThZMaSCSML-x=TtXc8t8L-yvLZYDbR4hpvigXg@mail.gmail.com>
Subject: Re: [PATCH v7 05/12] dt-bindings: display/msm: move common MDSS
 properties to mdss-common.yaml
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 22 Sept 2022 at 10:05, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 15/09/2022 15:37, Dmitry Baryshkov wrote:
> > Move properties common to all MDSS DT nodes to the mdss-common.yaml.
> >
> > This extends qcom,msm8998-mdss schema to allow interconnect nodes, which
> > will be added later, once msm8998 gains interconnect support.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  .../bindings/display/msm/dpu-msm8998.yaml     | 41 +--------
> >  .../bindings/display/msm/dpu-qcm2290.yaml     | 51 ++----------
> >  .../bindings/display/msm/dpu-sc7180.yaml      | 50 ++---------
> >  .../bindings/display/msm/dpu-sc7280.yaml      | 50 ++---------
> >  .../bindings/display/msm/dpu-sdm845.yaml      | 54 ++----------
> >  .../bindings/display/msm/mdss-common.yaml     | 83 +++++++++++++++++++
> >  6 files changed, 111 insertions(+), 218 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/display/msm/mdss-common.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/display/msm/dpu-msm8998.yaml b/Documentation/devicetree/bindings/display/msm/dpu-msm8998.yaml
> > index 200eeace1c71..67791dbc3b5d 100644
> > --- a/Documentation/devicetree/bindings/display/msm/dpu-msm8998.yaml
> > +++ b/Documentation/devicetree/bindings/display/msm/dpu-msm8998.yaml
> > @@ -14,20 +14,13 @@ description: |
> >    sub-blocks like DPU display controller, DSI and DP interfaces etc. Device tree
> >    bindings of MDSS and DPU are mentioned for MSM8998 target.
> >
>
> missing allOf

Rob asked to remove this while reviewing v6 ([1]). And indeed the
allOf's around a single $ref do not seem to be necessary

>
> > +$ref: /schemas/display/msm/mdss-common.yaml#
> > +
> >  properties:

[1] https://lore.kernel.org/dri-devel/20220907195904.GA98468-robh@kernel.org/

-- 
With best wishes
Dmitry
