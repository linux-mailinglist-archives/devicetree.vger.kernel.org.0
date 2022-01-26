Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E4DDC49D12B
	for <lists+devicetree@lfdr.de>; Wed, 26 Jan 2022 18:56:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231128AbiAZR4G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jan 2022 12:56:06 -0500
Received: from foss.arm.com ([217.140.110.172]:56916 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230353AbiAZR4G (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 26 Jan 2022 12:56:06 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3294FD6E;
        Wed, 26 Jan 2022 09:56:06 -0800 (PST)
Received: from [10.57.68.47] (unknown [10.57.68.47])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 657A43F7D8;
        Wed, 26 Jan 2022 09:56:04 -0800 (PST)
Message-ID: <a1438d39-b670-1ca5-d3f7-4e3f54702e53@arm.com>
Date:   Wed, 26 Jan 2022 17:56:00 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Subject: Re: [PATCH 21/27] arm64: dts: rockchip: rk356x: Add HDMI nodes
Content-Language: en-GB
To:     Peter Geis <pgwipeout@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     dri-devel@lists.freedesktop.org,
        arm-mail-list <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>, kernel@pengutronix.de,
        Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
 <20220126145549.617165-22-s.hauer@pengutronix.de>
 <CAMdYzYrLw9+VW08cuj4_o4GDFhgBB8dZ-oVJ0TUnKFGLNetdyQ@mail.gmail.com>
From:   Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <CAMdYzYrLw9+VW08cuj4_o4GDFhgBB8dZ-oVJ0TUnKFGLNetdyQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2022-01-26 16:04, Peter Geis wrote:
> On Wed, Jan 26, 2022 at 9:58 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>>
>> Add support for the HDMI port found on RK3568.
>>
>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk356x.dtsi | 37 +++++++++++++++++++++++-
>>   1 file changed, 36 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>> index 4008bd666d01..e38fb223e9b8 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>> @@ -10,7 +10,6 @@
>>   #include <dt-bindings/pinctrl/rockchip.h>
>>   #include <dt-bindings/power/rk3568-power.h>
>>   #include <dt-bindings/soc/rockchip,boot-mode.h>
>> -#include <dt-bindings/soc/rockchip,vop2.h>
>>   #include <dt-bindings/thermal/thermal.h>
>>
>>   / {
>> @@ -502,6 +501,42 @@ vop_mmu: iommu@fe043e00 {
>>                  status = "disabled";
>>          };
>>
>> +       hdmi: hdmi@fe0a0000 {
>> +               compatible = "rockchip,rk3568-dw-hdmi";
>> +               reg = <0x0 0xfe0a0000 0x0 0x20000>;
>> +               interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
>> +               clocks = <&cru PCLK_HDMI_HOST>,
>> +                        <&cru CLK_HDMI_SFR>,
>> +                        <&cru CLK_HDMI_CEC>,
>> +                        <&pmucru CLK_HDMI_REF>,
>> +                        <&cru HCLK_VOP>;
>> +               clock-names = "iahb", "isfr", "cec", "ref", "hclk";
>> +               pinctrl-names = "default";
>> +               pinctrl-0 = <&hdmitx_scl &hdmitx_sda &hdmitxm0_cec>;
> 
> I looked into CEC support here, and it seems that it does work with one change.
> Please add the two following lines to your patch:
> assigned-clocks = <&cru CLK_HDMI_CEC>;
> assigned-clock-rates = <32768>;
> 
> The issue is the clk_rtc32k_frac clock that feeds clk_rtc_32k which
> feeds clk_hdmi_cec is 24mhz at boot, which is too high for CEC to
> function.

Wouldn't it make far more sense to just stick a suitable clk_set_rate() 
call in the driver? AFAICS it's already explicitly aware of the CEC clock.

Robin.

>> +               power-domains = <&power RK3568_PD_VO>;
>> +               reg-io-width = <4>;
>> +               rockchip,grf = <&grf>;
>> +               #sound-dai-cells = <0>;
>> +               status = "disabled";
>> +
>> +               ports {
>> +                       #address-cells = <1>;
>> +                       #size-cells = <0>;
>> +
>> +                       hdmi_in: port@0 {
>> +                               reg = <0>;
>> +                               #address-cells = <1>;
>> +                               #size-cells = <0>;
>> +                       };
>> +
>> +                       hdmi_out: port@1 {
>> +                               reg = <1>;
>> +                               #address-cells = <1>;
>> +                               #size-cells = <0>;
>> +                       };
>> +               };
>> +       };
>> +
>>          qos_gpu: qos@fe128000 {
>>                  compatible = "rockchip,rk3568-qos", "syscon";
>>                  reg = <0x0 0xfe128000 0x0 0x20>;
>> --
>> 2.30.2
>>
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
