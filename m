Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8DFB175274D
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 17:34:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235095AbjGMPe6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jul 2023 11:34:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230151AbjGMPek (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jul 2023 11:34:40 -0400
Received: from mail-vs1-xe31.google.com (mail-vs1-xe31.google.com [IPv6:2607:f8b0:4864:20::e31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E399230D7
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 08:34:33 -0700 (PDT)
Received: by mail-vs1-xe31.google.com with SMTP id ada2fe7eead31-440b54708f2so377467137.0
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 08:34:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689262473; x=1691854473;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8yGwM2jMm6HeybAOlBLR6sZSi/DPAG/Mi6HWsPsP/EI=;
        b=lOgFlERPhwtGjicLF2QHVlqBk2xSDjijmmistC6wxT3hqdtQKIp2OgtKqSDsPAiizS
         wYQJQbXgXaCcxecOQofQ0NQysSDneQdw+H/6NYICtdMdrXApRr/VJmoKQm7+lqxz5CU9
         7HKYEPG6Y7/vU/zy5asXo1RDZ57mV1rxJ4y90qbj11a79ceBVOuzDB33KSgDy0rN+mwi
         0a9Ii2XIlGFExp3+2n6C/bBF8rtotem8PhWb1HeJSt7j+04dznqXCjeaK4i/v9L+b0pf
         7gqFXvkVYT0gF2Gi1kf5amM7r4mq+0iDjg8T1vwPyROs/edZA8/yCHdovfdf9v1AbJiH
         JfHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689262473; x=1691854473;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8yGwM2jMm6HeybAOlBLR6sZSi/DPAG/Mi6HWsPsP/EI=;
        b=O2lGCt054rkSFeV7owFCqpP1xnv6yXCyOLxVURRn401L2KmfCfl8xKPf6jha8iDRqa
         7ES2WfaFWzIJHmVwgYsujZDKbJpgCGEYkqvIK8gMEmVN8jHbVknRGW+T17fHywQnYcno
         YSABVVSMAzuak9V0EFPlsuSAuG4PKH42QNqq5n1hppSBztPEZ1Uz1LW3h/WRR+AmjcOm
         Tfzw8NzCDUnp6eNqNitmPzCdx1YG4jZEKmHBF2gQeJIgW4KK+vKaMOgn3jQDfXt1KNeA
         w99w6R16uM4X/bQ/mG8tqi29UfBFSb2slXcQpGRyYJ4fhyb0RGlP4NVdEcZOO8hCItC2
         fPVQ==
X-Gm-Message-State: ABy/qLYfL0Xcg2CfyNGBil7zqlHudjHpR89VPYjhook3k245/82kJ08M
        GHgHQBoJ3JPi5AEwl1B5GalxuytAzWF5E/oGu4DisbU9MShTujWKazU=
X-Google-Smtp-Source: APBJJlGb1jVO/ngXjXmOiFV9ZYbghh/vfhZZW7PYWNC1fUiGbkak2hA/lfD7wwvwjJJq8+zZv1gdSRqmyIer2LH0nno=
X-Received: by 2002:a05:6102:389:b0:444:c7fa:1aad with SMTP id
 m9-20020a056102038900b00444c7fa1aadmr1171134vsq.17.1689262472963; Thu, 13 Jul
 2023 08:34:32 -0700 (PDT)
MIME-Version: 1.0
References: <20230712130215.666924-1-amit.pundir@linaro.org> <3b677200-a201-680b-391f-fbf73064496a@linaro.org>
In-Reply-To: <3b677200-a201-680b-391f-fbf73064496a@linaro.org>
From:   Amit Pundir <amit.pundir@linaro.org>
Date:   Thu, 13 Jul 2023 21:03:56 +0530
Message-ID: <CAMi1Hd003r1kJ6e4r2urFtN1BEnCRatLcQ1Q7Eh5wBdj=2WDFA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: display/msm: qcom,sdm845-mdss: add
 memory-region property
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Caleb Connolly <caleb.connolly@linaro.org>,
        Bryan Donoghue <bryan.odonoghue@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        dt <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 12 Jul 2023 at 18:45, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On 12/07/2023 16:02, Amit Pundir wrote:
> > Add and document the reserved memory region property
> > in the qcom,sdm845-mdss schema.
> >
> > Signed-off-by: Amit Pundir <amit.pundir@linaro.org>
> > ---
> >   .../devicetree/bindings/display/msm/qcom,sdm845-mdss.yaml    | 5 +++++
> >   1 file changed, 5 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sdm845-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sdm845-mdss.yaml
> > index 6ecb00920d7f..3ea1dbd7e317 100644
> > --- a/Documentation/devicetree/bindings/display/msm/qcom,sdm845-mdss.yaml
> > +++ b/Documentation/devicetree/bindings/display/msm/qcom,sdm845-mdss.yaml
> > @@ -39,6 +39,11 @@ properties:
> >     interconnect-names:
> >       maxItems: 2
> >
> > +  memory-region:
> > +    maxItems: 1
> > +    description:
> > +      Phandle to a node describing a reserved memory region.
> > +
>
> Please add it to mdss-common.yaml instead

mdss-common.yaml didn't like this property at all and
I ran into a lot of new dtbs_check warnings:
https://www.irccloud.com/pastebin/raw/pEYAeaB1

I need some help in decoding these please.

Regards,
Amit Pundir

>
> >   patternProperties:
> >     "^display-controller@[0-9a-f]+$":
> >       type: object
>
> --
> With best wishes
> Dmitry
>
