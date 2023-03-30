Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 95BD76CFCE5
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 09:36:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230312AbjC3HgS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 03:36:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229942AbjC3HgN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 03:36:13 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AF2A49FE
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 00:36:09 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id g17so23373758lfv.4
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 00:36:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680161767;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=76aJWbUWsdK9RGoxvHvablA/jheCBXLESrz/qwRI/4M=;
        b=xNA+hiC1s8qd6uyQFCaLtk65m2NO3EmHH/YxypEzDyl3LtCIU+3wrZD1iK0aFIdkwA
         mIAHFZAkJwfCPi9dGS6L5U0ZqH94ElOiJ9cj+90WPBalORBXyCnKKrJBX/j7qahJCzRZ
         PxE8ZLWGEdrWTS9Fm5yz0CKndLiEjtL2LdWahblUL+kW1CkOvxrXkuMBUfzRmwFdml7G
         y5SFxV1NAaaKglxLMbcrWuX9nicH7w+TCHeWjNUe36T6arnGp4AClzqrxy01iR0cvz/m
         qmESakOVTb6yrTKCcQLBzIsJegnV5JESMug3NG60/CweJPP0oh3V76A5Z0ABick8eVQe
         mW3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680161767;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=76aJWbUWsdK9RGoxvHvablA/jheCBXLESrz/qwRI/4M=;
        b=SkQL5IHQO2EcgnniYUNUjUlA5UK8gPfYZ80DRXN+Ju20ohbYdop3gFRABGGQRDq+p4
         8/aesf762e/TxR3LAnVRygP3FvAATFiCWaUXreFNrXuzYtTNNIX3FiX4UGPOEnyHjdXT
         j2biGltOzn0LRYqCHFfwn+C6ffHO7U4gCPAZGt1HytKMYPIksvAJtcJ+/Jy5csdHweWk
         Ja7g0Mtoi94d3PN2zJ12JlRnj/9ZjGXLZtL38Qn2YHK2K/ZnGqyIA+EgHGJ6m/242ZXA
         kJPfFWZSfxg+8KxzzFy6LGkWrp9cl76zynQwGBlZg6i1aotslBAq6CJO0zGJzQItBnS6
         jIng==
X-Gm-Message-State: AAQBX9cuT58SyRoY44QXhBkSdYLrmfyMXG8hJtu13KLwp9MzRrcMYDSt
        CNPiHrimUFvRoH7LO4E/jMtiyA==
X-Google-Smtp-Source: AKy350azUAlNkIGGkonG3ti8573pFtntXxPHUEJSCWt7ET2qDNeE1BbTm2NDbr8OkWmpoUkzfHomBQ==
X-Received: by 2002:ac2:48b4:0:b0:4de:7dec:ca34 with SMTP id u20-20020ac248b4000000b004de7decca34mr7049792lfg.48.1680161767681;
        Thu, 30 Mar 2023 00:36:07 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id x3-20020ac259c3000000b004db2c5c895bsm5722965lfn.234.2023.03.30.00.36.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 00:36:07 -0700 (PDT)
Message-ID: <7e93c0c9-0a84-c1ce-a978-c4743963012b@linaro.org>
Date:   Thu, 30 Mar 2023 09:36:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/2] dt-bindings: mailbox : arm,mhuv2: Allow for more RX
 interrupts
Content-Language: en-US
To:     Cristian Marussi <cristian.marussi@arm.com>,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     sudeep.holla@arm.com, vincent.guittot@linaro.org,
        souvik.chakravarty@arm.com, nicola.mazzucato@arm.com,
        Tushar.Khandelwal@arm.com, viresh.kumar@linaro.org,
        jassisinghbrar@gmail.com, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
References: <20230329153936.394911-1-cristian.marussi@arm.com>
 <20230329153936.394911-2-cristian.marussi@arm.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230329153936.394911-2-cristian.marussi@arm.com>
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

On 29/03/2023 17:39, Cristian Marussi wrote:
> The ARM MHUv2 Receiver block can indeed support more interrupts, up to the
> maximum number of available channels, but anyway no more than the maximum
> number of supported interrupt for an AMBA device.
> 
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: devicetree@vger.kernel.org
> 
>  .../devicetree/bindings/mailbox/arm,mhuv2.yaml      | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mailbox/arm,mhuv2.yaml b/Documentation/devicetree/bindings/mailbox/arm,mhuv2.yaml
> index a4f1fe63659a..5a57f4e2a623 100644
> --- a/Documentation/devicetree/bindings/mailbox/arm,mhuv2.yaml
> +++ b/Documentation/devicetree/bindings/mailbox/arm,mhuv2.yaml
> @@ -69,10 +69,15 @@ properties:
>  
>    interrupts:
>      description: |
> -      The MHUv2 controller always implements an interrupt in the "receiver"
> -      mode, while the interrupt in the "sender" mode was not available in the
> -      version MHUv2.0, but the later versions do have it.
> -    maxItems: 1
> +      The MHUv2 controller always implements at least an interrupt in the
> +      "receiver" mode, while the interrupt in the "sender" mode was not
> +      available in the version MHUv2.0, but the later versions do have it.
> +      In "receiver" mode, beside a single combined interrupt, there could be
> +      multiple interrupts, up to the number of implemented channels but anyway
> +      no more than the maximum number of interrupts potentially supported by
> +      AMBA.

Last sentence indicates that TX mode has something else, e.g. max 1
interrupt. Either correct the sentence or add if:then: narrowing it for TX.


Best regards,
Krzysztof

