Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D8EE4FC7D3
	for <lists+devicetree@lfdr.de>; Tue, 12 Apr 2022 00:49:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244228AbiDKWvN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Apr 2022 18:51:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233867AbiDKWvM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Apr 2022 18:51:12 -0400
Received: from esa2.hgst.iphmx.com (esa2.hgst.iphmx.com [68.232.143.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 289EF2ED77
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 15:48:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1649717337; x=1681253337;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=sU/ZOAq3Zhx+cNy7Kisbffx9HGFTvONOYugeUf6D9Wg=;
  b=DH0o0xauecXhV6PGFkWtVNbNOeuMVy9jLXkTD4nU+AyM2bnhrkIhARvy
   H/otNkJUIdZBg9NjIWzl2W+QK/VSoMPY2DQqt+hV/Ie9mErmzU2JR5VBS
   pLA5NAV5iAuDSOlHOsFmh1bwNBHxTnCN4tA3Zn0ZWEAj0HhVBqYD6Jxjp
   h3eQcVzcT3Visx6kQxXlHdaZ+rtF4m0NcZP/RMokPhau5iAyZ8DXBs3Oe
   dmGPL68XPY/f+QWH0ESdMr1NUxPGi8bgLI6DZi7Cjv8ZiyHyeyW3wzCeE
   vETAesCdEa1GdDAo2HydxGowCrkWh/8l360D/HO3ucdOKw06j+nMNQrBU
   Q==;
X-IronPort-AV: E=Sophos;i="5.90,252,1643644800"; 
   d="scan'208";a="301849853"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 12 Apr 2022 06:48:54 +0800
IronPort-SDR: 05DBiKz0GVCdWiNX1T4/U0Z+gcKLBSPEQ8b7YPRxkgKSsW0CcbAN42jy9FDHv3bgAn5evI4Zdz
 F98EabeeWuhG7y2RAzD4Rq843/qNyhGTRUadWbFAtHO3WQ6PfR1Sqy/ctDDMBN9+i7RgFu/r9k
 xtG7C4vkS0ung90xnQ4qd9zGf+Amt4G2D6qb/4s72fYVH6/6rMup6RWBSXSpSnR3MSjn7geXCF
 ssSrDhhnvFLa/nKcx9h7i8KoA7bdcjpinNpa8K185Ii8iATpG4mot7t2NPt44orcb9NxfVK4/X
 rV463UUxljbYV+xErCpk5aLB
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 11 Apr 2022 15:20:11 -0700
IronPort-SDR: hyBntGC7WZvsdt+XZzNHdQg+M37LaLpSYH2udcPDPeQwBVQ2iPLzPTAfTd1sXZ3na1CI/RFf50
 vTuJ8oaJ86WprPLFtYDOkM6u+Uj3/TgrrPDDhYSKUEVMqPW2j5SsE/14GjBVnbyJ35Qei+Kv3h
 A0mPpVSfrwxI9aOtC61SOaFLKxM5tu0y/bo327FQ1BHNPxBzrQvxdp8yVJmuHX2W3I7br265nh
 q2ujA4JGbkHpUU7tPiitJMZuTemeFp6nlMkCXr5Q6XEAKi/Ve5XIt/I7z9Pf29M9u9e+YSYuMk
 lqk=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 11 Apr 2022 15:48:55 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4KckYL1x07z1SVnx
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 15:48:54 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1649717333; x=1652309334; bh=sU/ZOAq3Zhx+cNy7Kisbffx9HGFTvONOYug
        eUf6D9Wg=; b=qidKUV31MocT0RrE1UOp/tosJ2pgPBI2P560GwpOnx1onGII2de
        AtWCsMkU2Nc7TwtY8JIu/OCMJ3cAWmOQmH+fIgAUNbucueZ6VvbLrb010Vh5TP4k
        BtO91/UuoP9Q43Z2UGZ/tSqGZ7frsRl1ut+CI8mf23geVHoYWVbVQutbDsjR4IuU
        d3YBFM79XkmwXRCB41+97BckNrhBLo2kjZUO+pqMFndYEZOgaJa9A9uOOSqs3SRa
        CGt8n1asXGK1w2mdW5dzycc1HDiey8CLDgDiqp1c6PYV3+aOkQV1eLkGT6GPKLQx
        kS8MkuRJTSMd+UKUeOroDFk0gdKsWeVAu7g==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id sHILBwYAk2hm for <devicetree@vger.kernel.org>;
        Mon, 11 Apr 2022 15:48:53 -0700 (PDT)
Received: from [10.225.163.9] (unknown [10.225.163.9])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4KckYH5f7Rz1Rvlx;
        Mon, 11 Apr 2022 15:48:51 -0700 (PDT)
Message-ID: <5ae5764f-ca51-9c2d-c13f-cfe855bda45e@opensource.wdc.com>
Date:   Tue, 12 Apr 2022 07:48:50 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 12/21] ata: libahci: Discard redundant force_port_map
 parameter
Content-Language: en-US
To:     Serge Semin <fancer.lancer@gmail.com>
Cc:     Serge Semin <Sergey.Semin@baikalelectronics.ru>,
        Hans de Goede <hdegoede@redhat.com>,
        Jens Axboe <axboe@kernel.dk>,
        Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
        Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>,
        Rob Herring <robh+dt@kernel.org>, linux-ide@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20220324001628.13028-1-Sergey.Semin@baikalelectronics.ru>
 <20220324001628.13028-13-Sergey.Semin@baikalelectronics.ru>
 <b06a8382-d5c1-e3a5-8577-692fa82cb3c1@opensource.wdc.com>
 <20220411121151.vm6wmtalbl2lgtgo@mobilestation>
 <bde34952-e244-a1c3-fc33-251d618d2bb4@opensource.wdc.com>
 <20220411205205.p5vnqvscgfb2siej@mobilestation>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20220411205205.p5vnqvscgfb2siej@mobilestation>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 4/12/22 05:52, Serge Semin wrote:
> On Mon, Apr 11, 2022 at 09:25:03PM +0900, Damien Le Moal wrote:
>> On 4/11/22 21:11, Serge Semin wrote:
>>> On Thu, Mar 24, 2022 at 11:05:58AM +0900, Damien Le Moal wrote:
>>>> On 3/24/22 09:16, Serge Semin wrote:
>>>>> Currently there are four port-map-related fields declared in the
>>>>> ahci_host_priv structure and used to setup the HBA ports mapping. First
>>>>> the ports-mapping is read from the PI register and immediately stored in
>>>>> the saved_port_map field. If forced_port_map is initialized with non-zero
>>>>> value then its value will have greater priority over the value read from
>>>>> PI, thus it will override the saved_port_map field. That value will be then
>>>>> masked by a non-zero mask_port_map field and after some sanity checks it
>>>>> will be stored in the ahci_host_priv.port_map field as a final port
>>>>> mapping.
>>>>>
>>>>> As you can see the logic is a bit too complicated for such a simple task.
>>>>> We can freely get rid from at least one of the fields with no change to
>>>>> the implemented semantic. The force_port_map field can be replaced with
>>>>> taking non-zero saved_port_map value into account. So if saved_port_map is
>>>>> pre-initialized by the glue-driver/platform-specific code then it will
>>>>
>>>
>>>> glue-driver == LLDD (low level device driver), for the entire series please.
>>>
>>> Why? It's a normal term and well known amongst developers. I've used it
>>> in a plenty of my patches before and none of them has been questioned in that
>>> part so far.
>>
> 
>> This term is not used in libata, nor do I remember seeing it used in SCSI
>> or block subsystem either. We always talk about mid-layer (ahci platform)
>> and LLDD (adapter driver).
> 
> Great, do we need to learn the subsystem-specific dictionary now
> before submitting the patches for it? =)
> Really, you are asking me to change one term to its synonym just
> because it's mainly unused here. Now you know what it means, the
> others can easily google it and get to learn something new. Win-win.)

I already knew what it meant, but it was unclear if my idea of what you
meant was actually the same as yours. Sticking with the vocabulary already
used since *a long time ago* makes life easier for reviewers and avoids
confusion.

-- 
Damien Le Moal
Western Digital Research
