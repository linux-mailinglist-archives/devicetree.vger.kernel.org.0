Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 27C9170D587
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 09:45:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235334AbjEWHpK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 03:45:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235013AbjEWHpI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 03:45:08 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 298C094
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 00:45:05 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-510f3db1cd8so1005926a12.1
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 00:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684827902; x=1687419902;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J3RG61/5+/WSVFHjkPw5mlqbSw7Nb1Tx6G3f5gWMvqU=;
        b=yIyjLr6sXEg/LIvPrp/jJE5qUYrOkjD2FcAb4oq86LjF/blwuhFULdriuS6F2JgJLM
         Su0aYIZY+kiS//RnvVL1DllUBzWDtFE8wxcQ02PXNs8wU5bQCWrOGrNey5m/9ptrhvYy
         9QvTBBUusDy3KuFCBQc9P691NYlZcVCg2/mPxPBxUw2aFxAaEr/XrCit9yMQ2cRm94D1
         wcUGysFOoiGjNFsNhfl0AoHmbcSFb1F5BDaB8Q0p2uuiTz7CAj0Ulv190y102XIGUgdA
         v5cI9xU6psvP9PbGYFmN2U8bELJj6htVzyaXaXE+l5LRmc8jGzxwInuqvxQtoChsoi2w
         7xQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684827902; x=1687419902;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J3RG61/5+/WSVFHjkPw5mlqbSw7Nb1Tx6G3f5gWMvqU=;
        b=ct1NkUdXfEIFeMNVVV8o51wG4FKBTl0dqwiwXPfHYG1ARyifrbS/MfHhXA29yBu0FF
         uoOShQ3NOdWVpSi7Icgvzt25fqJ0NLPLGnS3z0m5KkO8qH8Lj7gSlPhM/nKezA11NeuU
         yztU3ccfp24tWykhAzCVPeMNqbq8t5dSqIE6T8815sNegfSwQoeAkWxw4RKB0wVrEiia
         qMggGAELpr/3b/A+v5d3zFEr7UWIxRzfMSfpMwPoP/NYjDv11uH/2ujr81BaNYxejvZa
         YbfSG2dtmDwE67YuTeSlRnFq/Fwe5d3l4AYYRiKrHtRaP7TDOFZxVqEvJTA/G8thdjfZ
         hCjA==
X-Gm-Message-State: AC+VfDwn3Mnr41A3eRUVVAa3TZM+Siq1E/W74EoKM5KLag6NCxhH8/yO
        mq6cIKKUSoGNvocT6lFmdV4Eh+ErykbWaWMRAI4=
X-Google-Smtp-Source: ACHHUZ6HRyf/NCQ88ZSlgqg8T9QJtsOCFVuwQZlk584ddQWpQWfvPDdxbTa3oq+weEAWe7eT4qiSBg==
X-Received: by 2002:a2e:4941:0:b0:2ab:bd1:93da with SMTP id b1-20020a2e4941000000b002ab0bd193damr4648474ljd.10.1684827059258;
        Tue, 23 May 2023 00:30:59 -0700 (PDT)
Received: from [192.168.1.101] (abyk138.neoplus.adsl.tpnet.pl. [83.9.30.138])
        by smtp.gmail.com with ESMTPSA id s16-20020a2e81d0000000b002aecfa8c58bsm1494161ljg.40.2023.05.23.00.30.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 May 2023 00:30:58 -0700 (PDT)
Message-ID: <552d20f5-ed3c-2f69-2715-ab64914e131d@linaro.org>
Date:   Tue, 23 May 2023 09:30:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] dt-bindings: clock: qcom: Accept power-domains for GPUCC
Content-Language: en-US
To:     Bjorn Andersson <quic_bjorande@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Taniya Das <tdas@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230523010348.63043-1-quic_bjorande@quicinc.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230523010348.63043-1-quic_bjorande@quicinc.com>
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



On 23.05.2023 03:03, Bjorn Andersson wrote:
> In many designs the power-domains provided by the GPU clock controller
> are powered by some GFX rail, add power-domains as a valid property to
> allow this to be specified.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
You may also wanna add some runtime pm enable calls in the driver

Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  Documentation/devicetree/bindings/clock/qcom,gpucc.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/clock/qcom,gpucc.yaml b/Documentation/devicetree/bindings/clock/qcom,gpucc.yaml
> index 1e3dc9deded9..a00216b3b15a 100644
> --- a/Documentation/devicetree/bindings/clock/qcom,gpucc.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,gpucc.yaml
> @@ -50,6 +50,9 @@ properties:
>        - const: gcc_gpu_gpll0_clk_src
>        - const: gcc_gpu_gpll0_div_clk_src
>  
> +  power-domains:
> +    maxItems: 1
> +
>    '#clock-cells':
>      const: 1
>  
