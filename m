Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 212FA43B08D
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 12:54:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234497AbhJZK4g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 06:56:36 -0400
Received: from sender4-op-o14.zoho.com ([136.143.188.14]:17489 "EHLO
        sender4-op-o14.zoho.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231345AbhJZK4f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Oct 2021 06:56:35 -0400
ARC-Seal: i=1; a=rsa-sha256; t=1635245633; cv=none; 
        d=zohomail.com; s=zohoarc; 
        b=TaZfh93GKMLCWQ4xTKHCC/gEt+am0BRciyA6BVe6/64HP2YDl68fb/2D3lcJK0V0Aoq4vQafWI+WSpPZzgvta/gRHHyDddRKUD+T3nRuz54hQ+8g4WrmIxGuRtnMrCjITYivnhuDYuwC7H4r1PqnyEPf5oxCJ0Jq222Mo2MBPZ4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
        t=1635245633; h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
        bh=omzv/KDGddilQcM3V9LzHwQs8Dy6JRYrinl1jpadFj8=; 
        b=IDd1eJB4tqqP6dQTqtYw5qs06Nll4rPc73xeSqc/GcKehpHWKUks9E8yFIoEmxl9aPAmf40bRIwHLDErMBfylNrnfGe/DwjA78MFmhsxtTGAVs/2kdBoG8DZkceGrgWv38xru+lvjC96jyGdxL9QR4kgPLaRdFxKMOshVhBpU5g=
ARC-Authentication-Results: i=1; mx.zohomail.com;
        dkim=pass  header.i=arinc9.com;
        spf=pass  smtp.mailfrom=arinc.unal@arinc9.com;
        dmarc=pass header.from=<arinc.unal@arinc9.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1635245633;
        s=zmail; d=arinc9.com; i=arinc.unal@arinc9.com;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:In-Reply-To:Content-Type:Content-Transfer-Encoding;
        bh=omzv/KDGddilQcM3V9LzHwQs8Dy6JRYrinl1jpadFj8=;
        b=d1pyFwiR0yu8QcsO3hSOTQUFppFZyP/AfbZV6GZTlCMgtgZJBVfY+ZGqa/p5Ttuz
        KVjlxnJK3+2HZdg+7pTuFMwz/PIpFBKRzG7QLEm2sOxvHBbn6v77S2gsfn0wumRRZ7O
        iuONmYHBPyuUuilBT450fX8s0YF46gjI26kZZDDY=
Received: from [10.10.10.216] (85.117.236.245 [85.117.236.245]) by mx.zohomail.com
        with SMTPS id 1635245630123900.0428460990812; Tue, 26 Oct 2021 03:53:50 -0700 (PDT)
Message-ID: <ca6fe77b-e18d-e0a3-438d-36d4f1aae6c6@arinc9.com>
Date:   Tue, 26 Oct 2021 13:53:44 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [PATCH 2/2] ARM: dts: BCM5301X: define RTL8365MB switch on Asus
 RT-AC88U
Content-Language: en-US
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
References: <20211025213926.21203-1-arinc.unal@arinc9.com>
 <20211025213926.21203-2-arinc.unal@arinc9.com>
 <0f1f7596-2529-845f-9d5e-fee622e9a767@milecki.pl>
From:   =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
In-Reply-To: <0f1f7596-2529-845f-9d5e-fee622e9a767@milecki.pl>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/10/2021 11:29, Rafał Miłecki wrote:
> On 25.10.2021 23:39, Arınç ÜNAL wrote:
>> Define the Realtek RTL8365MB switch without interrupt support on the 
>> device tree of Asus RT-AC88U.
>>
>> Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
> 
> ./scripts/checkpatch.pl doesn't like formatting in your patch:
> 
> WARNING: Possible unwrapped commit description (prefer a maximum 75 
> chars per line)
> #9:
> Define the Realtek RTL8365MB switch without interrupt support on the 
> device tree of Asus RT-AC88U.
> 
> 
> This change introduces new "make ARCH=arm dtbs_check" validation
> warnings / errors:
> 
> arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dt.yaml:0:0: /switch: failed to 
> match any schema with compatible: ['realtek,rtl8365mb']
> arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dt.yaml:0:0: /switch/mdio: 
> failed to match any schema with compatible: ['realtek,smi-mdio']
> /home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dt.yaml: 
> phy@0: '#phy-cells' is a required property
>          From schema: 
> /home/rmilecki/.local/lib/python3.6/site-packages/dtschema/schemas/phy/phy-provider.yaml 
> 
> /home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dt.yaml: 
> phy@1: '#phy-cells' is a required property
>          From schema: 
> /home/rmilecki/.local/lib/python3.6/site-packages/dtschema/schemas/phy/phy-provider.yaml 
> 
> /home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dt.yaml: 
> phy@2: '#phy-cells' is a required property
>          From schema: 
> /home/rmilecki/.local/lib/python3.6/site-packages/dtschema/schemas/phy/phy-provider.yaml 
> 
> /home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dt.yaml: 
> phy@3: '#phy-cells' is a required property
>          From schema: 
> /home/rmilecki/.local/lib/python3.6/site-packages/dtschema/schemas/phy/phy-provider.yaml 
> 
> 
> the first two are caused by realtek-smi.txt not being converted to YAML.
> Ignore them.
> 
> Later are caused by using phy@ instead of ethernet-phy@ and have to be
> fixed.

I'm going to address these in v2, thanks.
