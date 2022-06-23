Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F196557A7F
	for <lists+devicetree@lfdr.de>; Thu, 23 Jun 2022 14:41:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231341AbiFWMlZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Jun 2022 08:41:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231522AbiFWMlY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Jun 2022 08:41:24 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B545749937
        for <devicetree@vger.kernel.org>; Thu, 23 Jun 2022 05:41:22 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id m125-20020a1ca383000000b0039c63fe5f64so1423281wme.0
        for <devicetree@vger.kernel.org>; Thu, 23 Jun 2022 05:41:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=YKuhlfeie/APuzN1zX50F9wlajDVarix+gW9JqPWiT0=;
        b=UMP6RCyZP4CD6hOpGQbkX9Cj3bPk1ibYJbn4nsdNdndZTqQfI3/vZ8bIRLgJSIms8u
         CPePjkJfaFGkLpAH9WY7iFv9pbNYvYe5jqqSz8sj+2Qf4GfYVFiKObOiaJ7J+qH1bGvP
         VbLXbFzeDNL3kV5xpFgi8EPl9utzHo/yeUTmYj0EJVSqHBEOLi9N+dZTEkBtSiT1ZYoV
         E4fQE+A+R2BHBwNPUeWkzfyaoJLLBH+EMoSWnr4Qer7+DC8yHJI0iUtL7cob5S1ocket
         H2qCHNsne4oMOwFRLI9UMKSLvjNlpdi8dU2fdlh1bFht6a2RH8lnI13E785t9rZnNwvq
         L5OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=YKuhlfeie/APuzN1zX50F9wlajDVarix+gW9JqPWiT0=;
        b=nLm7E7o0UngYpkS3nZTu2hbMrdO5iuHdeN+GZvn1ClT6EOX0NNjnR4/m502RQhUJj9
         CrJ/QceUGiwiWhAIdl5ry0/Yd4vaLvNp6zvrtoXbU5OSZh1qIRIePIKqsalLGxOSnQXr
         JnLkmySYjMDox6UiiObWCsR0XJqymDNbhFQFqVTfbZ5qwFd38w9gMxz+/DmTT1qgrNa0
         mDwSI2nHPl4ouLumEby8QyFKbNreEzkh1HQhqyCd8aQKSGaL4UUia0c/S72Q5zNKbaJm
         +kD+atS+gz+gqpue9npirYnqtf1/kLRHCrAbNyk7Ut3VyMTHMcrinR/R4RFKbD753ewN
         mfCA==
X-Gm-Message-State: AJIora/fJwqZ+TW2+NMwlZnZKvSY/7wEgXlpsJUSf5Gk76JsWzzJ2bw2
        1tzqOJBHKFj+DpHHqhBjzkyI/g==
X-Google-Smtp-Source: AGRyM1sX86vrrjVPPP1yUcwx/sZIRbQprpzXl44FYJKuAjsvw6TD5Ua2hBw6xE35bd62RibFYqBp1g==
X-Received: by 2002:a05:600c:2c46:b0:39c:55a0:9533 with SMTP id r6-20020a05600c2c4600b0039c55a09533mr4015082wmg.104.1655988081094;
        Thu, 23 Jun 2022 05:41:21 -0700 (PDT)
Received: from [192.168.149.129] ([80.233.63.220])
        by smtp.gmail.com with ESMTPSA id n1-20020a5d4201000000b0021a36955493sm23104159wrq.74.2022.06.23.05.41.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jun 2022 05:41:20 -0700 (PDT)
Message-ID: <4a76c7aa-62e8-385c-15a0-9992ec566de5@conchuod.ie>
Date:   Thu, 23 Jun 2022 13:41:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 06/14] spi: dt-bindings: dw-apb-ssi: update
 spi-{r,t}x-bus-width for dwc-ssi
Content-Language: en-US
To:     Serge Semin <fancer.lancer@gmail.com>, Conor.Dooley@microchip.com
Cc:     damien.lemoal@opensource.wdc.com, airlied@linux.ie,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, thierry.reding@gmail.com,
        sam@ravnborg.org, Eugeniy.Paltsev@synopsys.com, vkoul@kernel.org,
        lgirdwood@gmail.com, broonie@kernel.org, daniel.lezcano@linaro.org,
        palmer@dabbelt.com, palmer@rivosinc.com, tglx@linutronix.de,
        paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
        masahiroy@kernel.org, geert@linux-m68k.org, niklas.cassel@wdc.com,
        dillon.minfei@gmail.com, jee.heng.sia@intel.com,
        joabreu@synopsys.com, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dmaengine@vger.kernel.org, alsa-devel@alsa-project.org,
        linux-spi@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20220618123035.563070-1-mail@conchuod.ie>
 <20220618123035.563070-7-mail@conchuod.ie>
 <20220620205654.g7fyipwytbww5757@mobilestation>
 <61b0fb86-078d-0262-b142-df2984ce0f97@microchip.com>
 <9a1fcb40-9267-d8e6-b3b6-3b03fd789822@opensource.wdc.com>
 <a2d85598-76d1-c9dc-d50d-e5aa815997cf@conchuod.ie>
 <c272728f-f610-77df-bd9b-c9fee6b727f8@opensource.wdc.com>
 <bd2547f8-e069-60a2-a223-9f694457636d@microchip.com>
 <20220623102502.jiksqr3m6y733haq@mobilestation>
From:   Conor Dooley <mail@conchuod.ie>
In-Reply-To: <20220623102502.jiksqr3m6y733haq@mobilestation>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 23/06/2022 11:25, Serge Semin wrote:
> On Tue, Jun 21, 2022 at 04:06:21PM +0000, Conor.Dooley@microchip.com wrote:
>> On 21/06/2022 00:17, Damien Le Moal wrote:
>>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>>>
>>> On 6/21/22 07:49, Conor Dooley wrote:
>>>>
>> ---8<---
>>>>>>
>>>>>> hmm, well I'll leave that up to people that have Canaan hardware!
>>>>>
>>>>> I will test this series.
>>>>>
>>>>
>>>> Cool, thanks.
>>>> I'll try to get a respin out tomorrow w/ the memory node "unfixed".
>>>
>>> OK. I will test that then :)
>>
>> Since the memory node hit that dt-schema snag, I have not sent a v2.
>> Going to be AFK for a few days, so I dropped the memory node change,
>> changed the spi binding & put the series on:
>> git.kernel.org/pub/scm/linux/kernel/git/conor/linux.git/ canaan
>>
> 
>> If you get a chance to look at it great, if not I'll send a v2 once
>> the memory node is figured out.
> 
> commit 84df6ca0f277 ("spi: dt-bindings: dw-apb-ssi: update
> spi-{r,t}x-bus-width") looks good to me. Feel free to add my ack tag
> to v2 of that patch.

Sure, thanks!
