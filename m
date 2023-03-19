Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 939906C0125
	for <lists+devicetree@lfdr.de>; Sun, 19 Mar 2023 12:54:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230367AbjCSLy2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Mar 2023 07:54:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230373AbjCSLyZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Mar 2023 07:54:25 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96B302212A
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 04:53:37 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id x3so36645334edb.10
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 04:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679226813;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n27ash1ZV3nvhcp1Y7K3jMG+XzPX+dZla6qCaA/tb6A=;
        b=nWr3ScZrTWn6Zt3UhfbfIO0Pa838QVuzr6IOXrpABY21TR3kXEN/QAepAwRx4ErSLS
         gLMVPd/I0CwmO44YANGPNFmHLbimlhZBEilQkYEbHVBP7Uw+Zaif6SBds7suxRWQyrC5
         Lnn6MqpJl2bPLPQzihM2CB5VFR1/JsZwgbb990MUc9LzgX6a6UYOlcie+LYZFvVq4WbK
         ZacTEafGDQ6Q+TvdPOYNw13SLIB7ulAMFnae6LaHldTCSSnf6Y0lmj6RIb2TtBvKzDf/
         Ggfsv1ZHjBkkSnvFANHyyUh6TsVTWRzNHq67hSO/sIwDqjkovzzlz3yfawTr20WxlBZQ
         TZgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679226813;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n27ash1ZV3nvhcp1Y7K3jMG+XzPX+dZla6qCaA/tb6A=;
        b=OFxXvq4BbNzpCA83E7IFjf8b4nbltenQRkyYL19QaeNMjYww6/tOpyaEmhmspz4Fsd
         Zlc7IoQmDEqubDJ3rvfEnFYZPsxt6sRoVqyDxZ/PU6hrQU3wkyoyGvFIp8PCESSocugJ
         BdhvJKSSmr53bbM0FV53zEkACaIZSZrnfXgLtqOBFzOUsXRpXTmr1oLpv/p3fjpQCnlV
         a1/mvRI2+2wcfT4qTM8MLvHcAn4DoOViEB2kwaVXH1y+pZt/cMdULxQjerjmvJPGIpYd
         X3fEksu7gtlcylIz4bhD0Tyy5xE5WLeEydX7DVPQHlDX0xD2zW0n6oww4hdjDKb/E/aO
         Mk5g==
X-Gm-Message-State: AO0yUKVSX0ixVJ44iyfHnKwrD6m8jhGGk9DMt9VJgwebJkVeCpliYZj5
        7SoX5zmw1eTX/sLgQg9XpIvfCw==
X-Google-Smtp-Source: AK7set8u1FPrRK5Kcxl2IomzkWfEOJbSXoOLMVLalI2wQ4leod0gDrwuBfsUQPXxujAKvQXFXrqxqQ==
X-Received: by 2002:a17:907:a042:b0:930:310:abed with SMTP id gz2-20020a170907a04200b009300310abedmr4726778ejc.54.1679226813388;
        Sun, 19 Mar 2023 04:53:33 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:5b5f:f22b:a0b:559d? ([2a02:810d:15c0:828:5b5f:f22b:a0b:559d])
        by smtp.gmail.com with ESMTPSA id n3-20020a170906088300b009327ed171f2sm2427410eje.129.2023.03.19.04.53.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Mar 2023 04:53:33 -0700 (PDT)
Message-ID: <7d48a2ca-3f73-073b-0ea8-d9ae4f12d8a9@linaro.org>
Date:   Sun, 19 Mar 2023 12:53:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v4 02/18] dt-bindings: regulator: qcom,usb-vbus-regulator:
 Mark regulator-*-microamp required
Content-Language: en-US
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>, linux@roeck-us.net,
        heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org,
        andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-usb@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     wcheng@codeaurora.org, caleb.connolly@linaro.org,
        konrad.dybcio@linaro.org, subbaram@quicinc.com, jackp@quicinc.com,
        robertom@qti.qualcomm.com
References: <20230318121828.739424-1-bryan.odonoghue@linaro.org>
 <20230318121828.739424-3-bryan.odonoghue@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230318121828.739424-3-bryan.odonoghue@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/03/2023 13:18, Bryan O'Donoghue wrote:
> The VBUS driver needs to know the regulator-min-microamp and
> regulator-max-microamp so they should both be marked as required.
> 
> regulator.yaml defines those two dependencies so include regulator.yaml.
> 
> We need to change from additionalProperties: false to
> unevaluatedProperties: false.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  .../bindings/regulator/qcom,usb-vbus-regulator.yaml      | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml
> index 7a3b59f836092..f6ecb0f72ad9a 100644
> --- a/Documentation/devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml
> +++ b/Documentation/devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml
> @@ -14,6 +14,9 @@ description: |
>    regulator will be enabled in situations where the device is required to
>    provide power to the connected peripheral.
>  
> +allOf:
> +  - $ref: "regulator.yaml#"

Drop quotes.



Best regards,
Krzysztof

