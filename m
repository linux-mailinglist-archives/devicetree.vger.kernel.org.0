Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A7806046C9
	for <lists+devicetree@lfdr.de>; Wed, 19 Oct 2022 15:20:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229869AbiJSNU4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Oct 2022 09:20:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230383AbiJSNU2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Oct 2022 09:20:28 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B71D574CE7
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 06:06:04 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id a25so22125569ljk.0
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 06:06:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hkU5CJVPM8w28zvAmjVOcpJHc9WnxNS4s4QHzh73UBg=;
        b=wBHcNPDSnkO2WOpz0CAH3Sb1gJ+6t3XqfwkD0wY+R02Q4IL41mVxMnivcPc/eWvaeR
         BaEy8xcpTg1oU1QCvhd31rl9xOLAbiFgrZUgnlwMO/gD4zk8H1nBo/zaDzNWJ4bdc+Vq
         rJBQ+ITqT75A27ANpt2MzFIrn/4GcfqIGc/hMPGjCc/RLMuY/frR5IWJq5UgQwzHI2dN
         sdxHneSTJDvX34BmvdqfiSbvYjdxKEajnq8jdNT82jKih22rMlYu/d2kxM6Ble4Q+sbq
         j37NUEhrubwIgeFkI/zxTliXr94Dt/JrRnLFJoXXY6FQK+O7WvmH1lYTArHKLWIxVLsb
         Gz/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hkU5CJVPM8w28zvAmjVOcpJHc9WnxNS4s4QHzh73UBg=;
        b=QrsAlsHE/1AB+oxcny/ZRbq1EWca5xu6cvm5JEH3ikfbt9VL8dkZ/0WZ7B3aJL1jKY
         eFfwvP42DytsWx7oEUMCdrTFGF/rw883O+gUGoWk/bmAIpotHZId4WPSCDYMVq07qp7o
         poSA2OmhgOG/VHTuJRnsBBOuq4LpOc58tD8mf0IPi7LLGcKlyGENVZejGPYx/g++Djom
         Vl+ZOtz0CVnZJc8jyDzmWaOWvDBtZ1LII2I9aDah0sdG2BcxWorW+wycQWKqwckKBFem
         6KYR85X3BpSH78wbuJ8MeY/WZwfTIcXaW2A7T+/PXVCNuL6AG5grx4ADOWznmHQClVCA
         k5qA==
X-Gm-Message-State: ACrzQf3iL25x7SxdsfzP2iN77NCb3ElfHldh+91AcLaXA3zmiBPWpCbY
        91K6Ni1ZM/jJIokos+jFIgpR8x7UIQbj7g==
X-Google-Smtp-Source: AMsMyM7FMyQvAw4FpSNfLyO514H2NhzJIoPo24uC4C7rLWtdWW9cjLPlFh8qlplgz0nvbbB0dk5ljg==
X-Received: by 2002:a05:651c:178d:b0:261:bd23:a5f8 with SMTP id bn13-20020a05651c178d00b00261bd23a5f8mr2683157ljb.411.1666184758489;
        Wed, 19 Oct 2022 06:05:58 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n28-20020a05651203fc00b00494643db68bsm2285934lfq.78.2022.10.19.06.05.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Oct 2022 06:05:58 -0700 (PDT)
Message-ID: <58e2f639-b764-6712-2072-5acb0fa2cd93@linaro.org>
Date:   Wed, 19 Oct 2022 16:05:57 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v2 06/15] phy: qcom-qmp-pcie: rename PHY ops structure
Content-Language: en-GB
To:     Johan Hovold <johan+linaro@kernel.org>,
        Vinod Koul <vkoul@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221019113552.22353-1-johan+linaro@kernel.org>
 <20221019113552.22353-7-johan+linaro@kernel.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221019113552.22353-7-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/10/2022 14:35, Johan Hovold wrote:
> Rename the PHY operation structure so that it has a "phy_ops" suffix and
> move it next to the implementation.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 16 ++++++++--------
>   1 file changed, 8 insertions(+), 8 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

