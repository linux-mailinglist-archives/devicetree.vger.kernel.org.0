Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E81FA5163D1
	for <lists+devicetree@lfdr.de>; Sun,  1 May 2022 12:40:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232829AbiEAKn1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 May 2022 06:43:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231433AbiEAKnY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 May 2022 06:43:24 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F24E7DBC
        for <devicetree@vger.kernel.org>; Sun,  1 May 2022 03:39:58 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id r11-20020a05600c35cb00b0039409c1111bso6116937wmq.3
        for <devicetree@vger.kernel.org>; Sun, 01 May 2022 03:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod-ie.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=RTGIJr8n1HnWrIYz7FUX3oY+TZmLoliMXiiWkrwJcVc=;
        b=oOIYfmAJY8had1t3RSEMLF2NflkyowPvGVXM/UsXmwKV3bceP2QAdefPgIizOfbf0R
         aHcSEKfgtGV0oUrp2xyhXCkj6oqVkfrtBRlwVkNZ3S5ztDMTQ1+1E++LjxLTHYzbFIQU
         VAVFbHu6thS9m73XJlYUF+YkHfcJDOfRyX6FCQWoWTCVe8i2EzXappopj835Qx6sB5Nf
         DJb0Mdys2jzIVoJpC7INbiEgU+hNJPP2H+58DG16/N+0Lv4Ol88HpjuYQTBbD49huGBt
         rEFN31ugFE+eTt52cH3Co8so7mpZPY95/AVkj/gWMnfsbB0xd+mX8LqrYGgKwMCVq1ai
         5b+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=RTGIJr8n1HnWrIYz7FUX3oY+TZmLoliMXiiWkrwJcVc=;
        b=76v8g5Fi1PzRm31HcdDYAyRiw0E9oIMVE7v1IzkbuT7n8sCUj0tje/mPoHJ44eezmW
         ZDY4PZgwziaw6oOhYKUypIKgUbNCCq/XgN7NVe79eHw5keVGaSPqjaQ5ycHTQmChtiSQ
         bM+mYajpuKS23aVixJWNG1eXvtixYtxG+wJyq59FB7DMSy7rMnJ600uKQ6wZEKP20ZN6
         V31r4Re72DzZEh+70tmgtDAZ8BQkMo9vqEzQI1nTd8kYJ5Ja3yQ1KCMwF/gQh8rGKgUB
         /vwHr0u64NMhwZs3eNuQjlpBVNVWGgXXOMDadHWyNaljgMdhL7W3HitJW3K5lVFJK1aW
         KmWQ==
X-Gm-Message-State: AOAM531PD5WhlBSynhK7tHgQSjyRw8FmPTfp2eOnuuLK/c6Qj/WG5zA1
        aSYprzztQMgrxUBKhhprCn9lCg==
X-Google-Smtp-Source: ABdhPJxqjmcGta0K+qX3qvW017jiTDcRJd5RI/21DEtcW/tWJ74Bm5KsRvxS39O4Z9lahd3YbKc5aw==
X-Received: by 2002:a7b:cb84:0:b0:382:a9b9:2339 with SMTP id m4-20020a7bcb84000000b00382a9b92339mr11156660wmi.91.1651401597453;
        Sun, 01 May 2022 03:39:57 -0700 (PDT)
Received: from [192.168.2.222] ([109.77.36.132])
        by smtp.gmail.com with ESMTPSA id y20-20020a7bc194000000b003942a244f48sm3660528wmi.33.2022.05.01.03.39.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 May 2022 03:39:57 -0700 (PDT)
Message-ID: <f49b1d52-11e3-1c8b-bb1f-324318a7f669@conchuod.ie>
Date:   Sun, 1 May 2022 11:39:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH v2 6/8] dt-bindings: vendor-prefixes: add Sundance DSP
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        krzk+dt@kernel.org, palmer@dabbelt.com, robh+dt@kernel.org
Cc:     conor.dooley@microchip.com, Cyril.Jean@microchip.com,
        daire.mcnamara@microchip.com, paul.walmsley@sifive.com,
        aou@eecs.berkeley.edu, palmer@rivosinc.com, arnd@arndb.de,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org
References: <20220430130922.3504268-1-mail@conchuod.ie>
 <20220430130922.3504268-7-mail@conchuod.ie>
 <6fdc6da4-3a34-e67c-cab8-1c9570501a8a@linaro.org>
From:   Conor Dooley <mail@conchuod.ie>
In-Reply-To: <6fdc6da4-3a34-e67c-cab8-1c9570501a8a@linaro.org>
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

On 01/05/2022 09:59, Krzysztof Kozlowski wrote:
> On 30/04/2022 15:09, Conor Dooley wrote:
>> From: Conor Dooley <conor.dooley@microchip.com>
>>
>> Sundance DSP Inc. (https://www.sundancedsp.com/) is a supplier of
>> high-performance DSP and FPGA processor boards and I/O modules.
>>
>> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
>> Signed-off-by: Conor Dooley <mail@conchuod.ie>
> 
> If your @microchip.com email still works, then there is no need to
> double-sign it. At the end you are still the same person... unless
> you're not. :)
> 
> This applies to your other patches as well.

I thought that the last SoB had to match the email it was sent from?
If that's not the case, my bad. The @microchip email still works, but
it would've meant waiting til Tuesday to resend.

