Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 823DF79E1F7
	for <lists+devicetree@lfdr.de>; Wed, 13 Sep 2023 10:24:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238768AbjIMIYi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Sep 2023 04:24:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238756AbjIMIYh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Sep 2023 04:24:37 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14471198C
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 01:24:33 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-31c7912416bso6939149f8f.1
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 01:24:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694593471; x=1695198271; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ggBtgbLm5SRuIxjEQCR6fuKEBJ2k5vc95TNuMoN5/ZQ=;
        b=DDaOo+qw7hHbp4PDorXm6rDfWBnPLe9yv8JtiqRd0/wmNz0sA2YMq8xcsRog8qalC3
         PsF6U3EBmt5RPXDOGLiYmNmDMiZUKEau0BNorIJZaBnXDzNPDpo2xuXyLdnu8wywxu+E
         pNo10dXTbvsi/e3yKeBV5IfD8M9r3kVHA9QsmA7Fg2Nr6ELTZO1O7UKSPTp8UtEtgYE8
         pilvmSKP0uEsdl+ILmtT+SgTlhEOvj4YFRam8nuu7ilQZupT7U1/AeiNFevRFlKmAv7J
         T1d2kZSLXnHNzXL9M8jxAWHwnaEmMBRlZkg7GUeiT/vc9//HIJRqmrJNa8u/j6jOtJMG
         /Y3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694593471; x=1695198271;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ggBtgbLm5SRuIxjEQCR6fuKEBJ2k5vc95TNuMoN5/ZQ=;
        b=YYjMtoy/ZjI3/yw494BFfH7LMLjMRbEetxE3NWG3nzmLSbxgwHrMBmxr7QGBiBX2bj
         d9GkcqQZ+8fItZnw3uN3ugf1Ja78/KbTviBapYzEoF6FUMSa4PCwHQV1YSLiWqUdFsyS
         mpD5QpEpqHmzbCnYqO1qYz6x0xfBWMxHd7HAOS2/QmTxLqZtIG36mEj/0NMjRZSEZq2C
         OgR0/q5O50hdLpcgupcRZ0J3hEuHq/5FeBrSJIk2n6xEywTyaA2Bfz+DAcwEf0hYXBzY
         eg4b5qLvJ8B00c6THB3NIYrikpExoy7updnmurSKdUI7iP4dmBG/FHxuybj/8VHz3QlR
         Fydg==
X-Gm-Message-State: AOJu0YzH4KothXHxVoNj69edaxpexjafy/D+kXUTyFFX387NvCW9Pa+b
        Bi4JeWfq0t2C7uJJUX1wDGLDYA==
X-Google-Smtp-Source: AGHT+IFXabWAiPieo98hnbDGr9uxhTqkqa82VC7vCktG6bVMPMlapg+rIO/G/+Q7tHCURas6Bl2+Lg==
X-Received: by 2002:a05:6000:1a54:b0:317:6470:3271 with SMTP id t20-20020a0560001a5400b0031764703271mr1425384wry.45.1694593471335;
        Wed, 13 Sep 2023 01:24:31 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id z12-20020a1c4c0c000000b003fee6e170f9sm1274208wmf.45.2023.09.13.01.24.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Sep 2023 01:24:30 -0700 (PDT)
Message-ID: <793f87d4-129c-33bc-38dd-b4b2c93dd241@linaro.org>
Date:   Wed, 13 Sep 2023 10:24:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v2 1/2] dt-bindings: interconnect: Add compatibles for
 SDX75
Content-Language: en-US
To:     Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org, djakov@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@quicinc.com
References: <1694513046-24064-1-git-send-email-quic_rohiagar@quicinc.com>
 <1694513046-24064-2-git-send-email-quic_rohiagar@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1694513046-24064-2-git-send-email-quic_rohiagar@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/09/2023 12:04, Rohit Agarwal wrote:
> Add dt-bindings compatibles and interconnect IDs for
> Qualcomm SDX75 platform.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

