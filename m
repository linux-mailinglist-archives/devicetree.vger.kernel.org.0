Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D686661F94
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 09:02:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229785AbjAIICT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 03:02:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232944AbjAIICR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 03:02:17 -0500
Received: from imap4.hz.codethink.co.uk (imap4.hz.codethink.co.uk [188.40.203.114])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81EFDFCDA
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 00:02:16 -0800 (PST)
Received: from [167.98.27.226] (helo=[10.35.5.156])
        by imap4.hz.codethink.co.uk with esmtpsa  (Exim 4.94.2 #2 (Debian))
        id 1pEn6i-002B9T-9B; Mon, 09 Jan 2023 08:02:13 +0000
Message-ID: <2b544772-8ff6-1b8b-05b8-7864f0e9bde9@codethink.co.uk>
Date:   Mon, 9 Jan 2023 08:02:12 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] riscv: dts: fu740: fix size of pcie 32bit memory
To:     Conor Dooley <conor@kernel.org>, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org
Cc:     Conor Dooley <conor.dooley@microchip.com>, robh+dt@kernel.org,
        palmer@dabbelt.com, krzysztof.kozlowski+dt@linaro.org,
        zong.li@sifive.com, linux-kernel@lists.codethink.co.uk,
        sudip.mukherjee@codethink.co.uk,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Greentime Hu <greentime.hu@sifive.com>
References: <20230106134456.265891-1-ben.dooks@codethink.co.uk>
 <167311996687.855922.17515622188982373442.b4-ty@microchip.com>
Content-Language: en-GB
From:   Ben Dooks <ben.dooks@codethink.co.uk>
Organization: Codethink Limited.
In-Reply-To: <167311996687.855922.17515622188982373442.b4-ty@microchip.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/01/2023 19:37, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> On Fri, 06 Jan 2023 13:44:56 +0000, Ben Dooks wrote:
>> The 32-bit memory resource is needed for non-prefetchable memory
>> allocations on the PCIe bus, however with some cards (such as the
>> SM768) the system fails to allocate memory from this.
>>
>> Checking the allocation against the datasheet, it looks like there
>> has been a mis-calcualation of the resource for the first memory
>> region (0x0060090000..0x0070ffffff) which in the data-sheet for
>> the fu740 (v1p2) is from 0x0060000000..0x007fffffff. Changing
>> this to allocate from 0x0060090000..0x007fffffff fixes the probing
>> issues.
>>
>> [...]
> 
> Applied to riscv-dt-fixes, thanks!
> 
> [1/1] riscv: dts: fu740: fix size of pcie 32bit memory
> 	https://git.kernel.org/conor/c/43d5f5d63699724d47f0d9e0eae516a260d232b4
> 
> I checked the numbers and they look correct per the v1p2 doc.
> I added a T-b from IRC for Ron, added the cc: stable and fixed the
> fixes tag while I was at it.
> 
> Thanks,
> Conor.

Ok, great. I'll ping the fu-sdk people as well as this is probably
useful for the next release.

-- 
Ben Dooks				http://www.codethink.co.uk/
Senior Engineer				Codethink - Providing Genius

https://www.codethink.co.uk/privacy.html

