Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C4A06FDBE8
	for <lists+devicetree@lfdr.de>; Wed, 10 May 2023 12:51:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236481AbjEJKvP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 May 2023 06:51:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236250AbjEJKvO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 May 2023 06:51:14 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91EA440CA
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 03:51:13 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-94a342f7c4cso1247714266b.0
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 03:51:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683715872; x=1686307872;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rnAL1BpotBYjGCGwg3jDmlTbIDa3ymvLoZ4TRANRKdk=;
        b=mPuuV5Ft70YNdrLglkp3jFQrz55JG/zofPmE2Ib2Rx9LSDBX+cYbD5+BLq/RHz2aFZ
         /X5zliyECc3XQ7vbS/l2KuKi7JpzCn5SN+z8pRIEvO4Bjk/RvSHY3lmDFLpUTFBQs45F
         NEO1Lk1xHKAl/phgZx7tF57rIijMcmDh8+F2MKZu9Zc5sN3Ob/UUWoPZyWcltlRBQy7Y
         yHwiRZhpEK3mX9K6TZIb6tCuGM0+Jox8gC3HORXx4hDLnJy9EnTl7eNEwoKKbnh4Oph3
         5isjdg7yOtTQ7leuXfbspdk/iEVpcpHSycG+c9iWNwFjSLtmqgY00puS8bWUw+XisBYC
         Txaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683715872; x=1686307872;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rnAL1BpotBYjGCGwg3jDmlTbIDa3ymvLoZ4TRANRKdk=;
        b=k6Kjto18B5l6wHALdR6c6oXHgmo7bTgUZ5L8xk73rEg1ufQdjnDywf4V4k5cNQx2EK
         WDEDvpbdaZTkXzXPC/B9Kl/XC6/N980vLJFesMYMx/i3pg0xr7krGsbbgZ7M2bQIHeiJ
         /cnRnYNtyc41IhyVXkTe0S7lUl3f30/ciq0cl2Rh3HHem/VeWJJ0Kp5HqsJ/wcCMlWm/
         joJuD0nJOiltnZ0gdLBVCTqy93B6pyzj1riY7DN0TtJQmwxnexXPO0s/UfK9UBPKJjni
         GUFEzm5ykucnj9HmYgCbrrFhjQJAW776sfVBlnRVhQDji2KtZaivSFgmzHw/SSXFYGCi
         4naQ==
X-Gm-Message-State: AC+VfDySQxNUigc97xic2EZVG9YmnNMISTP3H35Pptp4Bbfsc/UV7v2O
        TpHvSOwJh8/XNUrGn0Z3G2NStA==
X-Google-Smtp-Source: ACHHUZ5bfLgiZY9nRh/Mo+/u/+5JWPIDX0EH0XVoda6xNAqxPeUuBr2auTivtolfBoo9lW1U4w4jbQ==
X-Received: by 2002:a17:907:98c:b0:94a:5819:5a2b with SMTP id bf12-20020a170907098c00b0094a58195a2bmr15275801ejc.33.1683715872003;
        Wed, 10 May 2023 03:51:12 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:c175:a0f9:6928:8c9d? ([2a02:810d:15c0:828:c175:a0f9:6928:8c9d])
        by smtp.gmail.com with ESMTPSA id ev21-20020a17090729d500b00965b416585bsm2567563ejc.118.2023.05.10.03.51.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 May 2023 03:51:11 -0700 (PDT)
Message-ID: <d2e65698-8dcc-7d90-9239-cee38f496771@linaro.org>
Date:   Wed, 10 May 2023 12:51:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] arm64: dts: Change pinconf controller node name to
 pinctrl
To:     Tony Lindgren <tony@atomide.com>, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Broadcom internal kernel review list 
        <bcm-kernel-feedback-list@broadcom.com>,
        Wei Xu <xuwei5@hisilicon.com>,
        Dinh Nguyen <dinguyen@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        Niravkumar L Rabara <niravkumar.l.rabara@intel.com>,
        devicetree@vger.kernel.org
References: <20230510103816.39015-1-tony@atomide.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230510103816.39015-1-tony@atomide.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/05/2023 12:38, Tony Lindgren wrote:
> According to the pinctrl binding pinmux and pinctrl are valid controller
> names. Let's replace pinconf with pinctrl so we don't get new warnings
> when pinctrl-singl yaml binding gets merged.
> 
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Dinh Nguyen <dinguyen@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>
> Cc: Ray Jui <rjui@broadcom.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Scott Branden <sbranden@broadcom.com>
> Cc: Wei Xu <xuwei5@hisilicon.com>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>  arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi | 2 +-
>  arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi              | 2 +-
>  arch/arm64/boot/dts/intel/socfpga_agilex.dtsi               | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)

These should be either split by subsystem or you will have to push it
through soc.

Best regards,
Krzysztof

