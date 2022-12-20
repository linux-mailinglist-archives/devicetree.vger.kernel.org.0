Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46309651EFA
	for <lists+devicetree@lfdr.de>; Tue, 20 Dec 2022 11:39:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229819AbiLTKjj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Dec 2022 05:39:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232537AbiLTKji (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Dec 2022 05:39:38 -0500
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0392617418
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 02:39:36 -0800 (PST)
Received: by mail-lj1-x229.google.com with SMTP id f16so11952118ljc.8
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 02:39:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5xL1Bysm8EdLY3X347DVoCCUWGezEo4u07eX/6KRS+0=;
        b=r0j7NBbCigCqOvX0i3nuzeMOFHbu4cQgsSB4nJ1CdFN9Op5debTrXa93Uj5OCMbcrF
         d4RqAh58M1fHBrndOl0Ku8LUjC7h6Y2j/K5/V3tdECkz0EvfQMUhodZhK+iqQ6NmUYtt
         FliRlNnTkWb+0MfLDluGWWpeg3ZGjfjMJ0wsVMlLHuqDHkZ003Vf+2Rz4gXCv5TTcZbd
         0+/oORDaNWSx1vAyCyksSoIHdZUh4KWjVe8XuxvzxHPbPMHkWbClPIjMkipwvMuMbs/4
         ysGb878pdOuQyWsDqWRylFeLBVfVmHfaPrp0L+Y4nb8h/1unmJ6MItOrTIaowEeePPbs
         w3cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5xL1Bysm8EdLY3X347DVoCCUWGezEo4u07eX/6KRS+0=;
        b=ALnjaMZ1npxLGPgHx91edhCgSAQi1820wr5C5QxPRkaQ69GQ+MQUlPx9dO9y1hc3EX
         D8w5Qsag6AZ1CGKcuWrpsO7GolReaOROVsxu5A5BTVr3MBfRUUUP92A3hGWvgLusqsC2
         QeO53oDosPfHFxD0H7VwLRN2HDKogRhgLbsklUO/KSS7AgNEq5Lq3fDthhfrb2dvwF1/
         HZOAs/cEc/VuXsdKKqeF4BqiDCFG4bqpKfsmUVEsunwptVJGS6/9mG0306LEtkxsCGzz
         QZdktL9XaFm5IjEiOPzxi1y+ANIKUXJ/Ov8P9hMJeyCaKbdE5aBYvy9V8XxtGjyyM0H1
         08aA==
X-Gm-Message-State: AFqh2krhfZHo/Rp24U8sLH1zUgnBSoEmj1dO26EfWN5riEiXqO28cSlO
        5RnWvYNnFSgnGrsTh3DwuNUPFQ==
X-Google-Smtp-Source: AMrXdXsCGgnZNUm23ctiLSG/KLowQsfg2pLh0sWGz0XMMOZAfjTYl4yj+PHQSVLg1GBAZlRLv+lHeQ==
X-Received: by 2002:a2e:be1b:0:b0:27f:8546:80bd with SMTP id z27-20020a2ebe1b000000b0027f854680bdmr3251448ljq.26.1671532774407;
        Tue, 20 Dec 2022 02:39:34 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id t5-20020a2e8e65000000b002770fb5722fsm969782ljk.123.2022.12.20.02.39.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Dec 2022 02:39:34 -0800 (PST)
Message-ID: <434e45f3-96f9-b93b-1967-d30df11ae32e@linaro.org>
Date:   Tue, 20 Dec 2022 11:39:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 3/3] arm64: dts: qcom: qcs404: register PCIe PHY as a
 clock provider
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org
References: <20221216234027.539917-1-dmitry.baryshkov@linaro.org>
 <20221216234027.539917-3-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221216234027.539917-3-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/12/2022 00:40, Dmitry Baryshkov wrote:
> Add #clock-cells to the pcie_phy node. It provides a PCIe PIPE clock.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/qcs404.dtsi | 1 +
>  1 file changed, 1 insertion(+)

Something to fix:

Applying: arm64: dts: qcom: qcs404: register PCIe PHY as a clock provider
git/rebase-apply/patch:100: new blank line at EOF.
+
warning: 1 line adds whitespace errors.


Best regards,
Krzysztof

