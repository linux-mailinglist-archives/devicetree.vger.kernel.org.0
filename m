Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A5BDC4D066A
	for <lists+devicetree@lfdr.de>; Mon,  7 Mar 2022 19:23:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233489AbiCGSYn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 13:24:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240986AbiCGSYm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 13:24:42 -0500
X-Greylist: delayed 61 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 07 Mar 2022 10:23:47 PST
Received: from smtpcmd0757.aruba.it (smtpcmd0757.aruba.it [62.149.156.57])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 3AF4385947
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 10:23:47 -0800 (PST)
Received: from [192.168.50.220] ([146.241.7.124])
        by Aruba Outgoing Smtp  with ESMTPSA
        id RI0DnHfKp4NL9RI0DnLH8O; Mon, 07 Mar 2022 19:22:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
        t=1646677359; bh=O3QUpf3/z7WzWdCT0M1cXxVgZXkwuFw0aTpotYKFTVo=;
        h=Date:MIME-Version:Subject:To:From:Content-Type;
        b=MhE/qRAHuV6VDpyYr7TOQvVfCuRGYMFFQ2k7VFZliFawG8sT1/TpKBRRSSgp2YiXA
         N7xTpGjI0yWF8j8teb2cHhb1+bK5APpUCyuz29ZNHX6JfpevalYi6yYhI99PvJvNa4
         bYTlPTpV132YyhH0w5b7ZoAdR8fmlWIj2L/jv/1UB4eMdaXKP9tAvEx2MIhyESqu/L
         eKqyu0YmgakUlaYrfC9cvQb1sW151K/NbbYg3gdlstqYmyvpeLK6lxTsU1xkARH9ty
         uGvwAhsT9nrbXZ2MEqoRqezpaQoqejKF45abLXZJeEOxs3axvlHBj34KYsy50FFV8e
         QoCQ2P8wSrF2w==
Message-ID: <94974188-9687-6ea0-50a8-0c7eb41cd5bf@benettiengineering.com>
Date:   Mon, 7 Mar 2022 19:22:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 00/14] ARM: suniv: dts: update Allwinner F1C100
Content-Language: en-US
To:     Jesse Taube <mr.bossman075@gmail.com>,
        Andre Przywara <andre.przywara@arm.com>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mesih Kilinc <mesihkilinc@gmail.com>,
        Icenowy Zheng <icenowy@aosc.io>,
        George Hilliard <thirtythreeforty@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev
References: <20220307143421.1106209-1-andre.przywara@arm.com>
 <7de7a907-249c-8bdd-b364-689436e3b285@gmail.com>
From:   Giulio Benetti <giulio.benetti@benettiengineering.com>
In-Reply-To: <7de7a907-249c-8bdd-b364-689436e3b285@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4wfMTMFydPt4/m7Tqh7iKaXjEtu+m1F0rN0jdjp6GkDnS6khvvCbw99iRQsLFfXtCxmdha+RrnvD88EWMcput07kCWOwfMAlCpO8mgmlCneyErArOUCtoH
 voR75k+nIhF3svU3kIhVL/ithsU3FCQdOEBaUTzOEH7jCGTlq0tqexRB9SRf3J4PEzqxcv9n1C2BjaHAYfN4p9G8jmJsUbd1856D2yIjrmO7AZFqL3S+V/Rz
 PIITXHp915CZtLMAmjRkI546+dXrTgB3iZiXFhNQP5we3pE/0s/oObzJEaFnlOCCAMbmGeJws+D+AUzcfv53KMs3SWEuYv9xz97g5OPf7nAQMaBwXzfeLLTh
 eqXiOfxfa9VujBFv6xuGABt7SjTSqeA+k+4WjgLDw4Jg25Ch931FEc3CJn0e4uOrg7v2U7/O/X9/qrqFR85EAA6qqvuHPWlr3MzD8nOKi//ysWEOhGGy0+y5
 M7L7KKJ2b4LGxSjZw66zQgoNz3AKz7D7tgmGu9ple9lvvFGCqiaVAUQfepo7oZgfvIG7LHTjWx5cKICt5xvaNlJBa02u4juxci48qUujZWUmhCz9WwWS/2uv
 X1AHywpIcxiHFI83qsE9G2ws
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Jesse,

On 07/03/22 19:03, Jesse Taube wrote:
> 
> 
> On 3/7/22 09:34, Andre Przywara wrote:
>> The Allwinner F1C100 SoC didn't see much love since its initial merge in
>> 2018: the originally submitted .dts files were very basic, and didn't
>> cover such simple peripherals as MMC and SPI.
>> On top of that the watchdog compatible string was wrong, leading to a
>> non-functional watchdog and reset functionality.
>>
>> This series aims to fix that, after the series MMC and SPI work, and
>> make dtbs_check comes back clean.
>> This was tested with mounting a filesystem on /dev/mmcblk0 on a
>> LicheePi Nano, also with accessing the SPI flash through /dev/mtdblock
>> and mtd_debug. Reboot and watchdog now also work.
>>
>> Mainline U-Boot recently gained F1C100 support, and those DT updates are
>> needed there as well to get full MMC and SPI access.
> Thank you so much for doing this Giulio and I really appreciate this.
> I'm sorry I haven't been available lately i have had other activities
> lately.

I didn't do it, Andre did it :-) I'm full of other things to do too.
Anyway it's great having patches here to be tested and reviewed.
Hope to find some time soon to test them.

-- 
Giulio Benetti
Benetti Engineering sas

>> The series is structured as follows:
>> - Patches 01/14 and 02/14 fix the watchdog, which allows to properly
>>     reboot the system.
>> - Patches 03-06 fix some shortcomings of the existing DT files, to make
>>     them DT binding compliant.
>> - Patches 07-09 are Jesse's recent MMC patches, with the comments from
>>     the last version addressed [1].
>> - Patches 10-12 add SPI support, to enable access to the SPI flash on
>>     the LicheePi Nano board.
>> - The final two patches (13/14 and 14/14) add the F1C100 platform to
>>     the multi_v5_defconfig, since it was not covered by any other
>>     defconfig before, and an ARMv5 compliant kernel is not commonly
>>     offered by distributions.
>>
>> I saw George's series from two years ago to add USB support[2], that
>> looks good on the first glance, I will comment on that once I did some
>> testing on that.
> There are patches for USB host as well. There are working patches
> floating around for the LCD controller, as well as patches for audio,
> but audio only works in 5.2 even though none of the files the patches
> touched have changed since. To test the LCD controller I made a DAC to
> output to VGA unfortunately the blanking regions aren't set to 0v so its
> not to VGA spec but if there is a black boarder it works fine.
>> Cheers,
>> Andre
>>
>> Changelog for the MMC patches [1]:
>> - bindings doc: extend commit message
>> - .dtsi: extend commit message, re-order mmc0_pins node, add
>>     drive-strength
>> - .dts: extend commit message, add alias, regulator and disable-wp
>>
>> [1] https://lore.kernel.org/linux-arm-kernel/20220130220325.1983918-1-Mr.Bossman075@gmail.com/
>> [2] https://lore.kernel.org/linux-usb/20200331170219.267732-1-thirtythreeforty@gmail.com/
>>
>> Andre Przywara (10):
>>     dt-bindings: watchdog: sunxi: fix F1C100s compatible
>>     ARM: dts: suniv: F1C100: fix watchdog compatible
>>     dt-bindings: arm: sunxi: document LicheePi Nano name
>>     ARM: dts: suniv: F1C100: fix CPU node
>>     ARM: dts: suniv: F1C100: fix timer node
>>     dt-bindings: spi: sunxi: document F1C100 controllers
>>     ARM: dts: suniv: F1C100: add SPI support
>>     ARM: dts: suniv: licheepi-nano: add SPI flash
>>     ARM: configs: sync multi_v5_defconfig from savedefconfig
>>     ARM: configs: multi_v5: Enable Allwinner F1C100
>>
>> Jesse Taube (4):
>>     ARM: dts: suniv: F1C100: add clock and reset macros
>>     dt-bindings: mmc: sunxi: add Allwinner F1c100s compatible
>>     ARM: dts: suniv: F1C100: add MMC controllers
>>     ARM: dts: suniv: licheepi-nano: add microSD card
>>
>>    .../devicetree/bindings/arm/sunxi.yaml        |   5 +
>>    .../bindings/mmc/allwinner,sun4i-a10-mmc.yaml |   3 +
>>    .../bindings/spi/allwinner,sun6i-a31-spi.yaml |   1 +
>>    .../watchdog/allwinner,sun4i-a10-wdt.yaml     |   2 +-
>>    .../boot/dts/suniv-f1c100s-licheepi-nano.dts  |  31 ++++++
>>    arch/arm/boot/dts/suniv-f1c100s.dtsi          | 102 ++++++++++++++++--
>>    arch/arm/configs/multi_v5_defconfig           |  25 ++---
>>    7 files changed, 140 insertions(+), 29 deletions(-)
>>

