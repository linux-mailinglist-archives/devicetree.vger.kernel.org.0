Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA8DE6DED6A
	for <lists+devicetree@lfdr.de>; Wed, 12 Apr 2023 10:19:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229515AbjDLITf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Apr 2023 04:19:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229481AbjDLITe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Apr 2023 04:19:34 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65F09C2
        for <devicetree@vger.kernel.org>; Wed, 12 Apr 2023 01:19:33 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id sh8so26662970ejc.10
        for <devicetree@vger.kernel.org>; Wed, 12 Apr 2023 01:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681287572;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LquOzlkyKxehJwDFL94uuL+mZHnm4ypcdZd+4o5Ged4=;
        b=F1IrCq74k6tf6dr0Qc7aTdHAsgfGrG9hJELpGAh8kF5IOvOTqF0UrclwyIfZbuBzxS
         NM+tgPhkyyiL55Fv9rqrJxvnhMko9d++g2tQPdeHZG41JeB7xN0VrhSIrKb2XeuW8zPC
         ZgMEFy8m1isYfUTi3qDcNP+laDGqNOXz3yF/7NYHsoqL2XsZeOq+m409D8Su4KVB+dSI
         0ikClf9gW1ZGDGjiUy94QvtY9SexQXw7Q/s+nq/l3vIbzjjZoZnYArYC5Jv+VXD/uMhM
         +eEuAblS54Wc6Nm6x+HIzxwQXqug0CCtmfdebj/marMW6oJbqSMSkVLj86jsJd11fSOe
         UcrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681287572;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LquOzlkyKxehJwDFL94uuL+mZHnm4ypcdZd+4o5Ged4=;
        b=nVioP2VxKqTK9ki2NWSRlqMPQwPrs8ZpyhpfSKXL7dJ0VhwrMZF9RHaFFGbC5LqQlA
         TFXe4tU98rCC6UcKNpM87WzAVX0CX4HZyKu5m5l3WHBh4Quc5wfFgKZbn+kOjiaPmm1h
         s0ZE6Ge6dTgW7/nw/ZVi04lb78uhLk9x6ihjoFB+1ZjnOWlEnMtrmTt+9K0mKK5TVKc3
         PeQjIwQ4SGLS/OVsYqiW6YXk8E8oKKVi7pkn+sQhIqB8HBPgc2eEgvlK5JEmjGwmFetF
         Sw3Ta3spVt++ZNaezwZIeDXBQAFt6OilpA3gg8b83eBWO3A86b8YZwbBoK0nFA6iGbv1
         laAg==
X-Gm-Message-State: AAQBX9d6izdq17Z/GtlRAWxIvQTh4jRW6ETl9K1dOJDkl65LnTBZg9Xb
        eTHM8sxx8PIl6blN8d3d/Uc40zU58JLYaP9c3e8=
X-Google-Smtp-Source: AKy350aUIRnZQrhIU0+8BIzA1Tzh6d3p28M/rwt/syiKhSoZSWUFrGONjAuXmxFG4qTc8Drh88wNvw==
X-Received: by 2002:a17:906:da82:b0:94a:464a:e88e with SMTP id xh2-20020a170906da8200b0094a464ae88emr15184505ejb.42.1681287571933;
        Wed, 12 Apr 2023 01:19:31 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:8fa0:9989:3f72:b14f? ([2a02:810d:15c0:828:8fa0:9989:3f72:b14f])
        by smtp.gmail.com with ESMTPSA id qk16-20020a1709077f9000b0094d7bc8e9aasm2037006ejc.94.2023.04.12.01.19.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Apr 2023 01:19:31 -0700 (PDT)
Message-ID: <1f276e6d-4a13-49f8-0953-9b1658d31c04@linaro.org>
Date:   Wed, 12 Apr 2023 10:19:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH V2 1/3] dt-bindings: sram: qcom,imem: Add Boot Stat region
 within IMEM
Content-Language: en-US
To:     Souradeep Chowdhury <quic_schowdhu@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
References: <cover.1680874520.git.quic_schowdhu@quicinc.com>
 <96601c1f9e433ef8fbc608d5ca09365b9c0d8132.1680874520.git.quic_schowdhu@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <96601c1f9e433ef8fbc608d5ca09365b9c0d8132.1680874520.git.quic_schowdhu@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/04/2023 16:04, Souradeep Chowdhury wrote:
> All Qualcomm bootloaders log useful timestamp information related
> to bootloader stats in the IMEM region. Add the child node within
> IMEM for the boot stat region containing register address and
> compatible string.
> 
> Signed-off-by: Souradeep Chowdhury <quic_schowdhu@quicinc.com>
> ---
>  .../devicetree/bindings/sram/qcom,imem.yaml         | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
> index 665c06e..9998d65 100644
> --- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
> +++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
> @@ -26,6 +26,7 @@ properties:
>            - qcom,sdm845-imem
>            - qcom,sdx55-imem
>            - qcom,sdx65-imem
> +          - qcom,sm8450-imem

Use recent Linux kernel for your work.

Best regards,
Krzysztof

