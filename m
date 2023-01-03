Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7436C65C371
	for <lists+devicetree@lfdr.de>; Tue,  3 Jan 2023 16:59:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238086AbjACP6x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Jan 2023 10:58:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238215AbjACP6T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Jan 2023 10:58:19 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3980D1274A
        for <devicetree@vger.kernel.org>; Tue,  3 Jan 2023 07:58:18 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id bq39so38420424lfb.0
        for <devicetree@vger.kernel.org>; Tue, 03 Jan 2023 07:58:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=72mA5ojFgMLVEqAkQaCbUqv8L54FnJT6kWDdtZXnH8k=;
        b=ZR6CuU0SVs+2fa7ImRzShQIqdD+s1t0zPg6gcMOo9oHiESgjcB/fqQwwvjLmsiAFSA
         68WEpQLvxRlO+gvNY4TGr1Rs5BUkah8JeZg2NLNTYz9vWVEUA3rJvu0kbgJ2ffRNgi6+
         rqd4bp/32Ruz3UYGXfhr70gI7+QRLHKnlATtgvZs0x+TxiXBzysWZNrbdHYsTydJA3aI
         lJWPx3igM7XnBHuZlt//8E9xsZWZAbRcjYyLqCBTbdl5oo40SBxRV4i4JZIffKKvxBxX
         4m1cQxPZ99KEjBINdOjdqXU5d5X/r2nq9qJvoiJCtsYSJNEtcShPVU5LjM0ggcW/DHZ4
         AyuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=72mA5ojFgMLVEqAkQaCbUqv8L54FnJT6kWDdtZXnH8k=;
        b=bplfi6TpAdVEIa2MvktawJn27VZfltmxeyb8oNFnXYScbbjJrNMpaTG2NuCXytZ86P
         QMpwW+qOYaPUM0XAsU7YmAw8TNuwG4oEtj/bjAQJnUSlH0dvAV+PK+H7NaxERm4wYHfH
         qeoepx0I8vhO3UuUDV/mBCKypHCvqKyUhvYM9RKHpAdCiQyXD1OCUMYNIMNdWpslS+pd
         PwW8j4zzX0BGqcuF55DWJJ1scNUD6hRepArw7exVo0Ple8K52c4qEku0aET/CmvXxYex
         6kxzE1sizivRw+CzkEbQ8CtzagVmOpkWe0ZuP1I2ppJeYwYGS1GuKmjZVDqsM1nIS0Co
         m1SQ==
X-Gm-Message-State: AFqh2ko9iMja/hUAJEVr0G9pekb+eosr1KsAZ6gz7Sl/c1dNGs52T+0E
        8AgVc79F9SfQn79OlXkuDGQOWg==
X-Google-Smtp-Source: AMrXdXsJRJFmNGcdrpCX4Ew7dswqjffLVmIQHsolgx3asO447k2As8kQ4rSPO3cW12SocgcHpv/l2A==
X-Received: by 2002:a05:6512:1597:b0:4b6:f4bb:e53f with SMTP id bp23-20020a056512159700b004b6f4bbe53fmr13398291lfb.60.1672761496628;
        Tue, 03 Jan 2023 07:58:16 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id s4-20020a056512202400b004b5979f9ba8sm4853215lfs.210.2023.01.03.07.58.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Jan 2023 07:58:16 -0800 (PST)
Message-ID: <6e347f3f-1dd0-3c84-8156-d6d891b25b00@linaro.org>
Date:   Tue, 3 Jan 2023 16:58:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2 0/2] Add support for Marvell MHU on CN9x and CN10x SoC
Content-Language: en-US
To:     Wojciech Zmuda <wzmuda@marvell.com>, linux-kernel@vger.kernel.org
Cc:     jassisinghbrar@gmail.com, robh+dt@kernel.org, sgoutham@marvell.com,
        devicetree@vger.kernel.org
References: <20230103155612.6217-1-wzmuda@marvell.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230103155612.6217-1-wzmuda@marvell.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/01/2023 16:56, Wojciech Zmuda wrote:
> In order to support ARM SCMI for the Marvell CN9x, CN10x SoC, add a
> generic platform MHU driver based loosely on arm_mhu.c and pcc.c.
> 
> v1->v2:
> - Clean up
> - Rebase on 6.1
> - Remove PCI interrupts

Where is the v1?

https://lore.kernel.org/all/?q=%22mailbox%3A+mvl-mhu%3A+add+OcteonTX2+MHU+mailbox+driver%22

Best regards,
Krzysztof

