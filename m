Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 08EAD482CAF
	for <lists+devicetree@lfdr.de>; Sun,  2 Jan 2022 21:26:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229730AbiABU0k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jan 2022 15:26:40 -0500
Received: from sender4-op-o14.zoho.com ([136.143.188.14]:17472 "EHLO
        sender4-op-o14.zoho.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbiABU0j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jan 2022 15:26:39 -0500
ARC-Seal: i=1; a=rsa-sha256; t=1641155175; cv=none; 
        d=zohomail.com; s=zohoarc; 
        b=KrtEu1o/3sJJaLvt4e8VvKeoezIA9FKC1YH2p+HtUxXoMBxkfptuWSLj7m8Am/TTvYEUKE5NQ2GkycdA30B3+Z7NHIHofzv63wVMQzalJ76DoMBxIqYbW6Q4RO/Z33Echw3eUlJSpB/WpHbJezHwfWHMCHgyjwhSTutaNniDwKY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
        t=1641155175; h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
        bh=UyMm8FD17k6qlb1PvbeV9RzVXiMPuXGk2ZAdM73KYv0=; 
        b=CMHwBy2YSNHcURR/h7NWc8SqNzeeYlSpfP+F1h1++WIxsL79Wml8wQo9TY5Qsbpr99dwvrjAIK9WT8s4h6Iw15DUlUXqJRIHwU19byNvONWoZj9hfyLODRJWA/q2DnG0+qi46s2aE/hnknafTB5TgbKhfD01D4Z9JVMhJI0FUsg=
ARC-Authentication-Results: i=1; mx.zohomail.com;
        dkim=pass  header.i=arinc9.com;
        spf=pass  smtp.mailfrom=arinc.unal@arinc9.com;
        dmarc=pass header.from=<arinc.unal@arinc9.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1641155175;
        s=zmail; d=arinc9.com; i=arinc.unal@arinc9.com;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:In-Reply-To:Content-Type:Content-Transfer-Encoding;
        bh=UyMm8FD17k6qlb1PvbeV9RzVXiMPuXGk2ZAdM73KYv0=;
        b=X+irv1v32npUHiEvfVgDYNkfP7C+cJ3hkoseA3Ge0JVRUoys7EDfcS1EM1cHe6eO
        AWTT7iSHgOVMPcJQKD3tZ3N1vbmAlC21YJzS1gzFxLoLvifP9+tN/1wqa9jiOSIxrLi
        xIs02x0+cTS8R3RxDyMxB3MdD6d4J/pNeDK0yFS4=
Received: from [10.10.10.216] (85.117.236.245 [85.117.236.245]) by mx.zohomail.com
        with SMTPS id 1641155172340385.31895149265654; Sun, 2 Jan 2022 12:26:12 -0800 (PST)
Message-ID: <8c427486-a456-f070-4325-a5f220507ffe@arinc9.com>
Date:   Sun, 2 Jan 2022 23:26:06 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH] ARM: dts: BCM5301X: remove reg property from ports node
 on Asus RT-AC88U
Content-Language: en-US
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        Stephen Rothwell <sfr@canb.auug.org.au>
References: <20211223192941.1016-1-arinc.unal@arinc9.com>
From:   =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
In-Reply-To: <20211223192941.1016-1-arinc.unal@arinc9.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Please ignore this patch since the commit this patch fixes was reverted. 
I'm going to submit another patch to make up for the revert.

On 23/12/2021 22:29, Arınç ÜNAL wrote:
> The "reg" property on the "ports" node of the Realtek switch is not supposed to
> be there which causes warnings while compiling. Remove it.
> 
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Fixes: 3d2d52a0d183 ("ARM: dts: BCM5301X: define RTL8365MB switch on Asus RT-AC88U")
> Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
> ---
>   arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts b/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
> index df8199fd4eb4..82f9629f0abb 100644
> --- a/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
> +++ b/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
> @@ -106,7 +106,6 @@ switch {
>   		ports {
>   			#address-cells = <1>;
>   			#size-cells = <0>;
> -			reg = <0>;
>   
>   			port@0 {
>   				reg = <0>;
