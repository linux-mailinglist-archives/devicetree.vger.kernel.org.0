Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 250025B0254
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 13:05:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229517AbiIGLFg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Sep 2022 07:05:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229674AbiIGLFf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Sep 2022 07:05:35 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9407C5FF7A
        for <devicetree@vger.kernel.org>; Wed,  7 Sep 2022 04:05:33 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id bq23so21855417lfb.7
        for <devicetree@vger.kernel.org>; Wed, 07 Sep 2022 04:05:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=RheaanQ74l39GOH9bp74P4jIE+z8WJigs9jBgeQ8Eoo=;
        b=HddyWGbykN8wp+0Gqz262fZ3Wan2vzCB2w+w6joHVk04mjzyN2EiRqbG+nFlYcSbtf
         L4Eecv8FUSw2E3rdqPFQQD9OhtVw3rO9NBlSL76ah2rHIBSpxiOqTIFvCx0Jf0fi2FVp
         CuCVXI/mPgYlPXC5iyx5d7+1G1dFvFn6f6LtcajLeSEZIdEE7M92kztHxE3/Cw9zD8ah
         AlSgAxOEXnBlk2QZVYTrVEyOQt80+TZXBzrMc7SmQLa8zkl7tNOGmdivNoxg3YuarTLs
         h7VZ7EvNWQAtSVMy/THfAKMGjLxtwBTlyFgc6DH2qP4Gg2wlY5Tsw4wo6Pnoi63GzL2e
         cOAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=RheaanQ74l39GOH9bp74P4jIE+z8WJigs9jBgeQ8Eoo=;
        b=OI9YM6EJ2I6JKUIp3WU8EbfK5l2BpMBIuqfjTYA7qWX5gCiPH2Kv6b/ldCuTjTUixq
         lEm82K0fldz2H7bp7Oq1AIeC2Y9/hAiNH+n5iBr60jNq16/958RGIMErPt8MfEqNbzuh
         PmN2ovlTIe9JoKsOseE+gesxWdZsPy0jgcgxgSkIjtmT/XwSI9ZhY6oSLSVuMuJp826q
         JzmCF2PpyJRn5yWegd7gUq72N5SZbuPM15UC42xFY17rvG0ICvd+YVMB7eDhhMAAY/po
         X7j1284c7Wo9T89Kuvan8c5aqzzn+ldVa3MOblPzYsYE8a2Se3HMZA7T3NmjS4ci8w5O
         gENw==
X-Gm-Message-State: ACgBeo0W8b9CFoyg+kypPV8flftv5FRQPeTaMxQw1Gbg9gMnheyRCueh
        wkrx1ewZi81btPXbu94X/tvo/w==
X-Google-Smtp-Source: AA6agR47ozyDXYOvGdemifGei0IjwatizvoJ3SI5fAVVA7gbumkCSR4xKOvZ725fh8ZPqbMibgffkA==
X-Received: by 2002:a05:6512:b01:b0:48b:a065:2a8b with SMTP id w1-20020a0565120b0100b0048ba0652a8bmr870185lfu.401.1662548731952;
        Wed, 07 Sep 2022 04:05:31 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id a18-20020a05651c031200b00263fd903b15sm2556838ljp.117.2022.09.07.04.05.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Sep 2022 04:05:31 -0700 (PDT)
Message-ID: <9ad4bdc6-8daa-cfb5-cd6e-c522c5393f2c@linaro.org>
Date:   Wed, 7 Sep 2022 13:05:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCHv3 2/6] dt-bindings: add power-domain header for rk3588
Content-Language: en-US
To:     Sebastian Reichel <sebastian.reichel@collabora.com>,
        Heiko Stuebner <heiko@sntech.de>, Lee Jones <lee@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Finley Xiao <finley.xiao@rock-chips.com>, kernel@collabora.com
References: <20220906143825.199089-1-sebastian.reichel@collabora.com>
 <20220906143825.199089-3-sebastian.reichel@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220906143825.199089-3-sebastian.reichel@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/09/2022 16:38, Sebastian Reichel wrote:
> From: Finley Xiao <finley.xiao@rock-chips.com>
> 
> Add all the power domains listed in the RK3588 TRM.
> 
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  include/dt-bindings/power/rk3588-power.h | 69 ++++++++++++++++++++++++


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
