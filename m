Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1674D517F9B
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 10:21:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232221AbiECIYi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 04:24:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231847AbiECIYi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 04:24:38 -0400
Received: from mailserv1.kapsi.fi (mailserv1.kapsi.fi [IPv6:2001:67c:1be8::25:1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A090011C0F
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 01:21:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=ext.kapsi.fi; s=20161220; h=Subject:Content-Transfer-Encoding:Content-Type:
        In-Reply-To:From:References:Cc:To:MIME-Version:Date:Message-ID:Sender:
        Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
        :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
        List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=OqscgcMP9UVcA9P6b/llsibkIGdaT45kJnJUIEEFa+E=; b=SO7arh+QQbvl3u+idWbbxla84E
        rBBkmJycDY87e63wuNoKkFLGdgjbn65KS2zuY2rKl0ajbzM91l0u0sZCbae6fE107iExFfFcNK4Ps
        AlLbFXtWl0qKF2/Ttd+qzeOwbwrmzO1VXFNgWrnQcGHLCah/gYn4iF1bZYRUBE72owho6gBXtsV0X
        iIUiKS/juFoI2HMvtLIT4Y46RYqpOZRAD4+6Y+5m7cVxpiYKPJ4hpwp29wd3+PeK2eXaLX28HChA6
        JF+D7zXuIlPm3nP5PK94IRdFG9iZXCZ+x9zAcy440w2th6nYWHiZ70Jkp7jY0FPb8YvSL9hmi1+45
        Fy6n5+FA==;
Received: from 13-105-191-90.dyn.estpak.ee ([90.191.105.13]:58685 helo=[10.0.2.15])
        by mailserv1.kapsi.fi with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.89)
        (envelope-from <maukka@ext.kapsi.fi>)
        id 1nlnm8-000596-6d; Tue, 03 May 2022 11:20:52 +0300
Message-ID: <c6d61bfd-24c0-030b-eb50-5e97214f3f13@ext.kapsi.fi>
Date:   Tue, 3 May 2022 11:20:50 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Arnd Bergmann <arnd@arndb.de>, SoC Team <soc@kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        DTML <devicetree@vger.kernel.org>,
        Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <20220427162123.110458-1-maukka@ext.kapsi.fi>
 <CAK8P3a0p-ev50UfGiHCpMM5Jz5Mf8pdfQtNep0M7qi7PANSBVg@mail.gmail.com>
 <YmndWe63ELJbQe20@lunn.ch>
 <b9c7eb81-c49e-76bf-5b49-b97cb5c2b03d@ext.kapsi.fi>
 <YmsisTq28nsSlf3k@lunn.ch>
From:   Mauri Sandberg <maukka@ext.kapsi.fi>
In-Reply-To: <YmsisTq28nsSlf3k@lunn.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 90.191.105.13
X-SA-Exim-Mail-From: maukka@ext.kapsi.fi
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
Subject: Re: [RFC RFT PATCH v1 0/1] ARM: orion5x: convert D-Link DNS-323 to
 the Device Tree
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on mailserv1.kapsi.fi)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 29.04.22 02:26, Andrew Lunn wrote:
> On Thu, Apr 28, 2022 at 11:25:00PM +0300, Mauri Sandberg wrote:
>> Hello Andrew!
>>
>> On 28.4.2022 3.18, Andrew Lunn wrote:
>>>>> - there is no concensus on how to get ascii formatted MAC address from mtd
>>>>>     partitions so eth is not fully functional without setting the MAC from
>>>>>     userspace
>>>> Ideally this is handled by the boot loader, but that requires being
>>>> able to update
>>>> it.
>>> The mv643xx Ethernet driver is happy if it finds the MAC address
>>> already in the hardware. The vendor uboot often does this. Does tftp
>>> boot work in uboot? That would indicate it has access to the MAC
>>> address.
>> The u-boot is really limited and I am transferring new images over kermit.
> Ouch!
>
> If you can, try kexec. You can use wget or similar to grab the kernel
> from you host machine, and then something like:
>
> kexec --append 'rootwait ro earlyprintk console=ttyS0,115200n8' bzImage
>
> wget will be much faster then kernel.
>
Nice, this looks promising. Thanks for the tip.


