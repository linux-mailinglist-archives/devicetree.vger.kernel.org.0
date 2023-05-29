Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1ECA8714CF5
	for <lists+devicetree@lfdr.de>; Mon, 29 May 2023 17:26:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229843AbjE2P0Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 May 2023 11:26:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229816AbjE2P0P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 May 2023 11:26:15 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 020C2D8
        for <devicetree@vger.kernel.org>; Mon, 29 May 2023 08:26:12 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-3f6094cb2d2so35145765e9.2
        for <devicetree@vger.kernel.org>; Mon, 29 May 2023 08:26:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685373971; x=1687965971;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ttk+47HHgNjT+sVvmGNVCYXL7lcRB3WFoxiGA8ayp8I=;
        b=xRK0LFnCzNGhVZxFAl2GwTNknvKPdqmGbvtrO2NmMPrvwXrAR5X7/W9wx7IQmVk+J8
         nfy0eu1tkZWVLZC//M+u4CWHeK6QpE5WG2Zz+5OQSRqguBKaAabPJZGxwcr3pqCsdDZE
         5OS3dMPU+DNv/DZcNLgzYF1u9NVX5emsJjaLQ4+ir8S/sCS2X2K9SmJnG/oY91Vzwq9c
         iGVucRtlCkl0yaLFUUK1Y95g6F0fojm9G8jJBI5tcX1rP5IdZ4aB0JZdHUsx0wZ+DyoC
         FvCpOHkWjdyt8f85+CvlYyEh0N6WcCXK2KqM2j8cNr1Y3HuYVZ5S4zrRWQxU22BadoVe
         u6ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685373971; x=1687965971;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ttk+47HHgNjT+sVvmGNVCYXL7lcRB3WFoxiGA8ayp8I=;
        b=ByzSMQerLXzqEu9wBBCK5XWtwfvBe4QHRVjVOtDIzVHZ/Yt9bKjePsRvNEHnHAamMc
         QfgfgnzYAcRLzhydBGNgi2/M3LPNjf9hjlXGJ/T6C6x+JBwFDCziDqx/OBR135+p2DLq
         QRWZykd4UkwqLfm9RGdbjvHjjkSd0eZ64oIkkHO0ACsJvP6H4QAxPxHuwBLHgYbkjgzG
         ZRepsrbOAg9wD4wxT/YMdlC29OGzIXNIJLDncQOvTTTRR5P/h6iikAX1RYB2FRg+x/kM
         b14UItlUZq5BnX04zsYBW/Wc0Q1Vw6NoMdAi7TFGgS9fml9+3J2z2vjiagbBkl9owQSW
         ruRA==
X-Gm-Message-State: AC+VfDxhIDRL6QQ+boH0te61t/E9qTXYqcuBy2ewLAt1+oc5kuJxPuaj
        5ftztIdczzFSeVcKedU1RCrNFkV5MiDesfGvNWGsTA==
X-Google-Smtp-Source: ACHHUZ5OLLlnbQVP0ozEqAtjo3bNE/I8EOVYtYGgJHM4w/gSNl+bCd8lb5zktEVlu0Z3GdAJUjkpnA==
X-Received: by 2002:a1c:7c0a:0:b0:3f6:ea4:a667 with SMTP id x10-20020a1c7c0a000000b003f60ea4a667mr8936728wmc.39.1685373971119;
        Mon, 29 May 2023 08:26:11 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id l10-20020a05600c27ca00b003f50d6ee334sm14557769wmb.47.2023.05.29.08.26.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 May 2023 08:26:10 -0700 (PDT)
Message-ID: <343e2e95-17ee-f5e3-61e9-7e0b793859a6@linaro.org>
Date:   Mon, 29 May 2023 16:26:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 4/6] arm64: dts: qcom: msm8916/39: Clean up MDSS labels
Content-Language: en-US
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230525-msm8916-labels-v1-0-bec0f5fb46fb@gerhold.net>
 <20230525-msm8916-labels-v1-4-bec0f5fb46fb@gerhold.net>
 <6f1954e6-e98d-6911-8721-c50082bfb1d7@linaro.org>
 <ZHS-HSgaBxMXiKy9@gerhold.net>
 <17f31258-bc38-245f-532f-fdaa1ee8ad33@linaro.org>
In-Reply-To: <17f31258-bc38-245f-532f-fdaa1ee8ad33@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/05/2023 16:24, Bryan O'Donoghue wrote:
> On 29/05/2023 16:00, Stephan Gerhold wrote:
>> Do you mean update the examples in the yaml bindings
> 
> Yep.
> 
> grep dsi0_out Documentation/* -r | grep qcom
> grep dsi0_in Documentation/* -r | grep qcom
> 
> Consider splitting this patch out and fixing up[1] Documentation/* and 
> arch/arm/boot/dts/*.dts[i] , arch/arm64/boot/dts/qcom/*.dts[i]
> 
> We may as well be consistent everywhere.
> 
> ---
> bod


[1] In a standalone series

---
bod
