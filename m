Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F6776D907E
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 09:35:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235863AbjDFHfC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 03:35:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234792AbjDFHfB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 03:35:01 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2750F2112
        for <devicetree@vger.kernel.org>; Thu,  6 Apr 2023 00:35:00 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id ek18so147197279edb.6
        for <devicetree@vger.kernel.org>; Thu, 06 Apr 2023 00:35:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680766498;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mWV91vGp3KB8DWBxH5tjuT3y7/WaE8z67Uw3Mj6Ls1M=;
        b=UlhekyO+WGUpfIQ+1t1kUBU6d+nEeRRQn/NxwMdOWBzvg1wjajZ6tind6tuWWjnAxk
         Jv/icsKQDgKtcc7HmvYNyfthRvF52ntmGNwjRzvDdfddetccu51kJBtIEVjFI7gyEOYd
         H27IMXeb3R0xk3JRy2mqcZfI6hRYspSRYPX9k7rC7QpX5NwzyjuK2VybfYBZlzpMSRdq
         GoR9BFlEADC4i5YXrfYJlHfvfnRCMsIr1FDuMa0fVhVVNkZw9Luxr4y5TjEN7uVsk43W
         hUMBJ1auVK+PH00xgQUF452s9/g/tQXPhcw/CfIGHnfm35pQSL0edEQ3pTwN6nuTHuxV
         HeOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680766498;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mWV91vGp3KB8DWBxH5tjuT3y7/WaE8z67Uw3Mj6Ls1M=;
        b=d6kZEIUPWi0br+D1t85dFG4flF+/VwRQHmlPmeAl+Z4xUNNQMjLOdaTuftagp0qlkm
         4exEzAAf7uPBTk6GNhThZs32+NpAol02hitUKJC6bbkLSdIhDcQsd/MaCQ7frWOusFER
         6HlGpS5xCVBuxV1YDFWhxibN8eDyOWufIsFyh+3R57P9KBnN48ggUCmCyzAUJMwHRCoH
         MPgv7NK4v2siDHoNc4adFzgPZyoTerzi0tIRclCKSEHjeVDpZLpwRgRoTPMR6tLjt2E2
         iJbn7gjw1vHTBkXYoGbbRucwPCB9SZUzkZsJ0OsK0vCYXQUjREctZEawH8oxBacJdEM9
         I+AA==
X-Gm-Message-State: AAQBX9ezkuzQwbrmhilNwiMzrwlGzuep3WRks/+7YYJFqZojZam/j1Ek
        8nGxMYz3lP5vxaTzjaIMx2r3Jg==
X-Google-Smtp-Source: AKy350YpXuEE3IPEGZ9zK9uApXgid2UbUxNFkWO5eN4ck7RMakTxtCoifo/0kKqOo6GsAw2iq7rpQQ==
X-Received: by 2002:a17:906:9be0:b0:945:5510:2b9f with SMTP id de32-20020a1709069be000b0094555102b9fmr5968705ejc.54.1680766498650;
        Thu, 06 Apr 2023 00:34:58 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:49e6:bb8c:a05b:c4ed? ([2a02:810d:15c0:828:49e6:bb8c:a05b:c4ed])
        by smtp.gmail.com with ESMTPSA id xa16-20020a170907b9d000b00948aae5e3d3sm421074ejc.184.2023.04.06.00.34.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Apr 2023 00:34:58 -0700 (PDT)
Message-ID: <ea0ca421-3fa6-9562-c6ff-399830934931@linaro.org>
Date:   Thu, 6 Apr 2023 09:34:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 0/2] Initial RTD1319 SoC and Realtek PymParticle EVB
 support
Content-Language: en-US
To:     =?UTF-8?B?Q1lfSHVhbmdb6buD6Ymm5pmPXQ==?= <cy.huang@realtek.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        =?UTF-8?B?SmFtZXMgVGFpIFvmiLTlv5fls7Bd?= <james.tai@realtek.com>,
        =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-realtek-soc@lists.infradead.org" 
        <linux-realtek-soc@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <5d644994dd39447cba7ba7027cc856b0@realtek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <5d644994dd39447cba7ba7027cc856b0@realtek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.6 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/04/2023 09:18, CY_Huang[黃鉦晏] wrote:
> Hi Krzysztof,
> 
> This series adds Device Trees for the Realtek RTD1319 SoC and Realtek's
> PymParticle EVB.
> 

Your email threading is broken (does not exist).

Best regards,
Krzysztof

