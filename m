Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 243314EEC71
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 13:37:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233663AbiDALiv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 07:38:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345557AbiDALis (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 07:38:48 -0400
Received: from sender4-op-o14.zoho.com (sender4-op-o14.zoho.com [136.143.188.14])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 924D21DB89E
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 04:36:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1648812991; cv=none; 
        d=zohomail.com; s=zohoarc; 
        b=OgEt7hU1WFt1EsYYAzAuGCH8HYTw6Q8xJJSfoP3lJr2/fPD8dmimtlym3+ToG0a6s91Z9YzbPPjCneaeoY0tcaUpWCSjMNQ5m/3lLqltllif6bulBigrTbD8+HW1T6/iLdnH8Elj+vbnPxQDyS/7fHHbgEsYrVJbbuA+h2wn4jk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
        t=1648812991; h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
        bh=hbH2afc7nkmlO89fFtEIUOIGGe+kbgS1V9p6lPPSTAE=; 
        b=KWwPUh8NdUkR2JwQ20Ez8l+fuFn5BK/3WdndOaH5zEB6fV/fmValmuLMgJ2K/BHhl0rgH5DR20phiYdXW/AK+uYMJ2NzRYNpbeZJr3nK1gRBYqj++gKYE30YViwHKN80NUSIswha7cr6l7fJHhgHoItM84kUl/xFERXqqxaON2E=
ARC-Authentication-Results: i=1; mx.zohomail.com;
        dkim=pass  header.i=arinc9.com;
        spf=pass  smtp.mailfrom=arinc.unal@arinc9.com;
        dmarc=pass header.from=<arinc.unal@arinc9.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1648812991;
        s=zmail; d=arinc9.com; i=arinc.unal@arinc9.com;
        h=Message-ID:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
        bh=hbH2afc7nkmlO89fFtEIUOIGGe+kbgS1V9p6lPPSTAE=;
        b=c0ZHM86kuWovZ6shNM/HHtrhSlMg76zdAh8vOvwlqWVuzm8H3k/yOctVeXZefiWP
        hNbM2uIx6q09CDT5PlAxYdeTkFRtNOG4IgUSsHzMx6Lx4RVEasN4W2n0/IKNIDUBhGP
        a+NB7QXsjWwOFGLCzzivj51fcIrBB76Mg4zNfSYI=
Received: from [10.10.10.3] (85.117.236.245 [85.117.236.245]) by mx.zohomail.com
        with SMTPS id 1648812990043236.47392098240425; Fri, 1 Apr 2022 04:36:30 -0700 (PDT)
Message-ID: <21285586-7c9a-5fda-0f07-1d43312ea8c6@arinc9.com>
Date:   Fri, 1 Apr 2022 14:36:26 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 5/5] ARM: dts: BCM5301X: Disable unused gmac0 and gmac2 on
 Asus RT-AC88U
Content-Language: en-US
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
References: <20220401102002.15765-1-arinc.unal@arinc9.com>
 <20220401102002.15765-5-arinc.unal@arinc9.com>
 <06e49b67a2e2f75040c51f8a05c329ef@milecki.pl>
From:   =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
In-Reply-To: <06e49b67a2e2f75040c51f8a05c329ef@milecki.pl>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/04/2022 13:40, Rafał Miłecki wrote:
> On 2022-04-01 12:20, Arınç ÜNAL wrote:
>> Disable gmac0 and gmac2 which are currently not used. This doesn't 
>> seem to
>> be implemented yet on drivers/net/ethernet/broadcom/bgmac-bcma.c but this
>> change is harmless, nonetheless.
> 
> It doesn't matter whether Linux respects that.
> 
> 
>> Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
>> ---
>>  arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts | 8 ++++++++
>>  1 file changed, 8 insertions(+)
>>
>> diff --git a/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
>> b/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
>> index 2f944d1c0330..0f5c5d576814 100644
>> --- a/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
>> +++ b/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
>> @@ -242,11 +242,19 @@ fixed-link {
>>      };
>>  };
>>
>> +&gmac0 {
>> +    status = "disabled";
>> +};
>> +
>>  &gmac1 {
>>      nvmem-cells = <&et1macaddr>;
>>      nvmem-cell-names = "mac-address";
>>  };
>>
>> +&gmac2 {
>> +    status = "disabled";
>> +};
> 
> I don't think that is correct. Those interfaces are still there and
> they are actually connected to switch ports. If you configure your
> switch properly you can use them.
> 
> Someone may want to use e.g. gmac0 & gmac1 with two sets of ports to
> speed up network communication.
> 
> I think gmac2 is required if you want to enable FA (flow acceleration /
> accelerator) - even though there isn't Linux driver for it yet.
> 
> They are not disabled / unpopulated / non functional interfaces.

I understand your point. However, while we're not supposed to care 
whether the kernel respects the bindings, don't we also need to make the 
bindings work on the version of the Linux kernel we're submitting the 
bindings to?

With the current way DSA works, only one switch port can be used as a 
CPU port. If we were to remove the status = "disabled" property from 
port@8 which connects to gmac2, it'd break the communication between the 
switch and the CPU on the current Linux kernel.

If a new driver or a feature is introduced, we should update the 
bindings accordingly afterwards.

For this reason, I don't see an issue with explaining the driver side of 
it on the commit log for DT bindings.

DT bindings are not exactly static either. Someone could want to use 
gmac2 instead of gmac1. In that case, I think they should change the 
bindings themselves as it's for their own use.

By the way, gmac0 would be wired to port@5 but since port@5 is wired to 
realtek switch's port@6 instead, it's actually non-functional.

Arınç
