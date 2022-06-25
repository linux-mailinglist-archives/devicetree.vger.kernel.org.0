Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 189BA55A52C
	for <lists+devicetree@lfdr.de>; Sat, 25 Jun 2022 02:00:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230224AbiFYAA2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Jun 2022 20:00:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbiFYAA1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Jun 2022 20:00:27 -0400
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com [IPv6:2607:f8b0:4864:20::72c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 496E68BEF2
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 17:00:26 -0700 (PDT)
Received: by mail-qk1-x72c.google.com with SMTP id p63so2985016qkd.10
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 17:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IJAvhDroqXmrsqH4iFc0E0GuqNL82U57VX6UdPTB9n4=;
        b=UjArEFJwORom6BY7pUnOBCcQ0EVVDgVYIpnJWPp0BMyABVVRD1xExo45roAleP5uys
         R5ue84Q/xYTkg7Pk/QwD/ZTYk6pmkULGBg2rJ7g2+5NS7XmUTsc1KYWB4KfJN8p3NXTT
         JsFzxwEboUM+nV0Ve4r6i8fbRenjKlWnX4glXb00XQtdtsZ0e592YIGwQ1/ZB1V4s7hO
         qSx1QU3tiwgnZu5QfxwijJbNrQTx5TvlYracdQUpOb5ljOy/s68U4W1pPS++J9fEdJ+6
         lyGxPm3Yv2FpyrxYiI/K9538LR/Z8KpAEwdXIq/AW2poyhpws3a75rNPyZw2JJRIjPWw
         mPbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IJAvhDroqXmrsqH4iFc0E0GuqNL82U57VX6UdPTB9n4=;
        b=059reqWrnggS7C/ydyC1RkborGOxN2aHAfdloNJBlWG9taAsxwjJOJnV0YOS9XHt1Y
         HWb5xdhy5tUuzc45+OgaczSMxd0O5PQlKp/BbaZbZ4w2vK1byEBrUdtLrFYyXlIxnHju
         Wm9czuidLBbC0jXVYdNSX6u9R1eC56hhsTbJ6uth04y36bKmulspqEy4U44y1HQvUMzG
         PtDoyRmu4GUJ0TobGyvy123XuND99/SgTztIJUccxvQNZt10s8198u3RvVlqT3UkDYiQ
         pd2Jbl7kolf3vB04so+RgiAooT8KhV2a5N5KPvuGKrm2w6Izk6P2Gp9JEi6YsleeR++J
         pmkw==
X-Gm-Message-State: AJIora95TzjqT97KUq7NB6FbugIEnnAhry+x71B3YEqGLn3ovOTh3juL
        4RLbHJ7kTsD2EckPRWTvN5+JDh2TvSLJ17EPOTsRdg==
X-Google-Smtp-Source: AGRyM1tKMU1zp+sgdctuv70FNenlX/Oh6sbMw452AJpPiUL9wpU9PVXvgjjHaSl5eBf1lE3MMCyE6Eg6264uUtkypd4=
X-Received: by 2002:a05:620a:4156:b0:6a6:f8d2:6d9e with SMTP id
 k22-20020a05620a415600b006a6f8d26d9emr1424978qko.30.1656115225461; Fri, 24
 Jun 2022 17:00:25 -0700 (PDT)
MIME-Version: 1.0
References: <20220623120418.250589-1-dmitry.baryshkov@linaro.org>
 <20220623120418.250589-3-dmitry.baryshkov@linaro.org> <21efbf73-74af-8f80-3577-b82f39e161e6@linaro.org>
In-Reply-To: <21efbf73-74af-8f80-3577-b82f39e161e6@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Sat, 25 Jun 2022 03:00:14 +0300
Message-ID: <CAA8EJpp+pTPjFnGXaWvjUBFc=B9b=OwnHYUP33MNQOsaxwqk4w@mail.gmail.com>
Subject: Re: [PATCH 02/15] dt-bindings: clocks: qcom,mmcc: define
 clocks/clock-names for MSM8960
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
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

On Fri, 24 Jun 2022 at 18:57, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 23/06/2022 14:04, Dmitry Baryshkov wrote:
> > Define clock/clock-names properties of the MMCC device node to be used
> > on MSM8960/APQ8064 platform.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  .../devicetree/bindings/clock/qcom,mmcc.yaml  | 31 +++++++++++++++++++
> >  1 file changed, 31 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/clock/qcom,mmcc.yaml b/Documentation/devicetree/bindings/clock/qcom,mmcc.yaml
> > index d02fe6dc79b5..c13243682365 100644
> > --- a/Documentation/devicetree/bindings/clock/qcom,mmcc.yaml
> > +++ b/Documentation/devicetree/bindings/clock/qcom,mmcc.yaml
> > @@ -82,6 +82,37 @@ then:
> >      - clock-names
> >
> >  allOf:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - qcom,mmcc-apq8064
> > +              - qcom,mmcc-msm8960
> > +    then:
> > +      properties:
> > +        clocks:
> > +          items:
> > +            - description: Board PXO source
> > +            - description: PLL 3 clock
> > +            - description: PLL 3 Vote clock
> > +            - description: DSI phy instance 1 dsi clock
> > +            - description: DSI phy instance 1 byte clock
> > +            - description: DSI phy instance 2 dsi clock
> > +            - description: DSI phy instance 2 byte clock
> > +            - description: HDMI phy PLL clock
> > +
> > +        clock-names:
> > +          items:
> > +            - const: pxo
> > +            - const: pll3
> > +            - const: pll8_vote
> > +            - const: dsi1pll
> > +            - const: dsi1pllbyte
> > +            - const: dsi2pll
> > +            - const: dsi2pllbyte
> > +            - const: hdmipll
>
> The clocks are listed in properties, so they have min/max constraints
> set implicitly. Are you sure this now works fine?

I mentioned this while listing dependencies in the patchset description (00/15):

Dependencies: [1] (whole series), [2], [3]
[...]
[2] https://lore.kernel.org/linux-arm-msm/20220617122922.769562-2-dmitry.baryshkov@linaro.org/

This patch moves clocks/clock-names to the conditional clause.

-- 
With best wishes
Dmitry
