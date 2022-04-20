Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8058450841E
	for <lists+devicetree@lfdr.de>; Wed, 20 Apr 2022 10:52:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1376973AbiDTIze (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Apr 2022 04:55:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1376964AbiDTIzd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Apr 2022 04:55:33 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2F6B3B2A7
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 01:52:47 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id y10so2060676ejw.8
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 01:52:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:cc:from:in-reply-to:content-transfer-encoding;
        bh=AU7MCQUakNHJSzUOPCzW8odZ6YUqvOfObVVCUB/LrxI=;
        b=WucVp4n1s8jRE4t2dWoIlo9QVwtl9uxsWHfpMti2hPK0bkDCyifIk5ZizzB7QhXDIv
         k9MwNhBWlVfsmScmJGS4OPGvZVhTRWHJE3+KL0wuEqeJ2vbbOvZeURxDl/lGP5DzKYlE
         9AcCpPeFTzNuJq9ai3Y23+VkISDF/bLG4gxBBHzntw1A9I87CXdz/bgm8IZYWHyI5TKC
         w4RuOE2HcsM/N/GqyWTplUFaTIk3FMT+/wJ/IBj1uTKhxkVV/vRibuRm2+rPwhPdFE+B
         cbquCbMcFDuMBUIhdIoO8/9Ohawa0zdZJlCPuJX+EYRLR7tjKYiRICRlQPa1ZaBWPfMT
         8nOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:cc:from:in-reply-to
         :content-transfer-encoding;
        bh=AU7MCQUakNHJSzUOPCzW8odZ6YUqvOfObVVCUB/LrxI=;
        b=tQTRa/yKbC9+KKp3BiRT6Wel91fUsB/2AKkSibfQ4/A3NIgcUNwo9iFNyqO7uEn0M+
         qGfmNzrvkQRTM2ujk3lOyrh8WNaaomTL7zIU+shDTxqcqQ2eNj+YBXINk1zCb8sdNcP+
         SWmHfbYzmXVohcE1Apo3wFYwD6m82dYiFA0fGOuM9QZyaJBgzq6n3I0g5/qq7/Ow3nWo
         L1zrxzYWArYXIOUqb7bOLoAftYsJgrYnY4PKbUEvKgU4mHt0qNjjK7QE3ULlkRmu7BMX
         yqOe+vOD+q1sYX/kr0NVTDUm9MFpkb9dMtXGegCHffRws0qhWNShKEOtYYCIbPacCm2S
         JOyg==
X-Gm-Message-State: AOAM530bOsa+p12VbFBksRTbu/kdgBEXohtZgOHVrE2TiN70IUUve0pz
        C+Y5qUQmulsdkFkPamBEP5Mncw==
X-Google-Smtp-Source: ABdhPJzbpinMoil4O4fTma5Fi8dg+thZtDOYXftfnb+1qu0lPGb1koYVYUbft1EwE0Kx+/ZwBRHj9g==
X-Received: by 2002:a17:907:2d08:b0:6e8:8e58:f70e with SMTP id gs8-20020a1709072d0800b006e88e58f70emr18240985ejc.301.1650444766450;
        Wed, 20 Apr 2022 01:52:46 -0700 (PDT)
Received: from [192.168.0.223] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id k26-20020a056402049a00b004197b0867e0sm9675138edv.42.2022.04.20.01.52.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Apr 2022 01:52:45 -0700 (PDT)
Message-ID: <2079f567-ff8f-5790-cba7-837c311e5fce@linaro.org>
Date:   Wed, 20 Apr 2022 10:52:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 2/2] arm64: dts: broadcom: align SPI NOR node name with
 dtschema
Content-Language: en-US
To:     Florian Fainelli <f.fainelli@gmail.com>
References: <20220407143211.295271-1-krzysztof.kozlowski@linaro.org>
 <20220407143211.295271-2-krzysztof.kozlowski@linaro.org>
 <20220407185710.2576287-1-f.fainelli@gmail.com>
Cc:     Scott Branden <sbranden@broadcom.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Ray Jui <rjui@broadcom.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220407185710.2576287-1-f.fainelli@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/04/2022 20:57, Florian Fainelli wrote:
> On Thu,  7 Apr 2022 16:32:11 +0200, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:
>> The node names should be generic and SPI NOR dtschema expects "flash".
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
> 
> Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!

Thanks Florian. It seems that patch is still not in linux-next. Is your
tree included in the linux-next?

Best regards,
Krzysztof
