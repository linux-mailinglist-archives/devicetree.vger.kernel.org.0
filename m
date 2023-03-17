Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E23A66BE4E3
	for <lists+devicetree@lfdr.de>; Fri, 17 Mar 2023 10:06:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231444AbjCQJGu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Mar 2023 05:06:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231205AbjCQJG1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Mar 2023 05:06:27 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 090829B2CD
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 02:05:29 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id cy23so17562277edb.12
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 02:05:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679043927;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DzBd7HT5FyF1nJ/VeywWx68y7xEvX1DO0Qu+XaR3Ies=;
        b=nFzHQ8e59uVOg3X5y/kmGeK5xG6QDYyZSib3GNyucs3oz+XLZI2Fi+ytZhHZ+PorXX
         AsDfbT7vtTV49SmQrY3DS8R0glPoribCUp1ydUq74Yjv5ai9XU2kBqrwbKxGY44wJk4P
         BpectOPAUXM/SyAoohmc/um6LwGj0pbGxO1lk+dLkRO34thmuNWGKkAg26g3xkqiDDXP
         oe+CqhAe8yRaHpiaiXe3/9T+2QnOrMoPvjy0V5/H4BK9jvdKZBIFbcoiM/8HR4JbM6pN
         H/HITyJ8CR6jYq9JdVj+3JGZ7yfm9OVaKyGSHqEqxluLJLEFTdRB7+gQcCqP8mHTIEKh
         vA6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679043927;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DzBd7HT5FyF1nJ/VeywWx68y7xEvX1DO0Qu+XaR3Ies=;
        b=IDLwvhb9tjzLD2PbBhEdJ6lOBFwv4eU8k3bHvkiqwdYLLCn7PZ87cSciU0y+F2KnDx
         SaV96ufG/ClTaNnoO9VPfpIsyt+PDX282/90cVYgCxczhe7SULZU8E52zvs60BmS2m9g
         Q7TNWmBv8b0DnR1LFAdEEtfAP4fHh3DgwZh6mR3I2t25c7guULh/Sv/IbNae3WQoVKuU
         NKPUZYgK8vNLI8ZFd09Efy5vwFXfDT1fPmlyadpLSkrXwFTRXv6HwpsFv9y9fa0sqfKR
         nknhNsxcXmb/FdeEdwa+L3KLqWJ6Y0/CvZEoxcxqTZiy+JFEHLNWLJo/JNksd/DKfTz6
         8eJg==
X-Gm-Message-State: AO0yUKU7AntkEx/GptHlxoxkFJZ9O4NvdPtNRNZ+JZLcE0aoVTVipdpK
        XLl91FXPB6ccuWR4h+tSrSABPA==
X-Google-Smtp-Source: AK7set+3ApSYPWrNrDJMa5s0BnGt06KsinVyg9V6q9n4BTTzQ3csEXPJyQOI88XIQvE/hDMHbuYUpw==
X-Received: by 2002:a17:906:950b:b0:8b1:77bf:3bdd with SMTP id u11-20020a170906950b00b008b177bf3bddmr14005064ejx.36.1679043927574;
        Fri, 17 Mar 2023 02:05:27 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:848a:1971:93e0:b465? ([2a02:810d:15c0:828:848a:1971:93e0:b465])
        by smtp.gmail.com with ESMTPSA id ce6-20020a170906b24600b0092101bb66desm723105ejb.147.2023.03.17.02.05.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Mar 2023 02:05:27 -0700 (PDT)
Message-ID: <7060560d-eb09-4400-7a68-496a53e5da33@linaro.org>
Date:   Fri, 17 Mar 2023 10:05:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH V2 1/3] dt-bindings: arm: ti: Add BeaglePlay
Content-Language: en-US
To:     Nishanth Menon <nm@ti.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Tero Kristo <kristo@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Julien Panis <jpanis@baylibre.com>, Bryan Brattlof <bb@ti.com>,
        Andrew Davis <afd@ti.com>, Jason Kridner <jkridner@gmail.com>,
        Robert Nelson <robertcnelson@gmail.com>
References: <20230316152143.2438928-1-nm@ti.com>
 <20230316152143.2438928-2-nm@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230316152143.2438928-2-nm@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/03/2023 16:21, Nishanth Menon wrote:
> From: Robert Nelson <robertcnelson@gmail.com>
> 
> This board is based on ti,am625
> 
> https://beagleplay.org/
> https://git.beagleboard.org/beagleplay/beagleplay
> 
> Signed-off-by: Robert Nelson <robertcnelson@gmail.com>
> Co-developed-by: Nishanth Menon <nm@ti.com>
> Signed-off-by: Nishanth Menon <nm@ti.com>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

