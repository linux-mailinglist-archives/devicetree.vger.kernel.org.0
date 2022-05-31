Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1951A53954A
	for <lists+devicetree@lfdr.de>; Tue, 31 May 2022 19:13:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245372AbiEaRNJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 13:13:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239744AbiEaRNJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 13:13:09 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A74BCE0
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 10:13:06 -0700 (PDT)
Received: from [192.168.1.107] ([37.4.249.170]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1Mz9hF-1nZtyX1Ipv-00wHEq; Tue, 31 May 2022 19:12:46 +0200
Message-ID: <f2c171e3-77b6-2713-d748-373626d3a69f@i2se.com>
Date:   Tue, 31 May 2022 19:12:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 06/11] mfd: bcm2835-pm: Use 'reg-names' to get resources
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
        linux-arm-kernel@lists.infradead.org,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <20220515202032.3046-1-stefan.wahren@i2se.com>
 <20220515202032.3046-7-stefan.wahren@i2se.com>
 <CALeDE9MNi0Tb0Lw=jJykNpF8R+We48y2pvPHxQTsCykFFPbhTQ@mail.gmail.com>
From:   Stefan Wahren <stefan.wahren@i2se.com>
In-Reply-To: <CALeDE9MNi0Tb0Lw=jJykNpF8R+We48y2pvPHxQTsCykFFPbhTQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:FZkpTxJqNqu/uLKTdc2enaLeyBloyRQQBNi2UB9xatPw4tBQtfC
 bVafvYaBF77RJNQYPBeE0WLxNH/KGsm0/jaDUbtx/1xu+Lho4D2Rewo9nUpCPww87VHQKr+
 XVOcHQPre7EWXb6TOgTsRrpuaiMn/RUmFtVs9uCL6Sm77LJZulC1oJX7qaBVQdWYO/bKrnD
 WRq6qidM4nz7PfJnBjUrg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:3/m9BLyt0Qc=:+BnfkTVsn/8lxjvvaaL2Et
 BPDTj1zJo7oe0aSVNnfWKwtVhyX5M6sCrIBdBMu2el3ZiePk9fqMZ4OC3pblIET/6RbcxxShY
 /8EtYJZaZwQMl0Ajsb2+N7D/LZFSFcZ+IS6frOIEZfwL4qhhkabjnUubdRAGaOlC8YDATntTc
 IuCRdcm40AlXoRY0KJ4au3QftRzm7ScXmsDxBBKwSlHcMaB6jNK1s6Ht97RRvkZ3ukZ8T+WDS
 0fMzNSWPXO90HUILdlHL2VKX2j7Gi+6JvPk9qMGFVLkT1t0ZWBxvDfmCwE3wxdqOc2wa1XANs
 8qxWoeF2QH2GjWVlReZ5u4N3jVowGiYPmEGNTGKsFxFfSgzYNM3wR3kMDYgG76HOK+6u3Bvhg
 jwiNmuRcsmH/CE2akPlU6iJQz3adYjmhXUIi6UVLj74YwnrpBlYb8DSHrVUhuOAHgo8nRhZBz
 l/wpFAcJwg4vqCcGvbK30OAYEgjH39tPhiBE9bUNnmvigByA89OqvBKMORoxT0IoOZZF4/ZrV
 AIFBa+gTuZAK8PcDwYm8P87W0kHe2esieK3ZKGue0b74ipkCb40n8KvwgZcsxXHrbyJ1qYlAX
 QJZuY3/VjDOydd98neFsD2M1TevG4ydwGpn7iogCzoccP/Surk1KI8MLruPAqT/mGL1Xt/FO2
 iJQWbD5hcLHuvV3SBtm7mG0e4N6973OO5WPs8OnmlzNr3wKmDnLctDYWXwkHxhao18bRPH7hr
 Yoa8JGHdYkMvBjFMCt3MWHyYJFzQ31+so0CKyXthCowEuZuc+sglWGYS9QE=
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Peter,

Am 31.05.22 um 16:54 schrieb Peter Robinson:
> On Sun, May 15, 2022 at 9:21 PM Stefan Wahren <stefan.wahren@i2se.com> wrote:
>> From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>>
>> If available in firmware, find resources by their 'reg-names' position
>> instead of relying on hardcoded offsets. Care is taken to support old
>> firmware nonetheless.
> So this patch has changed a little over Nicolas's last one, which was
> what I based my patch on [1] but there's no changelog
>
> [1] https://patchwork.kernel.org/project/linux-arm-kernel/patch/20220213225646.67761-7-pbrobinson@gmail.com/

yes my favorite changelog style is "within the cover letter". Since i 
started a new and split out series a version reference doesn't make 
sense. But yes, very unfortunate for a reviewer. Keeping the version 
number would have been better.

Here the changes since v4 afterwards:

- fix copy & paste issue in else branch
- don't use devm_platform_ioremap_resource_byname for optional register 
to avoid confusing log error
- pull out asb handling to avoid copy & paste

>
>> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> Minor comment inline, else:
> Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
>> ---
>>   drivers/mfd/bcm2835-pm.c | 59 +++++++++++++++++++++++++++-------------
>>   1 file changed, 40 insertions(+), 19 deletions(-)
>>
>> diff --git a/drivers/mfd/bcm2835-pm.c b/drivers/mfd/bcm2835-pm.c
>> index 42fe67f1538e..1656d786993a 100644
>> --- a/drivers/mfd/bcm2835-pm.c
>> +++ b/drivers/mfd/bcm2835-pm.c
>> @@ -25,9 +25,41 @@ static const struct mfd_cell bcm2835_power_devs[] = {
>>          { .name = "bcm2835-power" },
>>   };
>>
>> +static int bcm2835_pm_get_pdata(struct platform_device *pdev,
>> +                               struct bcm2835_pm *pm)
>> +{
>> +       /* If no 'reg-names' property is found we can assume we're using old
>> +        * firmware.
>> +        */
>> +       if (!of_find_property(pm->dev->of_node, "reg-names", NULL)) {
>> +               dev_warn(pm->dev, "Old devicetree detected, please update your firmware.\n");
> If they're using an upstream kernel DT and an old firmware this may be
> confusing, maybe tweak the wording a little?

"reg-names are missing, please update your DTB.\ņ"

>> +               pm->base = devm_platform_ioremap_resource(pdev, 0);
>> +               if (IS_ERR(pm->base))
>> +                       return PTR_ERR(pm->base);
>> +
>> +               pm->asb = devm_platform_ioremap_resource(pdev, 1);
>> +       } else {
>> +               struct resource *res;
>> +
>> +               pm->base = devm_platform_ioremap_resource_byname(pdev, "pm");
>> +               if (IS_ERR(pm->base))
>> +                       return PTR_ERR(pm->base);
>> +
>> +               res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
>> +                                                   "asb");
>> +               if (res)
>> +                       pm->asb = devm_ioremap_resource(&pdev->dev, res);
>> +       }
>> +
>> +       if (IS_ERR(pm->asb))
>> +               pm->asb = NULL;
>> +
>> +       return 0;
>> +}
>> +
>>   static int bcm2835_pm_probe(struct platform_device *pdev)
>>   {
>> -       struct resource *res;
>>          struct device *dev = &pdev->dev;
>>          struct bcm2835_pm *pm;
>>          int ret;
>> @@ -39,10 +71,9 @@ static int bcm2835_pm_probe(struct platform_device *pdev)
>>
>>          pm->dev = dev;
>>
>> -       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>> -       pm->base = devm_ioremap_resource(dev, res);
>> -       if (IS_ERR(pm->base))
>> -               return PTR_ERR(pm->base);
>> +       ret = bcm2835_pm_get_pdata(pdev, pm);
>> +       if (ret)
>> +               return ret;
>>
>>          ret = devm_mfd_add_devices(dev, -1,
>>                                     bcm2835_pm_devs, ARRAY_SIZE(bcm2835_pm_devs),
>> @@ -54,20 +85,10 @@ static int bcm2835_pm_probe(struct platform_device *pdev)
>>           * bcm2835-pm binding as the key for whether we can reference
>>           * the full PM register range and support power domains.
>>           */
>> -       res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
>> -       if (res) {
>> -               pm->asb = devm_ioremap_resource(dev, res);
>> -               if (IS_ERR(pm->asb))
>> -                       return PTR_ERR(pm->asb);
>> -
>> -               ret = devm_mfd_add_devices(dev, -1,
>> -                                          bcm2835_power_devs,
>> -                                          ARRAY_SIZE(bcm2835_power_devs),
>> -                                          NULL, 0, NULL);
>> -               if (ret)
>> -                       return ret;
>> -       }
>> -
>> +       if (pm->asb)
>> +               return devm_mfd_add_devices(dev, -1, bcm2835_power_devs,
>> +                                           ARRAY_SIZE(bcm2835_power_devs),
>> +                                           NULL, 0, NULL);
>>          return 0;
>>   }
>>
>> --
>> 2.25.1
>>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
