Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3AA3758C337
	for <lists+devicetree@lfdr.de>; Mon,  8 Aug 2022 08:20:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235675AbiHHGUx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Aug 2022 02:20:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235666AbiHHGUw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Aug 2022 02:20:52 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBC5F272B
        for <devicetree@vger.kernel.org>; Sun,  7 Aug 2022 23:20:50 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id t1so11213524lft.8
        for <devicetree@vger.kernel.org>; Sun, 07 Aug 2022 23:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=XC78ZDlakVYcKsRbmvJPak0U0EpBMvZ3QPItIdCOy78=;
        b=EkjnZok9jUlLyEZhGeMG8MpZ5jVm25V3QfaxyB7EEziQ1nzFwpQuKMJXpXqDfLkSEK
         Ttjgw74JkvtZMtQcYpbJWwkol5uPP5rU9jqMFsHixR7GxAD6dSnEOW9v8ttIkTIuqUN9
         OwXHsMK5Y0dgOyWKRRmOh1GEooU+a+xOYFS12Um9U04RHc2Wyn1uEqc3msvmOBHnuWCt
         UpGHuCT3B6orPTTaJI6aNdixX6fz4itlx9m2BeFowvzA72dEcA6J987m0qM32cfRTig+
         OJUq1E+xvsPyKkXvmqTL5AXD/JlkjEyXC2A0Gn0En+8hEgea8JzkGvZhCr2h/3mQafAF
         PFtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=XC78ZDlakVYcKsRbmvJPak0U0EpBMvZ3QPItIdCOy78=;
        b=afmNwMKcTlDLS6+AertnB2Bc9rnzQdQTKcJyOLhuobHKp6TXLAWlYzUJrDqTpNTjX8
         qCO0B4lZRNtj06CRYMYt+3VOhOVJPtW2j62Q76oaZsmTP0fIFwAMsTFyXds8QzvR46WS
         TdWTzQWBPwMJwByy0E8YAR0k9mO9rVnzzezu8H3L+Fvaij7TG0BY9jcdCdjDf5tHj/TR
         Idwwu17jEx+JF5G2gv7DDeXpZSesz0psTTDtcyOsLgzi1iwWBDx0EnqBlDu6IlhAfxpD
         7vDv8KyrbpaZf+i0PNwY45wWcdnbl8BeaLI7ZFh6pxjetP8LaZttdJk7QK0b+Ydggspb
         xEgA==
X-Gm-Message-State: ACgBeo2rlrl1DpIBkdPLrjkvKjJHB9QyE8wlaPCLoiQaOfYXT4YOQdVg
        3Eu0Ki1uakzIQZZVJnI1j8mAfkBmrO494R5A
X-Google-Smtp-Source: AA6agR7OZmOpXS7+02tNqFitUFXXGQkqNUYoDp/ZzRjdPwPpDTOkj/3epSojRdpeY2k8fI2W5HiwSw==
X-Received: by 2002:a05:6512:2023:b0:48a:f7e5:8ca2 with SMTP id s3-20020a056512202300b0048af7e58ca2mr6500767lfs.592.1659939649359;
        Sun, 07 Aug 2022 23:20:49 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id f37-20020a0565123b2500b0048b29b24761sm1310605lfv.91.2022.08.07.23.20.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Aug 2022 23:20:48 -0700 (PDT)
Message-ID: <09264520-15fc-fd35-c1d6-9e9d0230ea4a@linaro.org>
Date:   Mon, 8 Aug 2022 09:20:47 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2] dt-binding: ipmi: add fallback to npcm845 compatible
Content-Language: en-US
To:     minyard@acm.org, Tomer Maimon <tmaimon77@gmail.com>
Cc:     avifishman70@gmail.com, tali.perry1@gmail.com, joel@jms.id.au,
        venture@google.com, yuenn@google.com, benjaminfair@google.com,
        jic23@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, openbmc@lists.ozlabs.org,
        openipmi-developer@lists.sourceforge.net,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20220804181800.235368-1-tmaimon77@gmail.com>
 <20220805115827.GG3834@minyard.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220805115827.GG3834@minyard.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/08/2022 13:58, Corey Minyard wrote:
> On Thu, Aug 04, 2022 at 09:18:00PM +0300, Tomer Maimon wrote:
>> Add to npcm845 KCS compatible string a fallback to npcm750 KCS compatible
>> string becuase NPCM845 and NPCM750 BMCs are using identical KCS modules.
>>
>> Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
>> ---
>>  Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt b/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
>> index cbc10a68ddef..4fda76e63396 100644
>> --- a/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
>> +++ b/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
>> @@ -7,7 +7,7 @@ used to perform in-band IPMI communication with their host.
>>  Required properties:
>>  - compatible : should be one of
>>      "nuvoton,npcm750-kcs-bmc"
>> -    "nuvoton,npcm845-kcs-bmc"
>> +    "nuvoton,npcm845-kcs-bmc", "nuvoton,npcm750-kcs-bmc"
> 
> This is just wrong.  The compatible is supposed to identify the device,
> not the board the device is on.  I think compatible here should be
> "npcm7xx-kcs-bmc", and just use that everywhere.  It's fine if that is

No, because you propose to use wildcards as compatible which is not
correct. Compatibles must be specific.

Best regards,
Krzysztof
