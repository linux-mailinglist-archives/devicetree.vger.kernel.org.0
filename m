Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4975C2D455E
	for <lists+devicetree@lfdr.de>; Wed,  9 Dec 2020 16:28:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728580AbgLIP1B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Dec 2020 10:27:01 -0500
Received: from mail-vi1eur05on2094.outbound.protection.outlook.com ([40.107.21.94]:21664
        "EHLO EUR05-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726431AbgLIP1A (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 9 Dec 2020 10:27:00 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GBNAYL1tPgXAlJeZxgUCxO8oMSJ/RIFsYX20KmZ2qNmyAmLfXRxltROCP9AoNqUevFsMJZCA6SwUB7PNNuMok5QPxYm3UuPGewBu2ZYm8rYsF/6P0ncltdmoXFlLMSEwIZe6zA8Niuz9DwhRTYNxAcjWU+DKk6ZlPMCNUyTuJH+KVjhrbM58/YdozNgf4s5IU0jG7OJ9KJDpwkMpDOufygut4AJPoc+rvuA9UuneoFU5Fyo7ugrUzZVFOEHYUMSGvq93gn91IJCOkGWYWMEzASMnndOdjq/9CfHg3LZId96SC8BH7/yb+cIFBrbNu4nUOG7s3WveOgvwSknlOzbu1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1O9wUs8RR/zkAmCoNpI6Pc3FycNtLtIOMh5HSL+/hbo=;
 b=i9xWlKZULees1mEOlF8rgO7+qy8dB1EJ3/tkYEJDJp/np8irXzF90+vn+kVjGcCGGLWdwXZM9Gx/p10HsAq8f9s+bZwlJQ0s++iNm4PDFUJUwEjAxn5dHcI9FEfskypdPsYP6BHxKs4Cy/+JvzQ1bPndCP57KVPVaEOjhnEkNTXWawZf6irU8DNRDzWkUyrFWfuZ5viGCcJfBxAvKx97qTLvRzjmx5QyS9dNvzxkL/pCHhpYSYwu4QHIthLk7blNbPYSBD8hYT6hfEkT0SqgH91i/+UEXSBMmiwccReRDzKTkDxlZKI5JOTECiMrqSIKKB1AGG/qvvoSOANmuUt0Nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1O9wUs8RR/zkAmCoNpI6Pc3FycNtLtIOMh5HSL+/hbo=;
 b=Z36XxTd/3AwUHtj+8cHj/cfhG05fXAMkkV9Cu4Hga7BXpag0eKtyzRvwi2CAvTeVqHFPwzxn2YWJDZwlswtoJyD/yog7TuGX7cI0LtN4KMeY6mUT3Jls7c2odv4xQXaoJnG0B0zETJpLLVJ2GIiuD0f8Awb8K/dThiUi5kX9KZU=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=kontron.de;
Received: from AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:157::14)
 by AM0PR10MB2913.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:155::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.17; Wed, 9 Dec
 2020 15:26:11 +0000
Received: from AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::9d5:953d:42a3:f862]) by AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::9d5:953d:42a3:f862%7]) with mapi id 15.20.3654.012; Wed, 9 Dec 2020
 15:26:10 +0000
Subject: Re: [PATCH v2 12/13] arm64: dts: imx8mm: add GPC node and power
 domains
To:     Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Fabio Estevam <festevam@gmail.com>, Marek Vasut <marex@denx.de>,
        Adam Ford <aford173@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>, kernel@pengutronix.de,
        patchwork-lst@pengutronix.de, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20201105174434.1817539-1-l.stach@pengutronix.de>
 <20201105174434.1817539-13-l.stach@pengutronix.de>
From:   Frieder Schrempf <frieder.schrempf@kontron.de>
Message-ID: <35f1fdad-580c-9b90-9536-98246e31250b@kontron.de>
Date:   Wed, 9 Dec 2020 16:26:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <20201105174434.1817539-13-l.stach@pengutronix.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Originating-IP: [88.130.77.13]
X-ClientProxiedBy: AM8P189CA0022.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:218::27) To AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:157::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.10.17] (88.130.77.13) by AM8P189CA0022.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:218::27) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Wed, 9 Dec 2020 15:26:10 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4c674fd5-1499-431b-738d-08d89c56c20f
X-MS-TrafficTypeDiagnostic: AM0PR10MB2913:
X-Microsoft-Antispam-PRVS: <AM0PR10MB291337363270D72272749E2CE9CC0@AM0PR10MB2913.EURPRD10.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nsCI6OrxjAjSxjxISGDk86tjexUo299hFiUhIdH5i2Wyw/xjONuxNgeVmfP0lVX034rUuN3sBSGxpektv2VPeLe09+ZZ339XKL0WHUx5zPB3BImdYU34Nnj6oSTSYIvjwbP5970QUHsmLDcoYQnlWkAqMVgC46Xgri613RpIy7fIMqm1wwT5nUOHFQMQGhOmTw/p1Of6IRKlvJ6Zy/HGS3H565gOrI/suJSH/b7pPsd5yMFjbx+IhJC/0JMJrP8PB3c8WGeDQH5O1MWwgkfTRyvPOkWl2GRzN7T8rqRKLCTG9t1WyXXGJ1Pdf1KXvGdNQWuBBIrrxXFeyYszZkJ9G8bjwb0k/kNLckanBZbo+xXMOzf92XzkBSQchZ/wMNbrn2YNS3A5scgvGAhrg/eRH3yJPhXc35iXwIH/V3k/cgfUTFEW8cgFauPIiWfHR2ZzqS1gwiKCdkMD9m0noAtF7Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(376002)(136003)(83380400001)(36756003)(31696002)(8936002)(31686004)(26005)(7416002)(34490700003)(86362001)(956004)(44832011)(5660300002)(66946007)(66476007)(66556008)(8676002)(110136005)(6486002)(2616005)(186003)(54906003)(16526019)(4326008)(2906002)(16576012)(53546011)(508600001)(52116002)(32563001)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?VDQwTC9FT1ByY1FlU1hwVmloN2IrOGY5N0xEZ25wTzN6UFUxcUJMOWp6RHdt?=
 =?utf-8?B?b08ycHk3ZXVpZUVsQnEzSEVPWWp6VEZhVVRrZU52UXNQRzdYbkdzbk1tSmIz?=
 =?utf-8?B?a3owQnhSMWkyWFZGNmpxaWFGWUVSSGJ6UjJtdUVEbDZmYUpzUTIxdVB3bnlQ?=
 =?utf-8?B?UC91OVVCSlFjbUxRQ3c2dHFUS1U2b1ZISFVQUlh4VHNrR2lOSnFyTUUyRjNp?=
 =?utf-8?B?azAxSXlTdnJwSmVLcHVlcTRxZjBBYklYS1hNbGVtYzRvRkZBVmtIS1RuYXJ6?=
 =?utf-8?B?ci9PdWlBNHl6cmZ2VE55ZmVwYmMxeTVKNGl3NW9UeVRiUnI2VGtDb0IxdStF?=
 =?utf-8?B?WGt4WkZyN1Zha1l2OWM1NWdzN3c3dVB0NjhTZllDOC92bUk0R2E2T3NzNEM5?=
 =?utf-8?B?bnRvNytVb3diTW8rMHpwNWVvWnJuR0FDY1Z6MVpMWVIvbVNOQlJXTk5Jb25Y?=
 =?utf-8?B?REZxbWZiaXhhS3pIZnJXVzB5R2RyejEwN2F4am54VDRTbSs2VkthVHVuRks1?=
 =?utf-8?B?dnhpQitEK0ZiZy9jSU5LaDZlSEN4ZXNMZTJKTzBZaStLeDFnM0hJR1Q0R2ZZ?=
 =?utf-8?B?ZHFCNnlBbFRzUzhraWI1aGhhWEhVZTB5b2NZbThkVGJhcGxQVnJxSmlwVzQ4?=
 =?utf-8?B?aVhseTZnWHY3UVJ6UHY4WUk4QXhDRFJKSXZVTlQ4VUdmRGF5QU5PVGs0RnVi?=
 =?utf-8?B?VVdsSlp1L3V6bU5ydVJ1MStVMHIrNVF5YVRWTUIyYVhTOEVXQVlVNFo4NDNs?=
 =?utf-8?B?SFB0QSt3cGg2RkR1R2cremJEQzdReVhRWGNTMzMwaWVhV3M5S0FycmpDTlVY?=
 =?utf-8?B?M3UzUlVPWTQ3WnBjWEFlcU0yUDQweGRSYlFSeTlnVDNDdllXZVgrZGdYV2w4?=
 =?utf-8?B?QnZNZ0JhRWtzUmlqSXFDTVNudXdIY1FzOXAvWXFyaGJDVHgzUXBpakNKZ3pF?=
 =?utf-8?B?c3E0TWdFZGp0dDhFMTN5QjRod0M1WU9sd1JOL3I2K3QxRmhxdnMrSVZWNWFa?=
 =?utf-8?B?U3ZETndnbEEyREpTVVdDT1E3ZzVHYk5WbEx3UFlJZzZqUHZXMVRMQjdLU3Fn?=
 =?utf-8?B?VDFDTHpERHQ3K2RZcjZCa3htTE1zRGNtUlZFeGQzaUJ6NmorZ3lnSzU1SWJP?=
 =?utf-8?B?bDhGNmprbWJFbFFxaFJZRzc3SmRrRkFKbUVvYS9kVHFhczJYVS9DdHhIb1dK?=
 =?utf-8?B?a2pyV29RMCtUbkRaK2tONkxsWVlSUUNtUkFWZ0NmZE5jZWZSZVppWlZ1YW9a?=
 =?utf-8?B?ZkVYclFScks5RFlRSDRMTUxhb1dBc0YvOGhIcTJRUU4rcTYzc2tNeWpoSUNX?=
 =?utf-8?Q?gvywFkTVR1/W8=3D?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2020 15:26:10.8828
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c674fd5-1499-431b-738d-08d89c56c20f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wl7ieWajE3JAoy6EmujWehE1UXnWiE7YRqDa+lGmDrOIU/EZeDYNHR1OqBUIkbkwg9RdnHaMitgozhlTsX9nCWjpz6bpyi6LMExhkUkjG9c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR10MB2913
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Lucas,

On 05.11.20 18:44, Lucas Stach wrote:
> This adds the DT nodes to describe the power domains available on the
> i.MX8MM. Things are a bit more complex compared to other GPCv2 power
> domain setups, as there is now a hierarchy of domains where complete
> subsystems (HSIO, GPU, DISPLAY) can be gated as a whole, but also
> fine granular gating within those subsystems is possible.
> 
> Note that this is still incomplete, as both VPU and DISP domains are
> missing their reset clocks. Those aren't directly sourced from the CCM,
> but have another level of clock gating in the BLKCTL of those domains,
> which needs a separate driver.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>   arch/arm64/boot/dts/freescale/imx8mm.dtsi | 58 +++++++++++++++++++++++
>   1 file changed, 58 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index b83f400def8b..c21901a8aea9 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -4,6 +4,8 @@
>    */
>   
>   #include <dt-bindings/clock/imx8mm-clock.h>
> +#include <dt-bindings/power/imx8mm-power.h>
> +#include <dt-bindings/reset/imx8mq-reset.h>
>   #include <dt-bindings/gpio/gpio.h>
>   #include <dt-bindings/input/input.h>
>   #include <dt-bindings/interrupt-controller/arm-gic.h>
> @@ -547,6 +549,62 @@
>   				interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
>   				#reset-cells = <1>;
>   			};
> +
> +			gpc: gpc@303a0000 {
> +				compatible = "fsl,imx8mm-gpc";
> +				reg = <0x303a0000 0x10000>;
> +				interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
> +				interrupt-parent = <&gic>;
> +				interrupt-controller;
> +				#interrupt-cells = <3>;
> +
> +				pgc {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					pgc_hsiomix: power-domain@0 {
> +						#power-domain-cells = <0>;
> +						reg = <IMX8MM_POWER_DOMAIN_HSIOMIX>;
> +						clocks = <&clk IMX8MM_CLK_USB_BUS>;
> +					};
> +
> +					pgc_pcie: power-domain@1 {
> +						#power-domain-cells = <0>;
> +						reg = <IMX8MM_POWER_DOMAIN_PCIE>;
> +						power-domains = <&pgc_hsiomix>;
> +					};
> +
> +					pgc_otg1: power-domain@2 {
> +						#power-domain-cells = <0>;
> +						reg = <IMX8MM_POWER_DOMAIN_OTG1>;
> +						power-domains = <&pgc_hsiomix>;
> +					};
> +
> +					pgc_otg2: power-domain@3 {
> +						#power-domain-cells = <0>;
> +						reg = <IMX8MM_POWER_DOMAIN_OTG2>;
> +						power-domains = <&pgc_hsiomix>;
> +					};

I'm currently doing some testing on top of v5.10-rc with GPC, BLK-CTL, 
DSIM, etc. I noticed that as soon as I add the nodes above for HSIO/OTG 
(even without referencing them elsewhere) my system freezes on 
suspend/resume.

The same problem exists when I remove the power domains for HSIO/USB and 
add the ones for DISPMIX and DSI to test Marek's work on BLK-CTL.

I'm not really sure at what point exactly the system freezes but this is 
what I see (no_console_suspend is set) and the system does not wake up 
anymore:

echo mem > /sys/power/state
[   13.888711] PM: suspend entry (deep)
[   13.892429] Filesystems sync: 0.000 seconds
[   13.907231] Freezing user space processes ... (elapsed 0.031 seconds) 
done.
[   13.945407] OOM killer disabled.
[   13.948642] Freezing remaining freezable tasks ... (elapsed 0.001 
seconds) done.
[   13.957216] printk: Suspending console(s) (use no_console_suspend to 
debug)

Any ideas?

Thanks
Frieder

> +
> +					pgc_gpumix: power-domain@4 {
> +						#power-domain-cells = <0>;
> +						reg = <IMX8MM_POWER_DOMAIN_GPUMIX>;
> +						clocks = <&clk IMX8MM_CLK_GPU_BUS_ROOT>,
> +						         <&clk IMX8MM_CLK_GPU_AHB>;
> +					};
> +
> +					pgc_gpu: power-domain@5 {
> +						#power-domain-cells = <0>;
> +						reg = <IMX8MM_POWER_DOMAIN_GPU>;
> +						clocks = <&clk IMX8MM_CLK_GPU_AHB>,
> +						         <&clk IMX8MM_CLK_GPU_BUS_ROOT>,
> +						         <&clk IMX8MM_CLK_GPU2D_ROOT>,
> +						         <&clk IMX8MM_CLK_GPU3D_ROOT>;
> +						resets = <&src IMX8MQ_RESET_GPU_RESET>;
> +						power-domains = <&pgc_gpumix>;
> +					};
> +				};
> +			};
>   		};
>   
>   		aips2: bus@30400000 {
> 
