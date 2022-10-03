Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD0495F37EA
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 23:36:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229999AbiJCVg2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 17:36:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229751AbiJCVgB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 17:36:01 -0400
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com [IPv6:2607:f8b0:4864:20::112f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2904613F99
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 14:32:34 -0700 (PDT)
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-333a4a5d495so118441507b3.10
        for <devicetree@vger.kernel.org>; Mon, 03 Oct 2022 14:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=2bi/y7RqON3rILQIaLg4tpcyyj29amk6YPWOzm5JEe8=;
        b=E6BGyX2R3br2NItICC87EoslHXzA51iQh0Du+Le2opXJN3nXfb/atznlaDc/ssJszY
         znUCfGG9LA8foBQZdFv1RLM9FhEFly/fSPzZlYh0ICAQiWI6x0JbEvFsHmxrgoF3ubjb
         fDlpGHz/wuiKjQIWpzTVRoJ1VMpOokfaCyI/3/JYJDyUk25L47dnBwl8IW6Epo+rqzEn
         nFRFY2G9U+zEIq+hPKboUE5PVIFiiDSdM73xPxh4nBnhIL8pIPFscwGiCnPEpDTsPOri
         RiWEnyKo9tjiviOCoUmMum0pgo/sFa82FHIo2lXuQ0JFZlOfTHWUpRWP7xctvwjRybRd
         q6+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=2bi/y7RqON3rILQIaLg4tpcyyj29amk6YPWOzm5JEe8=;
        b=ZrHWJh+3b6pJSt5h5o+WLqLH2PkbjHGCZTG2V2wPG4IKo0WRJ0ZTgxS/bN0i+ovRjj
         mahMuoFC/Ho7/X0bYsa8YSE2V1U4ppZcwSeAhWpx5VHxcqDgwobZfZ5K1TLvEHDHnERi
         nvV98LxWSRbJszwovMWPUgGWrHRMzuf9M0ZBVGU4Hzj3TzFSXATjaUXstxwM6w9JrIGi
         T+exGetfMuBI+WalIDyO2j8Sw9cfKUpMs/tQTFWf0cIs0OiVEPfcBw2/sXQo7lStLOrS
         o3/TIn2ei/TQSx9QW247fZYy4a/FUcwFZq9uhIYRr+RkskaaeNDl3Ov+g/csl+DknAnc
         CDAA==
X-Gm-Message-State: ACrzQf1GArxgZTJuYu9abvdoBUOAcy2NXxufBqTibKEmaedkN3W5peKv
        EFawEXI+uSgiTwrulx97Dv7V8ZKL0j8ljhbldXjRmg==
X-Google-Smtp-Source: AMsMyM7uCXrpSFjA4kkeXnfrVDNYV/EBJqp+cqIWpz9qFi/Z658MytR7enRWVjI1ce9KpePyYI1f6XmQlXyLoCNO44M=
X-Received: by 2002:a0d:f685:0:b0:343:bd3d:80b2 with SMTP id
 g127-20020a0df685000000b00343bd3d80b2mr21509771ywf.485.1664832752977; Mon, 03
 Oct 2022 14:32:32 -0700 (PDT)
MIME-Version: 1.0
References: <20221001030403.27659-1-quic_molvera@quicinc.com>
 <20221001030403.27659-2-quic_molvera@quicinc.com> <37926f0f-e176-929e-939a-cd43a031e224@linaro.org>
 <bb241d46-6f90-8604-e79d-30a1f3527ce4@quicinc.com>
In-Reply-To: <bb241d46-6f90-8604-e79d-30a1f3527ce4@quicinc.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Tue, 4 Oct 2022 00:32:21 +0300
Message-ID: <CAA8EJpqqLRJK3GaXt3Uf=+TAupYFkG4Ey_wG2si2WePp5gAaQA@mail.gmail.com>
Subject: Re: [PATCH 1/5] dt-bindings: clock: Add QDU1000 and QRU1000 GCC clock bindings
To:     Melody Olvera <quic_molvera@quicinc.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 3 Oct 2022 at 21:47, Melody Olvera <quic_molvera@quicinc.com> wrote:
>
>
> On 10/1/2022 4:24 AM, Krzysztof Kozlowski wrote:
> > On 01/10/2022 05:03, Melody Olvera wrote:
> >> Add device tree bindings for global clock controller on QDU1000 and
> >> QRU1000 SoCs.
> >>
> >> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> >> ---
> >>  .../bindings/clock/qcom,gcc-qdru1000.yaml     |  74 ++++++++
> >>  include/dt-bindings/clock/qcom,gcc-qdru1000.h | 170 ++++++++++++++++++
> >>  2 files changed, 244 insertions(+)
> >>  create mode 100644 Documentation/devicetree/bindings/clock/qcom,gcc-qdru1000.yaml
> >>  create mode 100644 include/dt-bindings/clock/qcom,gcc-qdru1000.h
> >>
> >> diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc-qdru1000.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc-qdru1000.yaml
> >> new file mode 100644
> >> index 000000000000..d92f558d547c
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/clock/qcom,gcc-qdru1000.yaml
> >> @@ -0,0 +1,74 @@
> >> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >> +%YAML 1.2
> >> +---
> >> +$id: http://devicetree.org/schemas/clock/qcom,gcc-qdru.yaml#
> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> +
> >> +title: Qualcomm Global Clock & Reset Controller Binding for QDU1000 and QRU1000
> > Drop "Binding"
>
> Will do in v2.
>
> >
> >> +
> >> +maintainers:
> >> +  - Melody Olvera <quic_molvera@quicinc.com>
> >> +
> >> +description: |
> >> +  Qualcomm global clock control module which supports the clocks, resets and
> >> +  power domains on QDU1000 and QRU1000
> >> +
> >> +  See also:
> >> +  - dt-bindings/clock/qcom,gcc-qdru1000.h
> > Full path
> Understood.
> >
> >> +
> >> +properties:
> >> +  compatible:
> >> +    enum:
> >> +      - qcom,gcc-qdu1000
> >> +      - qcom,gcc-qru1000
> >> +
> >> +  clocks:
> >> +    items:
> >> +      - description: Board XO source
> >> +      - description: Sleep clock source
> >> +      - description: PCIE 0 Pipe clock source (Optional clock)
> > Skip "Optional clock"
> >
> >> +      - description: PCIE 0 Phy Auxiliary clock source (Optional clock)
> >> +      - description: USB3 Phy wrapper pipe clock source (Optional clock)
> >> +    minItems: 2
> >> +
> >> +  clock-names:
> >> +    items:
> >> +      - const: bi_tcxo
> >> +      - const: sleep_clk
> >> +      - const: pcie_0_pipe_clk # Optional clock
> > Skip "Optional clock"
>
> Will remove all optional clock instances.

Drop the 'optional clock' words, not the clocks themselves. See
existing examples, which have optional clocks.

-- 
With best wishes
Dmitry
