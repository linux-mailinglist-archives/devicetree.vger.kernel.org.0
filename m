Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E1F075F28A
	for <lists+devicetree@lfdr.de>; Mon, 24 Jul 2023 12:16:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231319AbjGXKQY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jul 2023 06:16:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233218AbjGXKQG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jul 2023 06:16:06 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17BAC30EC
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 03:08:30 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-9924ac01f98so734494366b.1
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 03:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690193300; x=1690798100;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qH1xPhg/Am+ZrA/6voevZTtm38nK8XnjsWRckc1S8Y0=;
        b=m+Yg7G1cDd7eGlOZkWP+wp3Msb7ov+AY3aJRNHJ1j5o+glCiqTMvBTgRuiwbh5+aCq
         nh/QKg2nLd8XaAnNvy1kR4gDtGX6ZHh009VVw5Zt+zQHZBhzDbb+Uf7FqaHArsdLKCNQ
         eoqimsXzjSg2Gd8eqJtOj5mb56or2oBnFGJ5G7mLf61syKwPSAPzOiMcYsoS5cNeSv1Z
         wsJ6ZKpyN2ThpLdIVNIrOQfYnVZDz0v6sWd+Ha/q7Wi4+HwLgQwiHFK6FKutzAYPIveK
         PK+evp9FXYr7K3SattIrqGD1BFdHx8z503nEQMwHWr0KlJ3vumIHuKY3sqQq9+K/fHRd
         GoMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690193300; x=1690798100;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qH1xPhg/Am+ZrA/6voevZTtm38nK8XnjsWRckc1S8Y0=;
        b=ZFA7f5c/qTKM2NPH4MZdxBbZsQC85LDH1Hw1VbLVJqqLp3xacnE/M9M0D9s0HlK2CX
         qFPkECiPJwI3SCBqI6/xulRMOEFVizyANaI7OiRwyNcWff/gGsRozHwbk5/A1bNQwxcz
         Ol2m2DGuQe+ySHfKqbGeJfUpoVcgTw87hea4xrNw5ir+gX1GG8+28I9Q0TSK8geIPxpS
         e9nvYfvqBQ+AKnqAseZPPOAvF1wsK359+OyXYG7W5AqHETSOnrssD6Paw8krCxxz/2ns
         gsa2iFomP56Z45R7kkYe3ATynraCH16fu5h932rY2PMaFWJvYlTkLDNPmHiWSLnGnrjt
         wN5Q==
X-Gm-Message-State: ABy/qLaPKcMOj4iWNQ4lihSlMWGdVmWWaiJiRfZB4iTP1LAX9kdxpo16
        kJbQz9CpaWSZ2vK2DszRbVAWaNjzKadQk1Ixhk7v0g==
X-Google-Smtp-Source: APBJJlGV4XG1oZ6mf5FuCv97rwX7+atN757Oexd4FcjKk5uHoW5XYBMwCJwhh9zXKY+U05Om/FOqtw==
X-Received: by 2002:a17:906:5a4c:b0:992:345e:831b with SMTP id my12-20020a1709065a4c00b00992345e831bmr10299061ejc.50.1690192279269;
        Mon, 24 Jul 2023 02:51:19 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id v19-20020a170906489300b0098e2eaec394sm6486372ejq.101.2023.07.24.02.51.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Jul 2023 02:51:18 -0700 (PDT)
Message-ID: <488769bd-8373-5f53-204a-3739f104cd99@linaro.org>
Date:   Mon, 24 Jul 2023 11:51:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v5 1/6] dt-bindings: cache: qcom,llcc: Add LLCC compatible
 for QDU1000/QRU1000
Content-Language: en-US
To:     Komal Bajaj <quic_kbajaj@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        srinivas.kandagatla@linaro.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230724084155.8682-1-quic_kbajaj@quicinc.com>
 <20230724084155.8682-2-quic_kbajaj@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230724084155.8682-2-quic_kbajaj@quicinc.com>
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

On 24/07/2023 10:41, Komal Bajaj wrote:
> Add LLCC compatible for QDU1000/QRU1000 SoCs and add optional
> nvmem-cells and nvmem-cell-names properties to support multiple
> configurations for multi channel DDR.
> 
> Signed-off-by: Komal Bajaj <quic_kbajaj@quicinc.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

