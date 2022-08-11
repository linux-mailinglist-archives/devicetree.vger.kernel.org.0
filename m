Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 36EB258F785
	for <lists+devicetree@lfdr.de>; Thu, 11 Aug 2022 08:22:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234005AbiHKGV7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Aug 2022 02:21:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234012AbiHKGV7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Aug 2022 02:21:59 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B3228A6EF
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 23:21:58 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id z20so18343758ljq.3
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 23:21:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=8hursMRXMAUUQjiQSUj1tnEyeQwqGDBpoW+39gp5mPg=;
        b=BfgQnUDurI1+TRka7634zdVW5kG0nSusGWy1dxJFfL56jhD1lQUWBkv8ImBSIMI500
         j1SxrhgzQDbbmc76vh/RjUUTg3bDkAy/Y15M0OwMjgF1mm6X0MHtFAYquZx21ggVXgQq
         vgy/quPIAgLfY0QTt4NI3QJv9rHZrrDrEm+34KE3rJmwgmy6zOt+nd1TUK3OPCZmZuJP
         0PYoktJsqDfpsUCfHhQFCPBEubFmhs8wDkXNlafgeLSMNDo037oZIw22dMAjaahATmmR
         GmM0XA9bfv5lG7pAZRYC5BgvmW0Gr+Tfd0idLtqg9gJFcPKmD9HAwZNuzH02jVGDF0Zp
         H9KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=8hursMRXMAUUQjiQSUj1tnEyeQwqGDBpoW+39gp5mPg=;
        b=q+TbBCAiP8+kWgpH4cRC1TVlYZxHx+6UFujOaXPgb8W1DNgNiuiJX5DMJlSXdO0Y+U
         9+7srF8FF/Jsj9OCnPGOPUDROLHri+5uocH5RBk22VaJqaPCGEsdXrlxEyVJeMg1cB/Y
         3FNWTM8hgm+SuR6LWZhPN08fCHVoLytMPlz9Jm9TCppPZCTckequL6c2/QLoDsGZtOTN
         pxLbTD+VumGDC28avicvnkK3y7EpBX15Pr+zFJ1jK2HEFqtyiwnRQ+phBzt4a8Vk5Obd
         cPlnv9nZUdFxlsWtUpUd2fuRENHxl2D72l385o7gaS3NGsXS6J1QbCU/aEGMVf93lGbA
         CInw==
X-Gm-Message-State: ACgBeo1ZTaHAtiU1wqoQRhgbAxfPxqSW68dQh64dVM5uCWXQiEg3ItIS
        ntufszyadoEaWo9kKC5GcY/tKQ==
X-Google-Smtp-Source: AA6agR720MOWvhibrkPPJh59VRmmw03TaKDN9hUt4FC2DPrhGE67ihwWpCEX4HtMhLVhjDlq1ZtQfg==
X-Received: by 2002:a2e:a58e:0:b0:25f:d8c5:3898 with SMTP id m14-20020a2ea58e000000b0025fd8c53898mr5715269ljp.302.1660198917599;
        Wed, 10 Aug 2022 23:21:57 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id t7-20020a2e9d07000000b0025e0c352465sm681240lji.82.2022.08.10.23.21.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Aug 2022 23:21:56 -0700 (PDT)
Message-ID: <d602099c-d054-d5d9-53dc-b7900f6567f8@linaro.org>
Date:   Thu, 11 Aug 2022 09:21:55 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH] dt-bindings: chrome: google,cros-ec-type: restrict
 allowed properties
Content-Language: en-US
To:     Prashant Malani <pmalani@chromium.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        devicetree@vger.kernel.org, chrome-platform@lists.linux.dev,
        linux-kernel@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>
References: <20220810143613.482724-1-krzysztof.kozlowski@linaro.org>
 <YvP6u8SRHswA1Iva@chromium.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <YvP6u8SRHswA1Iva@chromium.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/08/2022 21:36, Prashant Malani wrote:
> Hi Krzysztof,
> 
> On Aug 10 17:36, Krzysztof Kozlowski wrote:
>> Describe exactly what properties are allowed in Google Chrome OS EC Type
>> C port, so the schema can properly validate the DTS.  Existing DTS
>> defines always connectors with unit addresses, not a sole "connector"
>> child.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Micro-nit: the tag in the commit message is missing a trailing "c" in
> "cros-ec-typec". Other than that,

Thanks.

> 
> Acked-by: Prashant Malani <pmalani@chromium.org>


Best regards,
Krzysztof
