Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B4025BFA1F
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 11:05:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230079AbiIUJF1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 05:05:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229972AbiIUJFX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 05:05:23 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83B54550B9
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 02:05:11 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id w8so8046750lft.12
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 02:05:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=K0EY400lNINpKi/3vh9zQ7PdBSHN/a2P7LQEziSq8ac=;
        b=V4C50jBDBFFbXj97QXg82sjDUXzb8n3tnPfvPQPQM7pGIHxOgwUClMev2c2bjK6PzZ
         R0A+rJDyvdD0BkzwTeZb7UNnLYCrqzJDGK+er/20gvMOnAK6ymZi6wpJHV2yFhfBrYyw
         sJ38xuD0MpC9zi1Xu48iMWtFwvk4YUoiW6CtT3YVdKIhwyXmm7jEJiEx31FiQkCoEwSr
         nKPUc93zQGKJMMYqCehpLV7vslOjlKUYFA6TX1ZolDVSgOkQvAAa7T5nyCSYMpKlEoQX
         0q1tT8W6rxNEOgM5M50pcDf+B17KEJM0Xn10Ecevl/Y8UYx43Tf2zidfyvncWc84Ar9w
         8BFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=K0EY400lNINpKi/3vh9zQ7PdBSHN/a2P7LQEziSq8ac=;
        b=whBcIO+tx5Z2Ez5HeThb0FF1QRP6Oh7QsR1fj9wbz8TSW/9EBmZ61h8SQhDnMjYWat
         zaflH49z8CHHLk2+8LzyrXt22A9Oewll30HQf/EU1cj3W1cHexTPVDTy6N3I8kNL4bpU
         6XyJF15d9a0ULaY1Bxw3/uiHnyoUmdBGsAAcS3PabWDcEeWHHVQKTbkXE6UofdVEPTwo
         A8rbyUDQkx652kOO/9aJgZklRV+swcv8uVSCIu8Yu1K5tMPCq8FApH4HSHKcqjfdp7l2
         6ckAcmFoGCvH+Na6hMDPHW+KQOCzWNF2XfiYH2m5znpbvilzxk5U09nn/MfdgXAd+5D8
         OvfA==
X-Gm-Message-State: ACrzQf3Xo78TNf1Z6/iOfZNbUPE6WEQPgaMcuIhfvQjDl/g1KNx0+wt/
        QAeMyQcRGlXQzwXYc+kIPup59w==
X-Google-Smtp-Source: AMsMyM6S/+UjKqRB9gcERMQIY6V0MUV5IWTsASHaPynjtm2h2ymuCbPi2ffq6EIQEivukdiUX1oeng==
X-Received: by 2002:a05:6512:1188:b0:499:6fbf:d751 with SMTP id g8-20020a056512118800b004996fbfd751mr10271401lfr.51.1663751108640;
        Wed, 21 Sep 2022 02:05:08 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id p20-20020a05651212d400b00492b0d23d24sm338704lfg.247.2022.09.21.02.05.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 02:05:08 -0700 (PDT)
Message-ID: <f3bed1d2-8d10-e64f-3ade-edae772ed6d5@linaro.org>
Date:   Wed, 21 Sep 2022 11:05:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH] arm64: dts: qcom: msm8998-yoshino: Fix up SMD regulators
 formatting
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@somainline.org>,
        ~postmarketos/upstreaming@lists.sr.ht
Cc:     martin.botka@somainline.org,
        angelogioacchino.delregno@somainline.org,
        marijn.suijten@somainline.org, jamipkettunen@somainline.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220921004741.152765-1-konrad.dybcio@somainline.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220921004741.152765-1-konrad.dybcio@somainline.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/09/2022 02:47, Konrad Dybcio wrote:
> Add a new line between each subnode and make the { } consistent.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
> ---
>  .../dts/qcom/msm8998-sony-xperia-yoshino.dtsi | 33 ++++++++++++++++++-


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

