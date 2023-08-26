Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 76593789529
	for <lists+devicetree@lfdr.de>; Sat, 26 Aug 2023 11:33:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232225AbjHZJce (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Aug 2023 05:32:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232295AbjHZJcU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 26 Aug 2023 05:32:20 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF7A61FD7
        for <devicetree@vger.kernel.org>; Sat, 26 Aug 2023 02:32:17 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-52a3ec08d93so2321051a12.2
        for <devicetree@vger.kernel.org>; Sat, 26 Aug 2023 02:32:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693042336; x=1693647136;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fh95DS4/zs6n0cJh3VH9O2GqPzFB0e6cNn1CIcgmuSY=;
        b=TDAQAo5smrHikxLKg+nQMYvYwLqljGPHZ1DSe64rjNScidr4IUZmAlcgJw/RXOyBS/
         zScNdNNsZiyJGX+FSXYxY4No+fhdFLohDULc3oGbYCGkAp8Ra+Bs3ndhI7Kt5ARQPjEJ
         msvXeh5vSxAbxN+u1Rb8LeKBu3C6wClV9hxnsRZJCbQv/o70KjI0rfBxSQp1uud7yz/D
         KH62x5HYjvfO5sG4QKlPCNspEbInilnX+mDmCktyov4g8L482XHziXXSEsCvEUACy+0b
         TmGuKSkxo+DmRF24LToJdN0jZMd30dFWD5l0sijeycr9weikRKqqlBDhxWVY+DolB1b9
         jSnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693042336; x=1693647136;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fh95DS4/zs6n0cJh3VH9O2GqPzFB0e6cNn1CIcgmuSY=;
        b=R2GBwQsRv3l3/9PG53SIu0w33mmP2v09XFz7FQ+2ZWY+7a7Iv83fCUvyms7/skhN2w
         jJnTtzEyPsICpZyxnb6zc1mhSVxbj5Z5CqJs1Gnl+jSBRKJPEkckBavtEUAUhJTyJCCz
         dAqlxCU5iToc/zTgUzt0BDUW/2JNK0e+8GctJVykAkXcGSYRE70bw3FmATV9WAW2alZ6
         rhMcR31NA1NOhF6518+/BgwsvqgZkKgM1QtgYY+1rfKm1GeRiJNjxVocAA0M5QA/cwfp
         sE35ISDkoS/TIZU0uWsQsC0uzAFBfd5zXmS64NjUfyOVH6zd1aQszQj8fQZjpzd+6+Hf
         UCgg==
X-Gm-Message-State: AOJu0YxU2SH3mnnmfaWEMRjbIzGSjajQ/rNVZ7bi69btMcNyrcPQkeyI
        IfgqVyAydYYqn+yi+9Aou0HGzA==
X-Google-Smtp-Source: AGHT+IGhLZfGwbn7DfIZKro/6nQ/hZy3z2cFeu4oKwg6fSTiT/1BXmYXl5MpIGrGmzMQsGFLQ/DFIw==
X-Received: by 2002:a17:906:51d3:b0:9a1:e941:6f47 with SMTP id v19-20020a17090651d300b009a1e9416f47mr7412341ejk.42.1693042335907;
        Sat, 26 Aug 2023 02:32:15 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id jj26-20020a170907985a00b0099bd86f9248sm1949705ejc.63.2023.08.26.02.32.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Aug 2023 02:32:15 -0700 (PDT)
Message-ID: <1a0dc235-eb44-9923-6206-560199a70d4e@linaro.org>
Date:   Sat, 26 Aug 2023 11:32:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 1/2] ASoC: dt-bindings: qcom,lpass-tx-macro: Add SM6115
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Banajit Goswami <bgoswami@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230825-topic-6115tx-v1-0-ebed201ad54b@linaro.org>
 <20230825-topic-6115tx-v1-1-ebed201ad54b@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230825-topic-6115tx-v1-1-ebed201ad54b@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/08/2023 19:23, Konrad Dybcio wrote:
> SM6115 has a TX Macro, requiring an NPL clock, but not DCODEC.
> Document it.
> 

...

>  
> +  - if:
> +      properties:
> +        compatible:
> +          enum:
> +            - qcom,sm6115-lpass-tx-macro
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 4
> +          maxItems: 4
> +        clock-names:
> +          items:
> +            - const: mclk
> +            - const: npl
> +            - const: dcodec
> +            - const: fsgen

Are you sure there is no macro? This means there will be no
LPASS_HW_MACRO_VOTE vote. Do you have downstream sources somewhere?

Best regards,
Krzysztof

