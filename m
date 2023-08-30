Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A4A6978E17B
	for <lists+devicetree@lfdr.de>; Wed, 30 Aug 2023 23:32:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230286AbjH3VcZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Aug 2023 17:32:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241517AbjH3VcZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Aug 2023 17:32:25 -0400
Received: from mail-oa1-x30.google.com (mail-oa1-x30.google.com [IPv6:2001:4860:4864:20::30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EAF9E50
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 14:31:58 -0700 (PDT)
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-1c0fa9dd74fso25597fac.3
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 14:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693431053; x=1694035853; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xP1G3N95SJQabxQlJ+eLhOCwSvJQ3rpYZFxHjeJYZ+A=;
        b=FJWUe9kTFg61j2cxiO0XTbqBGnJjJ3b4SbmytW9XWCgEydV+kSEmvxi6Vc4fR5MiCX
         sDRULQfJTFhCHoo9UFbWzKXq9AGo7E4FjT6IzgSGxaA+z9Bs/CoB8TA3cm8BIQRiUUP2
         OOe/UPxZvtVTiYuvGLZzZGJmXqQG88ZEM4NHtNi5IR8qsm0mtwqA6i4P9TSk2fTcUsHV
         ZaUYa+VYa87MRt+exxk2M6ZYRh3FROrysQvtuQ2pseyvcE4btP65AnTqBRkwSbZZu7QZ
         UYOKOgHbbz4tb82lzGMfdJYfckt5PzQdxLFq0f2uThSMNwGeiCEVxBf/b4bHzMfUwy3T
         v14Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693431053; x=1694035853;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xP1G3N95SJQabxQlJ+eLhOCwSvJQ3rpYZFxHjeJYZ+A=;
        b=Bf/1+P5wKz/QsgXu6fXvtR4w9adXxHFfaNnMoJSRU4KvBUwfjPqELaczgekHPgXiQy
         Qc4OY2Hwsmxmc145tUHtzMOi16sncrB+VyTQO4LNDpXKrtMFgc4kn71fSl1QpVJgeXoj
         cx69AQAaVJ/nFL97b5bx3JovId30tXT0vFsOGFbrSSgyWD28CE0FWz/nTA9RS/14x7Il
         zxP13/E77hTiGqayozXC/w6iisJWXzzrmCE02vaNS8QG+0REHereQgGvyxa1r6KxsgPt
         5gjx+WAq6CJDSLWgpESBl00hQasiaiDRRHPxz6Pyo4zUSb5s7/H+1qoSvrp+d9aztpW8
         5K4Q==
X-Gm-Message-State: AOJu0YyVFvwXuzwClIKj+p54GH0b1JAbmQBewxLQDtPIuccVVYbSrWyi
        itUzP2SzV8B2wvOBMsfvNHHFiov5foiKAKAU5TzXrdJJcjU23NAH
X-Google-Smtp-Source: AGHT+IH/CoTzgEqYKC0G3tVTVTxlFII4TRiKmoS1Mk5vUlf8PI/wpGXsKNUTh4M9uDYfrpxRz4f2Hv88QrkHlQj8aG8=
X-Received: by 2002:a25:dbd2:0:b0:d7b:a834:3b2c with SMTP id
 g201-20020a25dbd2000000b00d7ba8343b2cmr3039268ybf.1.1693430205549; Wed, 30
 Aug 2023 14:16:45 -0700 (PDT)
MIME-Version: 1.0
References: <20230830-topic-8550_dmac2-v1-0-49bb25239fb1@linaro.org>
 <20230830-topic-8550_dmac2-v1-3-49bb25239fb1@linaro.org> <CAA8EJpp7bxq4=i1CMPYvz99ZuKLz+th6zSFhhRhFMjDwGB5Z8Q@mail.gmail.com>
 <6bcb460b-6deb-4918-9058-67536e0af0ad@linaro.org>
In-Reply-To: <6bcb460b-6deb-4918-9058-67536e0af0ad@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Thu, 31 Aug 2023 00:16:33 +0300
Message-ID: <CAA8EJppZ+kyoL6yM58qY6V0gsoSpX6b=L+Xp0-m0QMMhLFTG4A@mail.gmail.com>
Subject: Re: [PATCH 3/7] arm64: dts: qcom: sm8550: Fix up CPU idle states
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Abel Vesa <abel.vesa@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        Vinod Koul <vkoul@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 30 Aug 2023 at 23:35, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> On 30.08.2023 22:13, Dmitry Baryshkov wrote:
> > On Wed, 30 Aug 2023 at 22:04, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
> >>
> >> The idle residency times are largely too low according to the vendor
> >> kernel (maybe they came from an earlier release or something), especially
> >> for the prime X2 core. Fix them.
> >>
> >> Fixes: ffc50b2d3828 ("arm64: dts: qcom: Add base SM8550 dtsi")
> >> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> >> ---
> >>  arch/arm64/boot/dts/qcom/sm8550.dtsi | 32 +++++++++++++++++++++-----------
> >>  1 file changed, 21 insertions(+), 11 deletions(-)
> >>
> >> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> >> index d115960bdeec..c21ba6afa752 100644
> >> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> >> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> >> @@ -283,9 +283,9 @@ LITTLE_CPU_SLEEP_0: cpu-sleep-0-0 {
> >>                                 compatible = "arm,idle-state";
> >>                                 idle-state-name = "silver-rail-power-collapse";
> >>                                 arm,psci-suspend-param = <0x40000004>;
> >> -                               entry-latency-us = <800>;
> >> +                               entry-latency-us = <550>;
> >>                                 exit-latency-us = <750>;
> >> -                               min-residency-us = <4090>;
> >> +                               min-residency-us = <6700>;
> >>                                 local-timer-stop;
> >>                         };
> >>
> >> @@ -294,8 +294,18 @@ BIG_CPU_SLEEP_0: cpu-sleep-1-0 {
> >>                                 idle-state-name = "gold-rail-power-collapse";
> >>                                 arm,psci-suspend-param = <0x40000004>;
> >>                                 entry-latency-us = <600>;
> >> -                               exit-latency-us = <1550>;
> >> -                               min-residency-us = <4791>;
> >> +                               exit-latency-us = <1300>;
> >> +                               min-residency-us = <8136>;
> >> +                               local-timer-stop;
> >> +                       };
> >> +
> >> +                       PRIME_CPU_SLEEP_0: cpu-sleep-2-0 {
> >> +                               compatible = "arm,idle-state";
> >> +                               idle-state-name = "gold-plus-rail-power-collapse";
> >> +                               arm,psci-suspend-param = <0x40000004>;
> >> +                               entry-latency-us = <500>;
> >> +                               exit-latency-us = <1350>;
> >> +                               min-residency-us = <7480>;
> >>                                 local-timer-stop;
> >
> > This isn't only fixing the time properties, but also adds the whole
> > new sleep state!
> It does add a "new" sleep state with the exact same parameters,
> the only thing being that it's exclusive to the prime core and
> the only thing that differs is the residencies.

Then it should be stated in the commit message.

With that fixed,

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry
