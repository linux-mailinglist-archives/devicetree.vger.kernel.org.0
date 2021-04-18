Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D504E3636EB
	for <lists+devicetree@lfdr.de>; Sun, 18 Apr 2021 19:03:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230028AbhDRREH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Apr 2021 13:04:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229446AbhDRREH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Apr 2021 13:04:07 -0400
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [IPv6:2001:67c:2050::465:201])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12D5FC06174A
        for <devicetree@vger.kernel.org>; Sun, 18 Apr 2021 10:03:39 -0700 (PDT)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4FNbr90xVMzQjxV;
        Sun, 18 Apr 2021 19:03:37 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hauke-m.de; s=MBO0001;
        t=1618765415;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=wZjHDFyIJwgltzOPYwo/FQpuqb63UKhAO+gnpdgNwac=;
        b=nrMgmySGBZWGZd56v0v0t9f7GMdCdQNMtPTyJpsjCyIyb2JHx6Qi/9cQGuTt6ZKvXvpfkA
        1gHnFw2RX1zZPihkTmYizerNRlFOc8IOBptVZL1HEBXnZ4uXYrEksW8+0avUYKga6wdtwm
        0BMY1bZ0e2zPYeoMOaZpPuMDA8z92csfQw6kMFiVT6FqtTJXdcyEKBPmh8T48keak1cruS
        J5Uwr3wKsAd8MtuyQNmDiSi8EggZfako8wZddMBtkTBKBOONF2twABTWIuHtGRHdPp28O5
        jfGSGszF6zkfniMyXwmH6ONvuxbQY3bQgz8/S8pBb2P0VZip4KIbTksEFTvJqg==
Received: from smtp2.mailbox.org ([80.241.60.241])
        by spamfilter01.heinlein-hosting.de (spamfilter01.heinlein-hosting.de [80.241.56.115]) (amavisd-new, port 10030)
        with ESMTP id FzsY7P3jsSOD; Sun, 18 Apr 2021 19:03:33 +0200 (CEST)
Subject: Re: [PATCH 2/2] mtd: parsers: trx: Remove dependency to BRCM
 architectures
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org
Cc:     linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        rafal@milecki.pl, musashino.open@gmail.com
References: <20210315170711.567358-1-hauke@hauke-m.de>
 <20210315170711.567358-3-hauke@hauke-m.de>
 <16aba7dd-63ca-e68c-469f-f21cff75b32e@gmail.com>
From:   Hauke Mehrtens <hauke@hauke-m.de>
Message-ID: <83e82a6f-f579-ec7b-e6fd-2fe47fbdd08b@hauke-m.de>
Date:   Sun, 18 Apr 2021 19:03:32 +0200
MIME-Version: 1.0
In-Reply-To: <16aba7dd-63ca-e68c-469f-f21cff75b32e@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-MBO-SPAM-Probability: 
X-Rspamd-Score: -2.41 / 15.00 / 15.00
X-Rspamd-Queue-Id: DCC1517E5
X-Rspamd-UID: f9beb5
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 3/18/21 7:45 AM, Rafał Miłecki wrote:
> On 15.03.2021 18:07, Hauke Mehrtens wrote:
>> Buffalo uses the TRX partition format also on Mediatek SoCs.
>>
>> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
>> ---
>>   drivers/mtd/parsers/Kconfig | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/mtd/parsers/Kconfig b/drivers/mtd/parsers/Kconfig
>> index d90c30229052..6242903d8844 100644
>> --- a/drivers/mtd/parsers/Kconfig
>> +++ b/drivers/mtd/parsers/Kconfig
>> @@ -96,7 +96,7 @@ config MTD_AFS_PARTS
>>   config MTD_PARSER_TRX
>>       tristate "Parser for TRX format partitions"
>> -    depends on MTD && (BCM47XX || ARCH_BCM_5301X || COMPILE_TEST)
>> +    depends on MTD
>>       help
>>         TRX is a firmware format used by Broadcom on their devices. It
>>         may contain up to 3/4 partitions (depending on the version).
>>
> 
> Please check Documentation/kbuild/kconfig-language.rst and commit
> 18084e435ff6 ("Documentation/kbuild: Document platform dependency
> practises")
> 
> I think you should rather add platform to DEPENDS.

Ok I will add a dependency to ARCH_MEDIATEK. I think Buffalo also used 
this on some Mediatek/ralink MIPS devices, but they are not supported 
upstream yet.

Hauke
