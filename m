Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6728D1A8F2
	for <lists+devicetree@lfdr.de>; Sat, 11 May 2019 20:01:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726038AbfEKSBC convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Sat, 11 May 2019 14:01:02 -0400
Received: from mout.kundenserver.de ([217.72.192.74]:53849 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726033AbfEKSBC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 11 May 2019 14:01:02 -0400
Received: from [192.168.1.166] ([37.4.249.138]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1Mc0Aj-1gqiqZ1Gt5-00dYb9; Sat, 11 May 2019 20:00:36 +0200
Subject: Re: [PATCH] ARM: bcm283x: Enable DMA support for SPI controller
To:     kernel@martin.sperl.org, Lukas Wunner <lukas@wunner.de>
Cc:     Eric Anholt <eric@anholt.net>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Noralf Tronnes <noralf@tronnes.org>,
        linux-rpi-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org
References: <ab21b59ece7db065ee86f6f0c0a7623144db52b4.1557419583.git.lukas@wunner.de>
 <6D30E7D8-BD48-4268-B6F9-62FEE0349C8B@martin.sperl.org>
From:   Stefan Wahren <stefan.wahren@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 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 AQ==
Message-ID: <7b604542-c6c4-dd51-6c25-c6b255dadc60@i2se.com>
Date:   Sat, 11 May 2019 20:00:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <6D30E7D8-BD48-4268-B6F9-62FEE0349C8B@martin.sperl.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT
Content-Language: en-US
X-Provags-ID: V03:K1:2i/pURhCDZ+nrk6z3NCgUuHzLfI3KQkI/94ueh/FyITqEiWB6Xa
 E7Ugv7GQQqqBnafcj1Ute1KmGGfxXtg5lpEjyfN25v8taunrMT7kPLMwdFyBhjHWmfu/etZ
 5J9vHGdoL8ZDA1wPasubZfWxpiD5SZpCSf9jqMnHiPGK8+c9ltN7Ix7FSuWLyN9bXNunCdL
 /Pp7KcbHRgudtLPTlZRIg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:SMclBEMfTj8=:JaBkr2UOQ8H1JNF35O3Xdr
 HGrW7BzuCKxxTUYf/1Ys7kdxQgxmUjKHXXbk6xUxNSPnoFn2qYy7R0ZRKL8h39P8ZDU/xFMuR
 URK8iEQ5VMULjNcBl+QoOcy5R1ltPaMSejbbEMtgwGEjBagUZYxOvkF1frTDzJloiaPOqT0Sd
 XQI1ztwn3aJgkglP49UZv1hXEKgbYwKbaRRv6on4LKtDizVcrQPay59NpKK1v6pft/p9xavlZ
 xWHtYbLEPVSZCqPGT/J3+UpOIUiekIVpAW2w0Ou4cWCNinb/jre5o7HIZ7WZVpfBo1Ljwq3j5
 VPnQ57cH/nbpBnGimdM6YW3XDuKUNlfNFhYCcAAB9vDWEE9mwOeNyMrb2A0AIsb78Ot1m7Upn
 OtJA0+7Eqwhm2Xv33OHX1Fk0LaFa1lK0Y7X/6BQZNRyjCiYNEP6HRa/aEzJfIyMLERDwncXyB
 FnXdY8TXg0rGEV5NCnGGjo+ayaFqM2S0Xgxl1jCIud6/k3/gmvTLNcprGUTRr4Sq1y3YCnIpK
 jT56ShVdcImJIev5HpW0WiuTvPZTMQnr12Tw7wx9iy/1yUbD6iAF+UyYwbKMv9P+H+11j97ha
 gJ8UpN1npzFvMFoKGuzdSc7l45V0tVQU/9GhAJaZAs7D3uw7vhjKBirDpjYZp+UuVDYHPwLoz
 KXnusr5dFwsBWQuPMLW8SgCliM+zcSbe0CMvJUVy7gYehUno842HclPJcAkIhI/EpOjIlgGhP
 a+52p/aJ1S2ZiVxQSOOkjZD9VIwkedjT6ZY7D+RdlAjP49p4C43TiulB8N4=
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Am 09.05.19 um 20:08 schrieb kernel@martin.sperl.org:
>> On 09.05.2019, at 19:03, Lukas Wunner <lukas@wunner.de> wrote:
>>
>> Without this, the driver for the BCM2835 SPI controller uses interrupt
>> mode instead of DMA mode, incurring a significant performance penalty.
>> The Foundation's device tree has had these attributes for years, but for
>> some reason they were never upstreamed.
>>
>> They were originally contributed by Noralf Trønnes and Martin Sperl:
>> https://github.com/raspberrypi/linux/commit/25f3e064afc8
>> https://github.com/raspberrypi/linux/commit/e0edb52b47e6
> I believe the the original patch that I had provided has been turned down
> was because:
> * we do not want to “consume” dma resources automatically
as long as we don't enable SPI per default, this shouldn't be a problem.
I remember that the downstream MMC driver "wasted" a DMA channel at the
beginning, so we were a little bit careful in the past.
> * to use spi correctly you have to apply several changes to the dt already 
>   (think GPIO mode for CS and status=enable).

This is something we can't provide, since the GPIO header should be
flexible as possible. But this has nothing to do with Lukas patch,
because i consider the patch as SoC related and common practice.

Yes, overlays are a big improvement to define a SPI bus here.

Thanks
Stefan

>
> If this mindset has changed, then I am happy.
>
>> Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>> Signed-off-by: Lukas Wunner <lukas@wunner.de>
>> Cc: Martin Sperl <kernel@martin.sperl.org>
>> Cc: Noralf Trønnes <noralf@tronnes.org>
> Reviewed-by: Martin Sperl <kernel@martin.sperl.org>
>
>
>
>
>
>
>

