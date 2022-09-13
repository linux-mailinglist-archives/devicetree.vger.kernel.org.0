Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 781CF5B6A9C
	for <lists+devicetree@lfdr.de>; Tue, 13 Sep 2022 11:24:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231378AbiIMJYE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Sep 2022 05:24:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230526AbiIMJYD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Sep 2022 05:24:03 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59A6040E23
        for <devicetree@vger.kernel.org>; Tue, 13 Sep 2022 02:24:02 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id n23-20020a7bc5d7000000b003a62f19b453so12970543wmk.3
        for <devicetree@vger.kernel.org>; Tue, 13 Sep 2022 02:24:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=Z1xC0W4hin+pRPCZPd6aCVe3bFPCOSbaavZwwbQ92NU=;
        b=ZLyA097rO7m9R29VVxGS1LQdv1f2llkfNYcNRH4q4rjcN7JpZJdACp+mS7jftrii++
         +MU3EPYiEqbb/qVL3lUCNFYkCZ2elppzjyydX8EGZ5EYdNuFpOlNUp61afI8POD5Obb1
         adhZ8WsmesMgTYKZl23dsU+FVN5VtXIaCaTF9/nYU/D7ZSV6PX1+Oxe4pgw2rHJwcC8A
         ajlt4rES0tJkgc76z7nQ4MBUUu2+3r+AKqSjmcL4AN7n16InMEylzjuUnX0NhtsGMpUv
         Ddam8Rs8HxWt6MfY25qVNsQhDJDFKnUIkB2qk9FN1OJZF/MInRRitvco9piM+PM7AE/t
         H85Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=Z1xC0W4hin+pRPCZPd6aCVe3bFPCOSbaavZwwbQ92NU=;
        b=Mp5gRZqsthKlScJccppVJDL/6fMkgmtp5f8E+mJKbnmFhOWO2aKr8my8ie1MrB6VGr
         vPMy33kDjGoUPAAvtn6ms9WMsGmHfG5pfDeik+De4KBmYdxDoJWXIqXCrGmWLQwqWqKq
         XbIyjwkA7ECZyfIHXAmAOQe/qYLHtMCOLQDWcYO3dA5ozJ1GFpUSXU6BYTXVIjPdzRyP
         q7TydI+LmC7SIqpw7jzlSAb+QshaVS4TK8UDEWyAYx8amE+F0iSbgW7lCOSRTB9Y047g
         b71U2hJ34x1aX0ydM2SwpEuvlNY1wZKgMI7///3eAcYL0uRyPReuwD9/rnfuDHA8/WvR
         zzxQ==
X-Gm-Message-State: ACgBeo3qjRmh9VG0rO8jY+HPSUsb13TOpbkyEaSpwRkrxSARV2ui+NQE
        v7BeTSVD1jX/8FJUl1BqQFOJ2tf3kjn9jtbZ
X-Google-Smtp-Source: AA6agR5yK7X1AzIN26S9Ej9ya717s4rcc2ki8vtmuLlhX2g9faSGqnSMoYXKIM5ANzadPOx+SIGnSQ==
X-Received: by 2002:a05:600c:4e8c:b0:3a6:11e:cc08 with SMTP id f12-20020a05600c4e8c00b003a6011ecc08mr1670850wmq.198.1663061041001;
        Tue, 13 Sep 2022 02:24:01 -0700 (PDT)
Received: from [10.119.22.201] ([89.101.193.70])
        by smtp.gmail.com with ESMTPSA id h14-20020a5d430e000000b00228dcf471e8sm9739989wrq.56.2022.09.13.02.24.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Sep 2022 02:24:00 -0700 (PDT)
Message-ID: <41691499-0dfc-8ee7-f767-ba89ea8b320c@linaro.org>
Date:   Tue, 13 Sep 2022 11:23:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v5 1/3] dt-bindings: phy: ti: phy-gmii-sel: Cleanup
 example
Content-Language: en-US
To:     Siddharth Vadapalli <s-vadapalli@ti.com>, robh+dt@kernel.org,
        lee.jones@linaro.org, krzysztof.kozlowski+dt@linaro.org,
        kishon@ti.com, vkoul@kernel.org, dan.carpenter@oracle.com,
        grygorii.strashko@ti.com, rogerq@kernel.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org
References: <20220912085650.83263-1-s-vadapalli@ti.com>
 <20220912085650.83263-2-s-vadapalli@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220912085650.83263-2-s-vadapalli@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/09/2022 10:56, Siddharth Vadapalli wrote:
> Change node name in example from "phy-gmii-sel" to "phy", following the
> device-tree convention of using generic node names.
> 
> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
