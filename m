Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D131C28376A
	for <lists+devicetree@lfdr.de>; Mon,  5 Oct 2020 16:14:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726329AbgJEOOr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Oct 2020 10:14:47 -0400
Received: from vps-vb.mhejs.net ([37.28.154.113]:36220 "EHLO vps-vb.mhejs.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725903AbgJEOOr (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 5 Oct 2020 10:14:47 -0400
X-Greylist: delayed 1355 seconds by postgrey-1.27 at vger.kernel.org; Mon, 05 Oct 2020 10:14:44 EDT
Received: from MUA
        by vps-vb.mhejs.net with esmtps (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
        (Exim 4.93.0.4)
        (envelope-from <mail@maciej.szmigiero.name>)
        id 1kPQuL-00032n-SR; Mon, 05 Oct 2020 15:52:05 +0200
Subject: Re: [PATCH 1/2] ASoC: fsl: fsl_ssi: add ac97 fixed mode support
To:     Primoz Fiser <primoz.fiser@norik.com>,
        Mark Brown <broonie@kernel.org>
Cc:     alsa-devel@alsa-project.org, Timur Tabi <timur@kernel.org>,
        Nicolin Chen <nicoleotsuka@gmail.com>,
        Xiubo Li <Xiubo.Lee@gmail.com>,
        Fabio Estevam <festevam@gmail.com>,
        Shengjiu Wang <shengjiu.wang@gmail.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
References: <20201005111644.3131604-1-primoz.fiser@norik.com>
 <20201005114925.GC5139@sirena.org.uk>
 <bc31e0f2-969c-4eb1-1dc0-cf4284427a4b@norik.com>
From:   "Maciej S. Szmigiero" <mail@maciej.szmigiero.name>
Autocrypt: addr=mail@maciej.szmigiero.name; prefer-encrypt=mutual; keydata=
 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 Sg==
Message-ID: <23907c70-4939-8732-5f91-c2cdd43449ad@maciej.szmigiero.name>
Date:   Mon, 5 Oct 2020 15:51:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <bc31e0f2-969c-4eb1-1dc0-cf4284427a4b@norik.com>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05.10.2020 14:59, Primoz Fiser wrote:
> Hi Mark,
> 
> On 5. 10. 20 13:49, Mark Brown wrote:
>> On Mon, Oct 05, 2020 at 01:16:43PM +0200, Primoz Fiser wrote:
>>
>>> bits. But in summary, when SSI operates in AC'97 variable mode of
>>> operation, CODECs can sometimes send SLOTREQ bits for non-existent audio
>>> slots which then "stick" in SSI and completely break audio output.
>>
>> If this is something that happens based on the CODEC shouldn't we be
>> doing this by quirking based on the CODEC the system has rather than
>> requiring people set a separate DT property?
>>
> 
> To be totally honest, we are not 100% sure if this is only CODEC's fault or something else might be causing these issues.
> 
> For example, it could be some EMI/noise that causes SLOTREQ bits to flip spuriously. Or it could even be the buggy SSI itself (taking into account all the issues with channel slipping, slot filtering, AC'97 reg reading/writing, etc)?
> 
> We are just referencing commit 01ca485171e3 ("ASoC: fsl_ssi: only enable proper channel slots in AC'97 mode"), as we saw that UDOO board had the same problems. I added commit author to CC.
> 
> We were able to overcome those by programming SSI in AC'97 fixed mode which driver up to now completely ignored (it was using only AC'97 variable mode).
> 
> Additionally, we are using WM9712 codec and UDOO board is using VT1613, right? So these issues might not be CODEC related at all.

I remember that the AC'97 mode in SSI was riddled with bugs to a level of
being barely usable.

Not only the channel slots would enable on their own, but the CODEC
registers got randomly trashed from time to time (I think a register
would get zeroed spontaneously).

This happened even if an external CODEC, different than the boards
VT1613, was connected.
So these were definitely SSI problems, not CODEC ones.

That's why probably pretty much every board other than UDOO uses SSI
in the I²S mode.

Maciej
