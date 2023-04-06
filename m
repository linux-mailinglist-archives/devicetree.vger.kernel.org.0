Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 981816D9F8A
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 20:10:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238820AbjDFSKp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 14:10:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239838AbjDFSKp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 14:10:45 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0539A65B6
        for <devicetree@vger.kernel.org>; Thu,  6 Apr 2023 11:10:44 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-942e6555947so131559966b.2
        for <devicetree@vger.kernel.org>; Thu, 06 Apr 2023 11:10:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680804642;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P+hArcc86ZP8XQBSobS6A1oZuyXWuAFhXHewFPdkAko=;
        b=R9KjY9V+CDKLJMFqIk58XpthyY1P5yr+BpSatZ+Ih5ohqs7rDh0UmvI/0HVttUtcEW
         Q+QC2/aK2be6/IGBlfJdLKBFfRDci22HyqQw0Vb2EcGbvIloK1vj8KxKCke/lfEzwHRi
         PcbKxUfkYUGDGacHabCuxJGVe5718iW/N32OvG0FhPuL4YN9EX2LpHI6tScIEgcNrFIX
         6r7iHhkgPXstB+Dw9HXmkZngU1cBoVZ2inZh8XLEE+1GLDK9QlpgYEsPPXJUvJJ6aTNY
         bsOchuCi5HoCfypfeBOTyggXvA/6/bTo+wHfK/vc7JJrTAVyGO7eEMT2uVl2qVWvsGzH
         LN7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680804642;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P+hArcc86ZP8XQBSobS6A1oZuyXWuAFhXHewFPdkAko=;
        b=Urlg4fTw3R4RXXxHJVDD1GgR13oReGz8cGPQeBlp5Hn8I9vVIp9idAW94ox6qHzjQB
         2+VIOLu2xjas2+B8OwC4wiAuqv1OfgAnbTYHJ5Ln6WN/K3EQ45u+MLDn5el/FchKktf/
         UC0/z3YiCW5EHGQdlXFM3RMxqNtb1PqEOzuKMyM6gX7UdXc5kAzKq1YSjmZ9wtnm97sH
         Y29Fxh6PEX6R7CY7WTnB1pbOOpO/fuOoMNgUKKi/ATUJdEIK9ifWpEXKOkIcExYqh3Pz
         1SkFdYUohF5WxJ3Lzi/qptx6tQWL4IbrsTft7pGU+p29QoV2cCnfVKerVQeZQqEWGU4l
         CJRQ==
X-Gm-Message-State: AAQBX9ecp1lpFrzjIXk7k5O0IZH3W03aeQYFhF5frQPOdIHI50S3tuT1
        PGT5JUZAcRFzZRk0nJI1ngD+xA==
X-Google-Smtp-Source: AKy350bzO4eamTsoFTvkm3B8HbgN0MG/FfDkaVzPiAZkq5TaO+7lLXPtLRrN1Hf1AAJIjmBFObBqpg==
X-Received: by 2002:aa7:c6d2:0:b0:4fb:1c02:8750 with SMTP id b18-20020aa7c6d2000000b004fb1c028750mr396472eds.23.1680804642490;
        Thu, 06 Apr 2023 11:10:42 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:49e6:bb8c:a05b:c4ed? ([2a02:810d:15c0:828:49e6:bb8c:a05b:c4ed])
        by smtp.gmail.com with ESMTPSA id qu19-20020a170907111300b0092c8da1e5ecsm1097404ejb.21.2023.04.06.11.10.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Apr 2023 11:10:42 -0700 (PDT)
Message-ID: <dc794f94-42ff-33a5-facc-5fe09f6da295@linaro.org>
Date:   Thu, 6 Apr 2023 20:10:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH V5 2/6] dt-bindings: w1: Add DS2482/DS2484 I2C to 1-W
 bridges
Content-Language: en-US
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, linux-imx@nxp.com,
        soc@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh@kernel.org>,
        Stefan Wahren <stefan.wahren@chargebyte.com>,
        Evgeniy Polyakov <zbr@ioremap.net>
References: <20230404080243.9613-1-stefan.wahren@chargebyte.com>
 <20230404080243.9613-3-stefan.wahren@chargebyte.com>
 <20230404133937.GA3778861-robh@kernel.org>
 <e2afed14-fed3-772c-3acc-dc132b5a1078@i2se.com>
 <2023040651-baboon-busybody-6175@gregkh>
 <bdcf41d5-cd61-1e95-0b21-b8fe401644bd@ioremap.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <bdcf41d5-cd61-1e95-0b21-b8fe401644bd@ioremap.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/04/2023 13:47, Evgeniy Polyakov wrote:
> Stefan, Greg, hi
> 
> On 06/04/2023 10:58, Greg Kroah-Hartman wrote:
>> On Thu, Apr 06, 2023 at 11:53:28AM +0200, Stefan Wahren wrote:
>>> Unfortunately no feedback from Evgeniy so far. Should i resend these two
>>> patches for you?
>>
>> Please do.
> 
> Thank you for the patches Stefan, but I'm no longer a w1 maintainer, 
> sorry I haven't updated the maintainers file, please send all w1 patches 
> to Greg.

Thanks Evgeniy.

If the one-wire subsystem is orphaned, I can manage the patches to
offload Greg a bit.

Best regards,
Krzysztof

