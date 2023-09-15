Return-Path: <devicetree+bounces-556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E317A1F0C
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 14:45:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C92F71C20D95
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 12:45:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 252FB107A3;
	Fri, 15 Sep 2023 12:45:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D097D53B
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 12:45:20 +0000 (UTC)
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B73FEF7
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 05:45:18 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-31f7400cb74so1781415f8f.2
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 05:45:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694781917; x=1695386717; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:references:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=H+2OXea/ftSG4Gd1agwTiwOgex+CgxldQL9L1lT6oBA=;
        b=zzLPSsLwDzULOsbEHmeMIVzGojEyQCrSztPdfatZ9XPJvLPnKsC6+C84IuQXkl+hpI
         SYH4Kr1vNYmT1OotX5dPw6kGpY/x0fjgai/OZEvTeqv91wNsY1QK3gJT30K1sBjvVgOp
         ZQmvIRGSu1IDFDvNvggpXzeQu8bTlMkmcX3RQFKMHb9FcxIBaOIKCfqbFk8l4QGyD5vE
         F3z/qV56yGIplskbdAb7LZ3kJ9GI9bau4iyKH4OJQV3zOZ3MCBsb5ZqEcfLG/qPT5MTW
         cyxuD23qBj2k6d33FffsMZHOsIjvm22SIyJPHz615rPlBHFLJgHvAeEpUCyj6SmPDruM
         P/Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694781917; x=1695386717;
        h=content-transfer-encoding:in-reply-to:references:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H+2OXea/ftSG4Gd1agwTiwOgex+CgxldQL9L1lT6oBA=;
        b=LfZ2y6Bckg8LfkdAIfWp+eSRX3D7R7FcQCvYodjy/V+VhB8hlyIW5mGUdw8myr1ITW
         YtVMa/+YRwtN778mXW3sGCxEfGxZzfY5muqIFwJ7P3t0B4SPMOFRrG3QO5EqmW7Yo439
         Rs0TB2X5CTyfo+06/+LennxYZgfunps+uCmbOyF8HPIRv2ayvuEX/BfScN6Y3rXK2y/R
         4+HXuYMmP1yomvoud5lBpZf5te0ftW+wzQFgWoR2HhiM/im99wmOSjQB0mKZl3jfacRi
         5KcNrwoykiW+3J6+oIEJGeZ8QJefEQaSqrNLlf15g2VD1neSQRVJ9jkxgDJ0msMerH6j
         xyWA==
X-Gm-Message-State: AOJu0Yw7+zYxpoMfwmzGzSsy0XiiYPmoEoYefb/oF6Gz9LZErd6zXJb7
	BrhZfVK5Uspe06K+FOL5n1ba9A==
X-Google-Smtp-Source: AGHT+IEoXgSbsXVbsxNSLj/Bhx0V4eqZsaCxLqI84tEVnJ4LzNaQIMK9DwnYzzQaRkCCMm5dO+YlvA==
X-Received: by 2002:a5d:4152:0:b0:31c:7ada:5e05 with SMTP id c18-20020a5d4152000000b0031c7ada5e05mr1395517wrq.51.1694781917052;
        Fri, 15 Sep 2023 05:45:17 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id z6-20020a05600c220600b00402dbe0bbdcsm7369991wml.28.2023.09.15.05.45.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 05:45:16 -0700 (PDT)
Message-ID: <f5aee51d-0345-1294-a85b-ea96ed937685@linaro.org>
Date: Fri, 15 Sep 2023 14:45:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH V2 1/4] dt-bindings: thermal: qcom-tsens: Add ipq5018
 compatible
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Sricharan Ramabadhran <quic_srichara@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org,
 srinivas.kandagatla@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 thara.gopinath@gmail.com, rafael@kernel.org, daniel.lezcano@linaro.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 dmitry.baryshkov@linaro.org
References: <20230915121504.806672-1-quic_srichara@quicinc.com>
 <20230915121504.806672-2-quic_srichara@quicinc.com>
 <03b0cafa-49c7-8838-b116-927c9649cbd3@linaro.org>
In-Reply-To: <03b0cafa-49c7-8838-b116-927c9649cbd3@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/09/2023 14:43, Krzysztof Kozlowski wrote:
> On 15/09/2023 14:15, Sricharan Ramabadhran wrote:
>> IPQ5018 has tsens v1.0 block with 4 sensors and 1 interrupt.
>>
>> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
>> ---
>>  [v2] Sorted the compatible and removed example
>>
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

No, unreviewed. Your driver says it is not compatible with
qcom,tsens-v1. This does not look right :/

Best regards,
Krzysztof


