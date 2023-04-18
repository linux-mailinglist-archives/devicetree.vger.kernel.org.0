Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 641306E5E3E
	for <lists+devicetree@lfdr.de>; Tue, 18 Apr 2023 12:08:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230443AbjDRKIz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Apr 2023 06:08:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230130AbjDRKIy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Apr 2023 06:08:54 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4AD0A6E8D
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 03:08:51 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id kt6so33565232ejb.0
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 03:08:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681812530; x=1684404530;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CHTRuDZizZmh3JLZCo5lprJ34wrb3qJisxHDlzonFVQ=;
        b=IL9QQcBRXReGXfHqy0crh2FxCNKO1auiDipds27slpKbXHVXazCM6KG8qIo1FvRcxt
         iq9WJU9MycEAR+w87PKddU8wGGtQ3anbOKLaRUO5Uj77vcpjST+eNxWyoFKtpxwBNTn6
         G1ntWN0oiQjJnSREdUT7A/iCLtwacqzVXVbFzhVHDjS7r7M0vZ0dtMTHSwxhEnK3OSdy
         7or+H0TxJbxiZ+08cu+obndPVE/glYUYnb9oZlhzjyRdVmsQZjqtLd1O9T0MhpfJCHs0
         Z5Bc3nY0iDEq6teRKfyraaYCkBi7VT8B8GOAShTPUpUSi7ajgy1E1yX5wuVT5Fx3nj9F
         wNog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681812530; x=1684404530;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CHTRuDZizZmh3JLZCo5lprJ34wrb3qJisxHDlzonFVQ=;
        b=Q/59CT2eHStVbnpIb1EEksCl2JGi/cCoaiUZeCkvE2+icyfk7CjyHyy8KHyqjxgRt+
         SrcuOxDe+XIJGUlQQFa8guWFV/kcZklxEJtgixrnfcDwBU+FBZR5g3c/iQCT0YZ4tFVS
         r4UqOSZ9AX3jyABCQP/5bPSAtCotbuwilolRavSS0nbkpavGJ8/dqwQ/1R4ep08YRXhn
         LBkvU2iUGDv0KbK8UsV0fqX5QVFdbk25xCWaeNVaC331IB7t9B3FVab5elRpL/kGPhta
         sVRVcAxnG08g+kUqz+ogBVW84ZCsckKm6zDfVEjDue0hLusDrT8mDeKq+2cS3lMnody1
         mGBg==
X-Gm-Message-State: AAQBX9ddJh4ZNx9nd6nxASrcnhNKYlpNNRy5AkaxEzDS/i4XxOd4OMc9
        mX2/AnJb5oHWkRtsiGaKY/0Luw==
X-Google-Smtp-Source: AKy350Y6QKNYyStk/yeNY7V9U+pJgUn1EghZMLBG2sV9zSfpYxNv6bvXFckJUhC1XhExS9B0xAO02g==
X-Received: by 2002:a17:906:82c5:b0:94a:8e19:6aba with SMTP id a5-20020a17090682c500b0094a8e196abamr10589810ejy.21.1681812529724;
        Tue, 18 Apr 2023 03:08:49 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id kt2-20020a170906aac200b0094f6458157csm3300672ejb.223.2023.04.18.03.08.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Apr 2023 03:08:49 -0700 (PDT)
Message-ID: <4a250d8f-5771-4933-be99-5721c163fe8a@linaro.org>
Date:   Tue, 18 Apr 2023 11:08:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v3 2/7] dt-bindings: soundwire: qcom: add 16-bit sample
 interval
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Bard Liao <yung-chuan.liao@linux.intel.com>,
        Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        Sanyog Kale <sanyog.r.kale@intel.com>,
        Rao Mandadapu <quic_srivasam@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org
Cc:     Rob Herring <robh@kernel.org>
References: <20230418095447.577001-1-krzysztof.kozlowski@linaro.org>
 <20230418095447.577001-3-krzysztof.kozlowski@linaro.org>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <20230418095447.577001-3-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 18/04/2023 10:54, Krzysztof Kozlowski wrote:
> The port sample interval was always 16-bit, split into low and high
> bytes.  This split was unnecessary, although harmless for older devices
> because all of them used only lower byte (so values < 0xff).  With
> support for Soundwire controller on Qualcomm SM8550 and its devices,
> both bytes will be used, thus add a new 'qcom,ports-sinterval' property
> to allow 16-bit sample intervals.
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---

Reviewed-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

--srini
> 
> Changes since v2:
> 1. Use uint16 for qcom,ports-sinterval.
>     DTS will be fixed in separate patchset.
> 2. Add tags.
> ---
>   .../bindings/soundwire/qcom,soundwire.yaml    | 20 +++++++++++++++++--
>   1 file changed, 18 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml b/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
> index 98c7fc7e1189..fb44b89a754e 100644
> --- a/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
> +++ b/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
> @@ -86,7 +86,7 @@ properties:
>     qcom,ports-sinterval-low:
>       $ref: /schemas/types.yaml#/definitions/uint8-array
>       description:
> -      Sample interval low of each data port.
> +      Sample interval (only lowest byte) of each data port.
>         Out ports followed by In ports. Used for Sample Interval calculation.
>         Value of 0xff indicates that this option is not implemented
>         or applicable for the respective data port.
> @@ -94,6 +94,17 @@ properties:
>       minItems: 3
>       maxItems: 16
>   
> +  qcom,ports-sinterval:
> +    $ref: /schemas/types.yaml#/definitions/uint16-array
> +    description:
> +      Sample interval of each data port.
> +      Out ports followed by In ports. Used for Sample Interval calculation.
> +      Value of 0xffff indicates that this option is not implemented
> +      or applicable for the respective data port.
> +      More info in MIPI Alliance SoundWire 1.0 Specifications.
> +    minItems: 3
> +    maxItems: 16
> +
>     qcom,ports-offset1:
>       $ref: /schemas/types.yaml#/definitions/uint8-array
>       description:
> @@ -220,10 +231,15 @@ required:
>     - '#size-cells'
>     - qcom,dout-ports
>     - qcom,din-ports
> -  - qcom,ports-sinterval-low
>     - qcom,ports-offset1
>     - qcom,ports-offset2
>   
> +oneOf:
> +  - required:
> +      - qcom,ports-sinterval-low
> +  - required:
> +      - qcom,ports-sinterval
> +
>   additionalProperties: false
>   
>   examples:
