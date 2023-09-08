Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 502BD7983B6
	for <lists+devicetree@lfdr.de>; Fri,  8 Sep 2023 10:09:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240201AbjIHIJq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Sep 2023 04:09:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239556AbjIHIJp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Sep 2023 04:09:45 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A5681BF1
        for <devicetree@vger.kernel.org>; Fri,  8 Sep 2023 01:09:39 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-9a9f139cd94so114611066b.2
        for <devicetree@vger.kernel.org>; Fri, 08 Sep 2023 01:09:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694160578; x=1694765378; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cetrW0aO/DqUan7YxONhy9yIk4uiWneu47zfXJU1pZc=;
        b=rs0WNdJCS0Zi5W9EBMOOYCqAlXq5PllnPBLJ54ylNhxmUp1ZlMVfTbR7ftpjxJCm3e
         wULtKJuc+MvrGKihDLQBGT4utZdl1Hf0+7QRufALZrBs54Uf+qGBdQpUJqbRYf/gcUV2
         qmoxScHg6rkeZI0XtFq0as1a6jDXKOH61PlM9WSRrpr6fXsIxr/kAIR+16Y4Za4YPNlw
         VRSgbFJ/lRdeXF9Euj8bfnYj6jwhWCVeiS5hoLu+d6CsaCZmg0YAOh9liGmq84cWC9bp
         JgVrZiYDsM6LYVOWTl5goqXAIrY7VNoiCmC/avrg1J/+PJPjBhFuamwvnTh6kFEVOy8j
         jGSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694160578; x=1694765378;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cetrW0aO/DqUan7YxONhy9yIk4uiWneu47zfXJU1pZc=;
        b=biecaE0dndoyLyIAfVOSaOErHBeRDGtn6XIP+CbaxGaIf91UbwbfJeDJn4rQjGE178
         bD6mD+6dm4uSqQltQt7l5z6eOh029OrUEJuznvBGysDI9WMFLw4cviwyHyd+wPE9ZVa3
         YqjkYenJ+c2t+cSdOJbFcjsXJhA89A95GHIA6OXc/8TO1lz+qZ1tz05QKKs2TUBwm7Kk
         knBU8AjCAN/cyJtSX1zSVmACpvZqisZNIa7uocoj0HAsFBEl5boFEesdhDplkEUXaIHZ
         QEWW9wULchDvMsDG0raV4FbCNwiGk5NuM0HRUnpiu/E8kPWYjoVWkMXlPJn1h53uLtLq
         H/5Q==
X-Gm-Message-State: AOJu0Yyh3tWNYRKypTXN7WOKaBVgEAhSSFGW+tVxEZkHYTUZaGBNqElw
        qKQTsNLR8hAQZ2z4tFbt6DhBkA==
X-Google-Smtp-Source: AGHT+IFkZVbjEwrZrqOgkla2rGbwmHwld7r/S3G8XlAkLjzU7+cvGb5LQpye0D0qUkkSWxxofK6JWA==
X-Received: by 2002:a17:906:769a:b0:9a9:e3be:1310 with SMTP id o26-20020a170906769a00b009a9e3be1310mr1140918ejm.53.1694160577883;
        Fri, 08 Sep 2023 01:09:37 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id k12-20020a17090646cc00b0099caf5bed64sm681121ejs.57.2023.09.08.01.09.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Sep 2023 01:09:37 -0700 (PDT)
Message-ID: <27645200-3d1e-0a2d-45ba-178e1a16e010@linaro.org>
Date:   Fri, 8 Sep 2023 10:09:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 3/6] dt-bindings: interrupt-controller: qcom,pdc: document
 qcom,sm4450-pdc
Content-Language: en-US
To:     Tengfei Fan <quic_tengfan@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        tglx@linutronix.de, maz@kernel.org, lee@kernel.org
Cc:     robimarko@gmail.com, quic_gurus@quicinc.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_tsoni@quicinc.com,
        quic_shashim@quicinc.com, quic_kaushalk@quicinc.com,
        quic_tdas@quicinc.com, quic_tingweiz@quicinc.com,
        quic_aiquny@quicinc.com, kernel@quicinc.com,
        quic_bjorande@quicinc.com
References: <20230908065847.28382-1-quic_tengfan@quicinc.com>
 <20230908065847.28382-4-quic_tengfan@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230908065847.28382-4-quic_tengfan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/09/2023 08:58, Tengfei Fan wrote:
> Add SM4450 PDC, which will used in SM4450 DTS.
> 
> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

