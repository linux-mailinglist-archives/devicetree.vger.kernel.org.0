Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0096B721605
	for <lists+devicetree@lfdr.de>; Sun,  4 Jun 2023 12:25:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229851AbjFDKZZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Jun 2023 06:25:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229608AbjFDKZY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Jun 2023 06:25:24 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F26BC0
        for <devicetree@vger.kernel.org>; Sun,  4 Jun 2023 03:25:23 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-5149429c944so5774543a12.0
        for <devicetree@vger.kernel.org>; Sun, 04 Jun 2023 03:25:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685874321; x=1688466321;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YJMkEbWSHnrMMvY5aFflCgy+a09GUp8CaxfqQLYJPe8=;
        b=McBfv3wHyWsk0SGbQ5NzvzBcitJkpkYBCcKhIr4LcsTctO8BBHr9h/hsEhg8Fwk08r
         jxWQO8ouTtG0WQ/67m/YleqKfdsKI8g4SmaRsT2cyy7crwB4kazGiiVxcix7QbzpMnE6
         DK8pL2ch++6vYrfXmnJrYN/juEihCEFhmCTbkAvudj4pc324In23ZX1khGt4c3s2lbpe
         JjT+9JehWk/oLAC+BSlGx3R48D2WhjGidNVcQkpsWiIdAo0V2GgTxD+C4eAw/JvdC54R
         ASeBAQqc2dWC+mVcPjhJ60goUepdbj+uC/u0TWXpZrP/CxVrU0XWRvVEVcT43XLIez7i
         CUjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685874321; x=1688466321;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YJMkEbWSHnrMMvY5aFflCgy+a09GUp8CaxfqQLYJPe8=;
        b=P2kkBgZ7y3Qut6tFpmzziGiio8mwwCuKouzoJYx96+Jyxpcvw4ZIIRKfRyxAYM/mg+
         eSHssLTZ5niRvhSckGgPL2RObN0e600NJEplfWcWrltKUJ5fkE6bI6IloKF/wmiau4cO
         o3fW5JaUV8NbFrP64/kgU3ljIT+nut9F1BMdTMHc9CBRp3rkhEqb8nwquzgBYvXqg9H2
         2qF6sgSILYjsMrh6T1+0D4OiAgey3F7Hh/eL+ldGyCD6L0x4GqHA5U6ec7zbPqbzJ6Ww
         1Cm5DOiQojn2O2WIKxp3M63NzwwS7fnRfPLR/xa4NMhxxrXP/4JKfiKpj6nMKuNMTkw2
         Ncyg==
X-Gm-Message-State: AC+VfDxW8y/EPwzQx5N7bpEgmduhzurGB1iwQ+JwBvtY5GFc1Mvdkklw
        +OhADVplX9aX6Jbk2EkcVhBdoQ==
X-Google-Smtp-Source: ACHHUZ6fMJ/yHO+vKOlsfo5f9HIUMEEqhsXTkY3yEn808RCHlyky7VTMAEu8r0kM8MxtmIPIP/E1Gg==
X-Received: by 2002:aa7:d405:0:b0:514:ad09:44df with SMTP id z5-20020aa7d405000000b00514ad0944dfmr5493938edq.28.1685874321665;
        Sun, 04 Jun 2023 03:25:21 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id w15-20020a056402070f00b00514bb73b8casm2712792edx.57.2023.06.04.03.25.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Jun 2023 03:25:21 -0700 (PDT)
Message-ID: <6187d1a4-1667-21c5-00ba-4689caa6cac8@linaro.org>
Date:   Sun, 4 Jun 2023 12:25:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v2 1/3] dt-bindings: reserved-memory: rmtfs: Allow guard
 pages
Content-Language: en-US
To:     Bjorn Andersson <quic_bjorande@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230530233643.4044823-1-quic_bjorande@quicinc.com>
 <20230530233643.4044823-2-quic_bjorande@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230530233643.4044823-2-quic_bjorande@quicinc.com>
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

On 31/05/2023 01:36, Bjorn Andersson wrote:
> On some Qualcomm platforms it's required that the rmtfs memory is not
> placed adjacent to allocations performed by other clients. Some
> DeviceTree authors have solved this by reserving the space around
> the region, but this prevents such author to use rely on the OS to place
> the region, through the use of "size" (instead of a fixed location).
> 
> So introduce a flag to indicate that guard pages should be carved at the
> beginning and end of the memory region. The user shall account for the
> two 4k blocks in the defined size.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
> 
> Changes since v1:
> - Drop qcom,alloc-size in favour of using reserved-memory/size
> - Introduce explicit property to signal that guard pages should be
>   carved out from this region (rather than always do it in the dynamic
>   case).
> 
>  .../bindings/reserved-memory/qcom,rmtfs-mem.yaml           | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/reserved-memory/qcom,rmtfs-mem.yaml b/Documentation/devicetree/bindings/reserved-memory/qcom,rmtfs-mem.yaml
> index bab982f00485..26e24e7b08cf 100644
> --- a/Documentation/devicetree/bindings/reserved-memory/qcom,rmtfs-mem.yaml
> +++ b/Documentation/devicetree/bindings/reserved-memory/qcom,rmtfs-mem.yaml
> @@ -26,6 +26,13 @@ properties:
>      description: >
>        identifier of the client to use this region for buffers
>  
> +  qcom,use-guard-pages:
> +    type: boolean
> +    description: >
> +      Indicates that the OS should ignore the first and last 4k block of the
> +      memory region, for the purpose of ensuring that the allocation is not
> +      adjacent to other protected regions.

Property name and description: do not describe the OS behavior. Describe
the hardware or firmware. Describe the actual problem or characteristic
which will be then interpreted by OS to do what you want. DT is not for
instructing OS what to do.

Best regards,
Krzysztof

