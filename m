Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 99AED70540A
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 18:36:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230492AbjEPQgd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 12:36:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229745AbjEPQgb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 12:36:31 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F04F293C7
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 09:36:02 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-510b4e488e4so453965a12.3
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 09:36:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684254960; x=1686846960;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IFUKzVDWdrFnsjNnX3S6XXegTsXmIcPrppnvwP76rAE=;
        b=iTFy7FdUNKl9u7y/dTdVps0uZvBSRUbqXFfF3RFKC5w5IT+BwVIJBtWs/cCzEmNtEd
         O044lDgwu7hPgm3hN5gta0wGOJhp1YRMq16+8vNIMQ2JcQ2A96WICPgI1QhtwRkVoUfN
         d/Xc8rT7OSxaKGJfycdPCHKsyZsYyMtAk16jT8Owr1KugkC3yVbadFUbd0RI/psEPIwy
         sOCA887K3oPrmU9+397ZZT2g6vTYZot+zybNHatbppsZa8SUh8MEG7+As5ExduH319Mw
         bU2u42To+gGG4fKwdfH2z9iCLl57JK02bgdYNTiiAMi62reW5+db7aZTf8julegELlqg
         F37w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684254960; x=1686846960;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IFUKzVDWdrFnsjNnX3S6XXegTsXmIcPrppnvwP76rAE=;
        b=dN4pJKxX/Hvieqmt5RkqnaNrxOjjQLjKRsEQqYsrMuk/NlIuTLgdvSk6BRS2JF/+7Y
         YisKsxKt9qlybmaCUug1+j3nG8edmmhFwSOahYd+Mt8jRuKvENwd+5+geTPpvhMKSn6z
         G0HcOZCgXli0uvEn8wfNgoaUDojNactOaI4U+GDCTYkMpxRg0U7FChFRRVygpQeGWbcA
         bmwvl5izyvydiqjb5PE8zVgYDN2yGn7d/DUhQEfv+kvW2CTvbzvUFdOWNDbPTUhrM0gj
         nz6M5H/tj8XysUmwqRiEkKZzAIop9ldHhXasH7x5Yd4RRY/yCJVfUC2JyB/Bhxz0BsqI
         iJHg==
X-Gm-Message-State: AC+VfDzH0rZf2Ttb8Tr02LCCkPgorJwOdfH50624Hu3bQNI1gaCyJ1fF
        0MdGVXfb5p028Y+wk4AVSd4osA==
X-Google-Smtp-Source: ACHHUZ65F0h63LV/jV7aexehDz5tftu89rQlGQ6ku8h8GH1ypAJPWCOloxel6LQxRVFEnBxoCNqcTA==
X-Received: by 2002:a17:907:360a:b0:960:7643:c973 with SMTP id bk10-20020a170907360a00b009607643c973mr32587106ejc.66.1684254960144;
        Tue, 16 May 2023 09:36:00 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:77d1:16a1:abe1:84fc? ([2a02:810d:15c0:828:77d1:16a1:abe1:84fc])
        by smtp.gmail.com with ESMTPSA id ca21-20020a170906a3d500b00965a52d2bf6sm10984958ejb.88.2023.05.16.09.35.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 May 2023 09:35:59 -0700 (PDT)
Message-ID: <a73b400a-198c-2d7b-a48f-e394c6e3b00d@linaro.org>
Date:   Tue, 16 May 2023 18:35:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] arm64: dts: ti: add missing cache properties
Content-Language: en-US
To:     Nishanth Menon <nm@ti.com>
Cc:     Vignesh Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230421223143.115099-1-krzysztof.kozlowski@linaro.org>
 <20230422013416.hjsltl63b6xjfmz7@diaper>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230422013416.hjsltl63b6xjfmz7@diaper>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/04/2023 03:34, Nishanth Menon wrote:
> On 00:31-20230422, Krzysztof Kozlowski wrote:
>> As all level 2 and level 3 caches are unified, add required
>> cache-unified properties to fix warnings like:
>>
>>   k3-am6528-iot2050-basic-pg2.dtb: l3-cache0: 'cache-unified' is a required property
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>
>> ---
>>
>> Please take the patch via sub-arch SoC tree.
> 
> Acked-by: Nishanth Menon <nm@ti.com>

sub-arch means TI... but ok, I'll grab it with the rest.


Best regards,
Krzysztof

