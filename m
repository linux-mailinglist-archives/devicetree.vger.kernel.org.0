Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C4C3A2858F4
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 09:01:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727569AbgJGHBt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Oct 2020 03:01:49 -0400
Received: from out-1.mail.amis.net ([212.18.32.4]:39066 "EHLO
        out-1.mail.amis.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727083AbgJGHBt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Oct 2020 03:01:49 -0400
Received: from in-5.mail.amis.net (in-5.mail.amis.net [212.18.32.26])
        by out-1.mail.amis.net (Postfix) with ESMTP id 6845E8104D;
        Wed,  7 Oct 2020 09:01:47 +0200 (CEST)
Received: from in-5.mail.amis.net (localhost [127.0.0.1])
        by in-5.mail.amis.net (Postfix) with ESMTP id 0D9F2C9537;
        Wed,  7 Oct 2020 09:01:47 +0200 (CEST)
X-Virus-Scanned: amavisd-new at amis.net
X-Spam-Flag: NO
X-Spam-Score: -1.001
X-Spam-Level: 
X-Spam-Status: No, score=-1.001 required=5 tests=[ALL_TRUSTED=-1,
        NICE_REPLY_A=-0.001] autolearn=disabled
Received: from in-5.mail.amis.net ([127.0.0.1])
        by in-5.mail.amis.net (in-5.mail.amis.net [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id qmybH9k236wn; Wed,  7 Oct 2020 09:01:46 +0200 (CEST)
Received: from smtp2.amis.net (smtp2.amis.net [212.18.32.44])
        by in-5.mail.amis.net (Postfix) with ESMTP id 779ADC9516;
        Wed,  7 Oct 2020 09:01:46 +0200 (CEST)
Received: from [192.168.69.116] (89-212-21-243.static.t-2.net [89.212.21.243])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by smtp2.amis.net (Postfix) with ESMTPSA id 13AE77FC1F;
        Wed,  7 Oct 2020 09:01:46 +0200 (CEST)
Subject: Re: [PATCH 1/2] ASoC: fsl: fsl_ssi: add ac97 fixed mode support
To:     "Maciej S. Szmigiero" <mail@maciej.szmigiero.name>,
        Mark Brown <broonie@kernel.org>
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        Timur Tabi <timur@kernel.org>, Xiubo Li <Xiubo.Lee@gmail.com>,
        Fabio Estevam <festevam@gmail.com>,
        Takashi Iwai <tiwai@suse.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Nicolin Chen <nicoleotsuka@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shengjiu Wang <shengjiu.wang@gmail.com>
References: <20201005111644.3131604-1-primoz.fiser@norik.com>
 <20201005114925.GC5139@sirena.org.uk>
 <bc31e0f2-969c-4eb1-1dc0-cf4284427a4b@norik.com>
 <23907c70-4939-8732-5f91-c2cdd43449ad@maciej.szmigiero.name>
From:   Primoz Fiser <primoz.fiser@norik.com>
Message-ID: <6a68c377-472b-a0e4-efe4-5d59873c59e7@norik.com>
Date:   Wed, 7 Oct 2020 09:01:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <23907c70-4939-8732-5f91-c2cdd43449ad@maciej.szmigiero.name>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Maciej,

>> I remember that the AC'97 mode in SSI was riddled with bugs to a level of
>> being barely usable.

True.

After exhausting work we managed to get it stable enough to be ready for 
"production". One of improvements was the use of AC'97 fixed mode 
instead of variable mode. Other improvements to fsl_ssi by us might 
follow in the future, but at the moment I don't think those are ready 
for "mainline".

>> Not only the channel slots would enable on their own, but the CODEC
>> registers got randomly trashed from time to time (I think a register
>> would get zeroed spontaneously).

Yes, we also encountered those issues. For this we use special thread in 
a loop to check the state of AC'97 registers. We store known good values 
and check for discrepancies while audio is running. Once discrepancy is 
found, we immediately recover the register value with the previous good 
value. Downside of this approach is that audio might be down for a 
period of thread loop and that's why we keep it tight at 1 Hz.

BR,
Primoz


On 5. 10. 20 15:51, Maciej S. Szmigiero wrote:
> On 05.10.2020 14:59, Primoz Fiser wrote:
>> Hi Mark,
>>
>> On 5. 10. 20 13:49, Mark Brown wrote:
>>> On Mon, Oct 05, 2020 at 01:16:43PM +0200, Primoz Fiser wrote:
>>>
>>>> bits. But in summary, when SSI operates in AC'97 variable mode of
>>>> operation, CODECs can sometimes send SLOTREQ bits for non-existent audio
>>>> slots which then "stick" in SSI and completely break audio output.
>>>
>>> If this is something that happens based on the CODEC shouldn't we be
>>> doing this by quirking based on the CODEC the system has rather than
>>> requiring people set a separate DT property?
>>>
>>
>> To be totally honest, we are not 100% sure if this is only CODEC's fault or something else might be causing these issues.
>>
>> For example, it could be some EMI/noise that causes SLOTREQ bits to flip spuriously. Or it could even be the buggy SSI itself (taking into account all the issues with channel slipping, slot filtering, AC'97 reg reading/writing, etc)?
>>
>> We are just referencing commit 01ca485171e3 ("ASoC: fsl_ssi: only enable proper channel slots in AC'97 mode"), as we saw that UDOO board had the same problems. I added commit author to CC.
>>
>> We were able to overcome those by programming SSI in AC'97 fixed mode which driver up to now completely ignored (it was using only AC'97 variable mode).
>>
>> Additionally, we are using WM9712 codec and UDOO board is using VT1613, right? So these issues might not be CODEC related at all.
> 
> I remember that the AC'97 mode in SSI was riddled with bugs to a level of
> being barely usable.
> 
> Not only the channel slots would enable on their own, but the CODEC
> registers got randomly trashed from time to time (I think a register
> would get zeroed spontaneously).
> 
> This happened even if an external CODEC, different than the boards
> VT1613, was connected.
> So these were definitely SSI problems, not CODEC ones.
> 
> That's why probably pretty much every board other than UDOO uses SSI
> in the I²S mode.
> 
> Maciej
> 
