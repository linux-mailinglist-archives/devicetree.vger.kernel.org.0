Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 117D358C874
	for <lists+devicetree@lfdr.de>; Mon,  8 Aug 2022 14:38:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242548AbiHHMiv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Aug 2022 08:38:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237479AbiHHMiu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Aug 2022 08:38:50 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05749AE60
        for <devicetree@vger.kernel.org>; Mon,  8 Aug 2022 05:38:49 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id v7so9688203ljj.4
        for <devicetree@vger.kernel.org>; Mon, 08 Aug 2022 05:38:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=FyiESZhu+E7/BKkttGblDxWjWxD0N7svGStIMfixe6g=;
        b=rLJ0lyBvsw3HLGnfXzsGvHgYH/J3/z1+3o1/9nl4S8ccnWoz9hcIevwZQK1JZ/sNe/
         L7XKYtQHQPNtFZ684HAhXRWZLmtyQdrge8SXmwUFa7GPh+uwxN7RQ4JM7T4MXd32dy6n
         2HfNMu24H91FXmB/CO6RqWVR3Jqv0FKbhIY5si9CtwtgmxbydI4d5a3gO9eRABgJ/eec
         7tdpV5648hEW6iaDB56qq4iAltVqAOZJ0tVWtD798rY1a41kugkBOtul0GtK3w3g39Cw
         bJKcEbUBXxqrr8X8verT4ayW3dGC/U09kTVTi/HyAeQ6UHSXYozojmeFFQWbsszFVp/m
         Lqxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=FyiESZhu+E7/BKkttGblDxWjWxD0N7svGStIMfixe6g=;
        b=2m05Z+txz/lbBHofaACppO3o0SWtJfJibrnQHJ0OxaGiZZwbzw9I+QuqRvOC0NFSjz
         lnT0tTK5Q5onqHc/c5z7PqYKGWUhhHN97IIdWoHknk7ZHokTyIP852XN4jwY39jqZH2Z
         Eh2gy1N8ZsThvEMN4JyBa9+B6GIF3HB6B8N8KONhG4MroYYcndBbXPRwtTdqp5wxcZX8
         H+IPkYbXmgHudu/xb+Ew+Lzu360cWxZHxqKMd6okoTJw0nwWPRQSBvsX38u3NJqaQ27a
         MADrgrujVA6dLENZwenJAOHDe3fYn6ZFVIvIT1HN6ieMuGJQe/uuXZM/Llg63I7UQCnm
         YEQg==
X-Gm-Message-State: ACgBeo0vhV4OcLVxvpwBpdLmZf5Rz7schIpf8LIZVnGZwEWyxA9K05jt
        hFbUCOfOZONjcXhxA+MdkXYk/w==
X-Google-Smtp-Source: AA6agR6+cdKmIIcwQHHvzpEfmXs0vtGDVCqzuNhHpAMqsPQSHhxfdUwkHa1upr8sME3uKXz3Y+fCRg==
X-Received: by 2002:a2e:921a:0:b0:25e:b171:1f39 with SMTP id k26-20020a2e921a000000b0025eb1711f39mr4235389ljg.3.1659962327354;
        Mon, 08 Aug 2022 05:38:47 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id 19-20020ac24853000000b0048b0176bac6sm1420342lfy.93.2022.08.08.05.38.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Aug 2022 05:38:46 -0700 (PDT)
Message-ID: <937b6737-5d55-2185-a4bc-7535fa6da85c@linaro.org>
Date:   Mon, 8 Aug 2022 15:38:45 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v3] dt-binding: ipmi: add fallback to npcm845 compatible
Content-Language: en-US
To:     minyard@acm.org
Cc:     Tomer Maimon <tmaimon77@gmail.com>, avifishman70@gmail.com,
        tali.perry1@gmail.com, joel@jms.id.au, venture@google.com,
        yuenn@google.com, benjaminfair@google.com, jic23@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        openbmc@lists.ozlabs.org, openipmi-developer@lists.sourceforge.net,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20220808075452.115907-1-tmaimon77@gmail.com>
 <da83671e-08b9-2d68-e5d3-d9b09c105bb4@linaro.org>
 <20220808122652.GO3834@minyard.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220808122652.GO3834@minyard.net>
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

On 08/08/2022 15:26, Corey Minyard wrote:
> On Mon, Aug 08, 2022 at 11:11:16AM +0300, Krzysztof Kozlowski wrote:
>> On 08/08/2022 09:54, Tomer Maimon wrote:
>>> Add to npcm845 KCS compatible string a fallback to npcm750 KCS compatible
>>> string becuase NPCM845 and NPCM750 BMCs are using identical KCS modules.
>>>
>>> Fixes: 84261749e58a ("dt-bindings: ipmi: Add npcm845 compatible")
>>> Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
>>
>>
>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Ok, I think I understand how this is supposed to work.  It's not
> altogether clear from the device tree documentation.  It says in
> Documentation/devicetree/bindings/writing-bindings.rst:
> 
> - DO make 'compatible' properties specific. DON'T use wildcards in compatible
>   strings. DO use fallback compatibles when devices are the same as or a subset
>   of prior implementations. DO add new compatibles in case there are new
>   features or bugs.

This documentation is short, so it explains what should be done, not
exactly why it should be done. If we wanted "why" this would not be set
of 4 sentences but twice more...

> 
> AFAICT, there are no new features or bugs, just a new SOC with the same
> device.  In general usage I have seen, you would just use the same
> compatible.  

Most of the usages are like shown here. There are several other cases.
It's the same with poor or good code - you will always find both patterns.

> However, if I understand this, that last sentence should say:
> 
>   DO add new compatibles in case there is a new version of hardware with
>   the possibility of new features and/or bugs.
> 
> Also, the term "specific" is, ironically, vague.  Specific to what?

To me it is rather clear. Specific as in first meanings of the word (1,
3, 4 and 5):
https://en.wiktionary.org/wiki/specific

nuvoton,npcm7xx-kcs-bmc would not be definite (allows more meanings),
unique (in terms of devices it expresses), distinctive (as two different
devices use the same) or serving to identify one thing (again - two SoCs).

What other meaning do you think of?

> 
> It would be nice to have something added to "Typical cases and caveats"
> that says:
> 
> - If you are writing a binding for a new device that is the same as, or
>   a superset of another existing device, add a new specific compatible
>   for the new device followed by a compatible for the existing device.
>   That way, if the device has new bugs or new specific features are
>   added, you can add workarounds without modifying the device tree.
> 
> Anyway, I have added this to my tree with your ack.

Fantastic, thanks!


Best regards,
Krzysztof
