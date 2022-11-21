Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B559632226
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 13:32:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231283AbiKUMct (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 07:32:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231285AbiKUMcU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 07:32:20 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 295D7BEB6F
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 04:31:12 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id v7so8373834wmn.0
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 04:31:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FnfQ6ISxK8RloWdHimWZZCwZlxQOVw743/patpAY6b0=;
        b=hq7TGJPwl+9Z6/uN8eGb1DczClEE77ILU6BLdVbxSUGfGLMvPqyIzOi+uzMXt5HaU/
         K/FJc62OucBxht+eGBQ7c9lyinkAztGtbe8SbP8/KPRNWeRbnACK1tWWPNWHzQhfUZDj
         sdHNGSCLjPJqOspnE3U0gGIMNpmxm+Fxfx8L8mjE03yH8b2ae+el1V1XPutYM4CHT4N8
         kl4TWtB8HSIJJwV82pGtQQ5UQ1M0YQXwZ5wKRUQVD9HMpCqT+NXnn1ev12nJYXYSFYJF
         jhcAAzqZy6LRgw0uGNZh7kiylC1TZ18mWqviPMIRURcrvgfk2ZMnhvL1TwFs/fwIizkJ
         WytA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FnfQ6ISxK8RloWdHimWZZCwZlxQOVw743/patpAY6b0=;
        b=REuG+JtGXZun+22Uc3UTedmE4oxDXCZXj0ZEzubFDyeLE0GVdwAtiitxqIzExGAWDF
         q3GqIIshg+ld+XiWO70GnuI10rTXopaQzBYfXACbewYzV8SIlmkjtOUQP+YwO62HGDFq
         EAxCCmsJuvyMiWMlsOvRh9zRXqT2ROllFA8D64rsyXg+N/XOZLNvUSdT36mtM3+XCzV9
         wGDHtneZ2RUmbPt4hPeNf/2Md67uSm9GHaVBrd0t91CJbay1Cb2kgT7V10cixmiBAOQl
         UXApwgxCIvyMORnVyj6rCZDukl+Kr7IqyBuQAkLv8SrKxIJ4MiFPtCv6MdCxeUgDuUMd
         EiVw==
X-Gm-Message-State: ANoB5pmazRrb/uwLefzZZDO7yQ0E/exw9VccCfFgcT3VDyqy2fTfz46k
        pLgVXAQnrKu0xmcmAVdBuT7gYiRdS7U=
X-Google-Smtp-Source: AA0mqf4Dqhm4B9v8P3G/NSei3zr8tKNE8Wh1t9jOakbPmLkjt0G32fm5C50hQ8TJ3iG4wN8jqQzyxw==
X-Received: by 2002:a05:600c:4a99:b0:3cf:91e5:3d69 with SMTP id b25-20020a05600c4a9900b003cf91e53d69mr16244393wmp.160.1669033871448;
        Mon, 21 Nov 2022 04:31:11 -0800 (PST)
Received: from [192.168.1.131] ([207.188.167.132])
        by smtp.gmail.com with ESMTPSA id m4-20020a05600c4f4400b003cffd3c3d6csm14664856wmq.12.2022.11.21.04.31.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 04:31:10 -0800 (PST)
Message-ID: <2cc7a3c5-563d-cdf6-f49b-5e0a9852fb54@gmail.com>
Date:   Mon, 21 Nov 2022 13:31:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 0/9] Remove the pins-are-numbered DT property
Content-Language: en-US
To:     =?UTF-8?Q?Bernhard_Rosenkr=c3=a4nzer?= <bero@baylibre.com>,
        devicetree@vger.kernel.org
Cc:     linux-mediatek@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        krzysztof.kozlowski@linaro.org, khilman@baylibre.com,
        mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com
References: <20221121015451.2471196-1-bero@baylibre.com>
From:   Matthias Brugger <matthias.bgg@gmail.com>
In-Reply-To: <20221121015451.2471196-1-bero@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Bernhard,

On 21/11/2022 02:54, Bernhard Rosenkränzer wrote:
> During the review of my MT8365 support patchset
> (https://lore.kernel.org/linux-mediatek/20221117210356.3178578-1-bero@baylibre.com/),
> the issue of the "pins-are-numbered" DeviceTree property has come up.
> 
> This property is unique to Mediatek MT65xx and STM32 pinctrls, and
> doesn't seem to serve any purpose (both the Mediatek and STM32 drivers
> simply refuse to deal with a device unless pins-are-numbered is set to
> true).
> 
> There is no other use of this property in the kernel or in other projects
> using DeviceTrees (checked u-boot and FreeBSD -- in both of those, the
> flag is present in Mediatek and STM devicetrees, but not used anywhere).
> 
> There is also no known use in userspace (in fact, a userland application
> relying on the property would be broken because it would get true on
> any Mediatek or STM chipset and false on all others, even though other
> chipsets use numbered pins).
> 
> This patchset removes all uses of pins-are-numbered.
> 
> 

My personal preference is to add a summary of the files touched by the series in 
the cover letter (the tools will do that for you). This allows maintainers to 
easier understand if they have to look deeper into the series or can ignore it.

No need to send again, just saying for the future.

Regards,
Matthias
