Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 60296730573
	for <lists+devicetree@lfdr.de>; Wed, 14 Jun 2023 18:52:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233689AbjFNQw2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jun 2023 12:52:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236376AbjFNQw1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jun 2023 12:52:27 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1310213B
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 09:52:25 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-977c89c47bdso147898366b.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 09:52:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686761544; x=1689353544;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=93h10qPxQUhCWZsq9GNFwkRNOXrYmgM5sQHpq9Nnwq0=;
        b=OcDgmVQTb39elSJQ3DLmTv08pk7LLdp8T6plF83V7J3tkb+qPgy2LiSZjXeGsmNiiV
         e8JG+V/zDYxG4e8sU6HZlrWNeUQq0K/wPMRrabHgn+pEJpwEYSp//A13VqEo9y9aMYpL
         yK44GTPFgMDScRFcTgS7Nb5M2aIwJyZnAfEcybwH15jCh5RQ9R+FDp1ezSOm3y3wVi8/
         MfavcdNa8B/LUbHZQiz4zLYKJN0E7EoBfJwizELKqAiQompQ9sUNis8n8osE9hk7GNIk
         A08pVSxAdZgKTP6K4bL1pQ4FO6k7ZcpW72OaMxceaJZHoTfZzXN3sPFhWLG1JNwRw8tV
         fPDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686761544; x=1689353544;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=93h10qPxQUhCWZsq9GNFwkRNOXrYmgM5sQHpq9Nnwq0=;
        b=W+Qm4AxFvRqHvC52qCTByhFE9r0LBIBcif1uhL69rhjzOuyj0lk0akC0AbAmKVzpq2
         7afuh3pQs7YidCWDXzQFaib/Um2M7dhJAAZdD+l4vHQ6/nnT5ovyyg7q3zybRNv8TXC2
         o/85xMoDmVURlKEt05AYeLgJMQ/leOTc44RM8ganDF8RmZsV5EjQFi9ht9R7Iw2yqXN3
         2HSErBmgwZOxs0nV7AEjCwge9xaSZyOui/XvK0zA+W3s+vcIaVLwypbFlgq2vyJLC2HA
         +/1f4QuYYvBy/QlawYtXRRoDZMUHQKwBIlpeYYbkm387rRwqicSPoV1LobuCrn6yDC+z
         nUzg==
X-Gm-Message-State: AC+VfDwTJRLYQk8ca2C4zMl/ZpCsbiCMSP1mrveZuDik0JaPEdhYEJ6W
        uPQ27LohNtU5AlDiC0qhzHvtGA==
X-Google-Smtp-Source: ACHHUZ7seUtdRaPNhJcbNFjaVpjz06zUGeoXziNRnEw6XLMoz2kG5Kdg8S/1LnZd4jBEvV2JwUkP8g==
X-Received: by 2002:a17:907:16a4:b0:974:216f:dc36 with SMTP id hc36-20020a17090716a400b00974216fdc36mr15745759ejc.17.1686761544428;
        Wed, 14 Jun 2023 09:52:24 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id a19-20020a17090682d300b009775eb0343bsm8278595ejy.79.2023.06.14.09.52.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jun 2023 09:52:23 -0700 (PDT)
Message-ID: <7c7ef961-cb5a-ee70-6ec1-7c6afe22c87b@linaro.org>
Date:   Wed, 14 Jun 2023 18:52:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v5 01/22] dt-bindings: interconnect: Add Qcom RPM ICC
 bindings
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Georgi Djakov <djakov@kernel.org>,
        Leo Yan <leo.yan@linaro.org>,
        Evan Green <evgreen@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230526-topic-smd_icc-v5-0-eeaa09d0082e@linaro.org>
 <20230526-topic-smd_icc-v5-1-eeaa09d0082e@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230526-topic-smd_icc-v5-1-eeaa09d0082e@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/06/2023 12:22, Konrad Dybcio wrote:
> The SMD RPM interconnect driver requires different icc tags to the
> RPMh driver. Add bindings to reflect that.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

