Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4A7C618DBD
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 02:45:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229492AbiKDBpn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 21:45:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229481AbiKDBpl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 21:45:41 -0400
Received: from mail-qv1-xf35.google.com (mail-qv1-xf35.google.com [IPv6:2607:f8b0:4864:20::f35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 912A322BD4
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 18:45:40 -0700 (PDT)
Received: by mail-qv1-xf35.google.com with SMTP id mi9so2361635qvb.8
        for <devicetree@vger.kernel.org>; Thu, 03 Nov 2022 18:45:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=idTS4SelBRvz9HEBMSJGvE/A1qHqs1yN4on3ybwNC48=;
        b=OjBnP9x2dKU/TwQkPcpAefniTLnh89qNp0UZAZEcxTJgMM58mGfFQzaX621zsY5Nck
         ojldyt/w1Mp/fw3IvEb4nFNkFczmPgS8rCXVvyEManOZPfKibqdAyj2TqJz12i+/0zvD
         Ao31Q6GvcP3uoAid5T5ydbO4eiU3YR+OXDByETT64y49+Jvy5YZzWGpuJI1//a9LsfM+
         Y/c3wGC2hOgBDqc7+4emqRJphavau+7wvhKwNODuxJgWfXXtCkyQqYuqY9Szt95If0o0
         JPJBq8eU7RcxwIUCJ8nVEW8BPz7YatV+Lux05ccZzKHU/cYjSSlwmr/+LOb84VRXRfi+
         LXWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=idTS4SelBRvz9HEBMSJGvE/A1qHqs1yN4on3ybwNC48=;
        b=VCvAt4MBtf8dI8J6Dh1JIoHg1ZMDmKxUK32YonLVob7f6cytZtpdHZIV3H1jhllNDi
         v663YsC5soFvccSdAoAkVrDNxHYNGXwQlIfOagBgTTTg/0NBahaX9AsGlFWFGSAC0yhY
         nH3mWnbqoeHlhXw1fYaT3Y5hZBQS+pYIb0EHP7BQOlpffljk9ecKI3uR7WzW1DMWxl9M
         VExufvBDfudtcC2oEZZWnfHlgRhZwTNwNUYNsKDR/PdRGuVgCymUpZye/UF4Runs9Z81
         hgUhndOyi53LRW+2VA3+QfDFYUG32ydUtOsNaLlE9J6ZHou3j06lFKsUXYHKY7r4RSzr
         6dCw==
X-Gm-Message-State: ACrzQf3jFlfC/QHl5j7ZbWPWpdJ043qHV3gI7dszCFJTQoAPt25cz8JK
        JZaAVBEu+B7psK+pIFI4HKKdUQ==
X-Google-Smtp-Source: AMsMyM5+T0lH6IliHmdWswvFwDwmXCa63u4RyjwkNBrqSnB0voVqyMdUppgaAB0i0IVqxZZcy9gF0w==
X-Received: by 2002:a05:6214:268a:b0:4bb:62a8:990 with SMTP id gm10-20020a056214268a00b004bb62a80990mr29273628qvb.75.1667526339806;
        Thu, 03 Nov 2022 18:45:39 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:da2a:9e7e:ddb5:dfa1? ([2601:586:5000:570:da2a:9e7e:ddb5:dfa1])
        by smtp.gmail.com with ESMTPSA id g14-20020a05620a218e00b006ce580c2663sm1865195qka.35.2022.11.03.18.45.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Nov 2022 18:45:39 -0700 (PDT)
Message-ID: <bac94304-794f-79ee-5ad3-0363121e0305@linaro.org>
Date:   Thu, 3 Nov 2022 21:45:38 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v3 1/2] dt-bindings: iommu: arm-smmu: add sdm670
 compatible
Content-Language: en-US
To:     Richard Acayan <mailingradian@gmail.com>,
        Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        Vinod Koul <vkoul@kernel.org>, Emma Anholt <emma@anholt.net>,
        Rob Clark <robdclark@chromium.org>,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org
References: <20221103232632.217324-1-mailingradian@gmail.com>
 <20221103232632.217324-2-mailingradian@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221103232632.217324-2-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/11/2022 19:26, Richard Acayan wrote:
> The Snapdragon 670 needs the IOMMU for GENI I2C. Add a compatible string in
> the documentation to represent its support.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>

There is ongoing rework of these bindings, so something needs rebase,
but FWIW:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

