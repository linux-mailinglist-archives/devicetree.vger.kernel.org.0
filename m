Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 78AAA4B9339
	for <lists+devicetree@lfdr.de>; Wed, 16 Feb 2022 22:35:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230428AbiBPVfN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Feb 2022 16:35:13 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:36272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229635AbiBPVfN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Feb 2022 16:35:13 -0500
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 408E628B613
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 13:35:00 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B86C0D6E;
        Wed, 16 Feb 2022 13:34:59 -0800 (PST)
Received: from [10.57.40.147] (unknown [10.57.40.147])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 706D33F70D;
        Wed, 16 Feb 2022 13:34:58 -0800 (PST)
Message-ID: <4b88f0f1-7422-7beb-2f7a-563f1f4b3360@arm.com>
Date:   Wed, 16 Feb 2022 21:34:52 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: [PATCH] arm64: dts: rockchip: Correct clock-output-names for
 rk817
Content-Language: en-GB
To:     =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
        devicetree@vger.kernel.org, Chris Morgan <macroalpha82@gmail.com>
Cc:     robh+dt@kernel.org, jon.lin@rock-chips.com,
        linux-rockchip@lists.infradead.org,
        Chris Morgan <macromorgan@hotmail.com>
References: <20220216165837.4721-1-macroalpha82@gmail.com>
 <44462609.a43xROnmBz@diego>
From:   Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <44462609.a43xROnmBz@diego>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2022-02-16 20:42, Heiko Stübner wrote:
> Hi,
> 
> Am Mittwoch, 16. Februar 2022, 17:58:37 CET schrieb Chris Morgan:
>> From: Chris Morgan <macromorgan@hotmail.com>
>>
>> According to the datasheet for the rk817 there is only a single output
>> clock for the PMIC. I don't believe this is causing any harm though
>> and testing this change doesn't appear to have any noticeable effects.
> 
> hmm, looking at the go2's schematics, I'd disagree:
> 
> - yes, the rk817 has only one clock output
> - but no, it is used for the clkout_32k signal, which gets piped back into
>    the SoC. As that clock dynamically appears at some unspecified point
>    when the rk817 probes, the clock controller expects it to be named
>    xin32k to bind into its clock-tree.
> 
> The driver (drivers/clk/clk-rk808.c) really puts that rk817-clk32k at
> position 2 but I'm not sure if that simply papers over some implementation

Indeed it appears to be a hangover from RK808 where CLK32KOUT1 is 
always-on and CLK32KOUT2 is the switchable one. It's even more obvious 
on RK805 which still shares the original control register layout.

Robin.

> 
> 
> Heiko
> 
>> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
>> index ea0695b51ecd..5b23e607876e 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
>> @@ -296,7 +296,7 @@ rk817: pmic@20 {
>>   		reg = <0x20>;
>>   		interrupt-parent = <&gpio0>;
>>   		interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
>> -		clock-output-names = "rk808-clkout1", "xin32k";
>> +		clock-output-names = "rk808-clkout1";
>>   		clock-names = "mclk";
>>   		clocks = <&cru SCLK_I2S1_OUT>;
>>   		pinctrl-names = "default";
>>
> 
> 
> 
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
