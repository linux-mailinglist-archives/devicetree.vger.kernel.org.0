Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D37082835F8
	for <lists+devicetree@lfdr.de>; Mon,  5 Oct 2020 14:59:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726128AbgJEM76 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Oct 2020 08:59:58 -0400
Received: from out-2.mail.amis.net ([212.18.32.14]:39259 "EHLO
        out-2.mail.amis.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725891AbgJEM76 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Oct 2020 08:59:58 -0400
Received: from in-4.mail.amis.net (in-4.mail.amis.net [212.18.32.23])
        by out-2.mail.amis.net (Postfix) with ESMTP id B0AE9811FF;
        Mon,  5 Oct 2020 14:59:54 +0200 (CEST)
Received: from in-4.mail.amis.net (localhost [127.0.0.1])
        by in-4.mail.amis.net (Postfix) with ESMTP id A6C0717048;
        Mon,  5 Oct 2020 14:59:54 +0200 (CEST)
X-Virus-Scanned: amavisd-new at amis.net
X-Spam-Flag: NO
X-Spam-Score: -1.252
X-Spam-Level: 
X-Spam-Status: No, score=-1.252 required=5 tests=[ALL_TRUSTED=-1,
        NICE_REPLY_A=-0.252] autolearn=disabled
Received: from in-4.mail.amis.net ([127.0.0.1])
        by in-4.mail.amis.net (in-4.mail.amis.net [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id CycFUBqLC64b; Mon,  5 Oct 2020 14:59:54 +0200 (CEST)
Received: from smtp2.amis.net (smtp2.amis.net [212.18.32.44])
        by in-4.mail.amis.net (Postfix) with ESMTP id 24D7417055;
        Mon,  5 Oct 2020 14:59:54 +0200 (CEST)
Received: from [192.168.69.116] (89-212-21-243.static.t-2.net [89.212.21.243])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by smtp2.amis.net (Postfix) with ESMTPSA id 9133C7FE59;
        Mon,  5 Oct 2020 14:59:53 +0200 (CEST)
Subject: Re: [PATCH 1/2] ASoC: fsl: fsl_ssi: add ac97 fixed mode support
To:     Mark Brown <broonie@kernel.org>
Cc:     alsa-devel@alsa-project.org, Timur Tabi <timur@kernel.org>,
        Nicolin Chen <nicoleotsuka@gmail.com>,
        Xiubo Li <Xiubo.Lee@gmail.com>,
        Fabio Estevam <festevam@gmail.com>,
        Shengjiu Wang <shengjiu.wang@gmail.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        "Maciej S. Szmigiero" <mail@maciej.szmigiero.name>
References: <20201005111644.3131604-1-primoz.fiser@norik.com>
 <20201005114925.GC5139@sirena.org.uk>
From:   Primoz Fiser <primoz.fiser@norik.com>
Message-ID: <bc31e0f2-969c-4eb1-1dc0-cf4284427a4b@norik.com>
Date:   Mon, 5 Oct 2020 14:59:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201005114925.GC5139@sirena.org.uk>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Mark,

On 5. 10. 20 13:49, Mark Brown wrote:
> On Mon, Oct 05, 2020 at 01:16:43PM +0200, Primoz Fiser wrote:
> 
>> bits. But in summary, when SSI operates in AC'97 variable mode of
>> operation, CODECs can sometimes send SLOTREQ bits for non-existent audio
>> slots which then "stick" in SSI and completely break audio output.
> 
> If this is something that happens based on the CODEC shouldn't we be
> doing this by quirking based on the CODEC the system has rather than
> requiring people set a separate DT property?
> 

To be totally honest, we are not 100% sure if this is only CODEC's fault 
or something else might be causing these issues.

For example, it could be some EMI/noise that causes SLOTREQ bits to flip 
spuriously. Or it could even be the buggy SSI itself (taking into 
account all the issues with channel slipping, slot filtering, AC'97 reg 
reading/writing, etc)?

We are just referencing commit 01ca485171e3 ("ASoC: fsl_ssi: only enable 
proper channel slots in AC'97 mode"), as we saw that UDOO board had the 
same problems. I added commit author to CC.

We were able to overcome those by programming SSI in AC'97 fixed mode 
which driver up to now completely ignored (it was using only AC'97 
variable mode).

Additionally, we are using WM9712 codec and UDOO board is using VT1613, 
right? So these issues might not be CODEC related at all.

BR,
Primoz




