Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0231753A600
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 15:37:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232808AbiFANhA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 09:37:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351697AbiFANg7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 09:36:59 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A39FF42A03
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 06:36:57 -0700 (PDT)
Received: from [192.168.1.107] ([37.4.249.170]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MG9Pg-1o1s5C0E8K-00GWzX; Wed, 01 Jun 2022 15:31:26 +0200
Message-ID: <ed26bc82-b775-bb0e-8917-5549f3798901@i2se.com>
Date:   Wed, 1 Jun 2022 15:31:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH V2 00/11] soc: bcm2835-power: Prepare BCM2711 V3D support
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
        linux-arm-kernel@lists.infradead.org
References: <20220601125344.60602-1-stefan.wahren@i2se.com>
 <CALeDE9PSC+qanWqpaRAmdT82jdU3RR-PamsxAtSR8Dutrgcvng@mail.gmail.com>
From:   Stefan Wahren <stefan.wahren@i2se.com>
In-Reply-To: <CALeDE9PSC+qanWqpaRAmdT82jdU3RR-PamsxAtSR8Dutrgcvng@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:ygkULSg3qSLX+B1Fa7xSqBvlg6oiF2sf/WyeC80LKPH4pkhcuGl
 5P42yL3CVXG3A83nRymYAWTVV2MW31pQk/HA6Y+TKOFGWMYXBU3Az0kbQnm/88V28CeRsp3
 rsZxs7VsKSQHgCV/MFeRNfkq8N0ZM7NVdLZqcv7Udj5u28Jf4LIdG/80DTKKde7XrVcVFb9
 IUFOcbFLyXqZnzckHzxuA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:HhkUv1CMDxk=:5n6VmWDKoOiFpeTNOBZYHb
 UPyU8wK5gJy+apYXXcY2JJ1ntD022QLwcHfxi2SB/eIwq6vYzp+bXPFAvD5SGorU3BqBXxm/+
 gbkjhYM1uE4/HJ77b/UXh6WJA4iaWec4kEsl+STGgvuHRgjr+V25cFSlNo8i3i6Ym+nrt+bx+
 crdNhzbTfVCIchaTIzuU4WsK70yCS4qOYKILVNga1c9tppWpHPtCBImADjGMKE7LhdpI8Iikq
 yTqF4H7W3blSOwD31u1P9fCNAiJGDbMpTlPlQYtxKfRwGNxJ7v4BVy3ZeL9wdmY4mPmlC/Xq8
 OsJAOcgKLVZs+wwUU7hc+XZW/pxYH8CHbLVZhOnQ7VeR4Evq41GKvDvxoZu8YBBevZEouRZ9d
 E6jW5doD0vZCJBXUUMHmQqoDa9sQHyqU6FmQOhHZkXk7vC0jr/u8L8p3Bioyol/8xMn73ZuwO
 ocuN6w8wAud7Es4SGm8gpk4b14BHul04zeXgCqpUNZwc4U2h6U2RMHl34f4GURvj5sx+habb/
 zQ7wnHBj2btH8CJZfzNo6ZK3cPuyWylt9/pPArDGraDXhttqHR9dXYQhopktdUugaAWnaPL4e
 GwoCVvNXB0kBwSpH2MAThPpGQHqFW5VpE07G5uIEfAKfkMZAK3BErcT6wRu4NVL6QBHVjIF4X
 ozvYliisOHK9BEhPaOh4spCMuyPg2BDYEmeinG+Zm+YQLpzI/MS+QVyAHOL3UwgLKZUrDq9A1
 1HW3W8VBCkOk8sN0BjP/FJcPuyAASC9M3RCFP+R7t5EjkTCShUiDtHQU8ms=
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Peter,

Am 01.06.22 um 15:19 schrieb Peter Robinson:
> Hi Stefan,
>
> So I've done some basic boot testing on a rpi4b, rpi4b 8gb, rpi400,
> rpi3b+ and rpi zero2w but all headless/remote, overall it looks good.
> I'm back home tomorrow when I can test the rpi4 series with the GPU
> patches on top with full desktop/display but overall this looks fab!

Thanks a lot for review and testing.

Stefan

>
> Peter
>
>> This series is a split out of version 4 - Raspberry PI 4 V3D enablement send
>> by Peter Robinson [1]. It attemps to enable BCM2711 V3D support for the
>> power management driver. It's a rework of the less controversial changes
>> (excluding V3D GPU driver changes) so this can be reviewed and applied faster.
>>
>> Changes in V2:
>> - add Peter's Reviewed-by
>> - simplify schema for rpivid_asb as suggested by Rob
>> - fix reference and clarify fallback & error handling in patch #7
>> - drop unnecessary newline in patch #9
>> - improve log messages as noticed by Peter
>>
>> Changes since the mention series:
>> - fix DT schema errors
>> - make rpivid_asb register optional in DT schema
>> - avoid code duplication in BCM2835 ASB enable/disable
>> - rework ASB V3D handling so we don't need the V3D flag
>> - avoid log errors for optional register
>> - use a define for expected ASB_AXI_BRDG_ID result
>> - fix copy & paste issues in bcm2835-pm changes
>>
>> [1] - https://patchwork.kernel.org/project/linux-arm-kernel/cover/20220213225646.67761-1-pbrobinson@gmail.com/
>>
>> Nicolas Saenz Julienne (6):
>>    dt-bindings: soc: bcm: bcm2835-pm: Convert bindings to DT schema
>>    dt-bindings: soc: bcm: bcm2835-pm: Introduce reg-names
>>    ARM: dts: bcm2835/bcm2711: Introduce reg-names in watchdog node
>>    ARM: dts: bcm2711: Use proper compatible in PM/Watchdog node
>>    mfd: bcm2835-pm: Use 'reg-names' to get resources
>>    soc: bcm: bcm2835-power: Bypass power_on/off() calls
>>
>> Stefan Wahren (5):
>>    dt-bindings: soc: bcm: bcm2835-pm: Add support for bcm2711
>>    mfd: bcm2835-pm: Add support for BCM2711
>>    soc: bcm: bcm2835-power: Refactor ASB control
>>    soc: bcm: bcm2835-power: Resolve ASB register macros
>>    soc: bcm: bcm2835-power: Add support for BCM2711's RPiVid ASB
>>
>>   .../bindings/soc/bcm/brcm,bcm2835-pm.txt      | 46 ----------
>>   .../bindings/soc/bcm/brcm,bcm2835-pm.yaml     | 86 +++++++++++++++++++
>>   arch/arm/boot/dts/bcm2711.dtsi                |  3 +-
>>   arch/arm/boot/dts/bcm2835-common.dtsi         |  1 +
>>   drivers/mfd/bcm2835-pm.c                      | 80 +++++++++++++----
>>   drivers/soc/bcm/bcm2835-power.c               | 72 ++++++++++------
>>   include/linux/mfd/bcm2835-pm.h                |  1 +
>>   7 files changed, 199 insertions(+), 90 deletions(-)
>>   delete mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.txt
>>   create mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
>>
>> --
>> 2.25.1
>>
