Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ADCA86D32C9
	for <lists+devicetree@lfdr.de>; Sat,  1 Apr 2023 19:24:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230039AbjDARYg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 1 Apr 2023 13:24:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229793AbjDARYf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 1 Apr 2023 13:24:35 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 342E71B368
        for <devicetree@vger.kernel.org>; Sat,  1 Apr 2023 10:24:33 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id m8so3808810wmq.5
        for <devicetree@vger.kernel.org>; Sat, 01 Apr 2023 10:24:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680369871;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qxMDn/yltQyq4K/x1oMJCpvevyLh8LBMcartubJGxQY=;
        b=CsGk9STcMivrNmo4f8J73h4LNh9WKFLQFOFqgKfPI4ZfYOi2QK8BbqhQjjolkpy0Kc
         HgnQd8QSRwYLmh63KB3zbKA4AEriFa9zl7oou728m3IHkl9gldrtBJuqE14ml6SivHTu
         D7NaFGMXSwPHqnroRdOQzrV1T0UaA4jM58HJ8ZeX+qZjc77f4IlX9wGdTvOOQ8I7oA1v
         R+o1DF3Y7eRNo3ZA+MGzy7XlRJkxFEg++gSTCcJgxJu/AyNbOoUZpXy/u2JRVhOdbF6P
         dfYJHOdPu6bdj3Gpfl8R3od52vDEc7+itM3hqjfZVh2r8BVOEj//DXqMap0eGMn8gVx3
         /6WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680369871;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qxMDn/yltQyq4K/x1oMJCpvevyLh8LBMcartubJGxQY=;
        b=v5ZRFqFQknHhcEMh99lF+IHQJONb1BsTU3M7TaHMVTPC5rLU7ezZX3DMjt3g29T53e
         cKlKYzHWlL0gfyocgKqWCuidtJjhCVbtnAvkEvDLk8MwPgo5Q5NjHYpiOJ2F4hpCZhnc
         B96b50tWmEMVCbGinohbOh8JQveYfejgZM/scEW1vdqWb8ck9DF0bs4/7k+i4MXGLOs8
         VIKOto3VH0L0XeuPfTFlt6OADOVHoKn626VC09bd/k4n+ghxmiC1o+BM+hutXJ8k7+Y5
         Y2DYt2pSuc8ZuG28rz/03P7liC8TDKRMuA2uPqF2lBtc92uSQG6KBBbnKhZ+DrRugBmh
         59kg==
X-Gm-Message-State: AO0yUKUe3o0GurmmNfyU6pTkZtYVjWtJxXF8Yv0zrgnpG7egsQ5TNgno
        fICuXSRg8HQLNgdAtdup5/Ga1Xc0woNAP5qYl8LDYg==
X-Google-Smtp-Source: AK7set9xLgmHXiMGn+jeUBL8cGjeJA3n0v0xvxORWBx0f9qHdPrcy7o0gjM6tsqE957Y9/XPwolwLzqo2O4gswHwtl4=
X-Received: by 2002:a7b:cd0d:0:b0:3ee:10fb:56f8 with SMTP id
 f13-20020a7bcd0d000000b003ee10fb56f8mr6815557wmj.8.1680369871601; Sat, 01 Apr
 2023 10:24:31 -0700 (PDT)
MIME-Version: 1.0
References: <20230401154725.1059563-1-bhupesh.sharma@linaro.org>
 <20230401154725.1059563-2-bhupesh.sharma@linaro.org> <CAA8EJpruSDvsr7hsheeOHHF2EXshq8wM_HCiV8Cx3i5zVOweDQ@mail.gmail.com>
In-Reply-To: <CAA8EJpruSDvsr7hsheeOHHF2EXshq8wM_HCiV8Cx3i5zVOweDQ@mail.gmail.com>
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date:   Sat, 1 Apr 2023 22:54:20 +0530
Message-ID: <CAH=2Ntw6+vKyRZQWq1Zg=gUs2SJgqFUe7NUtqqJSozi-FOLCOA@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: qcom,qmp-usb: Fix phy subnode
 for SM6115 & QCM2290 USB3 PHY
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        linux-kernel@vger.kernel.org, bhupesh.linux@gmail.com,
        robh+dt@kernel.org, krzysztof.kozlowski@linaro.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 1 Apr 2023 at 22:42, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Sat, 1 Apr 2023 at 18:49, Bhupesh Sharma <bhupesh.sharma@linaro.org> wrote:
> >
> > The USB3 SS (QMP) PHY found on Qualcomm SM6115 & QCM2290 SoCs is
> > similar to sm8150 QMP PHY in the sense that the phy subnode supports
>
> sm8150 has 5 QMP PHYs. Which one is mentioned here?

'qcom,sm8150-qmp-usb3-phy' which is named as 'usb_1_qmpphy' in
sm8150.dtsi (see :
<https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/arch/arm64/boot/dts/qcom/sm8150.dtsi#n3394>)
and has 6 regs , namely TX lane 1, RX lane 1, PCS, TX lane 2, RX lane
2 and PCS_MISC.

Regards,
Bhupesh

> > 6 regs, namely TX lane 1, RX lane 1, PCS, TX lane 2, RX lane 2 and
> > PCS_MISC.
> >
> > Update the dt-bindings document to reflect the same.
> >
> > Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> > ---
> >  .../devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml    | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> > index e81a38281f8c..1575dc70bcf2 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> > @@ -276,7 +276,9 @@ allOf:
> >          compatible:
> >            contains:
> >              enum:
> > +              - qcom,qcm2290-qmp-usb3-phy
> >                - qcom,sdm845-qmp-usb3-phy
> > +              - qcom,sm6115-qmp-usb3-phy
> >                - qcom,sm8150-qmp-usb3-phy
> >                - qcom,sm8350-qmp-usb3-phy
> >                - qcom,sm8450-qmp-usb3-phy
> > @@ -318,12 +320,10 @@ allOf:
> >              enum:
> >                - qcom,ipq6018-qmp-usb3-phy
> >                - qcom,ipq8074-qmp-usb3-phy
> > -              - qcom,qcm2290-qmp-usb3-phy
> >                - qcom,sc7180-qmp-usb3-phy
> >                - qcom,sc8180x-qmp-usb3-phy
> >                - qcom,sdx55-qmp-usb3-uni-phy
> >                - qcom,sdx65-qmp-usb3-uni-phy
> > -              - qcom,sm6115-qmp-usb3-phy
> >                - qcom,sm8150-qmp-usb3-uni-phy
> >                - qcom,sm8250-qmp-usb3-phy
> >      then:
> > --
> > 2.38.1
> >
>
>
> --
> With best wishes
> Dmitry
