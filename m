Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F398F54D614
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 02:29:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241061AbiFPA2l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 20:28:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347712AbiFPA20 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 20:28:26 -0400
Received: from esa6.hgst.iphmx.com (esa6.hgst.iphmx.com [216.71.154.45])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CD2B10C0
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:28:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1655339306; x=1686875306;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=uYVFjpxrkNkhxj61fyi8GC6kWmJYxCqHfowX+smn4Q8=;
  b=HmP7m2+Es86IR5R5xxqQAHie8keS83uUvcqVFNPWX57HE3mF/tZJLE9d
   lyaLkTXS43NE7sKBNwOSwh9xydvWQ5aIMtIlLbRqEAX9gw7P3ljzJYb9V
   b23/z7jQQcnnDZonL25cGQJ9Wr2BrzP8QMNNTooUl5qyCTPDRSLp+qpG1
   Y2HcZLPOBDMxLL3ZOp6DG3ex/CxphQSCh45Ds+cwgYljRovG33ojejuJ9
   mrUsM1NFxL7NjTgMwbzgkmRMyB7OCTpaEzEzXZEZ0vfFydavpZAI2ElmB
   T1l9DHg3PeNrtVx6CRHM8R9aCkLXyHCscSKEyXWhO+wLB0Uq/k4BUHPCz
   w==;
X-IronPort-AV: E=Sophos;i="5.91,302,1647273600"; 
   d="scan'208";a="204038290"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 16 Jun 2022 08:28:24 +0800
IronPort-SDR: JyEwQSDLpdhAlZPnfr8rT8a6CuIVefThE1x+3g6l/3R4mMfaHRM65WL8ht7a8m4TU646/y3qhL
 HSWs/kzpAlJZWenkiRd+6QiIW4Wxdyyx/8oyQIg0othx5BzcVNA5PBQnKtzCgNdQ8/BKbz6gHb
 /6jvkrjDnx/2Np/SO+0IeLjTsewhRgYquJji3JeKgnzVgQi5rQKUwADYgOFgtApiUOIaAVWfuB
 zOfrhfCcyBIe0AWYYb8VCzviyEi1MP8ilMW0dRkHHJEJOVNThfMGrGMjLgSt8T0eOPVQQLfKs3
 G0CVmZdmlhPjeT4wBXAPmWW4
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 15 Jun 2022 16:46:46 -0700
IronPort-SDR: /8R92Ur1geXAIdMzaFhZDsfh0F1h+HsKx9IrREFWdNdXjjBABb2GRTRmqeICj2ZuG5cPgX58Ix
 y1LeeU5jswDuyEEv+4QvDd5mBfTi5YgeELF88mst/G/qoLfazcVHp0i+1dmeqQ/el2kJTmr7mX
 wrQZxirmyyzeHIM46hjFy9JN9o//tNVol/rm50lqZJKkP8uUmL2Sre2UDnK6ipfA9EZwrZyFm8
 HR9m7rb/0TLcGFU3We/u/YKI3IhtRztJCAWdlEhr3Zfq4N0HFhhso4ZkyVbVsxV6pXm2qdbeQl
 HmA=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 15 Jun 2022 17:28:23 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4LNjh6546Wz1SVp3
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:28:22 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1655339301; x=1657931302; bh=uYVFjpxrkNkhxj61fyi8GC6kWmJYxCqHfow
        X+smn4Q8=; b=f1mDXGtbN3/m1SlybA62kaNKiCv2e1mA2QRjgr07kkClwUdJA9Z
        RVAlJ2Y3xnYcWSzvDEihYHI5nz/pGGOTrpGK1W2o4CmtdJwaJHjhMyeq/mzqWLG8
        7QqQu2XjHIPMHsEFOpjS576QEvoPZYRPl4mHk3VgWXOP5Cn8s645F9Xckkf6DUDS
        tCDWMv8rFKHIt8qsJ8rh4Zlg/BE8jMpyFtBxQbXHrZ/7GoMZ9vvCvP4Kz8/8Ixgj
        aY4/20MVVqEnTUYkmTl62DJzFih7PVV48O8vt63j1/Vedr1EWgrcnTS+rC44PCAe
        2d0ncZPolaZ9SqEkyl1BcacLpw0w6h3IToQ==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id 1o4jC44ulBs2 for <devicetree@vger.kernel.org>;
        Wed, 15 Jun 2022 17:28:21 -0700 (PDT)
Received: from [10.89.84.185] (c02drav6md6t.dhcp.fujisawa.hgst.com [10.89.84.185])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4LNjh36YgPz1Rvlc;
        Wed, 15 Jun 2022 17:28:19 -0700 (PDT)
Message-ID: <903e273a-9dc5-f0df-5391-e96e63318323@opensource.wdc.com>
Date:   Thu, 16 Jun 2022 09:28:18 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.10.0
Subject: Re: [PATCH v4 12/23] ata: libahci: Extend port-cmd flags set with
 port capabilities
Content-Language: en-US
To:     Serge Semin <fancer.lancer@gmail.com>
Cc:     Serge Semin <Sergey.Semin@baikalelectronics.ru>,
        Hans de Goede <hdegoede@redhat.com>,
        Jens Axboe <axboe@kernel.dk>, Hannes Reinecke <hare@suse.de>,
        Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
        Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>,
        Rob Herring <robh+dt@kernel.org>, linux-ide@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20220610081801.11854-1-Sergey.Semin@baikalelectronics.ru>
 <20220610081801.11854-13-Sergey.Semin@baikalelectronics.ru>
 <d06e9910-527e-cfa2-f2df-737fb4799fe5@opensource.wdc.com>
 <20220615205819.uiqptkqm5qfdvrbj@mobilestation>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20220615205819.uiqptkqm5qfdvrbj@mobilestation>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2022/06/16 5:58, Serge Semin wrote:
> On Tue, Jun 14, 2022 at 05:32:41PM +0900, Damien Le Moal wrote:
>> On 6/10/22 17:17, Serge Semin wrote:
>>> Currently not all of the Port-specific capabilities listed in the
>>
>> s/listed/are listed
>>
>>> PORT_CMD-enumeration. Let's extend that set with the Cold Presence
>>> Detection and Mechanical Presence Switch attached to the Port flags [1] so
>>> to closeup the set of the platform-specific port-capabilities flags.  Note
>>> these flags are supposed to be set by the platform firmware if there is
>>> one. Alternatively as we are about to do they can be set by means of the
>>> OF properties.
>>>
>>> While at it replace PORT_IRQ_DEV_ILCK with PORT_IRQ_DMPS and fix the
>>> comment there. In accordance with [2] that IRQ flag is supposed to
>>> indicate the state of the signal coming from the Mechanical Presence
>>> Switch.
>>>
>>> [1] Serial ATA AHCI 1.3.1 Specification, p.27
>>> [2] Serial ATA AHCI 1.3.1 Specification, p.24, p.88
>>>
>>> Signed-off-by: Serge Semin <Sergey.Semin@baikalelectronics.ru>
>>> Reviewed-by: Hannes Reinecke <hare@suse.de>
>>>
>>> ---
>>>
>>> Changelog v4:
>>> - Fix the DMPS macros name in the patch log. (@Sergei Shtylyov)
>>> ---
>>>  drivers/ata/ahci.h | 7 ++++++-
>>>  1 file changed, 6 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/ata/ahci.h b/drivers/ata/ahci.h
>>> index 7d834deefeb9..f501531bd1b3 100644
>>> --- a/drivers/ata/ahci.h
>>> +++ b/drivers/ata/ahci.h
>>> @@ -138,7 +138,7 @@ enum {
>>>  	PORT_IRQ_BAD_PMP	= (1 << 23), /* incorrect port multiplier */
>>>  
>>>  	PORT_IRQ_PHYRDY		= (1 << 22), /* PhyRdy changed */
>>> -	PORT_IRQ_DEV_ILCK	= (1 << 7), /* device interlock */
>>> +	PORT_IRQ_DMPS		= (1 << 7), /* mechanical presence status */
>>>  	PORT_IRQ_CONNECT	= (1 << 6), /* port connect change status */
>>>  	PORT_IRQ_SG_DONE	= (1 << 5), /* descriptor processed */
>>>  	PORT_IRQ_UNK_FIS	= (1 << 4), /* unknown FIS rx'd */
>>> @@ -166,6 +166,8 @@ enum {
>>>  	PORT_CMD_ATAPI		= (1 << 24), /* Device is ATAPI */
>>>  	PORT_CMD_FBSCP		= (1 << 22), /* FBS Capable Port */
>>>  	PORT_CMD_ESP		= (1 << 21), /* External Sata Port */
>>> +	PORT_CMD_CPD		= (1 << 20), /* Cold Presence Detection */
>>> +	PORT_CMD_MPSP		= (1 << 19), /* Mechanical Presence Switch */
>>>  	PORT_CMD_HPCP		= (1 << 18), /* HotPlug Capable Port */
>>>  	PORT_CMD_PMP		= (1 << 17), /* PMP attached */
>>>  	PORT_CMD_LIST_ON	= (1 << 15), /* cmd list DMA engine running */
>>> @@ -181,6 +183,9 @@ enum {
>>>  	PORT_CMD_ICC_PARTIAL	= (0x2 << 28), /* Put i/f in partial state */
>>>  	PORT_CMD_ICC_SLUMBER	= (0x6 << 28), /* Put i/f in slumber state */
>>>  
>>> +	PORT_CMD_CAP		= PORT_CMD_HPCP | PORT_CMD_MPSP |
>>> +				  PORT_CMD_CPD | PORT_CMD_ESP | PORT_CMD_FBSCP,
>>
> 
>> What is this one for ? A comment above it would be nice.
> 
> Isn't it obviously inferrable from the definition and the item name?

I am guessing from the name. Am I guessing OK ? A comment would still be nice.
Why just these bits ? There are more cap/support indicator bits in that port cmd
bitfield. So why this particular set of bits ? What do they mean all together ?

Sure I can go and read the specs to figure it out. But again, a comment would
avoid readers of the code to have to decrypt all that.

> 
> -Sergey
> 
>>
>>> +
>>>  	/* PORT_FBS bits */
>>>  	PORT_FBS_DWE_OFFSET	= 16, /* FBS device with error offset */
>>>  	PORT_FBS_ADO_OFFSET	= 12, /* FBS active dev optimization offset */
>>
>>
>> -- 
>> Damien Le Moal
>> Western Digital Research


-- 
Damien Le Moal
Western Digital Research
