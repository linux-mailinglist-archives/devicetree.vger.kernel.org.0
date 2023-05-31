Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E7C6C7189A1
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 20:50:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229499AbjEaSu1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 14:50:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230007AbjEaSu0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 14:50:26 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C87A137
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 11:50:22 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-973f78329e3so699072766b.3
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 11:50:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685559020; x=1688151020;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=h5hMbC4ivBWuErocGMYJX5U7rDjUDvKuCdFgBzOHf1Y=;
        b=mZUw4p8bdrNt2vSEum1MkKbBD3343JEIGxA0TCiglPHXGbPC+rSrYHWdGXXWCHTnHG
         XoMddJWv0khCj8HD66qzsz3u9nBpCOXZ8Y4flilhnSy6nhQn8lXXAxRlR+aGLTZNVh44
         +vcwBxMO64YgLUHm2rlL6C87EaykfMffJ44afcxN6Hk5aMt3feI4GNVCj9ILfDft2ikB
         EQaCqDPn48O8KqnRDn5kt2EU5BMGdP516ufYBdY4urrkncoaIp6qsrKmMFTC73c+0KmM
         Mc5vLEzwTG/9jNdSTofLxw8v16QNX5zUfVaqDP/r72s2L9mgbI4P+F+5X1twz5krMeJv
         vVbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685559020; x=1688151020;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h5hMbC4ivBWuErocGMYJX5U7rDjUDvKuCdFgBzOHf1Y=;
        b=Ts99Lp+QUJO1gdlHimslnofDlJCwG0d6ucypXSnKtUVuNDeT8LygL9QSwlVwTnhShf
         qdNc4R41zGDbSOPftJAAwDht/bHD+Q+uHhwyRi70Q+VUiO5zuB2aSc0ogNYY0+8AEhCX
         6hXCocpqdYKm2Gjpg5WqzGxqf5kojUp4iAiEiFFEkMwbEyID7FdC2UUsb+AzTUlaLXT1
         rkzwI6zS/85jThRFsjBvLDjihEI0alNjoQKGvruRS8dTGYcsTIE3qESaRQq9jX+C+m1w
         zzv1EGbEHOMmVU/LPKw/+8uC0yf+yJ1ZVAttbKmVGedMe4s+RxyKjG9Lyy0bh1chIVrE
         qISg==
X-Gm-Message-State: AC+VfDyT/d97ZZMEoWEOIymi9mOuyVI17/I5SxJHsisTVFAE6mp9CRYA
        hYi5/VKUS435n6dx3iPxm4zG3g==
X-Google-Smtp-Source: ACHHUZ79hUf6yYEmunXpi5NWdf+DesYZD6S3ySETrob7z9m46UcChEOEeFIkSmrD7S+y4Iq1pLsKsg==
X-Received: by 2002:a17:907:3e8b:b0:971:5a46:8ab4 with SMTP id hs11-20020a1709073e8b00b009715a468ab4mr6951850ejc.66.1685559020641;
        Wed, 31 May 2023 11:50:20 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id va15-20020a17090711cf00b0094ee99eeb01sm9413093ejb.150.2023.05.31.11.50.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 May 2023 11:50:20 -0700 (PDT)
Message-ID: <30c7d1ff-a7b5-59d2-90a8-9fffe6122f4b@linaro.org>
Date:   Wed, 31 May 2023 20:50:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 3/4] dt-bindings: arm: qcom: document MI01.9 board based
 on IPQ5332 family
Content-Language: en-US
To:     Kathiravan T <quic_kathirav@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230531135048.19164-1-quic_kathirav@quicinc.com>
 <20230531135048.19164-4-quic_kathirav@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230531135048.19164-4-quic_kathirav@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/05/2023 15:50, Kathiravan T wrote:
> Document the MI01.9 (Reference Design Platform 474) board based on IPQ5332
> family of SoCs.
> 
> Signed-off-by: Kathiravan T <quic_kathirav@quicinc.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

