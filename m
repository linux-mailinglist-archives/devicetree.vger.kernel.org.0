Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5768E622878
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 11:28:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230452AbiKIK2W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Nov 2022 05:28:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230480AbiKIK2S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Nov 2022 05:28:18 -0500
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94F4F26109
        for <devicetree@vger.kernel.org>; Wed,  9 Nov 2022 02:28:14 -0800 (PST)
Received: by mail-lj1-x233.google.com with SMTP id z24so25061926ljn.4
        for <devicetree@vger.kernel.org>; Wed, 09 Nov 2022 02:28:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mNDnlJRRZQ1HwWLU+qAP81QZPQ2iIYZNFnp2rz399s4=;
        b=IVL14hhhm0+D/EeDjCoX05ZGdnlDJoOk1znbMR7xSlS6EpKAc6EGe3wCYsVt/oAH6f
         cqz+HAvg+wK3GH11ldQ5b6h5KI4IUYbC2h2iUPCWkbF14+Z9UNIPth5Ki06AQqGGoSqU
         lvyc0Fi/8fGYYfveE47WrNEnmgNR9eBck1BILbB9BLvzzPR3jSdBMuR7K8sTA63oAX9a
         e6CdCC7Ng/zOCokea35VM/AkeF2625cxpRpwMKkd3OkHsq84dq+f7bMmbiSAohtLv+dL
         vgTJnMlKiFRTdaP6L8dxwC2MUqLqkAUl1Gw/BTvzYUdMiznI34oen8byuEw6yQmoazX4
         5aCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mNDnlJRRZQ1HwWLU+qAP81QZPQ2iIYZNFnp2rz399s4=;
        b=xdUEtmDy5MA3AVdvOMLk3Gs2DfIDcB5Lo9qIz6IDZiRxIc9gBiv52kwjxT7WOJ1+Ag
         QmWxPwFD1acw0rSc9PXXCUdQzz7YsaO+NeoHTPsPKXtqOgyS9KA0BP0885rSCtxIYkFk
         xtmxQg4TtxflK/Cl96P51RHAU+//6WW5em4bcBMWm6BvBDqSLkKWuYMsNMhqOx/QAKmA
         wHaad/XqFhPjOcW/vwEtay8K6uHYy/8iz42eGurAfRwqDdbRM+7fesKFtjkSLxAt03Kq
         ajRv5Cc6Wa9odvAG30e9FsEvy6cHjPqulaqOuGExJ5fYLM+PSeyiZmOkUeGT6ffD9tFt
         OMaA==
X-Gm-Message-State: ACrzQf33kY+K48mkfGqUd6MbSTVQWoSY0qecIeY672NrSfbSXWgLpCGc
        tMVOOz1Eqrpk09qu2b9LGCC9YxS04pNFOg==
X-Google-Smtp-Source: AMsMyM4wZ2Uz77QF/mq6QTcQYw0J2UqTghs7PEfawHUCN496WwhT/PMGjooa2gHF11RjmxvMF0g4Tw==
X-Received: by 2002:a2e:bc86:0:b0:277:2e58:3d63 with SMTP id h6-20020a2ebc86000000b002772e583d63mr20847781ljf.76.1667989692951;
        Wed, 09 Nov 2022 02:28:12 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id i26-20020a0565123e1a00b00485caa0f5dfsm2164085lfv.44.2022.11.09.02.28.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Nov 2022 02:28:12 -0800 (PST)
Message-ID: <e427508c-04d2-3e4a-e537-a9e1f688407a@linaro.org>
Date:   Wed, 9 Nov 2022 11:28:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 1/3] dt-bindings: pinctrl: qcom,msm8960: convert to
 dtschema
Content-Language: en-US
To:     Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221108184529.26857-1-krzysztof.kozlowski@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221108184529.26857-1-krzysztof.kozlowski@linaro.org>
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

On 08/11/2022 19:45, Krzysztof Kozlowski wrote:
> +
> +$defs:
> +  qcom-msm8960-tlmm-state:
> +    type: object
> +    description:
> +      Pinctrl node's client devices use subnodes for desired pin configuration.
> +      Client device subnodes use below standard properties.
> +    $ref: qcom,tlmm-common.yaml#/$defs/qcom-tlmm-state
> +
> +    properties:
> +      pins:
> +        description:
> +          List of gpio pins affected by the properties specified in this
> +          subnode.
> +        items:
> +          oneOf:
> +            - pattern: "^gpio([0-9]|[1-4][0-9]|15[01])$"

This is not a correct pattern. I'll fix it.

Best regards,
Krzysztof

