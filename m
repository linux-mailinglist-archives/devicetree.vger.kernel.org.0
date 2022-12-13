Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 36E4A64B7DE
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 15:54:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235839AbiLMOyX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 09:54:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235248AbiLMOyO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 09:54:14 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A23842622
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 06:54:12 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id p8so5268095lfu.11
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 06:54:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BVR1970k+osJav+KmX+NdOXUmXRch+KnBKh6B/puQ7g=;
        b=Vum6l67659PN77J8xJmKBxF+l69Gus+XL+TyOFYBlZjmKVG34H2q4Va77ZCXY3OltB
         wvTC2VWybymKlQwe6EbYL2eVawz4o5J75hbG/YVr0beeHi5kHtAGVFTshbFRxe53MEjf
         8bqFzCkdmwk2kEYueWpFgK2KTEP+/8JUvh8nSEchx+Q9cwLdHHI6RZbrjYPfQsXiScPs
         WstQcy8aBYAZaJcibAa/4xRLRMcf1LeSYnuFGMiNrAyJgN8tbK9NEa3PQsEdWejKTBhr
         EG+aao9QvTL/Us4AEJXwIIzNCgzNfB2VU+INMqznmnhWmqEoqUEscW9wyHWmnAQfsGTB
         x8hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BVR1970k+osJav+KmX+NdOXUmXRch+KnBKh6B/puQ7g=;
        b=ckeiGOiKIu7vkE8aJKbDZIXxy9mNi6n2ExkfABKZ+baaJJDOjHgwlExdzAkZGoVa3k
         BdCmjW27GFGoqptpqeMiP+b2E4SWOUvozYzTYN1FI/EVpfH5vg5tiThsVmPHi5yUMmHB
         FH46WaooRZr5RH76qIn6lL6AWQdQjWxqxnOlK2Pdy7faCt4b/2AsG8Ve3tlG/5Z5/pOq
         sEbOGtnnP+/UeittOjNR0g+NlyNr4J6wXrE3sDsQ1IPFwITVryVa+lmjJVKrJgJu4EQo
         Va4nXN8nFvEUH7Ia4aObUY02OmrSlWqDZZCro0CxQPByK+rNDKSa5Pefyv7iyoamzjwN
         Ptxg==
X-Gm-Message-State: ANoB5pkZqSJUwBejEHStotgJtv8f1kk85W3hRvU3UxF4BLsUY45Av/sv
        SoVc7jk+qs50Hjl2hNq8p5zYwA==
X-Google-Smtp-Source: AA0mqf7i5N19z2EwwLP1FiBX7MBo+1NEYZeyq8YUr3q/+CBD0JvTKRQVA6yGfSUSZjnI1AW+s6W8jw==
X-Received: by 2002:a05:6512:401d:b0:4b6:edac:7168 with SMTP id br29-20020a056512401d00b004b6edac7168mr2541395lfb.39.1670943251058;
        Tue, 13 Dec 2022 06:54:11 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id v7-20020a056512348700b004a2511b8224sm399383lfr.103.2022.12.13.06.54.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Dec 2022 06:54:10 -0800 (PST)
Message-ID: <6a434a50-886d-cab1-2f65-7df3e7386472@linaro.org>
Date:   Tue, 13 Dec 2022 15:54:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v3 06/17] dt-bindings: thermal: Fix node descriptions in
 uniphier-thermal example
Content-Language: en-US
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Masami Hiramatsu <mhiramat@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221213082449.2721-1-hayashi.kunihiko@socionext.com>
 <20221213082449.2721-7-hayashi.kunihiko@socionext.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221213082449.2721-7-hayashi.kunihiko@socionext.com>
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

On 13/12/2022 09:24, Kunihiko Hayashi wrote:
> Prior to adding dt-bindings for SoC-dependent controllers, rename the
> thermal node and its parent node to the generic names in the example.
> 
> And drop a parent node of the thermal-sensor  as it is not directly

Drop double space in "thermal-sensor  as" above

With this:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

