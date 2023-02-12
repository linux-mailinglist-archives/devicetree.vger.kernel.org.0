Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94FEB693844
	for <lists+devicetree@lfdr.de>; Sun, 12 Feb 2023 17:01:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229520AbjBLQBJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Feb 2023 11:01:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229468AbjBLQBI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Feb 2023 11:01:08 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB588113F0
        for <devicetree@vger.kernel.org>; Sun, 12 Feb 2023 08:01:05 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id r2so9902225wrv.7
        for <devicetree@vger.kernel.org>; Sun, 12 Feb 2023 08:01:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OhUXOYi9ShyAQPw13SBrxOiuJvRVRWO6R7DY4hgP0gY=;
        b=R7ql4yxixgu96wPpVado4XoqQJ+NfgdVXNFBTSRqkV6i84rIM71TxpYwXnA7hdWIig
         7+BL5uTlbIglviOPWnw59N6ZYqesvWKpy7hr9Q8qLobYHBM+yGD4Z3J4AufJh6aeXvkA
         NBqXFW82NMHq7nQflcNOSS2pPsOPQeHj830gYS5dX8qYNXAHPC8c+R289L31k8Yla57H
         8hkepg1O8WvI+A7hYdZN2tzc5ME+YKoGplu+Asex24izZS6Ee3/+jbqbHSp5mMykr4zm
         KjopPHJ35sVoUdHp3/IrgRk6ym8pTLjEyjbJuZ6bxIv+aTBHzArI8rVntK1jsi8b+IH9
         sgpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OhUXOYi9ShyAQPw13SBrxOiuJvRVRWO6R7DY4hgP0gY=;
        b=gGcemVPjfpQo8XIx3NN7XeHKpvqbFf8sJPHs8/CdlSWjILnYLyDQ++kcz4jwoQnBjd
         vReKXFADm410jiSRQ0G50oPbFCRxAQJcR339etcSAUqKo7WAmN1KPy8I9UT6cAqO4FJ1
         FizrbEJalNaI1aSZjgwIHGlUZ2h0LozjisIn8YrX+gTqOw8rJO77tyTvCS+AKipsygdN
         SqP61W4pm4eC2r51zXi1WALvbzNH8e6PjBhxIMZ4ZElUxRWL5NJRcPaOUYxCIfTSxjbn
         Va4rcf4AXXOCVyWt8YiIgx9x7SSCyiqjhbAGigFGBari4AbrrDVFEy+0gqZidY1ctp1q
         EwIQ==
X-Gm-Message-State: AO0yUKWEQ+otbiZSI2HJ/+vI3mNpkhbiT6mj8td5tovYW0MmYyVVD6/3
        tJ9Ez7/BtTqrGh8WkNFa8c2hUg==
X-Google-Smtp-Source: AK7set8zM9ijL+couJfmgBhAHGfIeGAXwLNscrbUDu//vqfcHtKuHx10HLyWRcK0XMLgHai8lnAZ4A==
X-Received: by 2002:adf:f44b:0:b0:2bf:e4b2:64a8 with SMTP id f11-20020adff44b000000b002bfe4b264a8mr18635060wrp.42.1676217664354;
        Sun, 12 Feb 2023 08:01:04 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id h5-20020a5d5045000000b002c54d9fbea5sm4305329wrt.73.2023.02.12.08.01.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Feb 2023 08:01:04 -0800 (PST)
Message-ID: <88789f2a-854c-963b-7f03-3078530b3689@linaro.org>
Date:   Sun, 12 Feb 2023 17:01:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 1/2] dt-bindings: arm: sti: addition of STi platform
 syscon
Content-Language: en-US
To:     Alain Volmat <avolmat@me.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Patrice Chotard <patrice.chotard@foss.st.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230211210500.9919-1-avolmat@me.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230211210500.9919-1-avolmat@me.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/02/2023 22:04, Alain Volmat wrote:
> Addition of the various STi platform syscon node description.
> 
> Signed-off-by: Alain Volmat <avolmat@me.com>
> ---
>  .../bindings/arm/sti/st,sti-syscon.yaml       | 46 +++++++++++++++++++
>  1 file changed, 46 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/sti/st,sti-syscon.yaml

Ah, and one more - incorrect directory. This should be in soc, not arm.

Best regards,
Krzysztof

