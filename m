Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB4E32B30FD
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 22:21:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726265AbgKNVUk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 16:20:40 -0500
Received: from mx2.suse.de ([195.135.220.15]:50868 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726230AbgKNVUk (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 16:20:40 -0500
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
        by mx2.suse.de (Postfix) with ESMTP id 82F54ABDE;
        Sat, 14 Nov 2020 21:20:39 +0000 (UTC)
Subject: Re: [PATCH mvebu-dt 3/6] ARM: dts: turris-omnia: describe
 ethernet-phy interrupt
To:     Andrew Lunn <andrew@lunn.ch>,
        =?UTF-8?Q?Marek_Beh=c3=ban?= <kabel@kernel.org>
Cc:     Gregory CLEMENT <gregory.clement@bootlin.com>, arm@kernel.org,
        =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
References: <20201114160409.19670-1-kabel@kernel.org>
 <20201114160409.19670-4-kabel@kernel.org>
 <20201114174928.5ab4f8ae@kernel.org> <20201114171639.GO1456319@lunn.ch>
From:   =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <a060d0fe-a10f-de9f-bc21-7b7ec8da5f86@suse.de>
Date:   Sat, 14 Nov 2020 22:20:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201114171639.GO1456319@lunn.ch>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14.11.20 18:16, Andrew Lunn wrote:
> On Sat, Nov 14, 2020 at 05:49:28PM +0100, Marek Behún wrote:
>> On Sat, 14 Nov 2020 17:04:06 +0100
>> Marek Behún <kabel@kernel.org> wrote:
>>
>>> +		interrupt-parent = <&pcawan>;
>>> +		interrupt = <7 IRQ_TYPE_LEVEL_LOW>;
>>
>> Also we need to use IRQ_TYPE_EDGE_FALLING. The gpio-pca953x driver does
>> not support IRQ_TYPE_LEVEL_LOW...
> 
> Please check the datasheet for the PHY. I expect you will find it is
> level triggering, not edge. So you can miss interrupts, and have the
> wrong state.

I can confirm that neither rising nor falling had worked for me, so I
reverted such changes again. I did not look into pca953x code myself.

Regards,
Andreas

P.S. Was LAKML intentionally omitted from CC?

-- 
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 Nürnberg, Germany
GF: Felix Imendörffer
HRB 36809 (AG Nürnberg)
