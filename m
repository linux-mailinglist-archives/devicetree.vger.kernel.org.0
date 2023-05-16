Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2CB987045B6
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 09:01:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230378AbjEPHB6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 03:01:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230418AbjEPHBp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 03:01:45 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 685DD1BD0
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 00:01:39 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-50bd37ca954so4205193a12.0
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 00:01:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684220498; x=1686812498;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oWSC2UwX8liE4S0vKrYK9T6F4NTqOvibNevIJEGFGVU=;
        b=lqNpLr0pH5cDHUeoT8t79b8L6CLXiJrEOAI9bgIpLS4JEARMKp5NtFpTMhIYiwpfWh
         r0Hmh6f4DlxiDSSgEd/6Q2+RO0VeBdom52lLHbgsLZvwFzrra5UsnZ+ob3eMlUKj0aYQ
         T+wFlTrflz3h69KCdoTO8Jbj2RE009FlC2LSj0ygiXcIsdSm8jlpwjtHWJ1/dZLHNI4q
         U1zP0wdTlr0tFS4xHBdYB5UQD6qiHTVzxyIkJ2ink2snFlGh4y4u4Xt1054hEoxVK6M1
         3rmrHiR+847fSr4zRRUKudwCmOGdQNZyIRI0315oS428+90iW+dk9Y2cdPV3wrwWJXYf
         +COA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684220498; x=1686812498;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oWSC2UwX8liE4S0vKrYK9T6F4NTqOvibNevIJEGFGVU=;
        b=S49m6KV3+Q/L1JBUpaPlwC4ERN5+84XxGxyThrbw9C8A6ekUWQ97ooE2loG22wDd0f
         7nh/ukTdy1ivY8IZViXqYWbKfqwNal6+SZM6/ucfy6CWvLY6qRu+arOiNE1MfBuqWApa
         gqQ4JyqiP8LfrGqOk0Mchl0BPA+8DMU/ZEBlk/+BaNWxb/vkjU8uQYZ2d5tIkjFHlSB8
         wpora4BmB3esrozMZPRIuYyyjrne0DIdHLlCS5zShWCFJDWxXlls5Zm+6B8gWUHAU/q7
         eakunegMlpBgU5IcFBtypb7r0oqX5qULIIrjT/nCqjcZQ3CLOoKpVDU06+lDKprQUaPH
         6nZQ==
X-Gm-Message-State: AC+VfDzIzhPNgHYO/yxlijXcbWpwMuHYSilU6i7+Z/dZQSZ8UMSKz1Li
        tZ+vJmw5cLyEIxSqlmqIoIBlWg==
X-Google-Smtp-Source: ACHHUZ5btIh6jnjGuaCYsGe/P9uwJa4VbSEI+T7Gyu/HTJbppRbPpkW7lefcQvgEl4DUufq+qRoWvw==
X-Received: by 2002:a17:907:318a:b0:965:ddb1:99d3 with SMTP id xe10-20020a170907318a00b00965ddb199d3mr27954776ejb.14.1684220497865;
        Tue, 16 May 2023 00:01:37 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:4d4a:9b97:62e:1439? ([2a02:810d:15c0:828:4d4a:9b97:62e:1439])
        by smtp.gmail.com with ESMTPSA id hb38-20020a170907162600b009661cf921b4sm10315338ejc.202.2023.05.16.00.01.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 May 2023 00:01:37 -0700 (PDT)
Message-ID: <912d7db5-3bb2-cbc6-ed98-eb1dd40f9fbd@linaro.org>
Date:   Tue, 16 May 2023 09:01:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [RESEND,PATCH 1/3] arm64: dts: qcom: sm8250-xiaomi-elish-boe: fix
 panel compatible
To:     Jianhua Lu <lujianhua000@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
References: <20230516062657.28616-1-lujianhua000@gmail.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230516062657.28616-1-lujianhua000@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/05/2023 08:26, Jianhua Lu wrote:
> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> The bindings expect "novatek,nt36523" fallback in the panel compatible:
> 
>   sm8250-xiaomi-elish-boe.dtb: panel@0: compatible: ['xiaomi,elish-boe-nt36523'] is too shor
> 
> Fixes: 51c4c2bd6f31 ("arm64: dts: qcom: sm8250-xiaomi-elish-boe: Add mdss and dsi panel")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Jianhua Lu <lujianhua000@gmail.com>

I think there is no need to resend my patches. They are marked in
patchwork. Unless I am not responsive to something, please rather avoid
doing that.

Best regards,
Krzysztof

