Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D023A6229C2
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 12:10:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229922AbiKILKr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Nov 2022 06:10:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229724AbiKILKq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Nov 2022 06:10:46 -0500
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A132413F4B
        for <devicetree@vger.kernel.org>; Wed,  9 Nov 2022 03:10:45 -0800 (PST)
Received: by mail-ed1-x52a.google.com with SMTP id a13so26746477edj.0
        for <devicetree@vger.kernel.org>; Wed, 09 Nov 2022 03:10:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lwHwOq8FsLNoD2aO9ykMtFctZv91WdYSzGZv2yreSuA=;
        b=D2migdEODR8Q/QlwooR0P45jANQ3w1cPDCzYnfjrn/MvRoGIv9et4/DHrAzuO08uzu
         NHDdb4QTtHVW/VVU/1adZe7IopgsLtms+1K1aTJiG3QmIkoz/g04fS4WJud7fpo65M9+
         zY+kk5fouVvJC7AHJrd1TVnYKp9A9/YFRmVGu/kYtpEjcVw87QDx6VRCjygfN+847awZ
         E6PPRTqvQ/jmTjxJcT9y5um7zDbnr47l/1ARSFMhK9IAcxs0lOHFhdL71PsVLp+g8Wxb
         BS8xOvAQCWfBc1RyX0hsDdzmQzlqAYByh2qcg/XmCi78t5vJ6OaPnIBURSb3PcKSmRy+
         2ZQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lwHwOq8FsLNoD2aO9ykMtFctZv91WdYSzGZv2yreSuA=;
        b=SRSMMBdRh818wa+8Dze42GprFLOm5AIxV/TBB8VKiEer4H47OB3LBkbaFBpPXyEEeY
         UKzHUFzOyfZ+TDpRj9w3pVX4v5WWc3sEwClIe7G4fOCNqdGRx0HABPaY90+zXhKxnjS0
         9CbwsR3wAC3n6AYy5CUOJd+TZJ5rZUDxvKVD8JMBOtd5ZYJ16xdAwFTUYMibDZm49KjR
         eYvFUZYqou+NBTKIWqKzcsvmangkv5NFcxdqQ4lZPn5xaqoWYQduN2w0rhKt1aJZPzLF
         xgWZE61Zzh/5M2Ji381pjF0Y1NnbyHuKcu0HUqnYbJIxBCHudFd6joEHBXw+69DiP3WE
         5Fhw==
X-Gm-Message-State: ACrzQf0+sVRuw7xH7SX8QBDEQjmsKNimEL+/aF/Itr+IeHxfos1lNcrp
        sJo7RtDQQL6d3b6tMsNyNaXMqA==
X-Google-Smtp-Source: AMsMyM4fWcdacnBHb0ersV1OYLbBfhg8lo1BIBwYnIYYdB7EjZXnMher95VyVJqMztr2KgJ8rQLpzw==
X-Received: by 2002:a05:6402:360d:b0:459:5f40:5b0a with SMTP id el13-20020a056402360d00b004595f405b0amr57750711edb.168.1667992244215;
        Wed, 09 Nov 2022 03:10:44 -0800 (PST)
Received: from [192.168.31.208] ([194.29.137.22])
        by smtp.gmail.com with ESMTPSA id eq16-20020a056402299000b004610899742asm6720392edb.13.2022.11.09.03.10.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Nov 2022 03:10:43 -0800 (PST)
Message-ID: <7927fa8f-372d-5c34-2d68-a9533b87c1b0@linaro.org>
Date:   Wed, 9 Nov 2022 12:10:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.4.1
Subject: Re: [RESEND PATCH] dt-bindings: PCI: qcom,pcie-ep: correct
 qcom,perst-regs
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Rob Herring <robh@kernel.org>
References: <20221109105555.49557-1-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221109105555.49557-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 09/11/2022 11:55, Krzysztof Kozlowski wrote:
> qcom,perst-regs is an phandle array of one item with a phandle and its
> arguments.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Acked-by: Manivannan Sadhasivam <mani@kernel.org>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>   Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> index 977c976ea799..5aa590957ee4 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> @@ -47,8 +47,10 @@ properties:
>                    enable registers
>       $ref: "/schemas/types.yaml#/definitions/phandle-array"
>       items:
> -      minItems: 3
> -      maxItems: 3
> +      - items:
> +          - description: Syscon to TCSR system registers
> +          - description: Perst enable offset
> +          - description: Perst separateion enable offset

separation?


Konrad

>   
>     interrupts:
>       items:
