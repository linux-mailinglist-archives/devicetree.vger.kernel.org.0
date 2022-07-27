Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1119F5822EC
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 11:18:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231422AbiG0JSr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 05:18:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230521AbiG0JSq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 05:18:46 -0400
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (mail-eopbgr70054.outbound.protection.outlook.com [40.107.7.54])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FE923C8F1
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 02:18:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=au10Xo/Px5qPcCVA3INGqgd7Q/+jS2YrXwkEhXGVpoypQ3g+a3of1HJzCUTK85ETdDtgj12C2GHjsiGxzQ0Ly6yfeBQN/t3/za4UjSbVMkuHq9/I3yhiJj+bkmTW+n0PjdNkv/iaYStK0Ue5ropY9S58S3g6cq84g/1ErlQ+KMHbcrKv9H43wq2/mo7kleK3jk7SOARMgppQRKVkuVgQzXzvzx9K6ZaPa49jIM+3x10qW/1uyaMg0oXqCQ3QGpdPNIwqHdJgNKLH4mh0mG2/kUCaw11ouNoagIZsW7z8ZziMBfxNVrzkZAKMhJwrQWyzOOw+TbwbmE/FOzJeSWQrbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5CH7/FEAtdFWekTTHaHzrzoIgowq3qrJIg8hWhCOtUw=;
 b=TjDEk6mBLh7AFLwCMrauYjgBs4LNFLzY8YymsYdKa7mMgKuL7H2dOcE1aGo9vOC706QiY9dtdi36y80FZLy3pogpX6QgoyeSSgjaum1JO6vvPkwFRvOuhaVernrOYp2e3GAVMZvNLq5py1+UimyTk1D3ojI4j8/ltjIfo8qYNXvIXUturNAFYmUI8rm41mGM8GkzuC3Meu4qNVoi9x+pb1WQv6kE+XwfA/n15rGDAy51iR/4N2P0DH9f/aoeNKAgU6YhXnwm64ozwEEGz+wv5NHOyAEyLP657W7T/mXucJ4NuH7RII/7INrKcGZTAEeWZ2GN+Gd+nxC30JaFD51+WA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5CH7/FEAtdFWekTTHaHzrzoIgowq3qrJIg8hWhCOtUw=;
 b=XQbHeL7pjbQyk8IP0ldoMjWD0mTxlYf7zZ3W6Yift4sWXf+NhCtIdmfEvS4T4rdwPyLaRsMgiQN19Nc2NJEEjdC38/Tw1vh25I1lXZ4NFs4vZoIpYIEpdmQz2DontwvYW7oiFyIEZX04dByB73B0whONP6M0JSkSIWiYItEYwBE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=oss.nxp.com;
Received: from VI1PR04MB5005.eurprd04.prod.outlook.com (2603:10a6:803:57::30)
 by AM0PR04MB5203.eurprd04.prod.outlook.com (2603:10a6:208:c1::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.25; Wed, 27 Jul
 2022 09:18:41 +0000
Received: from VI1PR04MB5005.eurprd04.prod.outlook.com
 ([fe80::6546:3ee1:5e6c:278f]) by VI1PR04MB5005.eurprd04.prod.outlook.com
 ([fe80::6546:3ee1:5e6c:278f%5]) with mapi id 15.20.5458.019; Wed, 27 Jul 2022
 09:18:41 +0000
Date:   Wed, 27 Jul 2022 12:18:31 +0300
From:   Viorel Suman <viorel.suman@oss.nxp.com>
To:     Shenwei Wang <shenwei.wang@nxp.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>, devicetree@vger.kernel.org,
        NXP Linux Team <linux-imx@nxp.com>
Subject: Re: [PATCH v4 3/3] arm64: dts: imx: add imx8dxl support
Message-ID: <20220727091831.kflk74o35jtjxgzu@fsr-ub1664-116>
References: <20220726204111.733647-1-shenwei.wang@nxp.com>
 <20220726204111.733647-4-shenwei.wang@nxp.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220726204111.733647-4-shenwei.wang@nxp.com>
X-ClientProxiedBy: AM0PR08CA0013.eurprd08.prod.outlook.com
 (2603:10a6:208:d2::26) To VI1PR04MB5005.eurprd04.prod.outlook.com
 (2603:10a6:803:57::30)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8f2be4c5-dd6a-4dda-7a0e-08da6fb0fef3
X-MS-TrafficTypeDiagnostic: AM0PR04MB5203:EE_
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VQaigl0NRRDUcgW1HbUvotdVTvzHu2CiFJ1qmXp4v+wvun20krcuGq8wKM9MUvPdvOg/ZZaE4/XOZs0Pa3ttWR3oS+tPfGWVjpaHT//nDyX7epqAjDGPpa7YxfiHyaxD/SdClrCPXtA3HlG0eSSiPgwrY8OUVROyulICR+NDWUJoVvQ8WIiepPG6EeyAjPSiXyYYP5Q+xOQ9alm5b0JkbKXoO4ucbCC9BM4NqGEpKSQud6AS5OM/Q8p1HmO6RsveQStMp9oSWEuFM8hzEitHXoyA2kkG+C7TP0BT/X4fcwlQGlPXNjrgDZpVyZkTSLPsV0N1pHKCyv7e+WCg/S42rX/uruINc/aw+RIUR4Q+pU/OsEakz9KouAet1w2+GfrEKAorGUJTo8Kx6oULiGmiiNRTJz4URVjc5CXA2xHSjxAbETIG2+FDSb0hbXXGPFf8cKBlcms3hcfPCp+SteHm6o10xwJxquLtCF5qzCf7NaC9FANCm0E5nGI0MnCcJz8FmFGmhCgzpya4V4uZR6xdRstKBFBuzvpcv63lNi6607iGJaxVm4bPiFh3fMnWS9OY2rvvtHPonRGOm/EdhK8Ly+7cCa2FtfADBireJSOYzeHrI5ommbpD364zV7xfVzBlIZ7kc+EAP9NertPzyiXfGnMzvL99p1ljB8bfibzmpBOe7x9G/aevrSKcA1n19mTkYw4WNpM98OJrFx/ms2ovZxyVBw0y420jbmng1kuTyYzZgDL+IyRM1RjcWLygP3CC24lZHX6jU1vpTL3wXwHR9+5J29qe+1s18tEB6wfoRySNtcuwWQNH+DLHh3M18sj97Hx9eWV3xQCfdQnyY1sLTg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB5005.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(7916004)(4636009)(376002)(396003)(366004)(136003)(39860400002)(346002)(83380400001)(66946007)(5660300002)(6862004)(8936002)(86362001)(186003)(38350700002)(38100700002)(52116002)(26005)(9686003)(478600001)(6512007)(6486002)(2906002)(66556008)(6506007)(54906003)(53546011)(1076003)(316002)(8676002)(4326008)(33716001)(6666004)(41300700001)(44832011)(66476007)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bpdaYXcfltj0bvNYybgkAYn/RK7RerDItTu2rqPIOk09mtc1sEShHJnFWS5U?=
 =?us-ascii?Q?GNuiXYuvbr3L5sfvWqODweJDxFBaPF22I6aph45TIdVdIAi43kO9J/uJcRdJ?=
 =?us-ascii?Q?1MmEkp8mo6B2Qitv9ieBE6kovva47GGRj1uYMLEAOg35BAu/W1V8qc5yh2sL?=
 =?us-ascii?Q?0czILIznWJvVd4VKXoL+53qp6S9MmgN2fmzvoilg6ndYH2IygkODaCkTCyW1?=
 =?us-ascii?Q?hStTI7ajY7Mr4PWHxkDqDFfbVUWo8YTP0mtPFzm45rFMhX4K0F1pm1Y7C6BN?=
 =?us-ascii?Q?eSkQl3TQjdGNN+SD2IPw5V1hKtD4KVfgXsnnIXHPqpmLZTIVR/OnSTfD4tXD?=
 =?us-ascii?Q?r9jZ+q1fW4tv0a+yUHVUl9lIIFQW6aIZqc+tOmetuIir//zAWcDZyuLXL+J+?=
 =?us-ascii?Q?1WIIlK+2aWGcSZk2JV4qHYYVomWT2ry5xDtncaOo9ipSfifsd4jooCDoCFQA?=
 =?us-ascii?Q?ZJAjdg7gT5gTQ93GCiqu6OAZF3qNaJB1CyT6FfX3JiQY0eDhk+SqG4HMKzwm?=
 =?us-ascii?Q?iy5kELmON1NW5XMphD+tAhWoXEacY9Jadq0IjQspr/9U4e9AFGQilF+TsvsW?=
 =?us-ascii?Q?0us4/SZNkfD6JT6pTZZXbDcde/yrRzDqA88sWtvoDvoWNUt+4JKiNKJPwKSr?=
 =?us-ascii?Q?uQbam8LyD4srPLoM6hQCiVJvuH06Dlov2J5sdZsEhfD/3AS4g1X2HasoEjNB?=
 =?us-ascii?Q?8xIp1fr+PhniJQ44V9LAEEO0bogMnxl0Ttw3FIfoNhPOuEPoW2h//C91/zD8?=
 =?us-ascii?Q?UK68FkzVtE/isQVnim687iGaawf8CyOBn2NFoITe7uMuIThzFDXHaSIRil4G?=
 =?us-ascii?Q?4JRvi456VqSHVDVsNlOK07UBz17LnVMOE7/KHO4CcTU82R4ltE8nV3YjgpBs?=
 =?us-ascii?Q?WZR0zmhFEWC34UPQGBn9vtv1yPmVgUiEqDvZ4boQ2cFh3fK23Q+SZMd6C45X?=
 =?us-ascii?Q?G0CZ969gHCtfd8vd1rZeuBCYpDq/Zoo1k55ghiVXVsTvdiWdnHfNYKWRJXXf?=
 =?us-ascii?Q?TPWJIxGBZfJmQ5ibSSE4tBqo5TEjebB+IztDnFApux3Enpy1N3P1gPNst08D?=
 =?us-ascii?Q?UGrVmKGaP/uA/COlpWYPEA96gThBNJ5zz+4GIRnOsQ57kTiU7Zz2Z/PUfQI1?=
 =?us-ascii?Q?uUkiMpavlURzFitU7UQ+4+FdjWY/SBkW9PolLaxcT+ly14dlSbJSLk69WpBC?=
 =?us-ascii?Q?mdX6Q8yMAUDc/40X0LRoELGRK2KmF3YjYVqC2CMQX68zp4zk0epUC4M2Olmq?=
 =?us-ascii?Q?+TwBeCmk4nu3mysS/6qGlTjrr4opl3LBPi1s6icdnOrM8/5dLX/xBp0ReZsH?=
 =?us-ascii?Q?xXOTctgGY7HKgiSwuPM+ba1e7J/M945SxKYKRczwmnwrA2c/8PT1AWuCIYe6?=
 =?us-ascii?Q?9bHCvIP+G2WHB6vlHNmsd0bMtJt5KizqjWco/Wzf/niE/Rf5uUKI3EWiM2tw?=
 =?us-ascii?Q?eeqxzOu6y64yIgQPAuwg5Hnab+kLcWLgeoKOT0xmprsNTmg7SpqsijVyfn7u?=
 =?us-ascii?Q?idCrcgwoSU23FQJyLQaaQgh/UHtiBY4S4JZwKCiHRbD/5HfXBNgHJigCpLRR?=
 =?us-ascii?Q?fT4UtTr/jtGMA9TiCGLYZMB1IU6+czvyPJbZkwQD?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f2be4c5-dd6a-4dda-7a0e-08da6fb0fef3
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5005.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jul 2022 09:18:41.1455
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hTtyKVZ4knlGP8DcK1C6a4ocrrgwLqAr5e9b2PjLrz/pq+BmbvRJyNtOlScKw5GP68mj4wmpKFlobOIEt9Y8Dw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5203
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22-07-26 15:41:11, Shenwei Wang wrote:
> i.MX8DXL is a device targeting the automotive and industrial market
> segments. The chip is designed to achieve both high performance and
> low power consumption. It has a dual (2x) Cortex-A35 processor.
> 
> This patch adds the imx8dxl soc and EVK board support.
> 
> Signed-off-by: Shenwei Wang <shenwei.wang@nxp.com>
> ---
[...]
> diff --git a/arch/arm64/boot/dts/freescale/imx8dxl.dtsi b/arch/arm64/boot/dts/freescale/imx8dxl.dtsi
> new file mode 100644
> index 0000000000000..517036639674c
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8dxl.dtsi
> @@ -0,0 +1,238 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright 2019~2020 NXP
> + */
> +
> +#include <dt-bindings/clock/imx8-clock.h>
> +#include <dt-bindings/firmware/imx/rsrc.h>
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/pinctrl/pads-imx8dxl.h>
> +#include <dt-bindings/thermal/thermal.h>
> +
> +/ {
> +	interrupt-parent = <&gic>;
> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +
> +	aliases {
> +		ethernet0 = &fec1;
> +		ethernet1 = &eqos;
> +		gpio0 = &lsio_gpio0;
> +		gpio1 = &lsio_gpio1;
> +		gpio2 = &lsio_gpio2;
> +		gpio3 = &lsio_gpio3;
> +		gpio4 = &lsio_gpio4;
> +		gpio5 = &lsio_gpio5;
> +		gpio6 = &lsio_gpio6;
> +		gpio7 = &lsio_gpio7;
> +		mu1 = &lsio_mu1;
> +	};
> +
> +	cpus: cpus {
> +		#address-cells = <2>;
> +		#size-cells = <0>;
> +
> +		/* We have 1 clusters with 2 Cortex-A35 cores */
> +		A35_0: cpu@0 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a35";
> +			reg = <0x0 0x0>;
> +			enable-method = "psci";
> +			next-level-cache = <&A35_L2>;
> +			clocks = <&clk IMX_SC_R_A35 IMX_SC_PM_CLK_CPU>;
> +			#cooling-cells = <2>;
> +			operating-points-v2 = <&a35_opp_table>;
> +		};
> +
> +		A35_1: cpu@1 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a35";
> +			reg = <0x0 0x1>;
> +			enable-method = "psci";
> +			next-level-cache = <&A35_L2>;
> +			clocks = <&clk IMX_SC_R_A35 IMX_SC_PM_CLK_CPU>;
> +			#cooling-cells = <2>;
> +			operating-points-v2 = <&a35_opp_table>;
> +		};
> +
> +		A35_L2: l2-cache0 {
> +			compatible = "cache";
> +		};
> +	};
> +
> +	a35_opp_table: opp-table {
> +		compatible = "operating-points-v2";
> +		opp-shared;
> +
> +		opp-900000000 {
> +			opp-hz = /bits/ 64 <900000000>;
> +			opp-microvolt = <1000000>;
> +			clock-latency-ns = <150000>;
> +		};
> +
> +		opp-1200000000 {
> +			opp-hz = /bits/ 64 <1200000000>;
> +			opp-microvolt = <1100000>;
> +			clock-latency-ns = <150000>;
> +			opp-suspend;
> +		};
> +	};
> +
> +	gic: interrupt-controller@51a00000 {
> +		compatible = "arm,gic-v3";
> +		reg = <0x0 0x51a00000 0 0x10000>, /* GIC Dist */
> +		      <0x0 0x51b00000 0 0xc0000>; /* GICR (RD_base + SGI_base) */
> +		#interrupt-cells = <3>;
> +		interrupt-controller;
> +		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
> +	};
> +
> +	reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		dsp_reserved: dsp@92400000 {
> +			reg = <0 0x92400000 0 0x2000000>;
> +			no-map;
> +		};
> +	};
> +
> +	pmu {
> +		compatible = "arm,armv8-pmuv3";
> +		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
> +	};
> +
> +	psci {
> +		compatible = "arm,psci-1.0";
> +		method = "smc";
> +	};
> +
> +	scu {

Please replace "scu {" with "system-controller {".

> +		compatible = "fsl,imx-scu";
> +		mbox-names = "tx0",
> +			     "rx0",
> +			     "gip3";
> +		mboxes = <&lsio_mu1 0 0
> +			  &lsio_mu1 1 0
> +			  &lsio_mu1 3 3>;
> +
> +		pd: power-controller {
> +			compatible = "fsl,scu-pd";
> +			#power-domain-cells = <1>;
> +			wakeup-irq = <160 163 235 236 237 228 229 230 231 238
> +				     239 240 166 169>;
> +		};
> +
> +		clk: clock-controller {
> +			compatible = "fsl,imx8dxl-clk", "fsl,scu-clk";
> +			#clock-cells = <2>;
> +			clocks = <&xtal32k &xtal24m>;
> +			clock-names = "xtal_32KHz", "xtal_24Mhz";
> +		};
> +
> +		iomuxc: pinctrl {
> +			compatible = "fsl,imx8dxl-iomuxc";
> +		};
> +
> +		ocotp: ocotp {
> +			compatible = "fsl,imx8qxp-scu-ocotp";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			fec_mac0: mac@2c4 {
> +				reg = <0x2c4 6>;
> +			};
> +
> +			fec_mac1: mac@2c6 {
> +				reg = <0x2c6 6>;
> +			};
> +		};
> +
> +		rtc: rtc {
> +			compatible = "fsl,imx8qxp-sc-rtc";
> +		};
> +
> +		sc_pwrkey: keys {
> +			compatible = "fsl,imx8qxp-sc-key", "fsl,imx-sc-key";
> +			linux,keycode = <KEY_POWER>;
> +			wakeup-source;
> +		};
> +
> +		watchdog {
> +			compatible = "fsl,imx-sc-wdt";
> +			timeout-sec = <60>;
> +		};
> +
> +		tsens: thermal-sensor {
> +			compatible = "fsl,imx-sc-thermal";
> +			#thermal-sensor-cells = <1>;
> +		};
> +	};
> +
> +	timer {
> +		compatible = "arm,armv8-timer";
> +		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>, /* Physical Secure */
> +			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>, /* Physical Non-Secure */
> +			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>, /* Virtual */
> +			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>; /* Hypervisor */
> +	};
> +
> +	thermal_zones: thermal-zones {
> +		cpu-thermal0 {
> +			polling-delay-passive = <250>;
> +			polling-delay = <2000>;
> +			thermal-sensors = <&tsens IMX_SC_R_SYSTEM>;
> +
> +			trips {
> +				cpu_alert0: trip0 {
> +					temperature = <107000>;
> +					hysteresis = <2000>;
> +					type = "passive";
> +				};
> +				cpu_crit0: trip1 {
> +					temperature = <127000>;
> +					hysteresis = <2000>;
> +					type = "critical";
> +				};
> +			};
> +
> +			cooling-maps {
> +				map0 {
> +					trip = <&cpu_alert0>;
> +					cooling-device =
> +					<&A35_0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +					<&A35_1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +				};
> +			};
> +		};
> +	};
> +
> +	/* The two values below cannot be changed by the board */
> +	xtal32k: clock-xtal32k {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <32768>;
> +		clock-output-names = "xtal_32KHz";
> +	};
> +
> +	xtal24m: clock-xtal24m {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <24000000>;
> +		clock-output-names = "xtal_24MHz";
> +	};
> +
> +	/* sorted in register address */
> +	#include "imx8-ss-adma.dtsi"
> +	#include "imx8-ss-conn.dtsi"
> +	#include "imx8-ss-ddr.dtsi"
> +	#include "imx8-ss-lsio.dtsi"
> +};
> +
> +#include "imx8dxl-ss-adma.dtsi"
> +#include "imx8dxl-ss-conn.dtsi"
> +#include "imx8dxl-ss-lsio.dtsi"
> +#include "imx8dxl-ss-ddr.dtsi"
> -- 
> 2.25.1
> 
