Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC4B46FE02F
	for <lists+devicetree@lfdr.de>; Wed, 10 May 2023 16:29:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237420AbjEJO3D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 May 2023 10:29:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237354AbjEJO3C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 May 2023 10:29:02 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73F0630FB
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 07:29:01 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-50bc4bc2880so11444705a12.2
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 07:29:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683728940; x=1686320940;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BiXrt8G2xSgKeJw4e2UfSHGwhEDZUsC+BmNRXk6LRYg=;
        b=lUQXMO/O587aMC7V45s5twA/ToKSYJ6It8P/sm408H71fJqlx9pzqQ6ogLM/O+Nx0l
         g6WNGuIiMWF8rkvaXLHYsqlCer/Nn+dntn4EUIV7yQnbLEgZYewA2mqVJo+eW8JxEc/N
         cFlte9EDFOg8QrQk5Wirisdh/Atjw68lakq89PEwvNaJyqm6KTTDon4boe5isSXDtLEn
         jtlz7dQTKjnmjzxcQLCZW9i3txi2o9io3mSBmoRJ0ILm12muQHnJN5P27V1GMzSSQGLd
         jbcVu6Bb5psKr8djbUJuIZOCUU1ZOq1ClCuesEwL7cnGK1WXqQYEHkbHXh3REs48Ka1F
         Si7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683728940; x=1686320940;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BiXrt8G2xSgKeJw4e2UfSHGwhEDZUsC+BmNRXk6LRYg=;
        b=TxUkxvkVi6BHru35+A5Pydc1lzOUFO6bSd/0HQczqR8fTAV/t5wL126D+FO35pGnEL
         swE/JO0iu5rY1o6l4PGbDAN9+NVWvTH/K0F3u51yepJ2xHOj+AFy5lBHCrZrj00hhTAC
         ZCjWo6uadtGB7jERF0lDBLDx5TYZYpHCf99ObRYO13D1xYzeoleeUVL/2/oVuk0fccLy
         onWeKgqq9ykFHRX33vOKNUN10uBCRx7NTaqKD1sVIRh1ukdVACmITvA4YPY7rgy4OQu6
         UVRSdHonruIQgBADUuruuIlZUw5aFxNyjvn+FzVuFRQA+2ICgKA/ZvMXnVU+qFt7hNOO
         Ih4Q==
X-Gm-Message-State: AC+VfDwXU+k2BRpLdC1pXx7r4P1cfyu3UktWYNvTHjNBV5tSU+vlnloq
        Gk2NBGXSDbWpuQV5BZm5tb8K8w==
X-Google-Smtp-Source: ACHHUZ6bkEO6ysn78nLvaewOqHFg8Ke6jrucAJy9SYzbbaa4FuyWTQGgbTyUqVY0YmWt/D13e4QyXA==
X-Received: by 2002:a17:907:3e87:b0:969:f433:9b54 with SMTP id hs7-20020a1709073e8700b00969f4339b54mr5862374ejc.39.1683728939934;
        Wed, 10 May 2023 07:28:59 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:c175:a0f9:6928:8c9d? ([2a02:810d:15c0:828:c175:a0f9:6928:8c9d])
        by smtp.gmail.com with ESMTPSA id ib10-20020a1709072c6a00b009531d9efcc4sm2734213ejc.133.2023.05.10.07.28.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 May 2023 07:28:59 -0700 (PDT)
Message-ID: <a56e754d-d7f5-ec25-096b-a0c0c7657372@linaro.org>
Date:   Wed, 10 May 2023 16:28:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v4 6/8] dt-bindings: firmware: document IPQ5018 SCM
Content-Language: en-US
To:     Sricharan Ramabadhran <quic_srichara@quicinc.com>,
        agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        mturquette@baylibre.com, sboyd@kernel.org, ulf.hansson@linaro.org,
        linus.walleij@linaro.org, catalin.marinas@arm.com, will@kernel.org,
        p.zabel@pengutronix.de, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230510134121.1232286-1-quic_srichara@quicinc.com>
 <20230510134121.1232286-7-quic_srichara@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230510134121.1232286-7-quic_srichara@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/05/2023 15:41, Sricharan Ramabadhran wrote:

You need commit msg explaining more than what is in subject, e.g. company...

Look for nice examples in history - also for proper subject prefix
(qcom,scm:)



Best regards,
Krzysztof

