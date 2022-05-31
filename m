Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0517653957D
	for <lists+devicetree@lfdr.de>; Tue, 31 May 2022 19:35:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346611AbiEaRfG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 13:35:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346596AbiEaRfC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 13:35:02 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.74])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AD699155F
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 10:35:01 -0700 (PDT)
Received: from [192.168.1.107] ([37.4.249.170]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MRmsG-1oO7Ia0cO2-00TCcv; Tue, 31 May 2022 19:34:46 +0200
Message-ID: <4553eca1-cbba-504c-162d-4429dfb83f41@i2se.com>
Date:   Tue, 31 May 2022 19:34:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 09/11] soc: bcm: bcm2835-power: Resolve ASB register
 macros
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
 <20220515202032.3046-10-stefan.wahren@i2se.com>
 <CALeDE9N5+47WqqS_wSSiLuz0Xbh7FDHaEoL8rD3WpNsNhhrPfQ@mail.gmail.com>
From:   Stefan Wahren <stefan.wahren@i2se.com>
In-Reply-To: <CALeDE9N5+47WqqS_wSSiLuz0Xbh7FDHaEoL8rD3WpNsNhhrPfQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:D/DQxf209v1mYc4xBY3+vB37XWyDmMlggi1hOtHi1NFWNRxkmCh
 E38+utZ7u5h6P8x8a4SCzt+NLOSCEgV60rGhDLaWHyKLW2L1yvo0ZjnailGv6g6CwEGFffJ
 wrG635PrbXO4WDJKHawzG8aYDaaOoqAF54daIQLh3AH0prFjnZWdxAOMUlQ7JDLxml++dMa
 9rDfAKowD1IxZ68IYCeSA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:2VV+5iIKKBE=:dnv4uWdVMyaIaLqs2IUDw+
 hnuRfevi3ILmjVjBRcpVekhKPsSPBsBH118QuCqyrNtm5S5WfDKmG9Z1owmhWhspDFjRUVpWh
 wXw9DxXtrZekhzDtwOZn+ykdvz09NlF5tpv6H7grF9PdXgcXX2zCiA2hVPaqZ9g6BUCmPrriH
 7oJJUTNZpyYJqn5YjyKhdiAA//FPCbT+tTTP04kfRVk2AQQv8gj8zHSs6Yr3V4GiyefoUXj2q
 f4MuLQQnh+Ljmx5JXgxBEkt2/gAfaVG3Y1NQm5zYo1zoi4ff/PkxXKHb2rd+y90XrZmPSupJx
 3GHVRSTMCnI5QrNmiqSWRiFDkQz/+DziFSyPC3HmnqQDf7k/C92v1gyh7It2Rg3O9oxXt3xTd
 x5tnLlDgIwE8VN0wetUJR/t9cCqF0mgcj0wGbY5xiAQGpYtK+Y1va10wla7R21A/QeP5jkB8j
 hmI46brpg+5FvyHmMY97u5E3AQQPqPF35cZqMf8yj+9HkFFa97IYzzN4xfBW3dDLHOzH+yuU8
 t4ElLWjnKIfn/GIhRqQwNCqMtjqzIA76zUKcyyhIYuWcy6vWBAZaWfqDDCNlBNyu34L9YN/3g
 /3p5BLcF7uMFKm823rZVcqhEQ8FV7NZ/Cq3addP+j12hMULEfKWwx0ILUAWbuao37uBk7Xm/W
 hUGtdqzLvWRg1Hg5rTH76jiUgYEjn2v1F5xuKWFLs5Wln/pl9YJIsHDZmjEjFFvuOySqDIrPn
 Xz49Jirms4/IUmaegFzOzEYFzPpgxiVPqhpeilocsC1Gk3ZKqGQ3dOdzf10=
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Peter,

Am 31.05.22 um 17:47 schrieb Peter Robinson:
> On Sun, May 15, 2022 at 9:21 PM Stefan Wahren <stefan.wahren@i2se.com> wrote:
>> The macros in order to access the ASB registers have a hard coded base
>> address. So extending them for other platforms would make them harder
>> to read. As a solution resolve these macros.
>>
>> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> A minor query below:
> Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
>> ---
>>   drivers/soc/bcm/bcm2835-power.c | 15 ++++++++-------
>>   1 file changed, 8 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/soc/bcm/bcm2835-power.c b/drivers/soc/bcm/bcm2835-power.c
>> index 77dc9e62b207..fa0a13035794 100644
>> --- a/drivers/soc/bcm/bcm2835-power.c
>> +++ b/drivers/soc/bcm/bcm2835-power.c
>> @@ -126,9 +126,6 @@
>>
>>   #define ASB_AXI_BRDG_ID                        0x20
>>
>> -#define ASB_READ(reg) readl(power->asb + (reg))
>> -#define ASB_WRITE(reg, val) writel(PM_PASSWORD | (val), power->asb + (reg))
>> -
>>   struct bcm2835_power_domain {
>>          struct generic_pm_domain base;
>>          struct bcm2835_power *power;
>> @@ -150,7 +147,10 @@ struct bcm2835_power {
>>
>>   static int bcm2835_asb_control(struct bcm2835_power *power, u32 reg, bool enable)
>>   {
>> +       void __iomem *base = power->asb;
> I wonder the perf of defining base here vs the readability of
> power->asb; throughout.
this is the whole "trick" in order to change the base to rpivid_asb in 
patch #10.
>
>>          u64 start;
>> +       u32 val;
>> +
>>
>>          if (!reg)
>>                  return 0;
>> @@ -159,12 +159,13 @@ static int bcm2835_asb_control(struct bcm2835_power *power, u32 reg, bool enable
>>
>>          /* Enable the module's async AXI bridges. */
>>          if (enable) {
>> -               ASB_WRITE(reg, ASB_READ(reg) & ~ASB_REQ_STOP);
>> +               val = readl(base + reg) & ~ASB_REQ_STOP;
>>          } else {
>> -               ASB_WRITE(reg, ASB_READ(reg) | ASB_REQ_STOP);
>> +               val = readl(base + reg) | ASB_REQ_STOP;
>>          }
>> +       writel(PM_PASSWORD | val, base + reg);
>>
>> -       while (ASB_READ(reg) & ASB_ACK) {
>> +       while (readl(base + reg) & ASB_ACK) {
>>                  cpu_relax();
>>                  if (ktime_get_ns() - start >= 1000)
>>                          return -ETIMEDOUT;
>> @@ -622,7 +623,7 @@ static int bcm2835_power_probe(struct platform_device *pdev)
>>          power->base = pm->base;
>>          power->asb = pm->asb;
>>
>> -       id = ASB_READ(ASB_AXI_BRDG_ID);
>> +       id = readl(power->asb + ASB_AXI_BRDG_ID);
>>          if (id != 0x62726467 /* "BRDG" */) {
>>                  dev_err(dev, "ASB register ID returned 0x%08x\n", id);
>>                  return -ENODEV;
>> --
>> 2.25.1
>>
