Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1018275275F
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 17:37:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233184AbjGMPhK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jul 2023 11:37:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232377AbjGMPhJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jul 2023 11:37:09 -0400
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A07B1FC4
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 08:37:07 -0700 (PDT)
Received: by mail-oi1-x230.google.com with SMTP id 5614622812f47-3a3c78ede4bso675494b6e.2
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 08:37:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689262627; x=1691854627;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=we2PYWjlXrhf7YA5e50pSB3r3uKJBwJBvyfkN3HQeHI=;
        b=jMNUKRnZu8Z9jSGLeckxay0T8TRTDjnZxzKefYi0imrqcnKVB3IhTK7zFuCr2uuEQ5
         jenRNsz1alc0k8aXcyY5Bs/btNLljJNoOVT84Gr0oPeMxSxh/HTFIsI9c/GeN8Cyx4UH
         vo3GFRDjiAt+ugCCt6dgTQ+Vcx4nuppHQlE8g7YPimWWFAlirtPvc05aRFKH45c6/sBv
         kQ3lyF7vt7epH7iWyFw7yRaNWH3jjwc+shRQXCjrYOBv/go4w6DuzpNGbygMFwSsByhW
         8oqvBhZdd8hv+S1z/PpM9UyxfF696BM/EhBJjdyoZ9Nxy2CaIH4vHoMwupbf8Llq1/HL
         79YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689262627; x=1691854627;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=we2PYWjlXrhf7YA5e50pSB3r3uKJBwJBvyfkN3HQeHI=;
        b=fzoVvR3ahi0VeXTOE2+t89OCWV1pGNlOz4jTjaOjbpADRxA/dPDgU7G81Hor0YBkBy
         Nj2KP3aRG9OEnnHzLlgPzNmGGtrz9jJUYhDANQfsndVqcZvDv7X1GUuPFU1BepFgqc0q
         5o9Par8bUZCa3+2ijRcZ0qVyWDdJTRDNZS/ixvjrl8nzOT9Zop5ef+fq3Qmz+6XHHg8J
         ha+pE2vf6d2QeBC96HbQ8VIw0wEoQuL3cBc4RySoTWnkHPp0LXXMV81c7e0+cARUgagk
         aucvaBN5YE8MJ9SjN+oAabeoapDkDFnhZKEN9j9Jh+JsJ/5iaRRLUHxrTtaK+4nAZKyY
         Zhdg==
X-Gm-Message-State: ABy/qLbpU+MQbZXF7al35LX29KbrRUczwQgEazM7AwDBSUPR8NDm4sBt
        szxdhDPDUTnBhw5Z+JS/8cwYwN/naJqB2sL53n8Kkw==
X-Google-Smtp-Source: APBJJlFupxhatozrXXQGBsLkH0UoI4gbrCdVoIWQ8DB4C6TFi0/i/sIdPC2//Y8yr4CidadlI0nBRPG6IdE52wzL9qk=
X-Received: by 2002:a05:6808:200f:b0:3a4:189b:53a9 with SMTP id
 q15-20020a056808200f00b003a4189b53a9mr2381742oiw.33.1689262626794; Thu, 13
 Jul 2023 08:37:06 -0700 (PDT)
MIME-Version: 1.0
References: <20230712130215.666924-1-amit.pundir@linaro.org> <c3ea2043-5d02-3a6f-ecb7-fb90d989bc6f@linaro.org>
In-Reply-To: <c3ea2043-5d02-3a6f-ecb7-fb90d989bc6f@linaro.org>
From:   Amit Pundir <amit.pundir@linaro.org>
Date:   Thu, 13 Jul 2023 21:06:30 +0530
Message-ID: <CAMi1Hd1Z230Vmb1aDS4ns29y6q1c8ZmhWGHArBGJQDq6KSLoQg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: display/msm: qcom,sdm845-mdss: add
 memory-region property
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
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
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 12 Jul 2023 at 19:46, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 12/07/2023 15:02, Amit Pundir wrote:
> > Add and document the reserved memory region property
> > in the qcom,sdm845-mdss schema.
> >
> > Signed-off-by: Amit Pundir <amit.pundir@linaro.org>
>
> Please keep consistent versioning, so this is new patch in v4.

ACK.

>
> > ---
> >  .../devicetree/bindings/display/msm/qcom,sdm845-mdss.yaml    | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sdm845-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sdm845-mdss.yaml
> > index 6ecb00920d7f..3ea1dbd7e317 100644
> > --- a/Documentation/devicetree/bindings/display/msm/qcom,sdm845-mdss.yaml
> > +++ b/Documentation/devicetree/bindings/display/msm/qcom,sdm845-mdss.yaml
> > @@ -39,6 +39,11 @@ properties:
> >    interconnect-names:
> >      maxItems: 2
> >
> > +  memory-region:
> > +    maxItems: 1
> > +    description:
> > +      Phandle to a node describing a reserved memory region.
>
> Your description says nothing new. It's entirely redundant/obvious.
> Instead please describe what reserved memory is expected to be here.

On it. I'll update in v5. Thanks.

Regards,
Amit Pundir

>
>
> Best regards,
> Krzysztof
>
