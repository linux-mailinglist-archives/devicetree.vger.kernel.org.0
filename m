Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3DE774B0212
	for <lists+devicetree@lfdr.de>; Thu, 10 Feb 2022 02:25:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231768AbiBJBY0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Feb 2022 20:24:26 -0500
Received: from gmail-smtp-in.l.google.com ([23.128.96.19]:46200 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231847AbiBJBYZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Feb 2022 20:24:25 -0500
Received: from mail-oo1-xc2c.google.com (mail-oo1-xc2c.google.com [IPv6:2607:f8b0:4864:20::c2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B64A0135
        for <devicetree@vger.kernel.org>; Wed,  9 Feb 2022 17:24:27 -0800 (PST)
Received: by mail-oo1-xc2c.google.com with SMTP id o128-20020a4a4486000000b003181707ed40so4558453ooa.11
        for <devicetree@vger.kernel.org>; Wed, 09 Feb 2022 17:24:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=27Sh/gjTQKrc1Azsx7TamN01kBkavB9Nd2smrY49IYs=;
        b=RNbSnjwslH0xYngfJEtgMMri9g9VWvX8QUMKepo8DyvQmuKVO8z7uusX/NJ102syep
         6j2NrhvLeTW/hZNMIpRlCJZcLSY3Y3Jx2Cvt0TBjnWeVZdumDmcGvpmLwuNY2ziVMk4s
         reGibwi0vzCv8RvrpFqu6my6XvlTm5KOSSQQs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=27Sh/gjTQKrc1Azsx7TamN01kBkavB9Nd2smrY49IYs=;
        b=1G294puJL2BxUXow/wAIirDNU8F/yh+4uveYniOSpI/MB5Vy88uzHBDvvfXUYtzl9y
         EEaho+8f+v/FVucPFE2OBmL2k6O3nnmlLF1e8/x6eMShtSfJj/aGjIsNXy2NNNCy774p
         SJ794spvxIIsR/C0gIdYv43dJRTMoydunF1ZZ7Oq/YHBJiWO5E1EvL/ULNO6YdjkjJVE
         JitQOO4APNevEeHhGGHSi6MmiQU4xBWs2c5G3Gr5hr+Q00NhU05OUCXjX//L7q9wJfDx
         baoPsAUpsovpkVFdbGm0BVZIXRrGqq9qKn8mijwVlHytD4ZOORhXZiSKS2tqeML0N6gp
         pPrA==
X-Gm-Message-State: AOAM532shkHSw7KJ6ekS/ljJEbcr+ab9/T7gWmL+Sg5JmTkj9IsbdH4c
        iwPfwzlhRAuLW+vHSL62XXXTTh76iTHGOJDRrk52xw==
X-Google-Smtp-Source: ABdhPJyGpdG7EGFYVbHR1S5gBzqW7H/LjHzkWQMB7qqnIX2TFR25pk7CNsX9nO6gZmvzXDDT4FlsDtbMDdsGOlmtjNU=
X-Received: by 2002:a05:6870:1209:: with SMTP id 9mr51140oan.8.1644456267103;
 Wed, 09 Feb 2022 17:24:27 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 9 Feb 2022 17:24:26 -0800
MIME-Version: 1.0
In-Reply-To: <1644331940-18986-2-git-send-email-quic_c_skakit@quicinc.com>
References: <1644331940-18986-1-git-send-email-quic_c_skakit@quicinc.com> <1644331940-18986-2-git-send-email-quic_c_skakit@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Wed, 9 Feb 2022 17:24:26 -0800
Message-ID: <CAE-0n51AYxeWMpgS=Ya-_5Ly_h3uB346aZc9j596iZxQ+ZtcMQ@mail.gmail.com>
Subject: Re: [PATCH V5 1/6] dt-bindings: regulator: Add pm8008 regulator bindings
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        Satya Priya <quic_c_skakit@quicinc.com>
Cc:     Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Das Srinagesh <gurus@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_collinsd@quicinc.com,
        quic_subbaram@quicinc.com, quic_jprakash@quicinc.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Satya Priya (2022-02-08 06:52:15)
> diff --git a/Documentation/devicetree/bindings/regulator/qcom,pm8008-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,pm8008-regulator.yaml
> new file mode 100644
> index 0000000..0098845
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/regulator/qcom,pm8008-regulator.yaml
> @@ -0,0 +1,31 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/regulator/qcom,pm8008-regulator.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm Technologies, Inc. PM8008 Regulator bindings
> +
> +maintainers:
> +  - Satya Priya <skakit@codeaurora.org>
> +
> +description:
> +  Qualcomm Technologies, Inc. PM8008 is an I2C controlled PMIC
> +  containing 7 LDO regulators.
> +
> +patternProperties:
> +  "^LDO[1-7]$":

Any reason it needs to be capitalized vs. lowercase ldo?

> +    type: object
> +    $ref: "regulator.yaml#"
> +    description: PM8008 regulator peripherals of PM8008 regulator device
> +
> +    properties:
> +      regulator-name: true
> +
> +    required:
> +      - regulator-name
