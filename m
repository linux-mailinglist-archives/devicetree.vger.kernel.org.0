Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E84425163D3
	for <lists+devicetree@lfdr.de>; Sun,  1 May 2022 12:41:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241027AbiEAKpV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 May 2022 06:45:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240644AbiEAKpP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 May 2022 06:45:15 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB01D222B2
        for <devicetree@vger.kernel.org>; Sun,  1 May 2022 03:41:50 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id bi24-20020a05600c3d9800b00393ff664705so7066812wmb.4
        for <devicetree@vger.kernel.org>; Sun, 01 May 2022 03:41:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod-ie.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=KkYcIJHTck024cDWMgkYahLoSVBSbqWmLIuloxERXSQ=;
        b=VpvQiZcnIQNb1lS7+RdWxTPcmuzgdf0ZV27F+Ohs3IfRaSLvpM/FRr5vg2fkYGoedz
         hnrX845HpeQ9LBVEkF9PpogCa2sxZRFJ5poIYiXdjS+4+LkZVv5gqc7POgJ4rynoFfb0
         DsM2NrUVDOorG8fWjgJUlGwam2Yzh52PU2noxIPiHBTqvx/WGvQXpfyH27rBF1BzjgLd
         zARe7HgePX/8HGbhXpFP3FoS9xPAbJDMfME6ChpR2UxCJLG3tx2tGV4PEw2pw2wGFvPd
         wAssXQXQoHoLJ4s33823ZrAOdQTbtWMCfyAYceX0car/FGV9AOJAjmPWeBb0/ZGUb83h
         ELVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=KkYcIJHTck024cDWMgkYahLoSVBSbqWmLIuloxERXSQ=;
        b=5NaPTYeOHGzGvui/MhcjHF8Z3VSIPsygPiS+t5qsDOApR/xaLGTYX+UXD93u+oohMs
         2jA7Xoenw76tr8hVD/RSerx1g/RjwEHmT1dSztjNiAf467ByFhEMDu+/PfwCWC7Ooewa
         NU0krgXke/xjqm5NJJ8xx2gtE+TB+W1M8hQZMEtE8f4t7sJhOGNsXKj7NFreQhXySjtS
         nVqaeqeB9GqJFdUHnqhbd2B0M3BXhxCWrnY8TnnJBI2p90NDCe3DuZVxr+K1tiJUoZ+D
         OWnXo5JaYw3YtvEPr4r9cN89VK2l0pxt5hbPTHDsmhF8znlCbnofnmcQm0/BwKgB4kr6
         2LVA==
X-Gm-Message-State: AOAM5319Aigg8jXMyj2VRl1FmPP1aAJ+7gyLlEZsXANXAdEoAk3HrR+U
        tteIoQOd3T6nXBFOqjYvwo3TOg==
X-Google-Smtp-Source: ABdhPJzGXEeq34Jm4TTaSQAMngCwQK7m1EFzg95Xh1Q4ULqiDjC1RSLvOdcCXm3rj9rePcnvUCbh4g==
X-Received: by 2002:a05:600c:3d8d:b0:394:3377:dfee with SMTP id bi13-20020a05600c3d8d00b003943377dfeemr2666293wmb.42.1651401709445;
        Sun, 01 May 2022 03:41:49 -0700 (PDT)
Received: from [192.168.2.222] ([109.77.36.132])
        by smtp.gmail.com with ESMTPSA id j2-20020a05600c1c0200b003942a244ed4sm4786467wms.25.2022.05.01.03.41.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 May 2022 03:41:48 -0700 (PDT)
Message-ID: <6477d21c-206a-f062-793a-7dfb801aadd7@conchuod.ie>
Date:   Sun, 1 May 2022 11:41:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH v2 4/8] dt-bindings: riscv: microchip: document icicle
 reference design
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        krzk+dt@kernel.org, palmer@dabbelt.com, robh+dt@kernel.org
Cc:     conor.dooley@microchip.com, Cyril.Jean@microchip.com,
        daire.mcnamara@microchip.com, paul.walmsley@sifive.com,
        aou@eecs.berkeley.edu, palmer@rivosinc.com, arnd@arndb.de,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org
References: <20220430130922.3504268-1-mail@conchuod.ie>
 <20220430130922.3504268-5-mail@conchuod.ie>
 <258640cd-01e3-2a9f-b2a5-79b2b6cc4f59@linaro.org>
From:   Conor Dooley <mail@conchuod.ie>
In-Reply-To: <258640cd-01e3-2a9f-b2a5-79b2b6cc4f59@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 01/05/2022 09:57, Krzysztof Kozlowski wrote:
> On 30/04/2022 15:09, Conor Dooley wrote:
>> From: Conor Dooley <conor.dooley@microchip.com>
>>
>> Add a compatible for the icicle kit's reference design. This represents
>> the FPGA fabric's contents & is versioned to denote which release of the
>> reference design it applies to.
>>
>> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
>> Signed-off-by: Conor Dooley <mail@conchuod.ie>
>> ---
>>  .../devicetree/bindings/riscv/microchip.yaml          | 11 +++++++----
>>  1 file changed, 7 insertions(+), 4 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/riscv/microchip.yaml b/Documentation/devicetree/bindings/riscv/microchip.yaml
>> index 3f981e897126..c9d8fcc7a69e 100644
>> --- a/Documentation/devicetree/bindings/riscv/microchip.yaml
>> +++ b/Documentation/devicetree/bindings/riscv/microchip.yaml
>> @@ -17,10 +17,13 @@ properties:
>>    $nodename:
>>      const: '/'
>>    compatible:
>> -    items:
>> -      - enum:
>> -          - microchip,mpfs-icicle-kit
>> -      - const: microchip,mpfs
>> +    oneOf:
>> +      - items:
>> +          - enum:
>> +              - microchip,mpfs-icicle-kit
>> +          - const: microchip,mpfs
> 
> Blank line.
> 
>> +      - items:
>> +          - const: microchip,mpfs-icicle-reference-rtlv2203
> 
> Why is this not compatible with microchip,mpfs?

I guess it should be, I'll add it. Thanks.


