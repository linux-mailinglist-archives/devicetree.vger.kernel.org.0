Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A5AC269910D
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 11:23:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229845AbjBPKX0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 05:23:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229505AbjBPKXZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 05:23:25 -0500
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90AFA47424
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 02:23:22 -0800 (PST)
Received: by mail-ej1-x630.google.com with SMTP id f21so3936397ejq.8
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 02:23:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UQPmFYlzbC7KvPA9vOp38pjRFiHeLAnLDwoDfy/DHCQ=;
        b=G+3SK83ZR+HwM9/pu4pN5BF9nCzAAVMNouC4FBsdvrBx/CahgW9lfHK94lhACaEZ5Q
         tqC7+DWQZXXgTWKiSH9amNNGRs45HJ3yC983P8DQwUARHzT8F269RqvWGGybRLke1vEC
         VFVjsLaY7Hjxia/B5LHgftlTN5STrzqIwP52AGpNfCyLhMuE+TFqdFTEkBVuqpwAZuE+
         qP8CiWZOxCsfjVsoNGHIUslW8B/ozITvXANUiKYg9arfgeOqzNuMQOEwEigN7uxBLkJ/
         NaPsqvFRc8FtQP75N00Uw1mDjGiz9irCKX17djHPjqy8Jp8CXJZgyXADQ/lUkQ3bX33X
         VoTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UQPmFYlzbC7KvPA9vOp38pjRFiHeLAnLDwoDfy/DHCQ=;
        b=tVQ7Gu4XOx7qU9kuVrDdtHm0FABPrhZ1Q5oi7oM46RbiGBT1AO/nk1eWfsC3CM+k4C
         wN1BFZycdZWky8QkSpalzz2l4I6nu3muVT4v7wQSkWugMECjqCiOStyAcVlF3seGiqUe
         wEt0gzrH6bw8nj0qaRaHcwWQxnOp2fllnUX3n1F05Tw6SpOk+3xJMaAgCRTW939mMrp8
         VGJz4fvrHn7yui/PEegWfLkArhLYxUOeDVIyu2jWdpYABxBqo9Bvy4kF99OYF2WrKv+W
         +TaMk76KBUbtTKK++OjXruTVOf39CcGssmoNZTeZx+s+c97naMEfDGSNojGeUBGGvzUC
         2UPw==
X-Gm-Message-State: AO0yUKXIyf8Tw/uqjjDIqkjxuI4+7NB/QADqUA6Y/1hfSD6b1zQ80/Uz
        XUltKTwAMo31N9wlxyUVusfIPQ==
X-Google-Smtp-Source: AK7set8RV32dZOV4847Uqa2HdLcRmRKN2CKjNW0l1ybJNPeIB6ipclW+lCXzwJkdnZR3ULc1QG2mWg==
X-Received: by 2002:a17:907:78c1:b0:8b1:32dd:3b0 with SMTP id kv1-20020a17090778c100b008b132dd03b0mr5426062ejc.57.1676543001076;
        Thu, 16 Feb 2023 02:23:21 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id h15-20020a1709063b4f00b008878909859bsm617630ejf.152.2023.02.16.02.23.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Feb 2023 02:23:06 -0800 (PST)
Message-ID: <41bcc545-6eda-6c30-c600-d97ef009abf2@linaro.org>
Date:   Thu, 16 Feb 2023 11:23:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v4 4/4] dt-bindings: syscon: Add StarFive syscon doc
Content-Language: en-US
To:     William Qiu <william.qiu@starfivetech.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-mmc@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaehoon Chung <jh80.chung@samsung.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        linux-kernel@vger.kernel.org
References: <20230215113249.47727-1-william.qiu@starfivetech.com>
 <20230215113249.47727-5-william.qiu@starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230215113249.47727-5-william.qiu@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/02/2023 12:32, William Qiu wrote:
> Add documentation to describe StarFive System Controller Registers.
> 
> Signed-off-by: William Qiu <william.qiu@starfivetech.com>
> ---

Thank you for your patch. There is something to discuss/improve.

> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - starfive,jh7110-stg-syscon
> +          - starfive,jh7110-sys-syscon
> +          - starfive,jh7110-aon-syscon

Maybe keep them ordered alphabetically?

> +      - const: syscon
> +
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    syscon@10240000 {
> +        compatible = "starfive,jh7110-stg-syscon", "syscon";
> +        reg = <0x10240000 0x1000>;
> +    };

Keep only one example. All others are the same.


Best regards,
Krzysztof

