Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB6146BA9AA
	for <lists+devicetree@lfdr.de>; Wed, 15 Mar 2023 08:46:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229571AbjCOHqD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Mar 2023 03:46:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231311AbjCOHqC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Mar 2023 03:46:02 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22E3661A81
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 00:46:00 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id cn21so41728814edb.0
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 00:46:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678866358;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m6z/veVEW3TNh+Ql2omvc3tvxFPzfnmLcyAIWAK0Pnk=;
        b=MYaCcnI8rCoDn4+vah1Rsn0xFRwn76UqeIqnPmyfrwSWKbPzmDbkJN+QeulGmtsn8Y
         TpQwlz77iVBIQajgLRyonUiFm9cWxBNIzC/OC872Qa/L4w641Gozpgp5DmRW9cjq43K4
         kKsH4bWFITM2wevi6f43V0PXWupFR0BYMll0kwaqF5O2SHfEN/ep2mWI4ThE0iomj04L
         K1Bsr5+wsUiWibSN1SAO0lWiZEyggoEMxDYqFAFORwQqvluDHEKYUi5nbXtq/aC/bg8J
         sa0k2ZcAiAHgEdnyFoVm8u8azIp+LQ4mLA/dCBZ7dhx58HYA/RFHt5WpS2+QZXwx2ktV
         rE5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678866358;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m6z/veVEW3TNh+Ql2omvc3tvxFPzfnmLcyAIWAK0Pnk=;
        b=yarSU54goMO+hYvf2+30fsmNZyJC6eycQfNtqEV3KsArsyP2XMk5dRkUE7Qrfz4IK3
         bWDUbQMX5gF/gcdTBAKzvjw0w/nreKIhNlIcTXQqw6BAwcgfW7e2DmYX/B6aO1D1PLA1
         gg0QNuImdHYYfoO3xKIUQSTVgFnjU7WoknxlrkdsvZi4H3jtqwCBxm5TcH8NLm0w5NFU
         DUVDExRECaPomvlHhThyHlISwGXClVoLuiMP+HXGjM3Yk/NjEJb9WxKtd0DULxmbTM6H
         0MEPBwj3nHEjkOY2MDUTUb1VqiDkhzg3a7fRz1GVzlsC9n3F5VotKLjT+vXaa9XZz0Qj
         ANTw==
X-Gm-Message-State: AO0yUKVkJqmg/Bcpz/zFooPgh5Uemi0yUlvaS3+k80Ql4HdUxgS5yvz2
        7QwWqMHbW6tWzuYGtdMqjXsGfg==
X-Google-Smtp-Source: AK7set/b9Qlsvj/OvxzhEK6WdGWXH6siZzUDMfMrFWPEwAVqh+TckoeuEhr9uMFDyIkuCt06sfBVRQ==
X-Received: by 2002:a17:906:2286:b0:91e:37ec:3c90 with SMTP id p6-20020a170906228600b0091e37ec3c90mr4949414eja.31.1678866358644;
        Wed, 15 Mar 2023 00:45:58 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:940e:8615:37dc:c2bd? ([2a02:810d:15c0:828:940e:8615:37dc:c2bd])
        by smtp.gmail.com with ESMTPSA id e23-20020a170906375700b008cff300cf47sm2110347ejc.72.2023.03.15.00.45.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 00:45:58 -0700 (PDT)
Message-ID: <c4954efb-8048-58c9-b2c5-7cd6b846603e@linaro.org>
Date:   Wed, 15 Mar 2023 08:45:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/2] dt-bindings: nvmem: Add compatible for SM6350
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230314-topic-nvmem_compats-v1-0-508100c17603@linaro.org>
 <20230314-topic-nvmem_compats-v1-1-508100c17603@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230314-topic-nvmem_compats-v1-1-508100c17603@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/03/2023 14:35, Konrad Dybcio wrote:
> Docuemnt the QFPROM on SM6350.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml | 1 +
>  1 file changed, 1 insertion(+)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

