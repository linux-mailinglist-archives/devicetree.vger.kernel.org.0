Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 989AA789D55
	for <lists+devicetree@lfdr.de>; Sun, 27 Aug 2023 13:49:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229843AbjH0LtB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Aug 2023 07:49:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229835AbjH0Ls3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Aug 2023 07:48:29 -0400
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69CC9186
        for <devicetree@vger.kernel.org>; Sun, 27 Aug 2023 04:48:26 -0700 (PDT)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-58e6c05f529so29054367b3.3
        for <devicetree@vger.kernel.org>; Sun, 27 Aug 2023 04:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693136905; x=1693741705;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=SOCpPWe7OKGhP+mivko2oCOZT+7pMKJtiqyOcjFKW4s=;
        b=sU+i4612l8iq6Q+vgFGPuT+B9hmqIxRTZKdUIWw00c+MSZTw4YmdvA0Uo8S8aXcPgk
         qkY5SjZnBhXS76NzxK60muAJV5d4PsMoFSaamO9jmkcR74CRGQvyvzGVuvjtAgRzP6Wv
         uCM0+bfiy5LmV00+ujYUgYIbbvtpEsJocEu3ORwjY4nCPd3mF8euH43Rhbu8SyIwd7Cg
         EV0EMm8YsxemHOOgBiSvRDhQSL3uLfVjouNaA9zz0d+Wz9BHdylfeldNSc4GqwryVQtk
         DuxeKXj9J7g/0VVtRmV1swqzKOKwGYE0qz0FYC5591h4w8I0YZi5AuxwC3PfJqFmFo5l
         E0pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693136905; x=1693741705;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SOCpPWe7OKGhP+mivko2oCOZT+7pMKJtiqyOcjFKW4s=;
        b=W5ijAn/FTxIVETbo1KFzC9keVJsV9LvPI0CuNkc0Cxb6ojkMXG9K1G652g5xCMyLoL
         qfr/br/3fkz8CEFipR3cUiTTmaVTcfTV+JSSMrrJe5eMThL8wMsM8hO00PEuLDP/aiV3
         IjgwYpSruaEmhqrBYsIGerWRR3usaP/IbDtY7EpS6aQdIMWU9RaxrYhiusCPJDkKVi8d
         FzVbjfbUZve+c3jbx/dnFM6IWrbY6EUsk/Aitxnvmxstx/32w5l4b9mNPjCh394O03RK
         O/uEd9TmeEp2imzbJv9wAKRS2XDctJwKAXCDdACBnjRgBWpKOMN7ZnqClxrWsxbeb1B8
         6PXw==
X-Gm-Message-State: AOJu0YwNa9gDOJLiTZBXXrMGXih2r4Fi48zrr/Euzc+ahZCwREZ7D0gx
        Xb+oYzb2rwfosNZC8nrNvylMtWXnGWqMYZKrtIT33A==
X-Google-Smtp-Source: AGHT+IFLYC8MWF6L7rtrBC0qkMHSJ92tbN2J+48NUnJzxXbVXtV/MtFa+jzW0Als7Y7HiKTZavgKbCgtjN+2toPccX8=
X-Received: by 2002:a25:bccb:0:b0:c15:c55d:c26e with SMTP id
 l11-20020a25bccb000000b00c15c55dc26emr21853470ybm.54.1693136905652; Sun, 27
 Aug 2023 04:48:25 -0700 (PDT)
MIME-Version: 1.0
References: <20230827005920.898719-1-dmitry.baryshkov@linaro.org>
 <20230827005920.898719-4-dmitry.baryshkov@linaro.org> <39af3ab5-4fa5-5b3c-395a-e86e70bbe803@linaro.org>
 <CAA8EJppw0Kxo3W560ucWey959368M1c8BFnvF4Ggi5XKCOfesw@mail.gmail.com> <74dcc5b4-dda2-5de7-9e58-4191a0fb7972@linaro.org>
In-Reply-To: <74dcc5b4-dda2-5de7-9e58-4191a0fb7972@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Sun, 27 Aug 2023 14:48:14 +0300
Message-ID: <CAA8EJpoWvoNfomMg34cL=h+qBLHQq3bZO2X-02Pcz6oLiKRxWA@mail.gmail.com>
Subject: Re: [PATCH v4 03/38] dt-bindings: mfd: qcom-pm8xxx: allow using interrupts-extended
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     devicetree@vger.kernel.org, Lee Jones <lee@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        linux-iio@vger.kernel.org,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        linux-input@vger.kernel.org, Pavel Machek <pavel@ucw.cz>,
        linux-leds@vger.kernel.org
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

On Sun, 27 Aug 2023 at 14:12, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 27/08/2023 12:42, Dmitry Baryshkov wrote:
> > On Sun, 27 Aug 2023 at 11:35, Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 27/08/2023 02:58, Dmitry Baryshkov wrote:
> >>> Allow using interrupts-extended, which is a preferred form of interrupts
> >>> specification compared to the interrupt-parrent + interrupts pair.
> >>>
> >>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >>> ---
> >>>  Documentation/devicetree/bindings/mfd/qcom-pm8xxx.yaml | 10 +++++++++-
> >>>  1 file changed, 9 insertions(+), 1 deletion(-)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/mfd/qcom-pm8xxx.yaml b/Documentation/devicetree/bindings/mfd/qcom-pm8xxx.yaml
> >>> index 7fe3875a5996..33d9615e63c8 100644
> >>> --- a/Documentation/devicetree/bindings/mfd/qcom-pm8xxx.yaml
> >>> +++ b/Documentation/devicetree/bindings/mfd/qcom-pm8xxx.yaml
> >>> @@ -37,6 +37,9 @@ properties:
> >>>    interrupts:
> >>>      maxItems: 1
> >>>
> >>> +  interrupts-extended:
> >>> +    maxItems: 1
> >>
> >> The entire patch is not needed. At least should not be needed. What
> >> problem are you trying to solve here?
> >
> > The main problem is the next chunk, which (currently) explicitly
> > requires `interrupts' property. My goal is to allow
> > `interrupts-extended' in addition to `interrupts'.
>
> They are allowed. Why do you think they aren't? That's why I don't
> understand what real problem is here.

qcom-pm8xxx.yaml lists `interrupts' property under the `required'
clause. So I can not simply replace it with `interrupts-extended'


-- 
With best wishes
Dmitry
