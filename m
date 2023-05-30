Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B9DD715C28
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 12:47:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230254AbjE3Kq7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 06:46:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231658AbjE3Kqb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 06:46:31 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EC97E4F
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 03:46:13 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-5147dce372eso6292641a12.0
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 03:46:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685443572; x=1688035572;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X1uTxJ2P81Ei8I+IeH2RtXBJYqlWc9UuiwCU03Ga55I=;
        b=Bf0uZYLU+w0KPaD5ItfunQljt6/D4tYqlLnMrUM8gvv1A8nElk9oCIDfnqZERV14nH
         LJICXpYOBGvWLs6LEyDvKvXTDq8iemxmrOFaC4cRW179qzcvLW60y1g/cAqiYRuknWRu
         0xGVFM9S9IHSyF5FKWmf82rMJbRtuag26I5LCM+TYa+FngBvlmJ4IjTDsd7+Qbh5KFgu
         BkcZ96HY5UiXLNK4bj6E9+EMMW8bNekRD4D8e2cgJEGBtLUZXLR4SIbK3d9C6uq2snoX
         nhJN0TNYBjIwni97zaziepR8tmAuFPPecVV68MOD7g/RUTQsWlvsGUOz0aAF5FW2rAHh
         oQEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685443572; x=1688035572;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X1uTxJ2P81Ei8I+IeH2RtXBJYqlWc9UuiwCU03Ga55I=;
        b=dG7Zco9b4pvEFZOcL7thNhzyQg7xT5eajOjvErGnNWcqI3/Ek3HmZds9R+xgM46KyJ
         YhqFXo8hjwLH3ZrbSN0hJjqAngruoXA7Wbw1+pfXao6zX/zQxL1T+KdBMIuqqWoIKaKg
         FBw7P/QpMi44tJm05ha8VWBMAKRkzP3zNlgdMs7Zqq6+lEyVIQdEuVHbtc/vyiJObHe/
         ZhpZ+iWPbTvDGOxRe9IBB2EgXxFBSB9nZbHVZ4ybNGuIEgW+IPflZkIc1plV4z1uwhbG
         +p/BAxmxmBRoPKGUnz7hHpSDeW6S/M1+s5i8GEuLVd8jvt5ztV3xza/+3DmdMWsm/rZx
         jvFg==
X-Gm-Message-State: AC+VfDzt7RYB2Q31HKwxvg46HBOBETXUVsrbJwTzK5ugN/ZUgUxFTLr1
        /bb6OOXf6PLB0dSTTh2bbRKuKQ==
X-Google-Smtp-Source: ACHHUZ5afVrXFA3pQbZViPGRRFzAs4wbVuezJ2AoA/De2vgc7Ia1EU84pNDyESAQkxbwCcUt+RHOaQ==
X-Received: by 2002:aa7:c451:0:b0:50d:8979:5722 with SMTP id n17-20020aa7c451000000b0050d89795722mr1207210edr.39.1685443571866;
        Tue, 30 May 2023 03:46:11 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id m2-20020a50ef02000000b00514a97b6b80sm1261806eds.78.2023.05.30.03.46.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 May 2023 03:46:11 -0700 (PDT)
Message-ID: <b03dfbeb-dcc4-4dda-18dc-84243534d41a@linaro.org>
Date:   Tue, 30 May 2023 12:46:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH V2 01/13] dt-bindings: remoteproc: qcom: Add support for
 multipd model
Content-Language: en-US
To:     Manikanta Mylavarapu <quic_mmanikan@quicinc.com>,
        agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, jassisinghbrar@gmail.com,
        mathieu.poirier@linaro.org, mturquette@baylibre.com,
        sboyd@kernel.org, quic_eberman@quicinc.com, quic_mojha@quicinc.com,
        kvalo@kernel.org, loic.poulain@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        linux-clk@vger.kernel.org
Cc:     quic_srichara@quicinc.com, quic_sjaganat@quicinc.com,
        quic_kathirav@quicinc.com, quic_anusha@quicinc.com,
        quic_poovendh@quicinc.com, quic_varada@quicinc.com,
        quic_devipriy@quicinc.com
References: <20230521222852.5740-1-quic_mmanikan@quicinc.com>
 <20230521222852.5740-2-quic_mmanikan@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230521222852.5740-2-quic_mmanikan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/05/2023 00:28, Manikanta Mylavarapu wrote:
> Add new binding document for multipd model remoteproc.
> IPQ5018, IPQ9574 follows multipd model.
> 
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> ---
> Changes in V2:
> 	- Fixed all comments and rebased for TOT.
> 	- Changed to BSD-3-Clause based on internal open source team
>           suggestion.
> 	- Added firmware-name.
> 
>  .../bindings/remoteproc/qcom,multipd-pil.yaml | 265 ++++++++++++++++++
>  1 file changed, 265 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/remoteproc/qcom,multipd-pil.yaml
> 
> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,multipd-pil.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,multipd-pil.yaml
> new file mode 100644
> index 000000000000..3257f27dc569
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,multipd-pil.yaml
> @@ -0,0 +1,265 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-3-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/remoteproc/qcom,multipd-pil.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm Multipd Secure Peripheral Image Loader
> +
> +maintainers:
> +  - Bjorn Andersson <andersson@kernel.org>
> +  - Mathieu Poirier <mathieu.poirier@linaro.org>
> +
> +description:
> +  Multipd Peripheral Image Loader loads firmware and boots Q6 pd, WCSS pd
> +  remoteproc's on the Qualcomm IPQ5018, IPQ9574 SoC. Pd means protection
> +  domain. It's similar to process in Linux. Here QDSP6 processor runs each
> +  wifi radio functionality on a separate process. One process can't access
> +  other process resources, so this is termed as PD i.e protection domain.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - qcom,ipq5018-q6-mpd
> +      - qcom,ipq9574-q6-mpd
> +
> +  reg:
> +    maxItems: 1
> +
> +  firmware-name:
> +    $ref: /schemas/types.yaml#/definitions/string-array
> +    description: Firmware name of the Hexagon core
> +
> +  interrupts-extended:
> +    items:
> +      - description: Watchdog interrupt
> +      - description: Fatal interrupt
> +      - description: Ready interrupt
> +      - description: Handover interrupt
> +      - description: Stop acknowledge interrupt


interrupts instead. The same in required:. I replied also to your
comment on your comment. :)

Best regards,
Krzysztof

