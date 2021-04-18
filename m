Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA8E83636E4
	for <lists+devicetree@lfdr.de>; Sun, 18 Apr 2021 18:59:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230028AbhDRQ7o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Apr 2021 12:59:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229446AbhDRQ7o (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Apr 2021 12:59:44 -0400
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [IPv6:2001:67c:2050::465:201])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9C8DC06174A
        for <devicetree@vger.kernel.org>; Sun, 18 Apr 2021 09:59:15 -0700 (PDT)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:105:465:1:2:0])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4FNbl52FpbzQjmP;
        Sun, 18 Apr 2021 18:59:13 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hauke-m.de; s=MBO0001;
        t=1618765151;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=a7z4XegMYo+OkjjZeeWcvq6/tiuPjYPWQG+a4wQcIFE=;
        b=q2YH3CGg6BIVR8AlfECI2iDTT8plxAdLiO7FklKDFVYilsP5XQHV9g3SzdJTq0F6BggVpm
        DOzkxBZABDBD0r+sxyWGeYt1rE1vd/fEKLaJM7e378DATEmeg18McIZxInJvEBUIeEdx5f
        PX81u3NjyRobjhOXYLbeMu2nDXEJubWqDS4A/ejcYMatAOj4QsJRKXudr6viyLoqlA2UHb
        UZ/X6a2x5Vt9haOreAAZPMX/ZcQ02YEyabROHFUHdWhvi1fOR+dkWWCQdXKUA5AwVPvYwI
        uGKxvYP40kRdOjLSQHVOLmsYk7vj9W3ao07qzWahMZIImx1ohR5gAw95n700rg==
Received: from smtp2.mailbox.org ([80.241.60.241])
        by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de [80.241.56.117]) (amavisd-new, port 10030)
        with ESMTP id adG7yC-3MJXb; Sun, 18 Apr 2021 18:59:09 +0200 (CEST)
Subject: Re: [PATCH 1/2] mtd: parsers: trx: Allow to specify trx-magic in DT
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org
Cc:     linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        rafal@milecki.pl, musashino.open@gmail.com
References: <20210315170711.567358-1-hauke@hauke-m.de>
 <20210315170711.567358-2-hauke@hauke-m.de>
 <c596dbe2-a948-81c4-1e4e-e2d6c1b58b44@gmail.com>
From:   Hauke Mehrtens <hauke@hauke-m.de>
Message-ID: <a1c7bdbf-8975-94d7-ce93-de45f7104a32@hauke-m.de>
Date:   Sun, 18 Apr 2021 18:59:08 +0200
MIME-Version: 1.0
In-Reply-To: <c596dbe2-a948-81c4-1e4e-e2d6c1b58b44@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-MBO-SPAM-Probability: 
X-Rspamd-Score: -2.41 / 15.00 / 15.00
X-Rspamd-Queue-Id: 1E0B217F6
X-Rspamd-UID: 2d6050
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 3/18/21 7:43 AM, Rafał Miłecki wrote:
> On 15.03.2021 18:07, Hauke Mehrtens wrote:
>> Buffalo uses a different TRX magic for every device, to be able to use
>> this trx parser, make it possible to specify the TRX magic in device
>> tree. If no TRX magic is specified in device tree, the standard value
>> will be used. This value should only be specified if a vendor chooses to
>> use a non standard TRX magic.
>>
>> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
>> ---
>>   .../bindings/mtd/partitions/brcm,trx.txt      |  5 +++++
>>   drivers/mtd/parsers/parser_trx.c              | 21 ++++++++++++++++++-
>>   2 files changed, 25 insertions(+), 1 deletion(-)
>>
>> diff --git 
>> a/Documentation/devicetree/bindings/mtd/partitions/brcm,trx.txt 
>> b/Documentation/devicetree/bindings/mtd/partitions/brcm,trx.txt
>> index b677147ca4e1..715a18ca36bd 100644
>> --- a/Documentation/devicetree/bindings/mtd/partitions/brcm,trx.txt
>> +++ b/Documentation/devicetree/bindings/mtd/partitions/brcm,trx.txt
>> @@ -28,6 +28,11 @@ detected by a software parsing TRX header.
>>   Required properties:
>>   - compatible : (required) must be "brcm,trx"
>> +Optional properties:
>> +
>> +- trx-magic: TRX magic, if it is different from the default magic
>> +         0x30524448 as a u32.
> 
> It may need to be brcm,trx-magic and ack for sending a separated 
> bt-bindings patch.

Ok, I will rename it to brcm,trx-magic.

>> diff --git a/drivers/mtd/parsers/parser_trx.c 
>> b/drivers/mtd/parsers/parser_trx.c
>> index 8541182134d4..fd424587caa4 100644
>> --- a/drivers/mtd/parsers/parser_trx.c
>> +++ b/drivers/mtd/parsers/parser_trx.c
>> @@ -47,6 +47,24 @@ static const char *parser_trx_data_part_name(struct 
>> mtd_info *master,
>>       return "rootfs";
>>   }
>> +static uint32_t parser_trx_get_magic(struct mtd_info *mtd)
>> +{
>> +    uint32_t trx_magic = TRX_MAGIC;
>> +    struct device_node *np;
>> +    int err;
>> +
>> +    np = mtd_get_of_node(mtd);
>> +    if (!np)
>> +        return trx_magic;
> 
> This check seems redundant, of_ returns -EINVAL also for NULL node.

Thanks for the information, I will remove this check. Then it could also 
be easier to just inline this code.

> 
> 
>> +    /* Get different magic from device tree if specified */
>> +    err = of_property_read_u32(np, "trx-magic", &trx_magic);
>> +    if (err != 0 && err != -EINVAL)
>> +        pr_err("failed to parse \"trx-magic\" DT attribute, use 
>> default: %d\n", err);
> 
> I'm not native, but shouldn't that be s/use/using/ ?

I am also not a native speaker, but I agree with you and will change this.

Hauke
