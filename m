Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 98B9025CC08
	for <lists+devicetree@lfdr.de>; Thu,  3 Sep 2020 23:22:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726679AbgICVWK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Sep 2020 17:22:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726323AbgICVWI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Sep 2020 17:22:08 -0400
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com [IPv6:2a00:1450:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92832C061244
        for <devicetree@vger.kernel.org>; Thu,  3 Sep 2020 14:22:06 -0700 (PDT)
Received: by mail-ed1-x542.google.com with SMTP id b12so4078476edz.11
        for <devicetree@vger.kernel.org>; Thu, 03 Sep 2020 14:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=vBV+kSnYK7stIvbafZ/3dbWe9aWGsvygRzHJWB0ieE8=;
        b=uhJId/G7YwMUYivWz2MZK3Va/d8mPsiMb0N+6zAkgrYfvNnwAwfineuyIElhIT9fm8
         UEnrMrc77YqYUN8f43yJh94SLJOIo8N6KKbqGvzUfwD2sTt4Ho6gFZ9hzoS2x/nyZBZ5
         RJO1Ejc9wTVAUFRxKN8m+ae/1PbnIeBdEOdF5dZH/xStNU2pcy/UIuPF+bdeqzWS1LWQ
         xuGm4EeelCyMZ6o8gthD4P2PAoeZ6VKlg1bMhpDZRcrUyphfx6fnAwuQMv9MfTw299df
         gYz0F0xAKOw/7DHVeED4oxoz2LANUPoea9m/wPdUXgzUk55aVxm4vVYiV/sTZMP2MX+m
         mt5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=vBV+kSnYK7stIvbafZ/3dbWe9aWGsvygRzHJWB0ieE8=;
        b=U+vGesfMLE3ePJZ7goF/GUir5gv/EnerRSUTLr5YzL8FF8QvtteM4Yr02Ja0n8L2UO
         QkX/Kx5EhKeyMcFD7xqzWl7kEukL3D3iXB9cGMEgyZC5KB7cMVf/bFE8so+3B1ik3LmD
         axtncLtRFtilAsGWskAiM41kVTkABfo1Q8XVE2FLmIS11lXjaH7BIUWJWdmi84DoEyyO
         fjkhNTZDMi1Jq/0Z+Q/riiwzUcikSEiWdjYLdzKIy7JjUrkaQlB3x5lvgJfbW1Pr3ogP
         4oayXJgHPWuRACl30SSeWYLL6rEvZMxtKZda5fR61iKE3AZS0UkhF2L7+b3lxjga3HbK
         SaYw==
X-Gm-Message-State: AOAM532iKIj/hhg8rEyAR95rkrb1axNSaQiQXEyA5R3okEHpi5KyCSoX
        VQRlST9r1Uc1fVUzfoIiAr8=
X-Google-Smtp-Source: ABdhPJwHqLjDfnZhEB3lyW8q9fTU/0jaonIf9K1wnH01NxTQX8L6z74aTonkHYqT3BjZoQz25mzs9g==
X-Received: by 2002:a50:9dc6:: with SMTP id l6mr5557421edk.136.1599168124276;
        Thu, 03 Sep 2020 14:22:04 -0700 (PDT)
Received: from debian64.daheim (p5b0d7509.dip0.t-ipconnect.de. [91.13.117.9])
        by smtp.gmail.com with ESMTPSA id l23sm4096769eje.46.2020.09.03.14.22.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 14:22:03 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1])
        by debian64.daheim with esmtp (Exim 4.94)
        (envelope-from <chunkeey@gmail.com>)
        id 1kDwfe-005t99-NH; Thu, 03 Sep 2020 23:21:26 +0200
Subject: Re: [PATCH] powerpc/boot/dts: Fix dtc "pciex" warnings
To:     Michael Ellerman <mpe@ellerman.id.au>, linuxppc-dev@ozlabs.org
Cc:     sfr@canb.auug.org.au,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Chris Blake <chrisrblake93@gmail.com>
References: <20200623130320.405852-1-mpe@ellerman.id.au>
From:   Christian Lamparter <chunkeey@gmail.com>
Message-ID: <d2652e63-b136-a805-fd6d-00584b64c772@gmail.com>
Date:   Thu, 3 Sep 2020 23:21:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200623130320.405852-1-mpe@ellerman.id.au>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2020-06-23 15:03, Michael Ellerman wrote:
> With CONFIG_OF_ALL_DTBS=y, as set by eg. allmodconfig, we see lots of
> warnings about our dts files, such as:
>
>    arch/powerpc/boot/dts/glacier.dts:492.26-532.5:
>    Warning (pci_bridge): /plb/pciex@d00000000: node name is not "pci"
>    or "pcie"
>
> The node name should not particularly matter, it's just a name, and
> AFAICS there's no kernel code that cares whether nodes are *named*
> "pciex" or "pcie". So shutup these warnings by converting to the name
> dtc wants.
>
> As always there's some risk this could break something obscure that
> does rely on the name, in which case we can revert.

Hmm, I noticed this when I was looking up why nobody commented
on my series of adding more devices to the APM82181/bluestone series:

<https://lore.kernel.org/linuxppc-dev/cover.1598124791.git.chunkeey@gmail.com/>
(I'll post a v3 "soonish".)


Unfortunately yes. This patch will break uboot code in Meraki MX60(W) / MX60.

 > https://github.com/riptidewave93/meraki-uboot/blob/mx60w-20180413/board/amcc/bluestone/bluestone.c#L1178

| if (!pci_available()) {
|     fdt_find_and_setprop(blob, "/plb/pciex@d00000000", "status",
|                   "disabled", sizeof("disabled"), 1);
| }


Backstory: There are two version of the Meraki MX60. The MX60
and the MX60W. The difference is that the MX60W has a populated
mini-pcie slot on the PCB for a >W<ireless card.

That said, this is not earth shattering.

(In theory, this can also cause problems for the bluestone and canyonlands
dev boards that have the option to be configured as either dual sata or
pcie+sata.... But this is probably not a problem for customer boards)

OT: Please note that the plb, opb and ebc node paths (/plb/opb/ebc) are
hardcoded too :(. Amending the proper unit-addresses will lead to no-longer
working DTBs as the "ranges" are missing.

Cheers,
Christian
> Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
> ---
>
> diff --git a/arch/powerpc/boot/dts/bluestone.dts b/arch/powerpc/boot/dts/bluestone.dts
> index cc965a1816b6..aa1ae94cd776 100644
> --- a/arch/powerpc/boot/dts/bluestone.dts
> +++ b/arch/powerpc/boot/dts/bluestone.dts
> @@ -325,7 +325,7 @@ EMAC0: ethernet@ef600c00 {
>   			};
>   		};
>   
> -		PCIE0: pciex@d00000000 {
> +		PCIE0: pcie@d00000000 {
>   			device_type = "pci";
>   			#interrupt-cells = <1>;
>   			#size-cells = <2>;

