Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E919050B809
	for <lists+devicetree@lfdr.de>; Fri, 22 Apr 2022 15:14:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1447759AbiDVNQO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Apr 2022 09:16:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1447762AbiDVNQO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Apr 2022 09:16:14 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C18E3580CC
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 06:13:19 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id d6so5289189ede.8
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 06:13:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=IugwfOodZ70vzuRLAD9KJaJvPDCCLQ9669/dvCEKcYQ=;
        b=MTxBBP7zINLbBFS+Q2dkVNGhdoW4D2eWak229cx1Njj1/25pd+Kg3HjJa9bovjH2eV
         TnK8Sh7aleyvC+6VlAPRUMh4Ke73oJP+Z89wIRHDmHOos8kFw2bmTMlq5Uq8H8TJgLsH
         Xxj6ornUPVTvqtVGcPfTBoT+yjEkYMOM/b9MhWMkBRu3pMwtM5zURvzqxXLVGtyEPBWJ
         9kI4a7lmESsVRQrLBqxy6X3hoVaEF9cO2ix6qQB4OtNIY3fDtl7VqoVDfQmkk3U8f4Gj
         VtzhPH9+TvoXiQh8hDxeVl1zMMguc8QUbeQx3a1TOs7l5N7QgBcF4gBen7mN73ViuEqm
         jFnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=IugwfOodZ70vzuRLAD9KJaJvPDCCLQ9669/dvCEKcYQ=;
        b=Dw1eTXLYgltctpvt6YYQO4htLzezlpow2A1cdfyFaAJ1lPI/oLWf8iYunR6HpPOS3e
         dd5yQgz/LIuNhY3Uv+Lmud5EOFKjM/bzKCxXZIHg23ZYBaL2alDpZM+JtXGcI930JFfL
         AIRc2KE64apNUqm9N60MROnODXlQ359b2iZN1cDHFHMB1AsYE1y4VH/KUBWyCACsoWfy
         hx61NVkIltiBUJJWREVQL73SMB7xLrX6cdqT0rfgyGg4tkuzT10imqhgh/KP9X0KdN5y
         Vdor7kfaHDHeSnRoQuG75f5m9erGU7RU4VANf84WzlMW1bg2Umhsu+Rn80h+OwadrJg6
         0M9Q==
X-Gm-Message-State: AOAM531WtZhoxBT89pniFO0f2v7F5RNUTr2rXc8mW2gZrHJ1J2wAYsuZ
        JfpCFt276pFd/e4eOWclY0Nnzw==
X-Google-Smtp-Source: ABdhPJx8AKKyPCo4ZjrbQIC1n/yc8Zmar91ruz5cEW7eT67Xn2AThPnMKdmJLKANIc0XWRGxGiAg3Q==
X-Received: by 2002:a05:6402:524a:b0:422:2959:1266 with SMTP id t10-20020a056402524a00b0042229591266mr4720113edd.308.1650633198411;
        Fri, 22 Apr 2022 06:13:18 -0700 (PDT)
Received: from [192.168.0.232] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id q17-20020a1709064cd100b006e78206fe2bsm757007ejt.111.2022.04.22.06.13.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Apr 2022 06:13:18 -0700 (PDT)
Message-ID: <09f7a3b4-ff04-28cc-b53a-e216a43618ee@linaro.org>
Date:   Fri, 22 Apr 2022 15:13:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 4/6] dt-bindings: pci/qcom,pcie: stop using snps,dw-pcie
 fallback
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stanimir Varbanov <svarbanov@mm-sol.com>
Cc:     Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20220422114841.1854138-1-dmitry.baryshkov@linaro.org>
 <20220422114841.1854138-5-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220422114841.1854138-5-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/04/2022 13:48, Dmitry Baryshkov wrote:
> Qualcomm PCIe devices are not really compatible with the snps,dw-pcie.
> Unlike the generic IP core, they have special requirements regarding
> enabling clocks, toggling resets, using the PHY, etc.
> 
> This is not to mention that platform snps-dw-pcie driver expects to find
> two IRQs declared, while Qualcomm platforms use just one.

Removal of fallback is ok, but the original bindings never mentioned
compatibility with snps.

> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Best regards,
Krzysztof
