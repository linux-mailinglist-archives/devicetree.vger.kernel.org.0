Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 930172B3111
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 22:47:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726182AbgKNVqG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 16:46:06 -0500
Received: from mx2.suse.de ([195.135.220.15]:54568 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726112AbgKNVqG (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 16:46:06 -0500
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
        by mx2.suse.de (Postfix) with ESMTP id 6D6AEAC2E;
        Sat, 14 Nov 2020 21:46:05 +0000 (UTC)
Subject: Re: [PATCH mvebu-dt v2 4/6] ARM: dts: turris-omnia: add SFP node
To:     Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc:     =?UTF-8?Q?Marek_Beh=c3=ban?= <kabel@kernel.org>,
        Gregory CLEMENT <gregory.clement@bootlin.com>, arm@kernel.org,
        Andrew Lunn <andrew@lunn.ch>,
        =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
References: <20201114183217.1352-1-kabel@kernel.org>
 <20201114183217.1352-5-kabel@kernel.org>
 <972cde9c-9e4a-0e43-c9c3-9528581d8738@suse.de>
 <20201114214204.GE1551@shell.armlinux.org.uk>
From:   =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <69dd4449-e547-6d63-6a37-83684f008b30@suse.de>
Date:   Sat, 14 Nov 2020 22:46:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201114214204.GE1551@shell.armlinux.org.uk>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14.11.20 22:42, Russell King - ARM Linux admin wrote:
> On Sat, Nov 14, 2020 at 10:36:09PM +0100, Andreas Färber wrote:
>> Hi Marek,
>>
>> On 14.11.20 19:32, Marek Behún wrote:
>>> Turris Omnia has a SFP cage that, together with WAN PHY is connected to
>>
>> "an SFP"
>> Comma missing after PHY (or drop before together).
>>
>>> eth2 SerDes via a SerDes multiplexor. Describe the SFP cage, but leave
>>> it disabled. Until phylink has support for such multiplexor we will
>>> leave it to U-Boot to enable SFP and disable WAN PHY at boot time
>>> depending on whether a SFP module is present.
>>
>> multiplexor vs. multiplexer may be a British thing? Thunderbird
>> underlines it fwiw.
> 
> Why doesn't someone who has a Turris Omnia come up with the support
> needed for this board, such as sending a patch to add support for
> this multiplexer?

Since you have me in To: Because I've already spent over a week on other
patches just to get a 2.5G SFP recognized, which still doesn't work.

Cheers,
Andreas

-- 
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 Nürnberg, Germany
GF: Felix Imendörffer
HRB 36809 (AG Nürnberg)
