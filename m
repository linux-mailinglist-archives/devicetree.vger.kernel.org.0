Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B49EF660292
	for <lists+devicetree@lfdr.de>; Fri,  6 Jan 2023 15:52:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231408AbjAFOwl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Jan 2023 09:52:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233287AbjAFOwV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Jan 2023 09:52:21 -0500
Received: from imap5.colo.codethink.co.uk (imap5.colo.codethink.co.uk [78.40.148.171])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C35D38112A
        for <devicetree@vger.kernel.org>; Fri,  6 Jan 2023 06:52:20 -0800 (PST)
Received: from [167.98.27.226] (helo=[10.35.5.156])
        by imap5.colo.codethink.co.uk with esmtpsa  (Exim 4.94.2 #2 (Debian))
        id 1pDo4t-0019kh-GG; Fri, 06 Jan 2023 14:52:16 +0000
Message-ID: <43d8108c-be59-c939-6d3e-d1afd28f7f77@codethink.co.uk>
Date:   Fri, 6 Jan 2023 14:52:16 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [Linux-kernel] [PATCH] riscv: dts: fu740: fix size of pcie 32bit
 memory
Content-Language: en-GB
From:   Ben Dooks <ben.dooks@codethink.co.uk>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Cc:     linux-kernel@lists.codethink.co.uk,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        palmer@dabbelt.com, zong.li@sifive.com,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Greentime Hu <greentime.hu@sifive.com>
References: <20230106134456.265891-1-ben.dooks@codethink.co.uk>
 <422275a4-b082-2951-71f2-04f33e036438@linaro.org>
 <b64bfeff-e1e8-02d5-0a7d-c2a0a905da5e@codethink.co.uk>
Organization: Codethink Limited.
In-Reply-To: <b64bfeff-e1e8-02d5-0a7d-c2a0a905da5e@codethink.co.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/01/2023 14:51, Ben Dooks wrote:
> On 06/01/2023 14:07, Krzysztof Kozlowski wrote:
>> On 06/01/2023 14:44, Ben Dooks wrote:
>>> The 32-bit memory resource is needed for non-prefetchable memory
>>> allocations on the PCIe bus, however with some cards (such as the
>>> SM768) the system fails to allocate memory from this.
>>>
>>> Checking the allocation against the datasheet, it looks like there
>>> has been a mis-calcualation of the resource for the first memory
>>> region (0x0060090000..0x0070ffffff) which in the data-sheet for
>>> the fu740 (v1p2) is from 0x0060000000..0x007fffffff. Changing
>>> this to allocate from 0x0060090000..0x007fffffff fixes the probing
>>> issues.
>>>
>>> Fixes: ae80d514808557018e44190 ("riscv: dts: Add PCIe support for the 
>>> SiFive FU740-C000 SoC
>>> ")
>>
>> Don't wrap lines.
>>
>>>
>>
>> Drop empty line between tags.
> 
> 
> Thanks, will fix.
> 
> Does anyone have a chance to review and/or test this, it works for me
> but I've not got a large number of devices to test with.

I forgot add that if a couple of other people can check this over then
I'll cc stable next time

-- 
Ben Dooks				http://www.codethink.co.uk/
Senior Engineer				Codethink - Providing Genius

https://www.codethink.co.uk/privacy.html

