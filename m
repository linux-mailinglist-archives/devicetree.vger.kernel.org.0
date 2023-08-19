Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 903D77817F2
	for <lists+devicetree@lfdr.de>; Sat, 19 Aug 2023 09:09:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344010AbjHSHJR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 19 Aug 2023 03:09:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343980AbjHSHJJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 19 Aug 2023 03:09:09 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D85A23C24
        for <devicetree@vger.kernel.org>; Sat, 19 Aug 2023 00:09:06 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-99c4923195dso205105666b.2
        for <devicetree@vger.kernel.org>; Sat, 19 Aug 2023 00:09:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692428945; x=1693033745;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iNZbeqSVhasfGUErtV5q61IvmoorlC+cVrGMEvE4cm0=;
        b=DC9Aovqc4ZYNUzbqRgn3hWorZIeZxG2o/E+MmADA2nbVL0KHnCUJyPeQXTXpuqA2Xz
         oZEWmSlNFfDCvxJZLQ+O/c47xTvamXrlEQKMQegL2MeFbNINIraW0cEG5/y92qSv1HCx
         dgVEAlTx1hXP/GJITC9Q6m6HUvGqrLejCtHJgvB+DQ2FLqXTuR1uH5pNK6i3XMGVUWqf
         LhHsECatVITe/9LtoFMCBXAiD2AxJ23fbjUPDzntkXEvwwVREhLS37XDW00Nl+Q/sqN2
         UX66eemUGqM3QKjn0kkuwcfofPAbb2y60SaL7B2Hpf26Dgrc62+JzRvDWunFMIqcxnvP
         lo4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692428945; x=1693033745;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iNZbeqSVhasfGUErtV5q61IvmoorlC+cVrGMEvE4cm0=;
        b=TB0o3eFGAiZm+tKizDIkm537jy3k0ZD43NPUgC8TOhk44ES2m11PVFwq8Oo1Tzdn8W
         /hFbBOSxaYv9z0iI4vEz5t1t67RF1LAaX94pxW1xyzld55DlZsuBcGDLW+YViRIH5m0q
         e46mvYEi3I1CJfQsO8ts57XPgfy4gbNZXJC0x7CMNsoPJChgSqPlkuk0SiNhx0g3guBY
         RbeQjPlFmhY1YCC6ep1JpBZEySMVuFvz7IYAmchoMstYfxKI77t35vJ7YOnRK8THQREi
         Y+1ok8GMhjLvkyqZGk89PmNuefffjV0GIUyjEIjKGI4fiACAS43nuQY5hKe3MWFXcuPt
         ZleA==
X-Gm-Message-State: AOJu0YyWoi6ffafyQU9AHkBuJ5m3UcpgUZMMMHSvpv+BC8B5XnJM9EFI
        Hs7x9h+tPPhiP2LRytCioXdjZg==
X-Google-Smtp-Source: AGHT+IGqWVxgB6V8BKoeEAcFDjA1ZAfZLJm/2VnM41Up1zXYMnMwQUUXoTvaEt7h1dSKvcY9QNd5Hg==
X-Received: by 2002:a17:907:8194:b0:98e:2097:f23e with SMTP id iy20-20020a170907819400b0098e2097f23emr761355ejc.77.1692428945413;
        Sat, 19 Aug 2023 00:09:05 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id t23-20020a170906269700b00992b50fbbe9sm2206142ejc.90.2023.08.19.00.09.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Aug 2023 00:09:04 -0700 (PDT)
Message-ID: <f2be5c54-b98d-d4eb-2107-6364701edca9@linaro.org>
Date:   Sat, 19 Aug 2023 09:09:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH] dt-bindings: usb: Add binding for ti,tps25750
To:     Abdel Alkuor <alkuor@gmail.com>
Cc:     gregkh@linuxfoundation.org, robh+dt@kernel.org,
        conor+dt@kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        abdelalkuor@geotab.com
References: <20230817235212.441254-1-alkuor@gmail.com>
 <eba26f0e-40dd-3661-b089-bc34c9426000@linaro.org> <ZN+PzWuiLRsSVcmU@abdel>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <ZN+PzWuiLRsSVcmU@abdel>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/08/2023 17:35, Abdel Alkuor wrote:
> On Fri, Aug 18, 2023 at 11:31:35AM +0200, Krzysztof Kozlowski wrote:
>> Where is any user of it? DTS, driver or 3rd party upstream open-source
>> project?
>>
> Yes, for Geotab. We are working on bringing up a new BSP and we have tps25750
> which doesn't have a driver in Linux yet. We developed the driver but I thought
> I needed to get the dt-bindings accepted first before sending the patch for
> the driver.
> 
> Sorry, this is my first time contributing to Linux. Maybe this question
> was asked before but for some reason I couldn't find it.
> 
> What is usually the process? Should I upload the driver too?

Yes, please upload in one patchset, in following order:
1. This bindings patch
2. Driver patch


Best regards,
Krzysztof

