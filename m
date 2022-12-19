Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4B7465090F
	for <lists+devicetree@lfdr.de>; Mon, 19 Dec 2022 10:07:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229865AbiLSJHx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Dec 2022 04:07:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231567AbiLSJHW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Dec 2022 04:07:22 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2F1FBE25
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 01:07:20 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id b3so12725248lfv.2
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 01:07:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L4tpSk+tjYm0GwOPhGRXLIEBiSIOkO/36qvtptczgjw=;
        b=N3oFLtrcYYoltNNztEkRCstMhmF7L/B1dnooX75CzPsUn+NB8JbGvQdJ++Vql486rF
         sefNxpApu6gMAkVRZOYes5d3WqLsgDYrPWXIykFUNwYYPYntjL7zQN/Yhj84qQ9yoiOq
         za7S99D23KoxgXtbD8tcKKJM6ms0CopXhQBeC/57fZXbvDUvweuKwwtELoDksuGGEnXN
         xMA4hzwsvuWl0iJx4kqAGSdbI2IBE6c3UtHU8lwq8qaa4WXjxWha0/uYfo266NJHaDjJ
         hXNkPR4WAkVmQWhue7F5tmilGwwmT1Qz3/wvZnTpuPGZ8ofXrIqRmnAPPfHGg+Hw1acY
         dv6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L4tpSk+tjYm0GwOPhGRXLIEBiSIOkO/36qvtptczgjw=;
        b=v0ujkfRFPKazZTOnAg0daL/Lc6FMRMhXnR7xq7/rgvJSeGTsuxRg8ulOEzpphMDekB
         Pz/3PHJHiAs90FjgJsi/0dsU0dS6V0ZHNvMlz0ZHbJ/Kr1NFdRD/tiG21XafBu2FrMbG
         uDd3+DybzPGBsfcV7B7KvWzSRlj0KES1TwSyM6rDADTWPLEedUKTq8+ps+SWtBWvhKIa
         5McgmyeQRPXrjEclzB7oiMa5wyETox4umi6ZCPbfugj2oxdjKLX3lEQDVLuCJM5N8kTS
         2FWcQeXymp8J47b1yYqAjMxoO175WaB9d9+k4Pf+NHEX3KHLOCF4xCkikAoC5VF6HkgC
         h7VA==
X-Gm-Message-State: ANoB5pmFVDXUHdZMUxeUapOHPj1BIYBj8ZqZpvd00okYWtfs5fBIU7FB
        2OCe4cD3HajqpS1Izx2qS0gchQ==
X-Google-Smtp-Source: AA0mqf6yerJKFHzLlNexb6x/HD/ZwWzG43qKAdQsx9Tu5MD1hdnY7UrOWDYeXeOGe3TiRLg+e8ZbFw==
X-Received: by 2002:a05:6512:32cd:b0:4a4:68b7:f87a with SMTP id f13-20020a05651232cd00b004a468b7f87amr20619118lfg.30.1671440839244;
        Mon, 19 Dec 2022 01:07:19 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id m16-20020a05651202f000b004b4930d53b5sm1042586lfq.134.2022.12.19.01.07.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Dec 2022 01:07:18 -0800 (PST)
Message-ID: <306709f8-7d45-9b76-f95b-1b3088d37a78@linaro.org>
Date:   Mon, 19 Dec 2022 10:07:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v4 1/4] dt-bindings: arm-smmu: Document smmu-500 binding
 for SM6125
Content-Language: en-US
To:     Marijn Suijten <marijn.suijten@somainline.org>,
        phone-devel@vger.kernel.org, Will Deacon <will@kernel.org>,
        Joerg Roedel <joro@8bytes.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     ~postmarketos/upstreaming@lists.sr.ht,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Martin Botka <martin.botka@somainline.org>,
        Jami Kettunen <jami.kettunen@somainline.org>,
        Lux Aliaga <they@mint.lgbt>,
        Robin Murphy <robin.murphy@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Thierry Reding <treding@nvidia.com>,
        Melody Olvera <quic_molvera@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Douglas Anderson <dianders@chromium.org>,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20221216215819.1164973-1-marijn.suijten@somainline.org>
 <20221216215819.1164973-2-marijn.suijten@somainline.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221216215819.1164973-2-marijn.suijten@somainline.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/12/2022 22:58, Marijn Suijten wrote:
> From: Martin Botka <martin.botka@somainline.org>
> 
> Document smmu-500 compatibility with the SM6125 SoC.
> 

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

