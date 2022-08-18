Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3C5E597FDB
	for <lists+devicetree@lfdr.de>; Thu, 18 Aug 2022 10:12:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232481AbiHRIMA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Aug 2022 04:12:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231430AbiHRIMA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Aug 2022 04:12:00 -0400
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9481385AB3
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 01:11:58 -0700 (PDT)
Received: by mail-lj1-f178.google.com with SMTP id q16so407875ljp.7
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 01:11:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=iR63Kjl1xElhrPQBXbo3SKGLz/HeBZERY6chfP30rBc=;
        b=WN+VI894uVlr1nVNgw9WVriIO6Kn/+v1igYfHudX+nqXQ+7Cj9h7Ot8LTuyEsChTxq
         dILAp/LUJs1a67eyybgnXjAxMDkdiv0Bz0IgrLV9jnhTTKnLs5NejhRoVcEz8oPqDIUT
         KcicNyzjGCydTZFoBm7FyVi083j5EX04WbTekgdOOaOSIOSqsssp6jeFXSg/8uwqymvY
         JoDOKZNOQh8lkuvntB57PzKJSoLDfHgpeILoZvtAmwkoMP29xiQwwrNDuq4ZcV1AszJ1
         LBljMCxHL8bDq0QlDI7h1Q6oYVgoyik0018LULT4471Pz6QT0gtFXKCYmVEIQc9T8X4i
         iwjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=iR63Kjl1xElhrPQBXbo3SKGLz/HeBZERY6chfP30rBc=;
        b=rz/LkZshV7Pik3FCLX9x7q+Ykw9fNTS+Z5q/YIjz8XpEHdAiS/akfVqardTn6G2uIY
         3PwVFJOhjd3e9+xce1V/M0f4tMO30lYqCZH8IkqFKsDWBAVi8ldw+4d+d+Zia/SdIiVR
         34FyQDWYp/yTVCAqGdVXdsABNEo4i5r7w4hPTzm2A+16pyUKPo5aSPrUbZVpzUwVuV3R
         9+T9bnmNLRb4yudgIokOuv1zt81tmdDnZQkoyUO8UmuQnC3+zVHSlGXvExhIiPMBufqw
         2wad4v2T1uvkJAGwNxtidxdDpXDzkSZFjK2Ba+LPPCCIdO5ChQjXaVx0vbchNkbImD1i
         oYhw==
X-Gm-Message-State: ACgBeo19uyLGijOtCtyAkSt9HP5vLBhX8+g4i0SBSEeAKlfvlZERfMb/
        uIf3LbF1Oopo1lN8SO6+V5XSHg==
X-Google-Smtp-Source: AA6agR4hGYvGajqsTXda6In7s13HWM87w3BfS52W7wY7yIHCMhxX8cSGqyBKELZYSFId7fOFov7lmw==
X-Received: by 2002:a05:651c:2205:b0:25f:dda5:1e65 with SMTP id y5-20020a05651c220500b0025fdda51e65mr585184ljq.240.1660810257063;
        Thu, 18 Aug 2022 01:10:57 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ae:539c:53ab:2635:d4f2:d6d5? (d15l54z9nf469l8226z-4.rev.dnainternet.fi. [2001:14bb:ae:539c:53ab:2635:d4f2:d6d5])
        by smtp.gmail.com with ESMTPSA id z17-20020a05651c11d100b0025dfd2f66d6sm126050ljo.95.2022.08.18.01.10.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Aug 2022 01:10:56 -0700 (PDT)
Message-ID: <ddd2adf1-14bf-3b23-e0f2-8a1169f84409@linaro.org>
Date:   Thu, 18 Aug 2022 11:10:55 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: add Anbernic
Content-Language: en-US
To:     Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
        pgwipeout@gmail.com, Chris Morgan <macromorgan@hotmail.com>
References: <20220817204954.28135-1-macroalpha82@gmail.com>
 <20220817204954.28135-2-macroalpha82@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220817204954.28135-2-macroalpha82@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/08/2022 23:49, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Anbernic designs and manufactures portable gaming systems.
> https://anbernic.com/
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
