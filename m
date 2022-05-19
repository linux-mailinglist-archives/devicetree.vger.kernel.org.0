Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EFBF752DD0E
	for <lists+devicetree@lfdr.de>; Thu, 19 May 2022 20:49:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233763AbiESSt1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 May 2022 14:49:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233634AbiESSt0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 May 2022 14:49:26 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A8E29D057
        for <devicetree@vger.kernel.org>; Thu, 19 May 2022 11:49:24 -0700 (PDT)
Received: from [192.168.1.107] ([37.4.249.149]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MkEdF-1nTk3u0Jp3-00kgV7; Thu, 19 May 2022 20:48:59 +0200
Message-ID: <0ff629de-24eb-c09f-6b1b-cddd4c533820@i2se.com>
Date:   Thu, 19 May 2022 20:48:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH RFC] ARM: dts: bcm2711: Fix DMA constrains for newer
 BCM2711 boards
Content-Language: en-US
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     bcm-kernel-feedback-list@broadcom.com,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Peter Robinson <pbrobinson@gmail.com>, matthias.bgg@kernel.org,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
References: <20220413162739.6717-1-stefan.wahren@i2se.com>
 <37114673-5b31-c03c-fb7e-0b6a05adffd6@i2se.com>
 <49f55379-86b8-1ff2-b540-dff245993e1a@gmail.com>
From:   Stefan Wahren <stefan.wahren@i2se.com>
In-Reply-To: <49f55379-86b8-1ff2-b540-dff245993e1a@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:KxVYuuSFQLV7xnR9OPuaVADEyzMLuUu9Jy2JYNonmuL8E9tfRvJ
 bCBY7LhxWY67IoGgi8pf+sQgVer6CGfSmSFrr5eCLLzxUJ4eTDnEFYtJsz7bc6lEjON/IVT
 ls8gOSH/nX7VB11ppxxqyACQi81RYvUUFK3LeFCAGBUDHX6FVqzm65DrXZYwxWaHMZXDpSF
 +e9HKH4jzjzbwiCcefAtA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:Id19xmDs3Ec=:KQdDZdyDyTJXCKW/yL9MOb
 V/BzLE0bpDnitEEao5yB+oNu5ro0FgUEEKBdXeP7BZTbfeLI70J914SWKoU9b6PKrT4mXLYgM
 +Z2Bxar+pij9eViux+oEVvr1zEE7kT9mG1MsMUDJi+NdiC0YThegcQDWJtLFOZ7o84ax1/Lik
 dHEbxO0L3fyumhsaD5bMCp8+mqi6KCOj/I3aztxQuesTLKp7pLz8kqwK6kmPS1q22nNrPu6QP
 yawoQ9HEiZqY2kc91zRdbnWPxyh3mtuHdU9P64mJRtJ442O4Yyn85ZUTy9qinKCMPUV0ERWNT
 YVHDoJTWCxzr+dpK21ZIFl98gbri9HsmdCW6VzBlM5UQ7shPqeasGud10WTYV7wFEt1MBoK3o
 HPoJOsPGYJeYvMDYvkKKWvAcDa962fgbCfLqvCrJEPZh7YKa2uQ3v9NfDFX9o5HlrbknSxMQa
 x4JV0bxuqhDGx887XBEK4TgLXCS/vCpegQFctXUvv3Pqr7IHkbi1X5o3Uv0vQe1sLv8m5RiDT
 UgR4bCcWnEWVr0FlO/eLypmE7ASyw+ko7Dd5BrcB62iTOBK10r8CJoyfodISRGLVpXwgEvTZI
 +l43SjCi91QrVuz/GcFVLa6hbHAjcs1CAd+DbdSiNgi9japZSzZzsyS78MFLSoZzPHJxM94GZ
 rzRZiygZFcvz/QbrVYl5IU1sFu4BLn9kgZxFdULRpAp26dcF7KC+Mx5EKkBgRdrkTzBHWYo8g
 2GDwKeaZeZ2GHx6ovGLz2NuNV6G/8/EC0PxujtGdSd66ZfuC/NfYDaQW/Co=
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am 18.05.22 um 22:18 schrieb Florian Fainelli:
>
>
> On 5/4/2022 2:43 PM, Stefan Wahren wrote:
>> Hi,
>>
>> Am 13.04.22 um 18:27 schrieb Stefan Wahren:
>>> The commit 3d2cbb644836 ("ARM: dts: bcm2711: Move emmc2 into its own 
>>> bus")
>>> assumed that all bootloader pass the FDT modified by the firmware to 
>>> the
>>> kernel. But this is not always the case (e.g. Fedora) and cause boot
>>> issues for boards with a BCM2711 C0 SoC (RPi 400, CM4, newer RPi 4 B)
>>> which does have different DMA constraints.
>>>
>>> Since we are not able to detect the SoC revision, let's assume a 
>>> BCM2711
>>> C0 SoC for bcm2711.dtsi and move the restricted DMA constrains to a
>>> separate RPi 4 B board file just for the old SoC revision.
>>>
>>> Fixes: 3d2cbb644836 ("ARM: dts: bcm2711: Move emmc2 into its own bus")
>>> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
>> since there wasn't any feedback yet, i want to ping ...
>
> Could not we just rely on the VPU patching the Device Tree instead of 
> having to differentiate the 2711 revision and having to use different 
> DTS/DTBs?
As long as every bootloader in the boot chain take care everything is 
fine. The problem is the VPU firmware is closed source, so only a few 
people knows about the hardware differences. So the idea was to make it 
more transparent and yes i'm also not happy with this patch.
>
> Also, can we consider that the older B0 are less predominant in the 
> wild than the C0 nowadays, especially with the shortages going on is 
> that even remotely the case?
So your idea is to make C0 the default and let the firmware patch the B0 
part? I must confess that i never tested this.
