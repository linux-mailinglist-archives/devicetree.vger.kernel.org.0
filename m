Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A6306E6C1E
	for <lists+devicetree@lfdr.de>; Tue, 18 Apr 2023 20:33:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232149AbjDRSdA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Apr 2023 14:33:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230143AbjDRSc5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Apr 2023 14:32:57 -0400
Received: from smtp.smtpout.orange.fr (smtp-13.smtpout.orange.fr [80.12.242.13])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A45759FE
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 11:32:55 -0700 (PDT)
Received: from [192.168.1.18] ([86.243.2.178])
        by smtp.orange.fr with ESMTPA
        id oq89py9rCXvOIoq89p3y6b; Tue, 18 Apr 2023 20:32:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=orange.fr;
        s=t20230301; t=1681842773;
        bh=PtJebxHU9q2u4Gq2G/75h8S8BR8wUcfxQvQnpidmFHc=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To;
        b=kfPdUStYRz5cjbnParNGERoFLJnGZLOnPo3sKIvpiMxGci3rwT+zLWWbdP/sEsKkA
         H8FoCdLBIQbMKLNo84DdMGzj1xz0/yCSeQ59O0Bacq6ZP02de7rYI4bIzNMRCB+43u
         Uam/6G2g06dyyERbzESDtULet2/6LIxHT+QkIAtqur241ubaZbBFToweb8s+42J4Ff
         ob6CjSqPi/uOIHbLKeFUixe1H+0LuFWqneyaj2dto8kos4Jddfs9HpS0U367k2UK/e
         pJ0sycK+aq69/QvrfZ/4hPMcEutMQ/gOXX7Umc2YnAnVF86H2TCkcFWV5+mspEsM58
         mGwy4nascLLyw==
X-ME-Helo: [192.168.1.18]
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Tue, 18 Apr 2023 20:32:53 +0200
X-ME-IP: 86.243.2.178
Message-ID: <dc7efe17-9cde-c630-9c0e-d43bdcfb309f@wanadoo.fr>
Date:   Tue, 18 Apr 2023 20:32:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: RE: [PATCH v10 2/2] i2c: aspeed: support ast2600 i2c new register
 mode driver
Content-Language: fr
To:     Ryan Chen <ryan_chen@aspeedtech.com>
Cc:     "andrew@aj.id.au" <andrew@aj.id.au>,
        "andriy.shevchenko@linux.intel.com" 
        <andriy.shevchenko@linux.intel.com>,
        "benh@kernel.crashing.org" <benh@kernel.crashing.org>,
        "brendan.higgins@linux.dev" <brendan.higgins@linux.dev>,
        "conor.dooley@microchip.com" <conor.dooley@microchip.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
        "jdelvare@suse.de" <jdelvare@suse.de>,
        "jk@codeconstruct.com.au" <jk@codeconstruct.com.au>,
        "joel@jms.id.au" <joel@jms.id.au>,
        "kfting@nuvoton.com" <kfting@nuvoton.com>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
References: <20230415012848.1777768-1-ryan_chen@aspeedtech.com>
 <20230415012848.1777768-3-ryan_chen__29933.816513379$1681522335$gmane$org@aspeedtech.com>
 <ac1bdb16-03bc-e424-f317-3032980760ab@wanadoo.fr>
 <SEZPR06MB5269CA325393CBACAD92087FF29D9@SEZPR06MB5269.apcprd06.prod.outlook.com>
From:   Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <SEZPR06MB5269CA325393CBACAD92087FF29D9@SEZPR06MB5269.apcprd06.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Le 18/04/2023 à 12:09, Ryan Chen a écrit :
> Hello Christophe,
> 
>> Subject: Re: [PATCH v10 2/2] i2c: aspeed: support ast2600 i2c new register
>> mode driver
>>
>> (resending, my mail client removed some addresses. Sorry for the duplicated
>> message for the others)
>>
>>


>>   > +    dev_dbg(i2c_bus->dev, "Recovery done [%x]\n",
>>   > +        readl(i2c_bus->reg_base + AST2600_I2CC_STS_AND_BUFF));
>>   > +    if (readl(i2c_bus->reg_base + AST2600_I2CC_STS_AND_BUFF) &
>> AST2600_I2CC_BUS_BUSY_STS) {
>>   > +        dev_dbg(i2c_bus->dev, "Can't recovery bus [%x]\n",
>>
>> recover?
> 
> Sorry, Do you mean modify the wording "Can’t recover bus"?

Yes.
English is not my native language but "Can't recovery bus" sounds 
strange to me.

>>   > +master_out:
>>   > +    if (i2c_bus->mode == DMA_MODE) {
>>   > +        kfree(i2c_bus->master_safe_buf);
>>   > +        i2c_bus->master_safe_buf = NULL;
>>
>> Alignement.
> 
> Sorry, I can't catch the alignment could you help point out or give me example?

2 tabs in front of kfree
1 tab + 4 spaces in front of i2c_bus->master_safe_buf

when tabs are configures as 8 spaces, it looks strange.

>>   > +
>>   > +    writel(cmd, i2c_bus->reg_base + AST2600_I2CS_CMD_STS);
>>   > +    i2c_bus->slave = client;
>>   > +    /* Set slave addr. */
>>   > +    writel(client->addr | AST2600_I2CS_ADDR1_ENABLE,
>>   > +            i2c_bus->reg_base + AST2600_I2CS_ADDR_CTRL);
>>
>> Nit: alignement
> Sorry, what should I do for alignment.

1 tab in front of writel
3 tabs in front of i2c_bus->reg_base

when tabs are configures as 8 spaces, it looks strange.

Look at the writel just a lines below. These ones look nice :)

>>   > +    /* i2c timeout counter: use base clk4 1Mhz,
>>   > +     * per unit: 1/(1000/4096) = 4096us
>>   > +     */
>>   > +    ret = of_property_read_u32(dev->of_node,
>>   > +                            "i2c-scl-clk-low-timeout-us",
>>   > +                            &i2c_bus->timeout);
>>
>> Strange layout.
> 
> Sorry, could you point out the strange? It just property read for timeout.

"i2c-scl-clk-low-timeout-us" could fit on the previous line (but up to 
you to do it or not).

The 2 last lines are way to much on the right when tabs are 8 spaces.

>>
>>   > +    if (ret < 0)
>>   > +        i2c_bus->timeout = 0;
>>
>> Nit: This is not really needed since i2c_bus is kzalloc()'ed.
> 
> Got it, will remove it.

I would say that it is a matter of taste. If it improves reading, I 
think that it is fine as-is. If you want to save a few lines of code, it 
can be removed.


CJ

