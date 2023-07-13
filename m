Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 60C1A752097
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 13:58:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233058AbjGML6F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jul 2023 07:58:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232556AbjGML6E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jul 2023 07:58:04 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 462B82723
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 04:57:38 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-3fbdfda88f4so5256995e9.1
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 04:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689249456; x=1691841456;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vCo8d14xAzOeX7UFIUIyUHt5+lVA6PQzljEo08pG/b0=;
        b=xMrTzpYZnPr2FnJZxmhhrjO58uUEXzxONDp/5cuXsBnYS2fiqYUQUPcvGNOO5pz/p0
         gcEZ88mC1515QtwKUzPDG7GEZXk3vlkuEi7eZf39UZI9kaBzGZbracPQnDAgTPxJvYfX
         M8qK/U5h+Zh6WwURNY/O1sDnGaH1ZyS9HHfsV9BTltp5wZ6sLfCnoIVHtWt/blXuqMxY
         4MPvU1ymGlTQeJ93b48RWR7A9cILTHJP/DQWXawtuhiUHIQQKsXOtMQY2L4Iq1qQhiAe
         RpVpXXArSPp9pAUo4jsnu0TqBm4gai1HDUuWU2EFj6qjWNXaYOJFc5MfAZNtcV4OXNgI
         LiJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689249456; x=1691841456;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vCo8d14xAzOeX7UFIUIyUHt5+lVA6PQzljEo08pG/b0=;
        b=iRe44kmVxNKnZ216G1ekiATNdPSeBmwuxjHAZJKiveYe9ASp2KDWF0InT8I78tztY5
         cETp/DdKB55yFObdfaFbuJD2dcgVF8XyOUeG3aszGVZorfxMeb8gnVny5uVbiEE2TB1c
         o/brPzpEj+AzlSDB7DO+TMO9OQt14UBxBZIfxNQG3fUkjeTf+VRVwq3HSwz01mIA/pWX
         cUKeFnXSaQ7pf03c1ISBLG8EMaFWcyvH8A4WuCCCbPBP+XdsG586p0H1PHc9K6UixAtj
         F9HgTKg45gcIKfhrNVqP05gl3gx91hiZUnSdVlx52GSkoPZ83y7NLd6Yol9Oe4z0Hzb0
         6kXw==
X-Gm-Message-State: ABy/qLbhVYOixP+fTwdDV6GkD88eyHHCtZXekcv3QxXTm3xLreIE3HiI
        kFweXHrTZBPBVSy2bBv/1R+khA==
X-Google-Smtp-Source: APBJJlF0hb3MIqrAxSbDwAevO42Q8gV0QEyyiEc0BH1DvBz0PJVFylZo6QGzdR0aY5xyftQhdjoDPg==
X-Received: by 2002:a7b:c4d3:0:b0:3fb:ffba:cd76 with SMTP id g19-20020a7bc4d3000000b003fbffbacd76mr1224603wmk.11.1689249456538;
        Thu, 13 Jul 2023 04:57:36 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id v15-20020a1cf70f000000b003fa8158135esm18124626wmh.11.2023.07.13.04.57.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jul 2023 04:57:36 -0700 (PDT)
Message-ID: <790ba6da-6899-39e8-26a9-b82e2ee3c1b3@linaro.org>
Date:   Thu, 13 Jul 2023 13:57:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 1/2] dt-bindings: arm: qcom: document AL01-C1 board based
 on IPQ9574 family
Content-Language: en-US
To:     Sridharan S N <quic_sridsn@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230713115544.953998-1-quic_sridsn@quicinc.com>
 <20230713115544.953998-2-quic_sridsn@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230713115544.953998-2-quic_sridsn@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/07/2023 13:55, Sridharan S N wrote:
> Document the AL01-C1 (Reference Design Platform 417) board based on IPQ9574
> family of SoCs.
> 
> Signed-off-by: Sridharan S N <quic_sridsn@quicinc.com>
> ---
>  Documentation/devicetree/bindings/arm/qcom.yaml | 2 ++
>  1 file changed, 2 insertions(+)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

