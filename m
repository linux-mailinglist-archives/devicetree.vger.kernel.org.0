Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A3CB660F9A2
	for <lists+devicetree@lfdr.de>; Thu, 27 Oct 2022 15:50:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236263AbiJ0NuR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 09:50:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234915AbiJ0NuQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 09:50:16 -0400
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com [IPv6:2607:f8b0:4864:20::835])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33C312F678
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 06:50:14 -0700 (PDT)
Received: by mail-qt1-x835.google.com with SMTP id cr19so1147743qtb.0
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 06:50:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D3pXCVJKhd+ms+BqydS25AWP0xoxdy1/2V2ykBkMA0w=;
        b=EmGxmajG4Tg5RARSSbCcY/dgD0AN31W+M0PsfxY3NQHalnLhkU2UHsGipH51XzuMB5
         xKAHmkB/hGKPq51gH/JUHbq3YudO6VcVADIKMCHyOSYAGfLSdhFM5q1Fp1Zi4g49lmKA
         P4g6jIogOwfXnHbAG+ERk6v8iKZ7wRIebH08lKrKgdY+AaWUhhNSD0Uvg7JmW0RGwlsO
         eSY96WdtP3KznVwjXXEUeSeq+KxTPcYutaImscbW44+A6+ItjjYlchDVfxJVDBkcvMo6
         kScnjrQhZCPHn+NEtca407wI8mHrmt2f5/MJuW7An/5C57MjBlo+ExJZyz0k0dH0Y/Wi
         o0Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D3pXCVJKhd+ms+BqydS25AWP0xoxdy1/2V2ykBkMA0w=;
        b=Uw/iRU8CmFSDkyFVGJAadT/eFeCSMqvB8y5gzpafTrxnjRk61pH3blH/ZKh4JJ2nV7
         C/hnSRgyzFo+5QVJ1j6+RY/6dXAcV8cqHAZmD3YWTc5axjFJLZEXysrDgzpifgAm587x
         UYItYfz2xTjoJoelfmApY655VZP6rLpQh3Y/kzQ05nxlr3vcozbnu0ddGsamOqaeigJX
         8jSguzwYSv7ALkXdkmjfD64+ZDWkK/XtThSGOEDA4htJUPaLNsnYa9el6/SMs9vHgzex
         9f2p49lImOHfJ5j4saWgQI7TrLcPAMSaRyz27iiz+BQtHwcQ4gJ1n1w7gplI5aXoxpkT
         hx6A==
X-Gm-Message-State: ACrzQf0PEL25ZcNxqWUufHffRFrzd+YpNbRTJByW6ABSUr7ZeTiqsduV
        DKFs2Tc0b9SWxicogKkW/kQm49Uzd40ecQ==
X-Google-Smtp-Source: AMsMyM41cr1GYKfDHX93ERkxB4phIGT+9anDjASKQj/RnFXBFvMUGzL60wXNnkaCKtLYVsrVicqqXQ==
X-Received: by 2002:a05:622a:1754:b0:3a4:f21f:84fb with SMTP id l20-20020a05622a175400b003a4f21f84fbmr6032895qtk.618.1666878613723;
        Thu, 27 Oct 2022 06:50:13 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id u10-20020a05620a430a00b006eeb51bb33dsm1000342qko.78.2022.10.27.06.50.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 06:50:12 -0700 (PDT)
Message-ID: <e8845fb0-66d1-4daa-8aa1-efd66cb1416d@linaro.org>
Date:   Thu, 27 Oct 2022 09:50:11 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 03/11] arm64: dts: qcom: sc8280xp-pmics: Add thermal zones
 for PM8280_{1/2} PMICs
Content-Language: en-US
To:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        andersson@kernel.org
Cc:     konrad.dybcio@somainline.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, johan+linaro@kernel.org,
        quic_jprakash@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221027063006.9056-1-manivannan.sadhasivam@linaro.org>
 <20221027063006.9056-4-manivannan.sadhasivam@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221027063006.9056-4-manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset=UTF-8
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

On 27/10/2022 02:29, Manivannan Sadhasivam wrote:
> Add thermal zones for the PM8280_{1/2} PMICs by using the temperature
> alarm blocks as the thermal sensors. Temperature trip points are
> inheried from PM8350 PMIC.

inherited

> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---

With above:
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

