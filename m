Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4AB7F5163D6
	for <lists+devicetree@lfdr.de>; Sun,  1 May 2022 12:46:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242943AbiEAKtb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 May 2022 06:49:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232503AbiEAKt3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 May 2022 06:49:29 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C2673AA56
        for <devicetree@vger.kernel.org>; Sun,  1 May 2022 03:46:01 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id p18so13703134edr.7
        for <devicetree@vger.kernel.org>; Sun, 01 May 2022 03:46:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=1BN3+xj6q/GJn7muBnvRtU8m6jK+R4V3lK2qkgBNL+w=;
        b=L3VkJR/D/nmQqWs010nBYQnXVhc0ZwGUufO0U0PMbzWEjEz1BR2oiE4Bs+5/xCI4Ej
         X+q+hXWlH+Uzxp56Ct27b0/QqKNyL858POpmxOqAdQQSymx1HqbA/QguKfwa8DRaGZyF
         TDBxbw64hwfxjscETjoBC3eNjo22IojN5xm/kAOt0qi8aJjH9HAioPUCEkQbFkq/bWAo
         D24lPuI7TIXMw3B93U3Zvlk5Od60jE2/5jeJuaTMOx9jBI5rSLVmtetcdlqu3CXCGA9m
         xWwA0HzGDQvHcy8yfQI4iYFjacyULGdyhiQMJIUUVindzwGq9XnjGRWlcDV9YRzYdhTj
         C3tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=1BN3+xj6q/GJn7muBnvRtU8m6jK+R4V3lK2qkgBNL+w=;
        b=Vg2nd0gtGovESdshCc8nwgPpCZBq9tqx52tVGYX/GreAlWOKtLWaWKovG5GPxIar5m
         i5TYOL0X87Mcwxt/qcYBPiV4iqcle5JHgMjCNr/CFohs+L1mUXoIt+q4IoJgDhsFdIeD
         s7zrR9D+M362xluLh70XfLYjvYYAwMfRKBGWC9Gk1Q7PenhuH5Vtj/W1NChH22gX+hST
         gW9EWEPd6FFztsr2HmpeNf8RWaO4HEoKVNQsNfJ+yHS+g3Y99wPNxMBkChKPe2OdeFOo
         dX74A/8Uq3msw70R/QrAMg/T00i645naYLz2btNrHseJq3yNKA1NesgDChY2dYhs4dmC
         fdIA==
X-Gm-Message-State: AOAM530h8WDi+HOxzmsypZ73AGyqUW6wXqFT9RIXcEXYKNK5MMKZ4wvi
        7HvsDsf4DgIMFOVpPVyc2okrlg==
X-Google-Smtp-Source: ABdhPJz5smgAwVqzK7oMSiqkJE9lgKLmFcDB8ypHTtNiluemXEtonjSPgytjkfb3js3/uhM+ryWplA==
X-Received: by 2002:a05:6402:1d4e:b0:423:fd93:6466 with SMTP id dz14-20020a0564021d4e00b00423fd936466mr8225515edb.304.1651401959893;
        Sun, 01 May 2022 03:45:59 -0700 (PDT)
Received: from [192.168.0.183] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id zp1-20020a17090684e100b006f3ef214df0sm2468687ejb.86.2022.05.01.03.45.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 May 2022 03:45:59 -0700 (PDT)
Message-ID: <94bd3b92-fe6d-6bb4-8cbb-56ed52b9c4b9@linaro.org>
Date:   Sun, 1 May 2022 12:45:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 6/8] dt-bindings: vendor-prefixes: add Sundance DSP
Content-Language: en-US
To:     Conor Dooley <mail@conchuod.ie>, krzk+dt@kernel.org,
        palmer@dabbelt.com, robh+dt@kernel.org
Cc:     conor.dooley@microchip.com, Cyril.Jean@microchip.com,
        daire.mcnamara@microchip.com, paul.walmsley@sifive.com,
        aou@eecs.berkeley.edu, palmer@rivosinc.com, arnd@arndb.de,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org
References: <20220430130922.3504268-1-mail@conchuod.ie>
 <20220430130922.3504268-7-mail@conchuod.ie>
 <6fdc6da4-3a34-e67c-cab8-1c9570501a8a@linaro.org>
 <f49b1d52-11e3-1c8b-bb1f-324318a7f669@conchuod.ie>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <f49b1d52-11e3-1c8b-bb1f-324318a7f669@conchuod.ie>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/05/2022 12:39, Conor Dooley wrote:
> On 01/05/2022 09:59, Krzysztof Kozlowski wrote:
>> On 30/04/2022 15:09, Conor Dooley wrote:
>>> From: Conor Dooley <conor.dooley@microchip.com>
>>>
>>> Sundance DSP Inc. (https://www.sundancedsp.com/) is a supplier of
>>> high-performance DSP and FPGA processor boards and I/O modules.
>>>
>>> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
>>> Signed-off-by: Conor Dooley <mail@conchuod.ie>
>>
>> If your @microchip.com email still works, then there is no need to
>> double-sign it. At the end you are still the same person... unless
>> you're not. :)
>>
>> This applies to your other patches as well.
> 
> I thought that the last SoB had to match the email it was sent from?
> If that's not the case, my bad. The @microchip email still works, but
> it would've meant waiting til Tuesday to resend.

The "From" address must match the SoB address. The person, rather than
the email, sending the patch should be the last SoB. I almost do not
recall cases where two SoBs were added in such flow like yours.

Best regards,
Krzysztof
