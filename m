Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2AE876F7D8E
	for <lists+devicetree@lfdr.de>; Fri,  5 May 2023 09:13:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231234AbjEEHN0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 May 2023 03:13:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231248AbjEEHNZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 May 2023 03:13:25 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A15CB1609B
        for <devicetree@vger.kernel.org>; Fri,  5 May 2023 00:13:23 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-50bcc565280so2114494a12.2
        for <devicetree@vger.kernel.org>; Fri, 05 May 2023 00:13:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683270802; x=1685862802;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LjPti0SVf6hmj4N0H313/55MiUrWdpZNvzPtpM8uR3Y=;
        b=KSRYsw+W1lrvQqIyAomaDqVEM8xAGeLseIR/4uBsLmebPEyJUBuQBwvCTXEzpOMq9u
         AFiPu0uEzbyPyzn/5fKp3RBeQMnx7feR/ep6QzWHp/2GN2vv3/We/tZUk1tgEgcKNSIp
         mXSsfR6GbTtiv2QRS62IWB/gi0a//k2zL+Cdpz66A6DgxenD1aLu3730CP0th8T9h9D+
         6oOFUvslt6PzDG8AIJ9JtBmzRGaXUmxuf0JRYaj7trhS36t9EBUtFLHhzruYWePdnZyv
         fEXX4eXaza5nVCYWycGrLxXoIt9a+fmY08OiLyJNT1E0gcmJfkZSunZD/TsWGrmAh2/I
         Sccw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683270802; x=1685862802;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LjPti0SVf6hmj4N0H313/55MiUrWdpZNvzPtpM8uR3Y=;
        b=ceKBel7fUIFsZvUhcL2W++WKxWB/mW9Mh49ni887g+8BKIgbq+YJ7q17tsmvsRQZ3f
         m6gkKuibr3VYGweiIGLKdxdlBqUROkfVGx1h3tmEOTm63TeUfbf1n4DwLyZFBZtnTso9
         8oP9sFUn7ipIS5IAWg4zSSsbCjJdzvj8EQx946HzlrSswygOu38T1oIP1L6fAPS3NImQ
         HpiKC9TGKpDgB8J0oj5yd688XIT7IKcfznJxZJv0HvxnxX6cJ+RGkRwI/zYSkR3jT9GR
         k6zLjQ7sxK8TB1zQ6G8R5Ni+50gQa/Sy7RC0gRUlMPrAtXaJJ5AZePpsuHxFy8KbnARK
         Ij9w==
X-Gm-Message-State: AC+VfDxa0ljcAdlAgU38wky1514IGy3KAmSqTyjMsHo3/J+rRWgDM63u
        dPvwMDoVOKUjr1lRNl2qx+qmQA==
X-Google-Smtp-Source: ACHHUZ51C0pF2OmSh3ZV19RMD0Jz6GfDImw2bVfTjB/4HVx9UvCSzaKvElz8ivKA9nmTvCyMTvu8Tg==
X-Received: by 2002:a17:907:98e:b0:94a:5c6d:3207 with SMTP id bf14-20020a170907098e00b0094a5c6d3207mr320366ejc.44.1683270802121;
        Fri, 05 May 2023 00:13:22 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:52e:24ce:bbc1:127d? ([2a02:810d:15c0:828:52e:24ce:bbc1:127d])
        by smtp.gmail.com with ESMTPSA id n22-20020a170906b31600b00965e9a23f2bsm205645ejz.134.2023.05.05.00.13.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 May 2023 00:13:21 -0700 (PDT)
Message-ID: <66d344b2-899b-3d00-2d8f-5dd86f0af985@linaro.org>
Date:   Fri, 5 May 2023 09:13:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v2 1/4] dt-bindings: remoteproc: st,stm32-rproc: Rework
 reset declarations
Content-Language: en-US
To:     Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc:     devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230504094641.870378-1-arnaud.pouliquen@foss.st.com>
 <20230504094641.870378-2-arnaud.pouliquen@foss.st.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230504094641.870378-2-arnaud.pouliquen@foss.st.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/05/2023 11:46, Arnaud Pouliquen wrote:
> With the introduction of the SCMI (System Control and Management
> Interface), it is now possible to use the SCMI to handle the
> hold boot instead of a dedicated SMC call.



>  additionalProperties: false
>  
>  examples:
>    - |
>      #include <dt-bindings/reset/stm32mp1-resets.h>
> -    m4_rproc: m4@10000000 {
> +    m4_rproc_example1: m4@10000000 {

Just drop the label. It's not used.


>        compatible = "st,stm32mp1-m4";
>        reg = <0x10000000 0x40000>,
>              <0x30000000 0x40000>,
>              <0x38000000 0x10000>;
>        resets = <&rcc MCU_R>;
> +      reset-names = "mcu_rst";
>        st,syscfg-holdboot = <&rcc 0x10C 0x1>;
> -      st,syscfg-tz = <&rcc 0x000 0x1>;
> +      st,syscfg-rsc-tbl = <&tamp 0x144 0xFFFFFFFF>;
> +      st,syscfg-m4-state = <&tamp 0x148 0xFFFFFFFF>;
> +    };
> +  - |
> +    #include <dt-bindings/reset/stm32mp1-resets.h>
> +    m4_rproc_example2: m4@10000000 {

Also here.


Best regards,
Krzysztof

