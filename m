Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B2402633BA9
	for <lists+devicetree@lfdr.de>; Tue, 22 Nov 2022 12:43:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233506AbiKVLns (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Nov 2022 06:43:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233179AbiKVLnM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Nov 2022 06:43:12 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC96017078
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 03:41:39 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id j4so23217648lfk.0
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 03:41:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0uUWYFk5b+vA0k1eVQqcKqPS+FzcN0ObBmyc6c+9OCA=;
        b=MTYcvp32aEurlDJpoLy3aRq1eROXz6OXhwvHDdlr3dfX1W6lnxFnBLixAVvsNUxZ2j
         /rI18Kv5BRQOqO4lznfZc/yXBPyWHmztpX8XIuqPsbTFuvjyS1RHL4kvJkNdkrmSiVOv
         qaiuGzZYJMpGlKozMuwCKvNOZy4y1VvASvkHr6Wjx1vwPC002Bcn194dgWm3Dq9fmliy
         8i/mhiYVtsyWVE7V8CeiJATM200+fpyUZpz1XiIQPE/RbmZY/ZJtSvF5U0hEdE51vIkU
         6d8d+9biW0HQwaFzYA06NbDwKvG+sTrDKwG1xcX8vXY+pYzw1pjSF5uFF3Rk4YshJuy/
         vgOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0uUWYFk5b+vA0k1eVQqcKqPS+FzcN0ObBmyc6c+9OCA=;
        b=2QI9mbuHy6B4b9l0Wyf7MzwYGDZUMzIzE70q/rHtoPgWXBJs7BNDkIzrQhUd1Cc2eB
         rSqFm9pZNnQoLlswqIekQHuH6MRNnNLFCHhFtfa9o8ugZ1gv+PsqPQNzqZ5vWivrl5KB
         /uIqayyvdrzXyQ6hy4puPPsloxNYnPnSU9hitOPvdZhuFAVKhu8uH2EsUQIYL/rLbxJs
         k4FJCr9cfNp39Non+txA3KdwGbSF0WgJjZH3iAaT9VE4HOJqGaNwRzqQjOOmma4lAW9l
         fISm9q+ZZ0T4F93mjhGEL4Ghr92m+GfrFkF0OKZ1UaxPYYrh+kp6RLnFhHcPpj35ckTx
         gNYA==
X-Gm-Message-State: ANoB5pm+r376ZAiPRS9c5yi+IRRfxmohSl2N5lRhWez7zerNnUhX2spJ
        PxU9/dX8XG75tRpoAHxopOz+cg==
X-Google-Smtp-Source: AA0mqf5x16RFXaA+uzVzXVBdNW/cAIqHESFswbTkuTTZxZ31wa7x9hivZsjPjLjWWs/vWqwqHFk5KA==
X-Received: by 2002:a19:4f46:0:b0:49f:5ddb:f8af with SMTP id a6-20020a194f46000000b0049f5ddbf8afmr7527780lfk.184.1669117298160;
        Tue, 22 Nov 2022 03:41:38 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id s1-20020a056512214100b004a45ed1ae21sm2427823lfr.224.2022.11.22.03.41.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Nov 2022 03:41:37 -0800 (PST)
Message-ID: <e7350331-5312-2f46-2914-15a3a7aef245@linaro.org>
Date:   Tue, 22 Nov 2022 12:41:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH] dt-bindings: soc: qcom,rpmh-rsc: Update to allow for
 generic nodes
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Melody Olvera <quic_molvera@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     "open list:ARM/QUALCOMM SUPPORT" <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>,
        Abel Vesa <abel.vesa@linaro.org>
References: <20221118182535.11156-1-quic_molvera@quicinc.com>
 <41010ea4-68f4-b0e2-ab30-8ca6223417cf@linaro.org>
In-Reply-To: <41010ea4-68f4-b0e2-ab30-8ca6223417cf@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/11/2022 11:27, Krzysztof Kozlowski wrote:
> On 18/11/2022 19:25, Melody Olvera wrote:
>> Update the bindings to allow for generic regulator nodes instead of
>> device-specific node names.
>>
>> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
>> ---
> 
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Unreviewed, because this should include also SM8550, otherwise a new
patch will follow it immediately, which is not necessary.

On SM8550 the apps_rsc node has up to 6 PMICs, so it should be instead:
'^regulators(-[0-9])?$':

Best regards,
Krzysztof

