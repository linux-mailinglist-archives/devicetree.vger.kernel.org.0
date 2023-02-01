Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBFA66862E1
	for <lists+devicetree@lfdr.de>; Wed,  1 Feb 2023 10:31:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232095AbjBAJbG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Feb 2023 04:31:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232036AbjBAJbC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Feb 2023 04:31:02 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93C7E6186D
        for <devicetree@vger.kernel.org>; Wed,  1 Feb 2023 01:30:52 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id bg13-20020a05600c3c8d00b003d9712b29d2so867496wmb.2
        for <devicetree@vger.kernel.org>; Wed, 01 Feb 2023 01:30:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=k94zumruKImHmohA2MCxzYyvVQ+5OXP3k3ovuZNVCL8=;
        b=bPTgjVJy06j+Sg6PHe44wqBpmp4Mw7Gg+FNxXzXeQZzZYvBAoLttmqF4XsSMitZFM0
         JY2sNM4ApmSOCaQeEItBiL144BCrtPc02HKHp+qkAs8fibXK95Bouijds8FHy5bVzZME
         4Ez4tD2Iq8ADlqpZjwm5AbY/gIF+8eleLC8fXR1yCz1hLRcuc8KuWiv6kMpjxrriu4yD
         ewddxNYpQwA1RnsCRXOj/DlxYWWzGhixlTOvcORGNzIeVfe/RhjjfARM5srSPaZOeUUQ
         cEweqB06hkhY54Fv+6+IhE7Z+jKQAHAz+SuHT7KaRd7aBXpzEKVT/gp2NH3p4yOrU1/Z
         x1MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=k94zumruKImHmohA2MCxzYyvVQ+5OXP3k3ovuZNVCL8=;
        b=P6mDWXT/h4Jt97btpHJ7OE1+aPaRsYKhc0UdO0kUe54C9LV+BYbY+hI8rOQjSAFA1i
         ghazCW2Cucx5cvA/0q5ISDlPh7vQ475pqX3L7YCdrXG1D2f8bY6+duLizQIZXLG8w+Rq
         ZBQCs9Y1Bl5EHwVpeySoZKqm8RIeLXX36tywIMcmvw0NttwwjrL+IoE1slB5ByEGWUA2
         NzVJyqMnUgiflN6PUbN7VYYhPcYd68FdPX1BczIpdowxbgG1q0Zs0lILetW5GE3Jkrqx
         7vwr4l1IvBdhOcWrEt76eN1+oY9l1Oki0581JSJXFua/zW0Q9kgmaFs/7GCOFUWUPszW
         kKPA==
X-Gm-Message-State: AO0yUKWjnyERwAFwDj8YpdNoDMzobUsebiaK7cdZravk2nIoyko0CTwE
        VHEyEJ2ReohzUvaqh5IzTfpNzg==
X-Google-Smtp-Source: AK7set8BjfVMDcf+vtGiTCysZFFZ1WdyXQN4Nn32KHcxiP6BxS+StcNRGlY7VqGFshRFSIwiBzMffg==
X-Received: by 2002:a05:600c:4f8f:b0:3cf:8b22:76b3 with SMTP id n15-20020a05600c4f8f00b003cf8b2276b3mr1446937wmq.0.1675243851071;
        Wed, 01 Feb 2023 01:30:51 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id j25-20020a05600c1c1900b003daf6e3bc2fsm2438316wms.1.2023.02.01.01.30.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Feb 2023 01:30:50 -0800 (PST)
Message-ID: <5b51421d-a46e-c88b-9fa0-1fa3650f4a6d@linaro.org>
Date:   Wed, 1 Feb 2023 10:30:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH V2 5/5] dt-bindings: tcsr: Add compatible for IPQ9574
Content-Language: en-US
To:     Poovendhan Selvaraj <quic_poovendh@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, lee@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org,
        jassisinghbrar@gmail.com, catalin.marinas@arm.com, will@kernel.org,
        shawnguo@kernel.org, arnd@arndb.de, marcel.ziswiler@toradex.com,
        robimarko@gmail.com, dmitry.baryshkov@linaro.org,
        nfraprado@collabora.com, broonie@kernel.org,
        quic_gurus@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     quic_srichara@quicinc.com, quic_gokulsri@quicinc.com,
        quic_sjaganat@quicinc.com, quic_kathirav@quicinc.com,
        quic_arajkuma@quicinc.com, quic_anusha@quicinc.com,
        quic_devipriy@quicinc.com
References: <20230201090529.30446-1-quic_poovendh@quicinc.com>
 <20230201090529.30446-6-quic_poovendh@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230201090529.30446-6-quic_poovendh@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/02/2023 10:05, Poovendhan Selvaraj wrote:
> Add the tcsr compatible string for IPQ9574 SoC
> 
> Signed-off-by: Poovendhan Selvaraj <quic_poovendh@quicinc.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

