Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 54BE0539951
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 00:05:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348067AbiEaWEW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 18:04:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347523AbiEaWEW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 18:04:22 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD1009B1B0
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 15:04:19 -0700 (PDT)
Received: from [192.168.1.107] ([37.4.249.170]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MBUuP-1o5poc0wLn-00D3TY; Wed, 01 Jun 2022 00:03:53 +0200
Message-ID: <8ea4885d-a9f6-53f6-f168-2334c574cd53@i2se.com>
Date:   Wed, 1 Jun 2022 00:03:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 07/11] mfd: bcm2835-pm: Add support for BCM2711
Content-Language: en-US
To:     Peter Robinson <pbrobinson@gmail.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
References: <20220515202032.3046-1-stefan.wahren@i2se.com>
 <20220515202032.3046-8-stefan.wahren@i2se.com>
 <CALeDE9PeKvXu2AKp=RXt5yU6y5=vQw35PSGiFPpPmxVT+TYSYg@mail.gmail.com>
 <97a51373-91df-17de-8525-cd99a9166889@i2se.com>
 <CALeDE9Mgd3TYJo81P6++uzKHMBeYO68EFPjEhwZqri5BcHrK8w@mail.gmail.com>
From:   Stefan Wahren <stefan.wahren@i2se.com>
In-Reply-To: <CALeDE9Mgd3TYJo81P6++uzKHMBeYO68EFPjEhwZqri5BcHrK8w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:usEiOSfZVJPnqZcFG4gvZAndoAOYzIMgmuYUyM7n0/9qYDnD/zT
 jeY1vr7j7hej16d3mwKlNV+zqf1mnZ474RNoK0xdIgZVx4gpjUV8M218NUNdRRFOv/Jj0Bw
 F8DsaBs7FKVmBj/OcBajZjqkw9r1aUy5WPLXefQu8JPh2KE3Uon/3npRh2ZtykSzkoqMqQ5
 Dbys3GFlUmbRsD+xlIvxA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:VWEUhoVkRrQ=:Er8uqMeX6Jeaalek+cxwuB
 doBK18Es+t85QerAxHDSPByBWOSzp6GAiVbsTWCbcPZzdsjlQ6mKDjGSk6lrGJkhE0hDy/wAT
 wlj1O98vMn73JVo1fpF2PcMg9SMaYVE/3XFXCAxv/fx246OeRBvOP7OnuXBvAZKMw7koNC6Ou
 CGP2+17XgZyfNKjw469zx7fH7kocS2Z2UBD8hjTRKcHRGwjXS1M0Kr13q+TJS+yTzw91Ldy9b
 cBudjugO9ZQ4xO1w5GuyTdtoiWEP3/LCUrYsukZEqjQCunMgvht/AgR1T2Njly7LorfShWG3J
 fGnwF+EOulCWa2oHU6nxsuD7tBibcDkXPV+8b8g4NrXMihaL3DICJHNtsjUJ/THVkCYV31VIK
 jn3U670Mc27kx7lusCvwl8Cas30DJkJmj0ie1q8UDGkOISgRl+X4PqkgSDM/+mT1QR+vrFBRW
 R+XDduKGLSUNWT4HjgZG09QUVF7YuZkGC5H+XwF84oT/rewaHz7d+5Aa9iGjn+390vIKc7CGa
 fVFFTfKqZxUQuTeLk0I8PSvbmc32omx9VjGLJ3zVKyPdDyuRJZSNFVdrmh4vU9QJ+i/oAx5tn
 X1jyDpS9CIT7ibwUZnwJq16OaOJ6kIh0/i37NCAuNSRLTLnuI3GbWm6y2J2F8QB/87LLOkEDp
 gUWHEya6L1/MAmU1cjcE+Winf+LOoK6tauboDGaLqKUiWGNuezccAfwKMIJEJ7ovaowX7t/p3
 b/lFuYwbM2wrRcQMzrbyIyY4Jf3aSIYAwQAJgT/mPyR7fdeWytvUiYzyBmw=
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Peter,

Am 31.05.22 um 22:11 schrieb Peter Robinson:
> Hi Stefan,
>
> On Tue, May 31, 2022 at 6:27 PM Stefan Wahren <stefan.wahren@i2se.com> wrote:
>> Hi Peter,
>>
>> Am 31.05.22 um 17:08 schrieb Peter Robinson:
>>> On Sun, May 15, 2022 at 9:21 PM Stefan Wahren <stefan.wahren@i2se.com> wrote:
>>>> In BCM2711 the new RPiVid ASB took over V3D. The old ASB is still present
>>>> with the ISP and H264 bits, and V3D is in the same place in the new ASB
>>>> as the old one.
>>>>
>>>> As per the devicetree bindings, BCM2711 will provide both the old and
>>>> new ASB resources, so get both of them and pass them into
>>>> 'bcm2835-power,' which will take care of selecting which one to use
>>>> accordingly.
>>>>
>>>> Since the RPiVid ASB's resources were being provided prior to formalizing
>>>> the bindings[1], also support the old firmwares that didn't use
>>> I'm guessing this [1] is referring to "[1] See: 7dbe8c62ceeb ("ARM:
>>> dts: Add minimal Raspberry Pi 4 support")" referred to in the original
>>> patch [1] that Nicolas did, was there a reason to drop the
>>> details/changelog here?
>> Oops, the link accidently get lost.
>>> The decision not to use bits makes sense I
>>> believe.
>> Yes, i think the new version is more elegant.
>>> [1] https://patchwork.kernel.org/project/linux-arm-kernel/patch/20220213225646.67761-8-pbrobinson@gmail.com/
>>>
>>>> 'reg-names.'
>>>>
>>>> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
>>>> ---
>>>>    drivers/mfd/bcm2835-pm.c       | 18 ++++++++++++++++++
>>>>    include/linux/mfd/bcm2835-pm.h |  1 +
>>>>    2 files changed, 19 insertions(+)
>>>>
>>>> diff --git a/drivers/mfd/bcm2835-pm.c b/drivers/mfd/bcm2835-pm.c
>>>> index 1656d786993a..da110767c6a4 100644
>>>> --- a/drivers/mfd/bcm2835-pm.c
>>>> +++ b/drivers/mfd/bcm2835-pm.c
>>>> @@ -28,6 +28,8 @@ static const struct mfd_cell bcm2835_power_devs[] = {
>>>>    static int bcm2835_pm_get_pdata(struct platform_device *pdev,
>>>>                                   struct bcm2835_pm *pm)
>>>>    {
>>>> +       bool is_bcm2711 = of_device_is_compatible(pm->dev->of_node, "brcm,bcm2711-pm");
>>>> +
>>>>           /* If no 'reg-names' property is found we can assume we're using old
>>>>            * firmware.
>>>>            */
>>>> @@ -39,6 +41,7 @@ static int bcm2835_pm_get_pdata(struct platform_device *pdev,
>>>>                           return PTR_ERR(pm->base);
>>>>
>>>>                   pm->asb = devm_platform_ioremap_resource(pdev, 1);
>>>> +               pm->rpivid_asb = devm_platform_ioremap_resource(pdev, 2);
>>> Shouldn't we check if is_bcm2711 before we assign rpivid_asb above?
>> Yes, make sense.
>>>>           } else {
>>>>                   struct resource *res;
>>>>
>>>> @@ -50,11 +53,25 @@ static int bcm2835_pm_get_pdata(struct platform_device *pdev,
>>>>                                                       "asb");
>>>>                   if (res)
>>>>                           pm->asb = devm_ioremap_resource(&pdev->dev, res);
>>>> +
>>>> +               res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
>>>> +                                                   "rpivid_asb");
>>>> +               if (res)
>>>> +                       pm->rpivid_asb = devm_ioremap_resource(&pdev->dev,
>>>> +                                                               res);
>>>>           }
>>>>
>>>>           if (IS_ERR(pm->asb))
>>>>                   pm->asb = NULL;
>>>>
>>>> +       if (IS_ERR(pm->rpivid_asb))
>>>> +               pm->rpivid_asb = NULL;
>>>> +
>>>> +       if (pm->rpivid_asb && !is_bcm2711) {
>>>> +               dev_err(pm->dev, "RPiVid ASB support only present in BCM2711\n");
>>> Should we ever get into this situation? If it's an older get RPi I'm
>>> guessing pm->rpivid_asb should have been set to NULL from the error
>>> above.
>> I think this was a warning for older BCM2711 downstream DT files which
>> had rpivid_asb register but no BCM2711 compatible.
> Based on the history I remember that makes sense, but the warning is a
> bit misleading in the context given it would actually be a 2711. Is it
> purely a DT check or is does the version of VC firmware come into play
> here too, I seem to remember firmware was used to make some things
> work on older OSes in the early days of RPi4 (although it's hard to
> tell exactly what was done, and I've tried to forget).

Sorry, my fault. This isn't a warning. It's an error. This driver bail 
out as soon the DT is unexpected, which could otherwise lead to 
unexpected behavior of the power driver (rpivid_asb will be interpret as 
BCM2711). There is no firmware involved, just a pure DT. Maybe i should 
add a comment about this assumption here.

Suggested error message:

"Unexpected rpivid_asb register, please fix your DTB.\ņ"

>
>>>> +               return -EINVAL;
>>>> +       }
>>>> +
>>>>           return 0;
>>>>    }
>>>>
>>>> @@ -95,6 +112,7 @@ static int bcm2835_pm_probe(struct platform_device *pdev)
>>>>    static const struct of_device_id bcm2835_pm_of_match[] = {
>>>>           { .compatible = "brcm,bcm2835-pm-wdt", },
>>>>           { .compatible = "brcm,bcm2835-pm", },
>>>> +       { .compatible = "brcm,bcm2711-pm", },
>>>>           {},
>>>>    };
>>>>    MODULE_DEVICE_TABLE(of, bcm2835_pm_of_match);
>>>> diff --git a/include/linux/mfd/bcm2835-pm.h b/include/linux/mfd/bcm2835-pm.h
>>>> index ed37dc40e82a..f70a810c55f7 100644
>>>> --- a/include/linux/mfd/bcm2835-pm.h
>>>> +++ b/include/linux/mfd/bcm2835-pm.h
>>>> @@ -9,6 +9,7 @@ struct bcm2835_pm {
>>>>           struct device *dev;
>>>>           void __iomem *base;
>>>>           void __iomem *asb;
>>>> +       void __iomem *rpivid_asb;
>>>>    };
>>>>
>>>>    #endif /* BCM2835_MFD_PM_H */
>>>> --
>>>> 2.25.1
>>>>
>>> _______________________________________________
>>> linux-arm-kernel mailing list
>>> linux-arm-kernel@lists.infradead.org
>>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
