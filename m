Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C56E4513C58
	for <lists+devicetree@lfdr.de>; Thu, 28 Apr 2022 22:06:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232281AbiD1UJz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Apr 2022 16:09:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231637AbiD1UJy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Apr 2022 16:09:54 -0400
Received: from mailserv1.kapsi.fi (mailserv1.kapsi.fi [IPv6:2001:67c:1be8::25:1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 137D3BF94E
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 13:06:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=ext.kapsi.fi; s=20161220; h=Subject:Content-Transfer-Encoding:Content-Type:
        In-Reply-To:From:References:Cc:To:MIME-Version:Date:Message-ID:Sender:
        Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
        :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
        List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=I5u8zpuc4eHIF32qr8qeXiS0xgWZFyvFwd0Ma3V9R1E=; b=nD1JIdv1lfy53fTI4CTVCG+Mzc
        mNxYRRH+TG08v1rp6BFxU6yq0RXSBm/CJs6asUgxSBBye8nD+mSzmn82Jd3kUlckw2A0HoZ5j2wCZ
        VAKoRibw7ZQd9xIpW9xOlzrpoII8hv3VzqZvxjy8hrWJtUZMRJc/2b0s95PqN/U5EtPB3msWEgJT9
        iqppNDiK7GB1XRJHeBnk3XXeAUHqe3gbdvg/BK2tceLLxPHgK2tZe8Ke+XC8+OkV9wLHgafMWONBy
        FN0MzHHGrI9qwzDC50irWKNKcma6M/GXvrS5VA646Y77YVd/CH6tLPm87up8cx6Wd5Z41YKCdlUca
        mBlliFSQ==;
Received: from 378b-225d-1272-9d03-8500-87e2-07d0-2001.dyn.estpak.ee ([2001:7d0:87e2:8500:9d03:1272:225d:378b]:57018)
        by mailserv1.kapsi.fi with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.89)
        (envelope-from <maukka@ext.kapsi.fi>)
        id 1nkAPJ-0008CV-9V; Thu, 28 Apr 2022 23:06:33 +0300
Message-ID: <d8ab7986-c0a8-e11f-3599-a09c2938d936@ext.kapsi.fi>
Date:   Thu, 28 Apr 2022 23:06:32 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
To:     Arnd Bergmann <arnd@arndb.de>
Cc:     SoC Team <soc@kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        DTML <devicetree@vger.kernel.org>,
        Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        maukka@ext.kapsi.fi
References: <20220427162123.110458-1-maukka@ext.kapsi.fi>
 <20220427162123.110458-2-maukka@ext.kapsi.fi>
 <CAK8P3a2renoWK+rUYBAyUb10v-TKfv6gLTQUiGFRroFgLCv+9w@mail.gmail.com>
From:   Mauri Sandberg <maukka@ext.kapsi.fi>
In-Reply-To: <CAK8P3a2renoWK+rUYBAyUb10v-TKfv6gLTQUiGFRroFgLCv+9w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2001:7d0:87e2:8500:9d03:1272:225d:378b
X-SA-Exim-Mail-From: maukka@ext.kapsi.fi
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
Subject: Re: [RFC RFT PATCH v1 1/1] ARM: orion5x: convert D-Link DNS-323 to
 the Device Tree
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on mailserv1.kapsi.fi)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 27.4.2022 21.12, Arnd Bergmann wrote:
> On Wed, Apr 27, 2022 at 6:21 PM Mauri Sandberg <maukka@ext.kapsi.fi> wrote:
>>
>> Convert D-Link DNS-323 to use the device tree and remove associated
>> mach file.
>>
>> Signed-off-by: Mauri Sandberg <maukka@ext.kapsi.fi>
>> ---
>>   arch/arm/boot/dts/Makefile                   |   3 +
>>   arch/arm/boot/dts/orion5x-dlink-dns323.dtsi  | 217 ++++++
>>   arch/arm/boot/dts/orion5x-dlink-dns323a1.dts |  59 ++
>>   arch/arm/boot/dts/orion5x-dlink-dns323b1.dts |  38 +
>>   arch/arm/boot/dts/orion5x-dlink-dns323c1.dts |  80 ++
>>   arch/arm/mach-orion5x/Kconfig                |   6 +-
>>   arch/arm/mach-orion5x/Makefile               |   2 +-
>>   arch/arm/mach-orion5x/board-dns323.c         | 118 +++
>>   arch/arm/mach-orion5x/board-dt.c             |   3 +
>>   arch/arm/mach-orion5x/common.h               |   6 +
>>   arch/arm/mach-orion5x/dns323-setup.c         | 724 -------------------
>>   11 files changed, 528 insertions(+), 728 deletions(-)
>>   create mode 100644 arch/arm/boot/dts/orion5x-dlink-dns323.dtsi
>>   create mode 100644 arch/arm/boot/dts/orion5x-dlink-dns323a1.dts
>>   create mode 100644 arch/arm/boot/dts/orion5x-dlink-dns323b1.dts
>>   create mode 100644 arch/arm/boot/dts/orion5x-dlink-dns323c1.dts
>>   create mode 100644 arch/arm/mach-orion5x/board-dns323.c
>>   delete mode 100644 arch/arm/mach-orion5x/dns323-setup.c
> 
> Having the combined patch is generally fine for review, but for actually
> merging it, I would prefer splitting the new DT from the code removal,
> as I send these through different trees to Linus.

You know, I had them initially in separate patches but then I looked at 
the existing commit history and at least a few ones were in a single 
commit so I merged them. :)

Will split this in two in the next iteration.

