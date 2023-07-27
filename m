Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 660A5764730
	for <lists+devicetree@lfdr.de>; Thu, 27 Jul 2023 08:49:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231704AbjG0GtE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jul 2023 02:49:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231761AbjG0GtC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jul 2023 02:49:02 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCD3E269E
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 23:49:00 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-99bc512526cso76399666b.1
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 23:49:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690440539; x=1691045339;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=c3X8Zj4OP70OiqAhYnmxGDR9inGCFFjwz8hO6iVPB9c=;
        b=YxC4YDI+Y31qmYG5osPjgudcxDzKIfFIlK0DZRrp54Peo8y6rVsb+LWS6tpf+eS7fl
         +oHJ/p/utFkIJoczkcJGZamK4aPLUBbro0OL9Zuy7jzrwDP7H6aKS++4R/QthKJ1qdfe
         u9y5TYVvaUhSSQemkMPlI/hOFEgd5m+4IVpSRi3hT62sTkk+Vqsg1PDUTZIhmDl03xvB
         3dS65AdFrL1d1XQCw2xHSrr1t1Pb7vAF4rfyqFmADmCgDp5Sg07OkIOkqDm32HWcef4l
         Xtxwk1LRDZSwFzm2z5UCYL2Ft7+cr5drXXjBR7XasFYirwjLzor+Jke8ABRsSUjwcFfm
         LkDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690440539; x=1691045339;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c3X8Zj4OP70OiqAhYnmxGDR9inGCFFjwz8hO6iVPB9c=;
        b=CG7Pq1mDysZMi+Wbdmg8J+05oAxrYR05VgoM/+wy+Wu/N44bahsTLQVlZLD4AipLmQ
         lwnQjOl7m5brA2BXKcLXMO9txUZ5kD4IfU+tG3uJ8eSX2rihu1RpLohCCsV5IWw9adAi
         fiN4lsNDKgZ2qqjpUGAE2g/jOmC4wuPWPNgHKnCZn6pGRmp9aEz5gNnmwvrG5Sstcx46
         crCz+n14OKCk6JBx3hdhD7tB+T+9Csn9VK0C7n2Y3zBu5HbtlP1drCSlbzGtElu80c35
         piLAP2mqG+d/lqyZmwRAzc1Y7gqtIVZ13ZvGIWeMS2+zsQRWnSXyqplFb6UhFfB983Dw
         TLCA==
X-Gm-Message-State: ABy/qLZcU7gpIs2FeEPqDJEGvxqiWh5bXXLFKSkb422v6yGGq8uCZ1Tj
        LKI2eXeYiljnShUklLDDFSvssg==
X-Google-Smtp-Source: APBJJlF7LoqmSv1+Kkydpo8uSWljyUepJpwxz2Cw713ZEV3Gf/tzcJlwLjDc1tJeLlS6Qd/HmUEQpA==
X-Received: by 2002:a17:906:5385:b0:992:a0c7:8d2a with SMTP id g5-20020a170906538500b00992a0c78d2amr976108ejo.54.1690440539233;
        Wed, 26 Jul 2023 23:48:59 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id e6-20020a1709067e0600b0099315454e76sm375402ejr.211.2023.07.26.23.48.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jul 2023 23:48:58 -0700 (PDT)
Message-ID: <c9062d5c-b536-f89c-b380-8a0c9b858526@linaro.org>
Date:   Thu, 27 Jul 2023 08:48:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 1/2] dt-bindings: arm: aspeed: add Facebook Yosemite V4
 board
Content-Language: en-US
To:     Delphine CC Chiu <Delphine_CC_Chiu@wiwynn.com>, patrick@stwcx.xyz,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
References: <20230727033926.1904529-1-Delphine_CC_Chiu@wiwynn.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230727033926.1904529-1-Delphine_CC_Chiu@wiwynn.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/07/2023 05:39, Delphine CC Chiu wrote:
> Document the new compatibles used on Facebook Yosemite V4.
> 
> Signed-off-by: Delphine CC Chiu <Delphine_CC_Chiu@wiwynn.com>
> ---
>  Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
>  1 file changed, 1 insertion(+)

I got the same patch four times...

Best regards,
Krzysztof

