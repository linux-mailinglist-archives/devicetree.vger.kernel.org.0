Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3AC3B2858C9
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 08:49:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726219AbgJGGtQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Oct 2020 02:49:16 -0400
Received: from out-2.mail.amis.net ([212.18.32.14]:37487 "EHLO
        out-2.mail.amis.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725970AbgJGGtQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Oct 2020 02:49:16 -0400
Received: from in-2.mail.amis.net (in-2.mail.amis.net [212.18.32.19])
        by out-2.mail.amis.net (Postfix) with ESMTP id 9568180C8F;
        Wed,  7 Oct 2020 08:49:12 +0200 (CEST)
Received: from in-2.mail.amis.net (localhost [127.0.0.1])
        by in-2.mail.amis.net (Postfix) with ESMTP id 90936C9408;
        Wed,  7 Oct 2020 08:49:12 +0200 (CEST)
X-Virus-Scanned: amavisd-new at amis.net
X-Spam-Flag: NO
X-Spam-Score: -1.001
X-Spam-Level: 
X-Spam-Status: No, score=-1.001 required=5 tests=[ALL_TRUSTED=-1,
        NICE_REPLY_A=-0.001] autolearn=disabled
Received: from in-2.mail.amis.net ([127.0.0.1])
        by in-2.mail.amis.net (in-2.mail.amis.net [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id tUiipAm1VvNZ; Wed,  7 Oct 2020 08:49:12 +0200 (CEST)
Received: from smtp2.amis.net (smtp2.amis.net [212.18.32.44])
        by in-2.mail.amis.net (Postfix) with ESMTP id 2DF3AC9409;
        Wed,  7 Oct 2020 08:49:12 +0200 (CEST)
Received: from [192.168.69.116] (89-212-21-243.static.t-2.net [89.212.21.243])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by smtp2.amis.net (Postfix) with ESMTPSA id 3643F7FD42;
        Wed,  7 Oct 2020 08:49:11 +0200 (CEST)
Subject: Re: [PATCH 2/2] ASoC: dt-bindings: fsl: add ac97 fixed mode support
To:     Rob Herring <robh@kernel.org>, Fabio Estevam <festevam@gmail.com>
Cc:     Linux-ALSA <alsa-devel@alsa-project.org>,
        Timur Tabi <timur@kernel.org>,
        Nicolin Chen <nicoleotsuka@gmail.com>,
        Xiubo Li <Xiubo.Lee@gmail.com>,
        Shengjiu Wang <shengjiu.wang@gmail.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
References: <20201005111644.3131604-1-primoz.fiser@norik.com>
 <20201005111644.3131604-2-primoz.fiser@norik.com>
 <CAOMZO5CQkh06TfKj3qR9P+0ZQOQo07NAg8v9j==KMrLCWBn0mg@mail.gmail.com>
 <20201006215239.GA2912752@bogus>
From:   Primoz Fiser <primoz.fiser@norik.com>
Message-ID: <06953039-2064-b3eb-f208-9133158b3ac3@norik.com>
Date:   Wed, 7 Oct 2020 08:49:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201006215239.GA2912752@bogus>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

> Then perhaps it could be boolean?

Indeed, I can make it boolean.

In that case I would rename property to "fsl,ac97-fixed-mode".

Should I do that for V2?

Please advise.

BR,
Primoz


On 6. 10. 20 23:52, Rob Herring wrote:
> On Mon, Oct 05, 2020 at 08:35:58AM -0300, Fabio Estevam wrote:
>> On Mon, Oct 5, 2020 at 8:16 AM Primoz Fiser <primoz.fiser@norik.com> wrote:
>>>
>>> Add devicetree bindings documentation for operating SSI in AC'97
>>> variable/fixed mode of operation.
>>>
>>> Signed-off-by: Primoz Fiser <primoz.fiser@norik.com>
>>> ---
>>>   Documentation/devicetree/bindings/sound/fsl,ssi.txt | 5 +++++
>>>   1 file changed, 5 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/sound/fsl,ssi.txt b/Documentation/devicetree/bindings/sound/fsl,ssi.txt
>>> index 7e15a85cecd2..abc5abe11fb9 100644
>>> --- a/Documentation/devicetree/bindings/sound/fsl,ssi.txt
>>> +++ b/Documentation/devicetree/bindings/sound/fsl,ssi.txt
>>> @@ -43,6 +43,11 @@ Optional properties:
>>>   - fsl,mode:         The operating mode for the AC97 interface only.
>>>                       "ac97-slave" - AC97 mode, SSI is clock slave
>>>                       "ac97-master" - AC97 mode, SSI is clock master
>>> +- fsl,ac97-mode:    SSI AC97 mode of operation.
>>> +                    "variable" - AC97 Variable Mode, SLOTREQ bits determine
>>> +                    next receive/transmit frame
>>> +                    "fixed" - AC97 Fixed Mode, SSI transmits in accordance with
>>> +                    AC97 Frame Rate Divider bits
>>
>> It would be good to mention what is the default mode when such
>> property is absent.
> 
> Then perhaps it could be boolean?
> 
> Rob
> 
