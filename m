Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ADA156CD48E
	for <lists+devicetree@lfdr.de>; Wed, 29 Mar 2023 10:27:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229999AbjC2I1q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Mar 2023 04:27:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229745AbjC2I1p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Mar 2023 04:27:45 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 056C8D3
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 01:27:44 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id c9so8692619lfb.1
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 01:27:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680078462;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Wbhe9hg1I6LvxpxedrR12rYja/vRqqHKoCKBslpfp1I=;
        b=FWR3HQIOrf/IQsG4evaTwNexMPVEA5BU/WcbyN4YYLGt/tyOnnRpl9O3xWbq8QKlDN
         xXif2VfhN4Qbg+HKfohY8nGZ9/Rhe4/uHFQo+WAo2bS0fDqKkPLnrLYZu3dZBsbsO57B
         1d1cbmG3SUZ3pFkObae4yzZPMgjWPnfWjmaVXLl/i0Tmfidx/SX7qXg/ZsN5o5/cc7U9
         icyny4yBjvBpa8DILyBBv3Q7QDJxrI9I6nalMlHnVFOCnwBG96GARhv9trGyyzFgsIHm
         zTIpINrI0wRz4k+WCwFcUZPCIqBN+ZO1dztBHHpb6sVd3b4zU9cj0Peeiu9Iz5bY+VAp
         pO0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680078462;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Wbhe9hg1I6LvxpxedrR12rYja/vRqqHKoCKBslpfp1I=;
        b=F/j12NdFhTVUhN9RkESBrnBN7C9qIphCANcRg/Vd7ENA279MbxGS9xDbzL6IEDUkKC
         UM7O68uiV/VnHufp+U0koMAV/D2BZVrVs/nMpGVe/iZsi7zyQMBTF7rKptZGZMv0gNDZ
         0/6krC7FH1lB4/2L9BE9AC0bOi/mRdorQ5eYFCnY5g8z/wqTAWMzNVm/IUbA3e6ccrug
         sJNgSJNKmq9K7dyV1D+9uRPzuOrKj50Lh5QxnGTuCiHvXNjAA+7bjg2yH0Hy9+emtnRe
         OAFzCYK2XsvpEY8iftVV6/WfiOGEjjG8k8Qfb2FAMSlGyURvOi3v6GfHehcqoNmDvjVZ
         umkQ==
X-Gm-Message-State: AAQBX9co/z8ZV6QJGbznw8S8tJCl5aYoagtzBk9hkADl9urFVV+pXvOo
        SEQ/pUcQTtvY5+9muph2zY2y6g==
X-Google-Smtp-Source: AKy350bjG3/pXSTDfNanMwnVXqyNAwWDXddDh6/IiFo/cOEiwPPzTDmeuhEA6XNsF0m8TUTKQnOpiQ==
X-Received: by 2002:ac2:5a0a:0:b0:4d9:8773:7d76 with SMTP id q10-20020ac25a0a000000b004d987737d76mr5116478lfn.11.1680078462268;
        Wed, 29 Mar 2023 01:27:42 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id f24-20020ac25338000000b004e8448de1c0sm5430462lfh.10.2023.03.29.01.27.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Mar 2023 01:27:41 -0700 (PDT)
Message-ID: <863d5a85-3399-5a43-b755-1316e3adcfec@linaro.org>
Date:   Wed, 29 Mar 2023 10:27:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/2] dt-bindings: interrupt-controller: mpm: Allow passing
 reg through phandle
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawn.guo@linaro.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230328-topic-msgram_mpm-v1-0-1b788a5f5a33@linaro.org>
 <20230328-topic-msgram_mpm-v1-1-1b788a5f5a33@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230328-topic-msgram_mpm-v1-1-1b788a5f5a33@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/03/2023 12:02, Konrad Dybcio wrote:
> Due to the wild nature of the Qualcomm RPM Message RAM, we can't really
> use 'reg' to point to the MPM's slice of Message RAM without cutting into
> an already-defined RPM MSG RAM node used for GLINK and SMEM.
> 
> Document passing the register space as a slice of SRAM through the
> qcom,rpm-msg-ram property. This also makes 'reg' no longer required.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  .../devicetree/bindings/interrupt-controller/qcom,mpm.yaml          | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/qcom,mpm.yaml b/Documentation/devicetree/bindings/interrupt-controller/qcom,mpm.yaml
> index 509d20c091af..77fe5e0b378f 100644
> --- a/Documentation/devicetree/bindings/interrupt-controller/qcom,mpm.yaml
> +++ b/Documentation/devicetree/bindings/interrupt-controller/qcom,mpm.yaml
> @@ -30,6 +30,11 @@ properties:
>      description:
>        Specifies the base address and size of vMPM registers in RPM MSG RAM.
>  
> +  qcom,rpm-msg-ram:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to the APSS MPM slice of the RPM Message RAM
> +
>    interrupts:
>      maxItems: 1
>      description:
> @@ -64,7 +69,6 @@ properties:
>  
>  required:
>    - compatible
> -  - reg

Either:
1. make reg deprecated and require qcom,rpm-msg-ram
or
2. you need oneOf:required for reg and qcom,rpm-msg-ram

>    - interrupts
>    - mboxes
>    - interrupt-controller
> 

Best regards,
Krzysztof

