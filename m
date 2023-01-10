Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A0874663C28
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 10:05:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230401AbjAJJFZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 04:05:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234527AbjAJJE3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 04:04:29 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4565186F4
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 01:03:05 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id l26so8238458wme.5
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 01:03:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eCbWcTKCGm5qD2fgvuwpjbr3RuwzMsWs2+w6U8zAXpU=;
        b=KOkvecqlb7PnPQTXhkYeWs4E6gLQAT6nK39f/LeQPFTS5UWuwL/ad1uCwrVBwrUzpt
         dIJEr3JERtc6uPjO61oFF2tAd5yx0uDU1z6f46xiOR7rcnX4kLITntzpqZ8/YRROuscK
         q6ENVsEyxniEGqPSayerXqrasCVMDulYxYDRabCocfi7etjsBJv6fSkZUs6dIVb92UNl
         cBgcQyfqypy1eH6alU6Ny/ILoUPo4LTN6zHs+zjlbFI7cgllKJYwWzAkaEkVvjJWjU7E
         9gvdi6GuzBmutHKiBj2Sh25dSMwh0zgtNWE0OKphc53dNKlA9l+wh1L6MCaxgvcXgWLL
         xugg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eCbWcTKCGm5qD2fgvuwpjbr3RuwzMsWs2+w6U8zAXpU=;
        b=XHsPUVEyB2zwS39CWwnFyLzb6wS2AWItrCueWRY3tabKc5ml36cjLNQHPwzRKXZwUx
         eLKceIhIdvFKvq3kYRxATluqSaNWCFVgnDZIXmTv40XbtT1TtoinoravjgeZnLPaWrG6
         4AAcC8ofUQy7hpknqLHYyspq18bXTuTlpd2nM5WFDWtOVcNmhmkMLpSO1lxbb+W/DHSJ
         L+hcVkg6kp2L+phoHyxl3F9bs0l02KqnDgWKBtLlqqV1Qr/jxhxyaJ9143ADuHYvWJmr
         xYKm9PCGM2+AZvLqQGfFx9VnzBMofR4gHVI0KXqthcgeCTJVyzkjipHuLdhkunu0lRX/
         Fgjw==
X-Gm-Message-State: AFqh2kpa33pC0PskVKB2rcNDOBJ4UGB4VOnUtO6AEnuyZla+qQcS5mGL
        glRgPp5vDXyqY5lXramNpmtBWA==
X-Google-Smtp-Source: AMrXdXtU8mEiDtLQJ0tNMJ3nCmqtx3wjgcRMtOL0TOLfjM6kgdK5lrzqrlCe3CMFMsrtC0a44R+1Kw==
X-Received: by 2002:a05:600c:4e07:b0:3d3:5319:b6d3 with SMTP id b7-20020a05600c4e0700b003d35319b6d3mr48793808wmq.38.1673341384307;
        Tue, 10 Jan 2023 01:03:04 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id a11-20020a5d508b000000b002779dab8d85sm10519618wrt.8.2023.01.10.01.03.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jan 2023 01:03:03 -0800 (PST)
Message-ID: <786a8b67-272e-2c54-2af1-3fd60ab70a89@linaro.org>
Date:   Tue, 10 Jan 2023 10:03:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2] arm64: dts: qcom: sdm845: make DP node follow the
 schema
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20230110042126.702147-1-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230110042126.702147-1-dmitry.baryshkov@linaro.org>
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

On 10/01/2023 05:21, Dmitry Baryshkov wrote:
> Drop the #clock-cells (probably a leftover from the times before the DP
> PHY split)
> 
> Fixes: eaac4e55a6f4 ("arm64: dts: qcom: sdm845: add displayport node")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

