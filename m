Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6CCF56FA30A
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 11:13:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232784AbjEHJN5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 May 2023 05:13:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232967AbjEHJN4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 May 2023 05:13:56 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF44F1A1D4
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 02:13:54 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-965d73eb65fso604016566b.2
        for <devicetree@vger.kernel.org>; Mon, 08 May 2023 02:13:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683537233; x=1686129233;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qAZ6CsgLyXDUXidggc9B7i/76Tv3nelFvXsBdxV+W8A=;
        b=m5MbGhdNrmIrhGmpeuVqGJpbXYnF153bWj1X+5Seu51227ZVA99QPTgEEfXloV2/Xr
         w3lwQ34PjRMwb19KgxhKdBDRdAobxqa6iU4k89AfnqBvJh0v7CBTU+iaF0NRjtkxypBz
         YpfEeALHA8aybrulaHuPJo4ctFHxE7O3XnMWvIS3xWtPEglxVj2/JkbVlT8BV5F8yDKv
         UDIzLgjbdJPJ3h0RE/yOGwgsxrakeMsD1nfMTAsRh9aPKlJy7BPOOtg6ACUJ7Aw+7OKn
         3jfgwd4SAgl40Ay3HJt+WYrfwR5F4eYQMqpCkaR3jTVNX/3hJT3SQShcA4KwpCrXt5kV
         kMRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683537233; x=1686129233;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qAZ6CsgLyXDUXidggc9B7i/76Tv3nelFvXsBdxV+W8A=;
        b=gfkL7G2f1fwMAO9r+SnYclOWGGAu8VYJBr7PBbdukpChHj6A2PpbqEbOI/wNSDE3JK
         oBeM0p9TcLo/pS50EtrrMrMnHaE85qhNpBxQYgKt07QvyioqM+YB0jtL2Kjsmrm/gJDI
         HH0w2DxZJPzlCfGyBOdwzqHVDIJnvvJAQ3WX9UQE6thKW/kA0fmWwmeHW2jq0PQhw92P
         fCSEqQjLC8D3iaDBE+a/a0n+xtFv3r6mncB+5Qaj9pKB6mYwlyNvHAEoDQ4B8BfzCplY
         PLndXoRztRkZzMNSjR5H9VAJNa/fnnAb5ja7HAI+mZmuvKIEc4D1+Y1e6i/aWpkIQXRb
         LqwA==
X-Gm-Message-State: AC+VfDywQ8Jdd8AHvdO8F/5bRMVDR+JmCs5Z8FQU+xZ5WTXk1QWKTwc7
        nnRTU7ymzMT5wQ710SMRofJ/RxQGf3K0PE14TgFdbg==
X-Google-Smtp-Source: ACHHUZ554FbjGsQiLN+oF18BXW6+jPtXDgjZQipLJ0LMS+kJZEFCZtZMlzQZm3PBY2o2KRLbAxmmmw==
X-Received: by 2002:a17:907:26c7:b0:966:5bc0:bfe6 with SMTP id bp7-20020a17090726c700b009665bc0bfe6mr2337997ejc.2.1683537233306;
        Mon, 08 May 2023 02:13:53 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:50e0:ebdf:b755:b300? ([2a02:810d:15c0:828:50e0:ebdf:b755:b300])
        by smtp.gmail.com with ESMTPSA id gn29-20020a1709070d1d00b00968382ebf40sm514227ejc.40.2023.05.08.02.13.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 May 2023 02:13:52 -0700 (PDT)
Message-ID: <6eb7f1f8-89c2-ffb3-c810-4f34b5a6e178@linaro.org>
Date:   Mon, 8 May 2023 11:13:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 1/6] dt-bindings: power: reset: qcom-pon: define
 pm8941-pon
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20230508003309.2363787-1-dmitry.baryshkov@linaro.org>
 <20230508003309.2363787-2-dmitry.baryshkov@linaro.org>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230508003309.2363787-2-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/05/2023 02:33, Dmitry Baryshkov wrote:
> On PM8941 pon doesn't store the reset reason. However we still need the
> wrapping node for pwrkey and resin nodes. Add bindings for pm8941-pon
> device.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  Documentation/devicetree/bindings/power/reset/qcom,pon.yaml | 2 ++
>  1 file changed, 2 insertions(+)


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

