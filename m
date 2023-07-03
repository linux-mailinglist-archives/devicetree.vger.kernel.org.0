Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E4C9745E13
	for <lists+devicetree@lfdr.de>; Mon,  3 Jul 2023 16:01:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230131AbjGCOBf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jul 2023 10:01:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230084AbjGCOBe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jul 2023 10:01:34 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DBB66E52
        for <devicetree@vger.kernel.org>; Mon,  3 Jul 2023 07:01:32 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-992acf67388so418104766b.1
        for <devicetree@vger.kernel.org>; Mon, 03 Jul 2023 07:01:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688392891; x=1690984891;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bUE0bM1sDOp6MPisSkuzWwyMeYVq/1zyln32/5b5tEg=;
        b=goLuj1TOEgVpZvK/5+2sS9RbaP8Vko8GqbFUpvx+9CNLm5m7aWbqVKk8i2+bacp9iR
         zmlDeblmjKWvbhlun/ruzo6OjjPbTh1D8wrFiuNhGZ75PLbvRFs5ziFdtprny1vU8gfk
         FSCDb8Mwj6ebLUC9O9IfvsW3HSK4eS8FAC46L4pSNCHWPKXVVPBIiI082EgAXUOvjm8G
         YUaYzwMv199gha9I8AIUAAEPBrRfYWox/rbBdI0QZvE47O7qI7XG8tlyieFZ55RTMfRR
         yJiV+h1h6epUYz16WyI8/oHjDTY5y0NBB3AfhVxH2KtU7WRchJEhmFCajAo90Py6ckkP
         o0QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688392891; x=1690984891;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bUE0bM1sDOp6MPisSkuzWwyMeYVq/1zyln32/5b5tEg=;
        b=bpbnqlTwJof88sAPAfAnt1lPni7n20CZNZDpo162pcG6fE/Di3Mg6jX2hhhGZ/YmoG
         arOJ1kJhPTbkYOCvMWdP6yPzC8y12yZ8jN0wireA9pIZYIq4q1vfo0NpWztGTccl6h/1
         EnxN8hEGhsgyebTscPYc2uSkOEnoPzihV5Xdv4PVDbnMcAVQXqhbj0f1UDzXja/q46oD
         MYVQ/EjQUWgvKvQsvbYlyCPAKAF8eax4jsF0PFt54AkaSX0K8+K1fQ45AEFOomc4NVH1
         eBIhPc68BJNztZeXTHCWDpsFOSYbsgUjTNPezoaD6sXRUBgFamnjMDcIh8Du4lnhE6qV
         ho5g==
X-Gm-Message-State: ABy/qLaxqPJ85a/OIRfdOpCr6O0rtJUzAGiz7r75h8V7Ljzei6a6IRX3
        ydDD9F4TRjym5tS646UHkQ+/hA==
X-Google-Smtp-Source: APBJJlHGvFqx6TD6S61lpdBhdysquQ6+RTWy0Shfl3va7Ffm35xODQYP4aNmlAMNal/uiDV7boqIqQ==
X-Received: by 2002:a17:906:738d:b0:98e:1f6a:5259 with SMTP id f13-20020a170906738d00b0098e1f6a5259mr6504086ejl.75.1688392891158;
        Mon, 03 Jul 2023 07:01:31 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id n14-20020a170906118e00b0098ce63e36e9sm12221218eja.16.2023.07.03.07.01.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jul 2023 07:01:30 -0700 (PDT)
Message-ID: <b8d3e99b-157e-4f7d-1f5e-a702acd8e819@linaro.org>
Date:   Mon, 3 Jul 2023 16:01:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 2/5] dt-bindings: serial: geni-qcom: Allow no qup-core icc
 path
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Andi Shyti <andi.shyti@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-spi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-serial@vger.kernel.org, linux-i2c@vger.kernel.org
References: <20230703-topic-8250_qup_icc-v1-0-fea39aa07525@linaro.org>
 <20230703-topic-8250_qup_icc-v1-2-fea39aa07525@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230703-topic-8250_qup_icc-v1-2-fea39aa07525@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/07/2023 15:31, Konrad Dybcio wrote:
> Some SoCs (like SM8150 and SM8250) don't seem to provide a qup-core path.
> Allow such case.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  .../bindings/serial/qcom,serial-geni-qcom.yaml     | 26 +++++++++++++++-------
>  1 file changed, 18 insertions(+), 8 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/serial/qcom,serial-geni-qcom.yaml b/Documentation/devicetree/bindings/serial/qcom,serial-geni-qcom.yaml
> index dd33794b3534..a0acba57bc06 100644
> --- a/Documentation/devicetree/bindings/serial/qcom,serial-geni-qcom.yaml
> +++ b/Documentation/devicetree/bindings/serial/qcom,serial-geni-qcom.yaml
> @@ -25,14 +25,6 @@ properties:
>    clock-names:
>      const: se
>  
> -  interconnects:
> -    maxItems: 2
> -
> -  interconnect-names:
> -    items:
> -      - const: qup-core
> -      - const: qup-config

Instead please keep the definition of the fields in top-level properties
with the widest constraints, e.g.
interconnects:
  minItems: 1
  maxItems: 2

interconnect-names:
  minItems: 1
  items:
   - const: qup-core
   - const: qup-config

If there was allOf:if:then per variant, this could be further customized.

Best regards,
Krzysztof

