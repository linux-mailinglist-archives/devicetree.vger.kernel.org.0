Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E062C7054F7
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 19:26:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231165AbjEPR03 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 13:26:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231816AbjEPR0Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 13:26:25 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D6D57D8B
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 10:26:12 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-50bc5197d33so26257354a12.1
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 10:26:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684257970; x=1686849970;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P26WZgRdaDyjHEDiNJeGGStlr3B31Ox8J0GVndUKSF4=;
        b=mcLWIx+/ahAKz5WpeO9twSqJWTGDeULBM1pbR2WxLpnv8IfSGgmV3xLmTtUBdaESmh
         aodi5Cpm4LjmRdU+k5fLPSkcNiJip+fEzU7BBQGQwnL5qp98P5XRNehGamOAeYiqWciI
         OawqNbggj/81lHRbzEUtQ8W5bDBWV4UorN3lrfbA2jWnjYE7a40RTD2VaJK6DueHQQur
         54jIGDpVluk/O6dO3E7FsZgWD3DSlvJb6Jk9cZS2+hqgrQ0GJmlRXg8o+nIJF2sQ1Cqv
         cIAFTpngY7DJHacwcRqwIdQ9aaGHVMIIL+ryYKkQRppTOJtoyON5Me72mXcnL7b2NNa5
         Wwyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684257970; x=1686849970;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P26WZgRdaDyjHEDiNJeGGStlr3B31Ox8J0GVndUKSF4=;
        b=cThhEZyGFQXsCVUJsggbTZmX+A7demUABkyzqvn6In/dJy+N+PEnjDjx5dImCa5jv0
         0EZGfjh60YfUv1nYWKT/9hWlrT8gh27EXLzIKuPj55ogPuIQjDxXitbGVSGk9rz4INOL
         Vm9/nMaOzsgjcC5iwA5+QyQPJM1lTSw2DDqC/F4YWotJU6mbbQ6mv1HPnOZbn+BxD4rA
         ArQvi2ZhCZZGGdS9+v0tlRTs6HfVaG8SwNshhT0Y5j3ncj67RlmCgazvza7rU4rbMAid
         Tx9AHHvvOzM3786t2imiVSz6tm/ue84qwwFRS1RnNjUTg8qBryYGHuJ9x93svh/LGwNf
         5giw==
X-Gm-Message-State: AC+VfDyShLQSasG0DkcScpCy1yCmKd2dXN8Sk8fMCKAn+ZNLn61wSCPB
        NKaBD2Rw9nerhLJaV1ktrdKR2vX8oIcGfIc0JXs=
X-Google-Smtp-Source: ACHHUZ4bl3FAM2FeSNA/2QtVjERe56ZAFboyIK/GT08iJv5GPgziD/ddxpVwHaHSTvTZk8X/NI1bww==
X-Received: by 2002:a17:907:d0d:b0:96b:48d2:77ef with SMTP id gn13-20020a1709070d0d00b0096b48d277efmr7250567ejc.6.1684257970612;
        Tue, 16 May 2023 10:26:10 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:77d1:16a1:abe1:84fc? ([2a02:810d:15c0:828:77d1:16a1:abe1:84fc])
        by smtp.gmail.com with ESMTPSA id mm18-20020a170906cc5200b008cecb8f374asm11085508ejb.0.2023.05.16.10.26.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 May 2023 10:26:09 -0700 (PDT)
Message-ID: <2568ecb2-e97d-c61d-f68c-55a00b605bf6@linaro.org>
Date:   Tue, 16 May 2023 19:26:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] arm64: dts: ti: add missing cache properties
Content-Language: en-US
To:     "Raghavendra, Vignesh" <vigneshr@ti.com>,
        Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230421223143.115099-1-krzysztof.kozlowski@linaro.org>
 <168425511044.243008.2148983708471957289.b4-ty@linaro.org>
 <e331d497-9b70-7895-24e1-8932457aa611@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <e331d497-9b70-7895-24e1-8932457aa611@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/05/2023 19:04, Raghavendra, Vignesh wrote:
> Hi Krzysztof,
> 
> On 5/16/2023 10:09 PM, Krzysztof Kozlowski wrote:
>>
>> On Sat, 22 Apr 2023 00:31:43 +0200, Krzysztof Kozlowski wrote:
>>> As all level 2 and level 3 caches are unified, add required
>>> cache-unified properties to fix warnings like:
>>>
>>>   k3-am6528-iot2050-basic-pg2.dtb: l3-cache0: 'cache-unified' is a required property
>>>
>>>
>>
>> Applied, thanks!
>>
>> Please let me know if this should go through any other tree.
>>
>> [1/1] arm64: dts: ti: add missing cache properties
>>       https://git.kernel.org/krzk/linux-dt/c/be9633397b9f268242724a0c763839579761ee60
>>
>> Best regards,
> 
> 
> I have already queued it up at [0] for testing (should be part of linux-next already)..
> I intend to send out this as part of fixes PR towards -rc3 tomo. Would you mind dropping this from your tree?
> 
> [0] https://git.kernel.org/pub/scm/linux/kernel/git/ti/linux.git/commit/?h=ti-k3-dts-next&id=27244f81d6f6abbf06fc705a940ba650fd687b9f

Thanks for letting me know, I'll drop mine.

Best regards,
Krzysztof

