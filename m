Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DDE5968EB85
	for <lists+devicetree@lfdr.de>; Wed,  8 Feb 2023 10:35:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229724AbjBHJfT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Feb 2023 04:35:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229740AbjBHJfO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Feb 2023 04:35:14 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BBE8F75F
        for <devicetree@vger.kernel.org>; Wed,  8 Feb 2023 01:34:57 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id h3so8248358wrp.10
        for <devicetree@vger.kernel.org>; Wed, 08 Feb 2023 01:34:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Y4bZDzVuR8Me/WxngPWog91qqgFIe75LT50el4aHpVc=;
        b=RfGikjQLX/00EQxnZD0ATTPgkbth9KvnLvNikXrA5CllXeu7aX7e4MnW9B9NotqMAE
         /g051GgCGxva5v9NSDf+OfRmDIBrayQKapko3of33bajot1Z9qbPabzusfbhWP0FvXvp
         dFPNgUpiY3Rv4uR2oJLrnUaVU4YoQftGVifqovmB/7WF/qentm5yheY5T2TUW/KPFhHn
         kdt2dpH6jbrgbyRG8HPb9Ls1ygQTWhJih7LAiJnd28NtQZYD98Z2pLtGOoz++o25V9Cp
         eKFRUeHR4OQLsTZ4tBhQ4ljtFoui5xoIS2tl8quvMza7puRjZdW+r5mkBmMiYSk7Illz
         1sFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y4bZDzVuR8Me/WxngPWog91qqgFIe75LT50el4aHpVc=;
        b=AXYQEdxRSgZ4UvWGgEuzCYS/C34twkxp6rJUX18GNBXSGpXbAHNS6T60MYaAMvs894
         A/qlEG2njMn7xBHPPv7//mDXaZR/SGDSdPqMgIOY3GnAJ2jbXekZAgjF2tRepn3x528N
         wWwmc0wZfi+Qu0F+oMPYl24jqfnFvrJQBvzEm4A6vBX1Freyi4PAjDolWg7GPOtqaNqz
         IyoFjtmSw23pRuGCWuXDAzLrcyOIc0AnAee0JPvYI4uC6G8us2h50qhQlxnykCKWQJ81
         h4saD5MjUUpCjluXYcH1kAzpC6srsLeeyJftJPUgiBGNRbeGjwg+BMBjj6DCj+92yauz
         Qd6w==
X-Gm-Message-State: AO0yUKUISeE3pKM6mgQTQjrojUEchELF5Gyfq5scBYeN2AQEzK+FPMtz
        x9mH7kVOhurdxFF/iCATjx1E5Q==
X-Google-Smtp-Source: AK7set8o9WP1nPPsi/wK08C2W8gBquf/0OvqI8oSV6ZOocWlQSIr56gp5ZYlTXP9QUe1q62lsHMDLg==
X-Received: by 2002:adf:f68b:0:b0:2c3:e3ec:8142 with SMTP id v11-20020adff68b000000b002c3e3ec8142mr5409043wrp.54.1675848895876;
        Wed, 08 Feb 2023 01:34:55 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id s7-20020adfeb07000000b002bff1de8d4bsm13128945wrn.49.2023.02.08.01.34.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Feb 2023 01:34:55 -0800 (PST)
Message-ID: <18ab911f-6ef3-f75e-c4cc-3457d5c6bc74@linaro.org>
Date:   Wed, 8 Feb 2023 10:34:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 4/4] ASoC: dt-bindings: irondevice,sma1303: Rework
 binding and add missing properties
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Kiseok Jo <kiseok.jo@irondevice.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org
References: <20230208092420.5037-5-kiseok.jo@irondevice.com>
 <20230208092420.5037-8-kiseok.jo@irondevice.com>
 <481a2a2d-bf2e-b707-1a32-8199eeda78a3@linaro.org>
In-Reply-To: <481a2a2d-bf2e-b707-1a32-8199eeda78a3@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/02/2023 10:34, Krzysztof Kozlowski wrote:
> On 08/02/2023 10:24, Kiseok Jo wrote:
>> Add the missing properties as compatible, reg, sound-dai-cells.
>> And then check this file using 'make dt_binding_check'.
>>
>> Signed-off-by: Kiseok Jo <kiseok.jo@irondevice.com>
>> ---
>>  .../bindings/sound/irondevice,sma1303.yaml    | 23 ++++++++++++++++---
> 
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Wait, no, I see you added some more undocumented properties - at least
clk is new. Didn't we learn anything from first submission errors?

Best regards,
Krzysztof

