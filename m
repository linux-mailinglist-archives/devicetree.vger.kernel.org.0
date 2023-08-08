Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9AD507742A0
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 19:47:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232043AbjHHRrO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 13:47:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231753AbjHHRp4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 13:45:56 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AABFEAD14C
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 09:20:51 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-3fe45481edfso47720265e9.1
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 09:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691511621; x=1692116421;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nuIvq2h/BPP3D5cIRCobslq+P4j3Ukg7i7rEMjlM13A=;
        b=VK+97OZsOlMh0gtAleSSv2OK+2/K/V+DlFAn/Yx0ld69fT4vzXMxWZxDvPgiYdO3/H
         EYKIV8bhAStmQFNUrnKvWCFrIhkUyD5fG4tg93rpR5eZX0uUdekdlbacngUm1HgkOvee
         j3xGX7TGEu0Ox+5ABsqHbYHW9VJj+B+tZI4YagADW9za223aZWbfC5E8/rzcE1BaReKx
         GwKRPJ0cfKZLaRU5YkaltQpQQOlgE9CrrOBphU0Nbk6ZvnKYK8TbbQscoGaWvFohQTIe
         z5Kdqtu78jFYphosDhqCLF7HLsZ/ADIjFEr94dXSROjKm/3SyelmMuE0GYrZCAlkpoD8
         EtMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691511621; x=1692116421;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nuIvq2h/BPP3D5cIRCobslq+P4j3Ukg7i7rEMjlM13A=;
        b=QssLUOp4bgqXQiqT2E7hAAGYVPxiUYiqiJAdB2Uq8MwtMkgmR9NbUF7P3Dwf1QCseQ
         QGoReN2OZs1pgN+lWjsX4KA90z49HjLM0cuqBU0o5oCGM2bYxomkDCbArahjRdZd44LV
         CTD9PYMLPFq6s346DxdF1hzB6IG2yFGP2UKY6s1ju2/Y2FxlP7YRIfC1GQ2ksqtesftY
         uxUdD5fIgOqz3T/NigOZqakZH1hsaGKkSt/sHoEQaiUkLINXvnxnc1SIOyoH1ERhBXpY
         3dituMxKjmeuHCNW8uPeGEhx8/TC809r59F+VO5RxCAF/i/o8pIGuXj/tfCTF5Ox1qZ+
         S05Q==
X-Gm-Message-State: AOJu0YwTm4UqSJIMddBmE3HMY6dPEl+bKDzR7lmE6e3ngFwmCvQ0zkIF
        pb3zNhlSMFw09siAKJM28hpzkg==
X-Google-Smtp-Source: AGHT+IGG6cx4NxloHY9qu9bkpwF/v/G7D1G7UI779iSRivcmdLz5bmQnplAjeu12YJonXRuef1UCvA==
X-Received: by 2002:a5d:4574:0:b0:317:ef17:2351 with SMTP id a20-20020a5d4574000000b00317ef172351mr3658176wrc.65.1691511621014;
        Tue, 08 Aug 2023 09:20:21 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id a5-20020a5d4565000000b0030647449730sm14050046wrc.74.2023.08.08.09.20.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Aug 2023 09:20:20 -0700 (PDT)
Message-ID: <41d46805-c5a1-6c0d-6b5f-caf499d10d4a@linaro.org>
Date:   Tue, 8 Aug 2023 18:20:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v13 04/10] dt-bindings: soc: qcom: cpr3: Add bindings for
 CPR3 driver
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Niklas Cassel <nks@flawful.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Ulf Hansson <ulf.hansson@linaro.org>
Cc:     Robert Marko <robimarko@gmail.com>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, Jeffrey Hugo <quic_jhugo@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>
References: <20230217-topic-cpr3h-v13-0-d01cff1c54cf@linaro.org>
 <20230217-topic-cpr3h-v13-4-d01cff1c54cf@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230217-topic-cpr3h-v13-4-d01cff1c54cf@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/08/2023 14:37, Konrad Dybcio wrote:
> From: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
> 
> Add the bindings for the CPR3 driver to the documentation.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
> [Konrad: Make binding check pass; update AGdR's email]
> Tested-by: Jeffrey Hugo <quic_jhugo@quicinc.com>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  .../devicetree/bindings/soc/qcom/qcom,cpr3.yaml    | 291 +++++++++++++++++++++
>  1 file changed, 291 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,cpr3.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,cpr3.yaml
> new file mode 100644
> index 000000000000..d797abc5d5fe
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/qcom/qcom,cpr3.yaml
> @@ -0,0 +1,291 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/soc/qcom/qcom,cpr3.yaml#"

Drop quotes.

It does not look like you tested the bindings, at least after quick
look. Please run `make dt_binding_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).
Maybe you need to update your dtschema and yamllint.

> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm Core Power Reduction v3/v4/Hardened (CPR3, CPR4, CPRh)
> +
> +description:
> +  CPR (Core Power Reduction) is a technology to reduce core power of a CPU
> +  (or another device). Each OPP of a device corresponds to a "corner" that
> +  has a range of valid voltages for a particular frequency.
> +  The CPR monitors dynamic factors such as temperature, etc. and suggests
> +  or (in the CPR-hardened case) applies voltage adjustments to save power
> +  and meet silicon characteristic requirements for a given chip unit.
> +
> +maintainers:
> +  - AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - description: CPRv3 controller

Nit, since you are going to resend, then: Drop description, it's the
same as compatible.

> +        items:
> +          - const: qcom,cpr3
> +      - description: CPRv4 controller

Ditto


Best regards,
Krzysztof

