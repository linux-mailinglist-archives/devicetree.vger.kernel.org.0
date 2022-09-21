Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 91EDA5BF7B6
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 09:31:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229980AbiIUHbM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 03:31:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229990AbiIUHbK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 03:31:10 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36CFC7CA80
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:31:09 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id f9so7775447lfr.3
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=Y5vXOK0VmzHVXi9yS4v7tjY/hx6rNTPtAupQE8SpBw0=;
        b=y/jcA++D/06UjV+5R2t4zQ4KPE9IH7YAmYxqFbAPoAd+MAhdrGgEYWXKznIcyAlzNi
         F1RUbqGTUlPTy4mSeGRwr/T39XNIkBXVIs8PzkF9Mhc6XqqsXVcuhBqjs3HpL9OQyYfQ
         RmxKNidzGOBnujf33nNRVVgM5XYZ71qu6AUxSsrndRvnXgeJ/KSFPIB+sTxnahx66FDP
         4tlfaW3u8BkMYkoW1e2yI2Dg6OHWRhhuYqWPKlwNy6NX7Flkl8IBG9drokT4oHD/aumH
         puf8HxHbutEeaJ8M5HbExspBV4uD+5l4ymude5oTaoYXh+qHqR+FiGhxsCw1hyQUhByg
         1SIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=Y5vXOK0VmzHVXi9yS4v7tjY/hx6rNTPtAupQE8SpBw0=;
        b=ZmSdOWHbLmgJlcE9vJu78n/1J2cTd12Wu3iw7dq2ZP61rxfumTv9vbKFWH7zLkAMbM
         QMGWh9o+IIUdPooUnjjqecxv9BEZkDOK7GHn5lUjNOj3Nf53CefvIp3+KvEm+xcWwBt+
         bHmTroeKz3jfUQLvoqYR+bW2wJzRkqWgkzHq/RWgbvpg/AYo5Jcp3tMJIyAuy+JUaoYu
         +0jBqn7fLu7HxaSwEQAZTEnsEFGTy1W4/t0JgfZ7//1BTu5dGkRIk69rvARQxJP6+2ag
         z5yk3dfqr3y89nvWz+WzU0Wn1ZWMNeGcD1WhUDRDholh5RbVUAzf7RI/bbhfJimulrun
         s++Q==
X-Gm-Message-State: ACrzQf2xgD2+/MjaqaXrVmdk3bfApgNsHwr/yFnjbqN4ow7m7yZAKxq3
        8T+ZAeq4Yt4pfM3lH4cdglA0vQ==
X-Google-Smtp-Source: AMsMyM7RpErQl780CD4dVB+vh4re/DIllGACRaxt7BzIfp6fNvauT36ldNcu0qXeEYZ8JJqF5lZeSg==
X-Received: by 2002:a05:6512:a8c:b0:49e:359f:5563 with SMTP id m12-20020a0565120a8c00b0049e359f5563mr9264642lfu.563.1663745467580;
        Wed, 21 Sep 2022 00:31:07 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id v7-20020a056512348700b00497a23cf2absm309960lfr.258.2022.09.21.00.31.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 00:31:07 -0700 (PDT)
Message-ID: <88013406-6e07-2d3a-400e-5ec4ea83ee06@linaro.org>
Date:   Wed, 21 Sep 2022 09:31:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/2] dt-bindings: iommu: arm-smmu: add sdm670 compatible
Content-Language: en-US
To:     Richard Acayan <mailingradian@gmail.com>,
        linux-arm-msm@vger.kernel.org
Cc:     Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Clark <robdclark@chromium.org>,
        Sibi Sankar <sibis@codeaurora.org>,
        Loic Poulain <loic.poulain@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, iommu@lists.linux.dev,
        devicetree@vger.kernel.org
References: <20220920223955.151507-1-mailingradian@gmail.com>
 <20220920223955.151507-2-mailingradian@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220920223955.151507-2-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/09/2022 00:39, Richard Acayan wrote:
> The Snapdragon 670 needs the IOMMU for GENI I2C. Add a compatible string in
> the documentation to represent its support.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>  Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 1 +


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
