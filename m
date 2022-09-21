Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D467B5E53A6
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 21:16:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229997AbiIUTQz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 15:16:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229895AbiIUTQt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 15:16:49 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64EE77FF8E
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 12:16:47 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id i26so10805507lfp.11
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 12:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=LQpbD+QOYMIjJhYVzVobbEnf0Rc3AhVbb406MB349Zo=;
        b=P19lziT+91xPYW2CaFl3Zyb4YVXBjzBavkkGOGGeHG12POJWIAOB9Jla8bnty7zTGD
         INYJChvhk3QT2Lh/MKk7+Sm5QOIu7WI0XdYokbLgoGm3cytNQpiE1b6TG8KQP6UPH4v1
         XS+hO9IznQf8iirrSfqRr5eNAu91SUlTlqlLh335Gand54lM3P2y3Z4V/F6+v6vp/Tl8
         3lkpI+wHHBZUY4joLCuJ+Ru7VbNd2r7JRRNdwNvD6zQCashEHFbtWQEWNjgSdHEeG3pc
         bwb+IcQRkOFNmzzW7g8XQ03hONYJkd9TUjmI3REI77eTIeLKYC0gnvc+22pKTH0BzP6I
         TIiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=LQpbD+QOYMIjJhYVzVobbEnf0Rc3AhVbb406MB349Zo=;
        b=Ei2l3+fMicBjxAHv7nmqd5+xnfmxWhZJSbpUf/jkdNk5hqdKHSM6OypdWbIqftFSy4
         4NbdWjy+PfSw9AazsKpTRa4EL6G0EWa6W/OBoawS1wbyMoyfKWSShFm+2CYZombixkNk
         2Rh0gHvRkEv/opD8S0MKDbjbgjQUsjbtemvvtR9b5OXKxoEGk/QPUgq5wxY48WpOv5Os
         lI8bjDu5bfl9+A7Zxs9ZX37Q46uaHf69zEa67+ojRR6zTH42mm3EqtuJnY2ZmPayUsuW
         N+Zc0X5zm+M3kyl7ZUZ3oFzKDypObNf8Wk2GZY+yyjzATKAYEGR0I5apggYBUIZ+MXwk
         Azow==
X-Gm-Message-State: ACrzQf2NDCzz5/wfRfaLmlipQIm3dLj6GiuAprsgGGq2v6UKZ6uQUWFX
        GB6bNUD2PeAIkMntg13k43EyiQ==
X-Google-Smtp-Source: AMsMyM5Vt7fIVeSj0r3OZQqjCzaLukfc7rcH70imuZUO5+4riNC1GI6uBn2Te62mHQwiMaoivINXaQ==
X-Received: by 2002:a05:6512:128d:b0:49f:4b31:90ed with SMTP id u13-20020a056512128d00b0049f4b3190edmr11108825lfs.118.1663787805713;
        Wed, 21 Sep 2022 12:16:45 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id x25-20020a0565123f9900b0048cf7e8145asm558027lfa.117.2022.09.21.12.16.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 12:16:45 -0700 (PDT)
Message-ID: <c241920b-c94d-83d8-d195-2cf3cc044038@linaro.org>
Date:   Wed, 21 Sep 2022 21:16:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v4 2/4] dt-bindings: remoteproc: qcom: Convert wcnss
 documentation to YAML
Content-Language: en-US
To:     Sireesh Kodali <sireeshkodali1@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, linux-kernel@vger.kernel.org
Cc:     andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
References: <20220921043648.2152725-1-sireeshkodali1@gmail.com>
 <20220921043648.2152725-3-sireeshkodali1@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220921043648.2152725-3-sireeshkodali1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/09/2022 06:36, Sireesh Kodali wrote:
> This is a direct conversion of the existing txt documentation to YAML.
> It is in preparation for the addition of pronto-v3 to the docs. This
> patch doesn't document any of the existing subnodes/properties that are
> not documented in the existing txt file. That is done in a separate
> patch.
> 
> Signed-off-by: Sireesh Kodali <sireeshkodali1@gmail.com>

Thank you for your patch. There is something to discuss/improve.
(...)

> +
> +  memory-region:
> +    maxItems: 1
> +    description: reserved-memory for the WCNSS core
> +
> +  smd-edge:
> +    $ref: /schemas/remoteproc/qcom,smd-edge.yaml#
> +    description:
> +      Qualcomm Shared Memory subnode which represents communication edge,
> +      channels and devices related to the ADSP.
> +
> +  iris:
> +    type: object
> +    description:
> +      The iris subnode of the WCNSS PIL is used to describe the attached RF module
> +      and its resource dependencies.

On this level of indentation (for iris):
additionalProperties: false

> +
> +    properties:
> +      compatible:
> +        enum:
> +          - qcom,wcn3620
> +          - qcom,wcn3660
> +          - qcom,wcn3660b
> +          - qcom,wcn3680
> +
> +      clocks:
> +        minItems: 1
> +        items:
> +          - description: XO clock
> +          - description: RF clock
> +
> +      clock-names:
> +        minItems: 1
> +        items:
> +          - const: xo
> +          - const: rf
> +
> +      vddxo-supply:
> +        description:
> +          Reference to the regulator to be held on behalf of the booting WCNSS
> +          core
> +
> +      vddrfa-supply:
> +        description:
> +          Reference to the regulator to be held on behalf of the booting WCNSS
> +          core
> +
> +      vddpa-supply:
> +        description:
> +          Reference to the regulator to be held on behalf of the booting WCNSS
> +          core
> +
> +      vdddig-supply:
> +        description:
> +          Reference to the regulator to be held on behalf of the booting WCNSS
> +          core
> +
> +    required:
> +      - compatible
> +      - clocks
> +      - clock-names
> +      - vddxo-supply
> +      - vddrfa-supply
> +      - vddpa-supply
> +      - vdddig-supply
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - interrupts-extended

You require only interrupts and interrupts-extended satisfy it, unless
this is a result of bug in dtschema?

> +  - interrupt-names
> +  - iris
> +  - vddpx-supply
> +  - memory-region
> +  - smd-edge
> +
> +additionalProperties: false

Best regards,
Krzysztof

