Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A29B678D98F
	for <lists+devicetree@lfdr.de>; Wed, 30 Aug 2023 20:34:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237153AbjH3Sd3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Aug 2023 14:33:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244721AbjH3Ns4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Aug 2023 09:48:56 -0400
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 361C1107
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 06:48:53 -0700 (PDT)
Received: by mail-yb1-xb2f.google.com with SMTP id 3f1490d57ef6-ccc462deca6so5251415276.0
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 06:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693403332; x=1694008132; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bmDbfaUQlbEK+YwLPVvf1B5npyIMZNGFC67fQJu+cXY=;
        b=OglMEbYZdhKMaOtTbDedbcZkbcTcJ0I4EM5eITxqsr9PH3Q9L7SOTR4Bb2Uuhhd46c
         NR0xpnCf1Vnu6ak+LF6eKjBnyvMihtezLIU1B9UaFbz+zNVn9tecU0rHhbOkG08nNAdc
         MKeaKNo0V1y3zHIeg/2Erwudgcgkv6OopkFHDpxfYmSJe8goQE9KWxvOHcRX6qKoeS1i
         5O0ZpIZle9XD/jGHQfm4YZjmXhSrbjRqcmC7l5/pnatPlZyEbnqFjImbyp9pmKeOnamC
         gxpDX1yXrI2H17BcaHufa4cfLnpoGCIbD79dVxT5eK4h3j+TP+mSx4n3UmDp/odf/+VT
         hB3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693403332; x=1694008132;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bmDbfaUQlbEK+YwLPVvf1B5npyIMZNGFC67fQJu+cXY=;
        b=BEFYhG+9cSA4aliQB2pXrcl7qAmX3Fn0wcaKiEzeFitpUUAiuuOVPPyUKruMWopF9v
         wwqz/WqG+PMSWCZiSparme30W9uAxrUJl01MCdG8cZk9MtKhi1ZHBcAlBxKeFWQbsIbq
         jo9yvqWZ0X22TVRimO7Q4NWQjMaZdZLuI/vtEhiLJMoe2yDsZtL053XRoRkuc5dLpMWg
         uyVR8Qhx0c6IyLWx1SUPhdHsuXOtiROQ1n0kPDBj0X+HO1Yenc1+VaQaiJyFClX+7EQl
         80y2jivukeE+SfU3R91jvrLJPEujo4mgJSHmI0W6O+EOiIsiSc2Nd5aAe1tBMr9Cg5gI
         kgUQ==
X-Gm-Message-State: AOJu0YwVYdlZk8vnKenKP3E8xWxz0bCw+DYJgyTunjXEKOTqDpuv7ToT
        bCmrwJ30tW86MSwyLmxHNjoLu0nuXan8xjIS6uxvIg==
X-Google-Smtp-Source: AGHT+IHlMvC0xiLqI09ca+xpteK5AXoqqkRQfTvX+t7kMRxQYclnhcIORHZgLG5E7mynM+cLCl9UhhtEQu1wrVLfcAw=
X-Received: by 2002:a25:e0ca:0:b0:d71:7cb4:8293 with SMTP id
 x193-20020a25e0ca000000b00d717cb48293mr2266093ybg.44.1693403332289; Wed, 30
 Aug 2023 06:48:52 -0700 (PDT)
MIME-Version: 1.0
References: <20230828192507.117334-1-bartosz.golaszewski@linaro.org>
 <20230828192507.117334-6-bartosz.golaszewski@linaro.org> <9b69a4a6-b011-f0e8-217f-5f91d9a00382@linaro.org>
 <48feda07-525d-4319-ba09-14928ab1fd29@linaro.org>
In-Reply-To: <48feda07-525d-4319-ba09-14928ab1fd29@linaro.org>
From:   Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Date:   Wed, 30 Aug 2023 15:48:41 +0200
Message-ID: <CACMJSeuOigO38_jgjNLz6AiWK1BoLN+shDQHrubS5s-dkDFG7A@mail.gmail.com>
Subject: Re: [PATCH 05/11] dt-bindings: document the Qualcomm TEE Shared
 Memory Bridge
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Alex Elder <elder@linaro.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        kernel@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
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

On Tue, 29 Aug 2023 at 11:30, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> On 29.08.2023 10:02, Krzysztof Kozlowski wrote:
> > On 28/08/2023 21:25, Bartosz Golaszewski wrote:
> >> Add Device Tree bindings for Qualcomm TEE Shared Memory Brige - a
> >> mechanism that allows sharing memory buffers between trustzone and the
> >> kernel.
> >
> > Subject prefix:
> > dt-bindings: firmware:
> >
> >
> >
> >>
> >> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >> ---
> >>  .../bindings/firmware/qcom,shm-bridge.yaml    | 36 +++++++++++++++++++
> >>  1 file changed, 36 insertions(+)
> >>  create mode 100644 Documentation/devicetree/bindings/firmware/qcom,shm-bridge.yaml
> >>
> >> diff --git a/Documentation/devicetree/bindings/firmware/qcom,shm-bridge.yaml b/Documentation/devicetree/bindings/firmware/qcom,shm-bridge.yaml
> >> new file mode 100644
> >> index 000000000000..f660962b7b86
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/firmware/qcom,shm-bridge.yaml
> >> @@ -0,0 +1,36 @@
> >> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >> +%YAML 1.2
> >> +---
> >> +$id: http://devicetree.org/schemas/firmware/qcom,shm-bridge.yaml#
> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> +
> >> +title: QCOM Shared Memory Bridge
> >> +
> >> +description: |
> >
> > Do not need '|' unless you need to preserve formatting.
> >
> >> +  Qualcomm TEE Shared Memory Bridge allows sharing limited areas of kernel's
> >> +  virtual memory with the trustzone in order to avoid mapping the entire RAM.
> >> +
> >> +maintainers:
> >> +  - Bjorn Andersson <andersson@kernel.org>
> >> +  - Konrad Dybcio <konrad.dybcio@linaro.org>
> >> +  - Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >> +
> >> +properties:
> >> +  compatible:
> >> +    items:
> >> +      - enum:
> >> +          - qcom,shm-bridge-sa8775p
> >> +          - qcom,shm-bridge-sm8150
> >> +          - qcom,shm-bridge-sm8450
> >> +      - const: qcom,shm-bridge
> >> +
> >
> > Looks quite empty... Why this cannot be part of qcom,scm? IOW, why do
> > you need new binding if you do not have any resources here and the block
> > is essentially feature of qcom,scm firmware?
> Since it's "discoverable" (via retval of an scm call), I'd second the
> idea of probing this from within the SCM driver.
>
> Konrad

Downstream has a bunch of DT switches that we don't support for now
upstream. I disagree about shoehorning this into the SCM driver. It
really is a layer on top of SCM but also SCM is a user of this
interface.

I will send a v2 with QCom ICE as a second user so that exporting
symbols pointed out by Krzysztof as having no users make more sense.
Hopefully keeping it separate will make more sense too.

If anything, the SHM Bridge code should stay in a separate compilation
unit even as part of SCM.

Bart
