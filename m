Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B87BA6F634D
	for <lists+devicetree@lfdr.de>; Thu,  4 May 2023 05:25:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229554AbjEDDZh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 May 2023 23:25:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229470AbjEDDZg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 May 2023 23:25:36 -0400
Received: from EUR02-AM0-obe.outbound.protection.outlook.com (mail-am0eur02on2069.outbound.protection.outlook.com [40.107.247.69])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55C5B118
        for <devicetree@vger.kernel.org>; Wed,  3 May 2023 20:25:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IHQ+s18ZcG7sIl695TsTGe1NEqmh1CwY6vTzFdouqbCGllL2PKb5NcAZ78hofObFqeSBR6IM8M50v9fpOoEcJNO2NWgcOckG/mZWOEJj1y3xV62uT2k3n2NVjooWusW+POXEC02t51aoRWtbslZjXSSmO5v7c1st9GTVvkVC5TeYKhtScRxdbtP8IGDOk5J8WWhJMO3SStGw4BKDKH9KVWdr6KfBlBZfR36ZUmtu8FpcF2VnWLSisTDyzviSyPXs3cL1cJVmM37QYlniKtlPiS1H58OQcyT2HeRqywfooO5035CwkTHwkkF60ualW299R93RDhL3y3JywPlHjMiRag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gZQAxMhc4CeDczwLKXNPBP0xSHGyN35utyFCuVmyI+Q=;
 b=WnVskv+nnhQFx3AyjUcJiIAl4Z6y14JpGJfJ4nlu3WgkA1eDBUeIegF6RwoZR1pt7MpD88+2M1MoEaen1FKZs48/X+9J5OJPRlGIOJpj5d3d70xknyh/52/b2CZ6BUxqTJ+SBogpEGK7Xo2pbGBJi4y839R6qpLuYDhgTZwGQ93bctZbO9zGiGufAT4ytwprFwDDkVg9kJ1zA8hgnpqMSjB8PbeehdbGaxSUqHYoius6HA5avRVN6AFm3LL9cyHoMERZZn6zx1Cl71glrG9BuKFSSl7VWLL8QZdEm+EXxApB0EvV5V6l1aOHmjPHgvb0BFylQMdiuCvn/jlil/Gg7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gZQAxMhc4CeDczwLKXNPBP0xSHGyN35utyFCuVmyI+Q=;
 b=l+GoX7RCgv2yoBSa03j7zBcHYC9qaaaFD7R7opArJTAOflWXkyu4U8QkjFYQjxlMKfHoI47jLC/7l/pxkni5qGKcrVeZzT/64Y6XGSMDs6kJq0/tjOjuAzjWAs/+9mbExmVwZ6Sl85zNiPl5zQtFAfCz8Ny40JnSVNy07lDc1iE=
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com (2603:10a6:5:39::26) by
 PAXPR04MB9203.eurprd04.prod.outlook.com (2603:10a6:102:222::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6363.22; Thu, 4 May 2023 03:25:30 +0000
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::3052:f2bf:2e5f:1e90]) by DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::3052:f2bf:2e5f:1e90%5]) with mapi id 15.20.6340.029; Thu, 4 May 2023
 03:25:30 +0000
From:   Xu Yang <xu.yang_2@nxp.com>
To:     "will@kernel.org" <will@kernel.org>,
        "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        Frank Li <frank.li@nxp.com>,
        "festevam@gmail.com" <festevam@gmail.com>
CC:     "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        dl-linux-imx <linux-imx@nxp.com>
Subject: RE: [PATCH v2 1/3] drivers/perf: imx_ddr: Add support for NXP i.MX9
 SoC DDRC PMU driver
Thread-Topic: [PATCH v2 1/3] drivers/perf: imx_ddr: Add support for NXP i.MX9
 SoC DDRC PMU driver
Thread-Index: AQHZceBE6KzPvYkH6kaUS9bk2v9D5q9JjBjw
Date:   Thu, 4 May 2023 03:25:30 +0000
Message-ID: <DB7PR04MB45056CEB0611209DDC68029B8C6D9@DB7PR04MB4505.eurprd04.prod.outlook.com>
References: <20230418102910.2065651-1-xu.yang_2@nxp.com>
In-Reply-To: <20230418102910.2065651-1-xu.yang_2@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB7PR04MB4505:EE_|PAXPR04MB9203:EE_
x-ms-office365-filtering-correlation-id: 132c8b42-0f79-4b17-1d51-08db4c4f366b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rj0MmXTZL2rNx10KQ5X5IXHiNbdQHiWxzg6X9NhnK5tnYBWmmts0mI4mnIKuFUYg3eaTELJkXNPcsC6JO3MVDSTDFjSUhLLcQUr4z/MxjMKNeKUtIqJX4PbxbcnWj56CdRG+T33kaXCZFhwwX3W4k3Xx3+pJ5Od3UitSIrevTaX1zYFnkkVVNQ+9yf9hxhSGT5HjA46LVrLrzcaV2DJvkCu9dvHDuCaoYjIVDkoFRIkanhPue2LaeOncAtB5ftOyarysroTdvHvlSLf1IAoGxX/hpPpCLzy38QYb+mPlk8O2fP2Vq2+YbpWnpi1KPyucR4xbc6ahLGU0TW+uTmcm9tsaZXD4SSp/RoEDYBUIX2F2svOZ3yqJihFcKkH2exSh2ggG4YHQeoaEDsjrpyFgW+ocA3aJj+NNposBcsyymRLfPD0NuewlwDPdutrcD1qBh6i7F9zaZVFuV2TmeRxqdPOOzkdBTyx1thw6BBO7AGtyK5C83mIALG/DNNlVNwERP0mcAuBRmTkNYrxpIPSpJy5hw8Y9ltcsMdDG5hPYoIXiu+mPkv8bSAtxoLOmcGJIMSzNelGYvv9LSxj7z+UJJD1AifotvfiCSJ+CKRrlPQGP3zuXSeOOW65ZKgp15AhP
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4505.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(136003)(366004)(39860400002)(346002)(396003)(451199021)(76116006)(7696005)(66946007)(66476007)(66556008)(64756008)(4326008)(478600001)(71200400001)(66446008)(54906003)(316002)(110136005)(86362001)(33656002)(83380400001)(53546011)(6506007)(9686003)(26005)(8676002)(8936002)(30864003)(5660300002)(52536014)(41300700001)(55016003)(2906002)(38100700002)(122000001)(38070700005)(186003)(559001)(579004);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mMMDpCt2gDMs9R4E2PPJckvP6OssjUr/gZdqcBA0C2P0zOqRExocLA3QESWk?=
 =?us-ascii?Q?yfRaXq5lHO2Cbts7xNSMOyXeSsGOIBeJDmE4XgFFNjIhmLiYMIYO8FiKlxHP?=
 =?us-ascii?Q?DpHH/UItdif4q6pougkZMqu66QhIbJXtw8Z3bh9XFaoO5h9X0cLeqz2EYXQh?=
 =?us-ascii?Q?vGRFMWVtpWbDpAqV0kCrwGp+gf6a47WFvJHA/T39doXVLWMMnmAwZ2qVWmnL?=
 =?us-ascii?Q?sTLMN4s8we3rxyMkqyx6qHXFRi33p8GWYEIWIPqM59mRnUmCY2H1fxmvs2j2?=
 =?us-ascii?Q?48fmurBOZq7kONuZeUKThcIWh4ervTClcruj9IbdEASiqVc2Z+MW52iG2xHd?=
 =?us-ascii?Q?FIrc/yWoEdAKT/cKA/eX6du3FSjqwvqNcClj6ss7vlPOwJWAqdQiu8+k9vLn?=
 =?us-ascii?Q?RlH3GiFgpW7zGx5m5S9MpND0MybJFZ4VQDoMP8wSRLjKIoOWIbv3b/fI4lB/?=
 =?us-ascii?Q?5+BfSI3RcJWAZz5mtnGQh8O3FAnNiKYVqfLWXEcqxb0cmvQYXqEUsCXF5PRh?=
 =?us-ascii?Q?OBPs0XcFjuiYkksdQ3IDzHD4GaXo0zvhkaf1g5RERORkMurtHy9p0sYUTEra?=
 =?us-ascii?Q?Ts/sB6DsR+IF8E2qu7MXtsUZyr+os7DqLQPeOY/gXwN0LyHcvaC1K9dsgAi/?=
 =?us-ascii?Q?hxzZmLvDutgta3zwhs9tVuq8cAh4gHb4aMAkQVwJFpFk9/AVWL/57MAcw7ur?=
 =?us-ascii?Q?IqiUgdVHwHawKa67sI5Q4wCuTEsWyTQO4s/KxSVt0011351efT/0HHgBhKtn?=
 =?us-ascii?Q?QyoNrSMdlBsV1kYcp19lXp5SNVQ0ia9L/XTAHfvxSjivaQctIdbPxwRQPPtS?=
 =?us-ascii?Q?BaNYEDWQJvlcJnS1MkKKeE42Bep6QGxDVi6Mvk/LSnUY+0NO6YMXQ7JtJfj+?=
 =?us-ascii?Q?Qu3nkGENFmR25R/c342T7PGERLk2r4/I2cjiZiD2ZVDOfREchjv6Bziydtb5?=
 =?us-ascii?Q?tNDe11fDCtuaOr2Yq1W4ue4eqQk1w0YxJWTEZdO0eJ4cy0fHCaECo6JnZz+e?=
 =?us-ascii?Q?ihstm/AXjI0RVe7L0KymUCKedhFvAZ1bKf/z/WUOM2KwsIiAz5eTD+iFEe4l?=
 =?us-ascii?Q?npBTIY9sO/18vLM2uvOr02cc30D2m03VZ/huddf5K2Y8iafSbzZo6ubfPaRm?=
 =?us-ascii?Q?RKndaDxswqMb+q+zCZOUWPjpdQmKwzdlPT9SK5/CpGQB885yb0iX/CrxSre2?=
 =?us-ascii?Q?9K3PouSx4uJ+m7May8jJFaw5ExysKTsOsYWmQtNdE2oCZARagc8+SqbrBA9H?=
 =?us-ascii?Q?ActmLF/UubfFojoqPgqFRwGqtgzgWTbuNnFknS7lyL+kRwEt8VilhXGm9ahc?=
 =?us-ascii?Q?oTPqcEVZmjADlgssMyKX2CsttAcwASMLKF3agp7muSffp3iDv+psyp/acZ75?=
 =?us-ascii?Q?Ffce4x5D/jknc2BBfuKuFAIcSFxbcEYMhnAIAS2aLyQoa1ljKSWgvfh7aalQ?=
 =?us-ascii?Q?nDE802YjOQ3pWCJ/XYcNL8P7rQpLVoR3QBF0QSpi/aNwbL3FsvaRmPgm58li?=
 =?us-ascii?Q?PxX4v4Dd/1uQG/lIL3Qidas+K9EVCcABhkdnl35azWlc6AqRP9Lv9/0WzZCZ?=
 =?us-ascii?Q?s8683sN/qqZVhcHR/PM=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4505.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 132c8b42-0f79-4b17-1d51-08db4c4f366b
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2023 03:25:30.1762
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QR+kdHG2zhjO/sf0dxAJGi/hUnR9Z2P58Bq6XT5+fxlwcPamxaAXhXNYt223jtHjKkN4S9xNcr6bOGD8ymgOBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9203
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> -----Original Message-----
> From: Xu Yang
> Sent: Tuesday, April 18, 2023 6:27 PM
> To: will@kernel.org; mark.rutland@arm.com; shawnguo@kernel.org; Frank Li =
<frank.li@nxp.com>; festevam@gmail.com
> Cc: robh+dt@kernel.org; devicetree@vger.kernel.org; linux-arm-kernel@list=
s.infradead.org; dl-linux-imx <linux-
> imx@nxp.com>
> Subject: [PATCH v2 1/3] drivers/perf: imx_ddr: Add support for NXP i.MX9 =
SoC DDRC PMU driver
>=20
> Add ddr performance monitor support for i.MX93.
>=20
> There are 11 counters for ddr performance events.
> - Counter 0 is a 64-bit counter that counts only clock cycles.
> - Counter 1-10 are 32-bit counters that can monitor counter-specific
>   events in addition to counting reference events.
>=20
> For example:
>   perf stat -a -e imx9_ddr0/ddrc_pm_1,counter=3D1/,imx9_ddr0/ddrc_pm_2,co=
unter=3D2/ ls
>=20
> Besides, this ddr pmu support AXI filter capability. It's implemented as
> counter-specific events. It now supports read transaction, write transact=
ion
> and read beat events which corresponding respecitively to counter 2, 3 an=
d 4.
> axi_mask and axi_id need to be as event parameters.
>=20
> For example:
>   perf stat -a -I 1000 -e imx9_ddr0/eddrtq_pm_rd_trans_filt,counter=3D2,a=
xi_mask=3DID_MASK,axi_id=3DID/
>   perf stat -a -I 1000 -e imx9_ddr0/eddrtq_pm_wr_trans_filt,counter=3D3,a=
xi_mask=3DID_MASK,axi_id=3DID/
>   perf stat -a -I 1000 -e imx9_ddr0/eddrtq_pm_rd_beat_filt,counter=3D4,ax=
i_mask=3DID_MASK,axi_id=3DID/
>=20
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
>=20
> ---
> Changes from v2:
> - optimize cycles counter reading logic according to frank's suggestion
>=20
> diff --git a/drivers/perf/Kconfig b/drivers/perf/Kconfig
> index 66c259000a44..8e95ec362a18 100644
> --- a/drivers/perf/Kconfig
> +++ b/drivers/perf/Kconfig
> @@ -117,6 +117,14 @@ config FSL_IMX8_DDR_PMU
>  	  can give information about memory throughput and other related
>  	  events.
>=20
> +config FSL_IMX9_DDR_PMU
> +	tristate "Freescale i.MX9 DDR perf monitor"
> +	depends on ARCH_MXC
> +	 help
> +	 Provides support for the DDR performance monitor in i.MX9, which
> +	 can give information about memory throughput and other related
> +	 events.
> +
>  config QCOM_L2_PMU
>  	bool "Qualcomm Technologies L2-cache PMU"
>  	depends on ARCH_QCOM && ARM64 && ACPI
> diff --git a/drivers/perf/Makefile b/drivers/perf/Makefile
> index 13e45da61100..d37cb217d528 100644
> --- a/drivers/perf/Makefile
> +++ b/drivers/perf/Makefile
> @@ -7,6 +7,7 @@ obj-$(CONFIG_ARM_PMU) +=3D arm_pmu.o arm_pmu_platform.o
>  obj-$(CONFIG_ARM_PMU_ACPI) +=3D arm_pmu_acpi.o
>  obj-$(CONFIG_ARM_SMMU_V3_PMU) +=3D arm_smmuv3_pmu.o
>  obj-$(CONFIG_FSL_IMX8_DDR_PMU) +=3D fsl_imx8_ddr_perf.o
> +obj-$(CONFIG_FSL_IMX9_DDR_PMU) +=3D fsl_imx9_ddr_perf.o
>  obj-$(CONFIG_HISI_PMU) +=3D hisilicon/
>  obj-$(CONFIG_QCOM_L2_PMU)	+=3D qcom_l2_pmu.o
>  obj-$(CONFIG_QCOM_L3_PMU) +=3D qcom_l3_pmu.o
> diff --git a/drivers/perf/fsl_imx9_ddr_perf.c b/drivers/perf/fsl_imx9_ddr=
_perf.c
> new file mode 100644
> index 000000000000..06754d238007
> --- /dev/null
> +++ b/drivers/perf/fsl_imx9_ddr_perf.c
> @@ -0,0 +1,712 @@
> +// SPDX-License-Identifier: GPL-2.0
> +// Copyright 2023 NXP
> +
> +#include <linux/bitfield.h>
> +#include <linux/init.h>
> +#include <linux/interrupt.h>
> +#include <linux/io.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_address.h>
> +#include <linux/of_device.h>
> +#include <linux/of_irq.h>
> +#include <linux/perf_event.h>
> +
> +/* Performance monitor configuration */
> +#define PMCFG1  			0x00
> +#define PMCFG1_RD_TRANS_FILT_EN 	BIT(31)
> +#define PMCFG1_WR_TRANS_FILT_EN 	BIT(30)
> +#define PMCFG1_RD_BT_FILT_EN 		BIT(29)
> +#define PMCFG1_ID_MASK  		GENMASK(17, 0)
> +
> +#define PMCFG2  			0x04
> +#define PMCFG2_ID			GENMASK(17, 0)
> +
> +/* Global control register affects all counters and takes priority over =
local control registers */
> +#define PMGC0		0x40
> +/* Global control register bits */
> +#define PMGC0_FAC	BIT(31)
> +#define PMGC0_PMIE	BIT(30)
> +#define PMGC0_FCECE	BIT(29)
> +
> +/*
> + * 64bit counter0 exclusively dedicated to counting cycles
> + * 32bit counters monitor counter-specific events in addition to countin=
g reference events
> + */
> +#define PMLCA(n)	(0x40 + 0x10 + (0x10 * n))
> +#define PMLCB(n)	(0x40 + 0x14 + (0x10 * n))
> +#define PMC(n)		(0x40 + 0x18 + (0x10 * n))
> +/* Local control register bits */
> +#define PMLCA_FC	BIT(31)
> +#define PMLCA_CE	BIT(26)
> +#define PMLCA_EVENT	GENMASK(22, 16)
> +
> +#define NUM_COUNTERS		11
> +#define CYCLES_COUNTER		0
> +
> +#define to_ddr_pmu(p)		container_of(p, struct ddr_pmu, pmu)
> +
> +#define DDR_PERF_DEV_NAME	"imx9_ddr"
> +#define DDR_CPUHP_CB_NAME	DDR_PERF_DEV_NAME "_perf_pmu"
> +
> +static DEFINE_IDA(ddr_ida);
> +
> +struct imx_ddr_devtype_data {
> +	const char *identifier;		/* system PMU identifier for userspace */
> +};
> +
> +struct ddr_pmu {
> +	struct pmu pmu;
> +	void __iomem *base;
> +	unsigned int cpu;
> +	struct hlist_node node;
> +	struct device *dev;
> +	struct perf_event *events[NUM_COUNTERS];
> +	int active_events;
> +	enum cpuhp_state cpuhp_state;
> +	const struct imx_ddr_devtype_data *devtype_data;
> +	int irq;
> +	int id;
> +};
> +
> +static const struct imx_ddr_devtype_data imx93_devtype_data =3D {
> +	.identifier =3D "imx93",
> +};
> +
> +static const struct of_device_id imx_ddr_pmu_dt_ids[] =3D {
> +	{.compatible =3D "fsl,imx93-ddr-pmu", .data =3D &imx93_devtype_data},
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, imx_ddr_pmu_dt_ids);
> +
> +static ssize_t ddr_perf_identifier_show(struct device *dev,
> +					struct device_attribute *attr,
> +					char *page)
> +{
> +	struct ddr_pmu *pmu =3D dev_get_drvdata(dev);
> +
> +	return sysfs_emit(page, "%s\n", pmu->devtype_data->identifier);
> +}
> +
> +static struct device_attribute ddr_perf_identifier_attr =3D
> +	__ATTR(identifier, 0444, ddr_perf_identifier_show, NULL);
> +
> +static struct attribute *ddr_perf_identifier_attrs[] =3D {
> +	&ddr_perf_identifier_attr.attr,
> +	NULL,
> +};
> +
> +static struct attribute_group ddr_perf_identifier_attr_group =3D {
> +	.attrs =3D ddr_perf_identifier_attrs,
> +};
> +
> +static ssize_t ddr_perf_cpumask_show(struct device *dev,
> +				     struct device_attribute *attr, char *buf)
> +{
> +	struct ddr_pmu *pmu =3D dev_get_drvdata(dev);
> +
> +	return cpumap_print_to_pagebuf(true, buf, cpumask_of(pmu->cpu));
> +}
> +
> +static struct device_attribute ddr_perf_cpumask_attr =3D
> +	__ATTR(cpumask, 0444, ddr_perf_cpumask_show, NULL);
> +
> +static struct attribute *ddr_perf_cpumask_attrs[] =3D {
> +	&ddr_perf_cpumask_attr.attr,
> +	NULL,
> +};
> +
> +static const struct attribute_group ddr_perf_cpumask_attr_group =3D {
> +	.attrs =3D ddr_perf_cpumask_attrs,
> +};
> +
> +static ssize_t ddr_pmu_event_show(struct device *dev,
> +				  struct device_attribute *attr, char *page)
> +{
> +	struct perf_pmu_events_attr *pmu_attr;
> +
> +	pmu_attr =3D container_of(attr, struct perf_pmu_events_attr, attr);
> +	return sysfs_emit(page, "event=3D0x%02llx\n", pmu_attr->id);
> +}
> +
> +#define IMX9_DDR_PMU_EVENT_ATTR(_name, _id)				\
> +	(&((struct perf_pmu_events_attr[]) {				\
> +		{ .attr =3D __ATTR(_name, 0444, ddr_pmu_event_show, NULL),\
> +		  .id =3D _id, }						\
> +	})[0].attr.attr)
> +
> +static struct attribute *ddr_perf_events_attrs[] =3D {
> +	/* counter0 cycles event */
> +	IMX9_DDR_PMU_EVENT_ATTR(cycles, 0),
> +
> +	/* reference events for all normal counters, need assert DEBUG19[21] bi=
t */
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_ddrc1_rmw_for_ecc, 12),
> +	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pmon_rreorder, 13),
> +	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pmon_wreorder, 14),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_pm_0, 15),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_pm_1, 16),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_pm_2, 17),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_pm_3, 18),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_pm_4, 19),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_pm_5, 22),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_pm_6, 23),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_pm_7, 24),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_pm_8, 25),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_pm_9, 26),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_pm_10, 27),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_pm_11, 28),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_pm_12, 31),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_pm_13, 59),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_pm_15, 61),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_pm_29, 63),
> +
> +	/* counter1 specific events */
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_ld_riq_0, 64),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_ld_riq_1, 65),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_ld_riq_2, 66),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_ld_riq_3, 67),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_ld_riq_4, 68),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_ld_riq_5, 69),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_ld_riq_6, 70),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_ld_riq_7, 71),
> +
> +	/* counter2 specific events */
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_ld_wiq_0, 64),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_ld_wiq_1, 65),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_ld_wiq_2, 66),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_ld_wiq_3, 67),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_ld_wiq_4, 68),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_ld_wiq_5, 69),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_ld_wiq_6, 70),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_ld_wiq_7, 71),
> +	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pmon_empty, 72),
> +	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pm_rd_trans_filt, 73),
> +
> +	/* counter3 specific events */
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_row_collision_0, 64),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_row_collision_1, 65),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_row_collision_2, 66),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_row_collision_3, 67),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_row_collision_4, 68),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_row_collision_5, 69),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_row_collision_6, 70),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_row_collision_7, 71),
> +	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pmon_full, 72),
> +	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pm_wr_trans_filt, 73),
> +
> +	/* counter4 specific events */
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_row_open_0, 64),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_row_open_1, 65),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_row_open_2, 66),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_row_open_3, 67),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_row_open_4, 68),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_row_open_5, 69),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_row_open_6, 70),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_row_open_7, 71),
> +	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pmon_ld_rdq2_rmw, 72),
> +	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pm_rd_beat_filt, 73),
> +
> +	/* counter5 specific events */
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_valid_start_0, 64),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_valid_start_1, 65),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_valid_start_2, 66),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_valid_start_3, 67),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_valid_start_4, 68),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_valid_start_5, 69),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_valid_start_6, 70),
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_valid_start_7, 71),
> +	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pmon_ld_rdq1, 72),
> +
> +	/* counter6 specific events */
> +	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_valid_end_0, 64),
> +	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pmon_ld_rdq2, 72),
> +
> +	/* counter7 specific events */
> +	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pmon_1_2_full, 64),
> +	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pmon_ld_wrq0, 65),
> +
> +	/* counter8 specific events */
> +	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pmon_bias_switched, 64),
> +	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pmon_1_4_full, 65),
> +
> +	/* counter9 specific events */
> +	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pmon_ld_wrq1, 65),
> +	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pmon_3_4_full, 66),
> +
> +	/* counter10 specific events */
> +	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pmon_misc_mrk, 65),
> +	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pmon_ld_rdq0, 66),
> +	NULL,
> +};
> +
> +static const struct attribute_group ddr_perf_events_attr_group =3D {
> +	.name =3D "events",
> +	.attrs =3D ddr_perf_events_attrs,
> +};
> +
> +PMU_FORMAT_ATTR(event, "config:0-7");
> +PMU_FORMAT_ATTR(counter, "config:8-15");
> +PMU_FORMAT_ATTR(axi_id, "config1:0-17");
> +PMU_FORMAT_ATTR(axi_mask, "config2:0-17");
> +
> +static struct attribute *ddr_perf_format_attrs[] =3D {
> +	&format_attr_event.attr,
> +	&format_attr_counter.attr,
> +	&format_attr_axi_id.attr,
> +	&format_attr_axi_mask.attr,
> +	NULL,
> +};
> +
> +static const struct attribute_group ddr_perf_format_attr_group =3D {
> +	.name =3D "format",
> +	.attrs =3D ddr_perf_format_attrs,
> +};
> +
> +static const struct attribute_group *attr_groups[] =3D {
> +	&ddr_perf_identifier_attr_group,
> +	&ddr_perf_cpumask_attr_group,
> +	&ddr_perf_events_attr_group,
> +	&ddr_perf_format_attr_group,
> +	NULL,
> +};
> +
> +static void ddr_perf_clear_counter(struct ddr_pmu *pmu, int counter)
> +{
> +	if (counter =3D=3D CYCLES_COUNTER) {
> +		writel(0, pmu->base + PMC(counter) + 0x4);
> +		writel(0, pmu->base + PMC(counter));
> +	} else {
> +		writel(0, pmu->base + PMC(counter));
> +	}
> +}
> +
> +static u64 ddr_perf_read_counter(struct ddr_pmu *pmu, int counter)
> +{
> +	u32 val_lower, val_upper;
> +	u64 val;
> +
> +	if (counter !=3D CYCLES_COUNTER) {
> +		val =3D readl_relaxed(pmu->base + PMC(counter));
> +		goto out;
> +	}
> +
> +	/* special handling for reading 64bit cycle counter */
> +	do {
> +		val_upper =3D readl_relaxed(pmu->base + PMC(counter) + 0x4);
> +		val_lower =3D readl_relaxed(pmu->base + PMC(counter));
> +	} while (val_upper !=3D readl_relaxed(pmu->base + PMC(counter) + 0x4));
> +
> +	val =3D val_upper;
> +	val =3D (val << 32);
> +	val |=3D val_lower;
> +out:
> +	return val;
> +}
> +
> +static void ddr_perf_counter_global_config(struct ddr_pmu *pmu, bool ena=
ble)
> +{
> +	u32 ctrl;
> +
> +	ctrl =3D readl_relaxed(pmu->base + PMGC0);
> +
> +	if (enable) {
> +		/*
> +		 * The performance monitor must be reset before event counting
> +		 * sequences. The performance monitor can be reset by first freezing
> +		 * one or more counters and then clearing the freeze condition to
> +		 * allow the counters to count according to the settings in the
> +		 * performance monitor registers. Counters can be frozen individually
> +		 * by setting PMLCAn[FC] bits, or simultaneously by setting PMGC0[FAC]=
.
> +		 * Simply clearing these freeze bits will then allow the performance
> +		 * monitor to begin counting based on the register settings.
> +		 */
> +		ctrl |=3D PMGC0_FAC;
> +		writel(ctrl, pmu->base + PMGC0);
> +
> +		/*
> +		 * Freeze all counters disabled, interrupt enabled, and freeze
> +		 * counters on condition enabled.
> +		 */
> +		ctrl &=3D ~PMGC0_FAC;
> +		ctrl |=3D PMGC0_PMIE | PMGC0_FCECE;
> +		writel(ctrl, pmu->base + PMGC0);
> +	} else {
> +		ctrl |=3D PMGC0_FAC;
> +		ctrl &=3D ~(PMGC0_PMIE | PMGC0_FCECE);
> +		writel(ctrl, pmu->base + PMGC0);
> +	}
> +}
> +
> +static void ddr_perf_counter_local_config(struct ddr_pmu *pmu, int confi=
g,
> +				    int counter, bool enable)
> +{
> +	u32 ctrl_a;
> +
> +	ctrl_a =3D readl_relaxed(pmu->base + PMLCA(counter));
> +
> +	if (enable) {
> +		ctrl_a |=3D PMLCA_FC;
> +		writel(ctrl_a, pmu->base + PMLCA(counter));
> +
> +		ddr_perf_clear_counter(pmu, counter);
> +
> +		/* Freeze counter disabled, condition enabled, and program event.*/
> +		ctrl_a &=3D ~PMLCA_FC;
> +		ctrl_a |=3D PMLCA_CE;
> +		ctrl_a &=3D ~FIELD_PREP(PMLCA_EVENT, 0x7F);
> +		ctrl_a |=3D FIELD_PREP(PMLCA_EVENT, (config & 0x000000FF));
> +		writel(ctrl_a, pmu->base + PMLCA(counter));
> +	} else {
> +		/* Freeze counter. */
> +		ctrl_a |=3D PMLCA_FC;
> +		writel(ctrl_a, pmu->base + PMLCA(counter));
> +	}
> +}
> +
> +static void ddr_perf_monitor_config(struct ddr_pmu *pmu, int cfg, int cf=
g1, int cfg2)
> +{
> +	u32 pmcfg1, pmcfg2;
> +	int event, counter;
> +
> +	event =3D cfg & 0x000000FF;
> +	counter =3D (cfg & 0x0000FF00) >> 8;
> +
> +	pmcfg1 =3D readl_relaxed(pmu->base + PMCFG1);
> +
> +	if (counter =3D=3D 2 && event =3D=3D 73)
> +		pmcfg1 |=3D PMCFG1_RD_TRANS_FILT_EN;
> +	else if (counter =3D=3D 2 && event !=3D 73)
> +		pmcfg1 &=3D ~PMCFG1_RD_TRANS_FILT_EN;
> +
> +	if (counter =3D=3D 3 && event =3D=3D 73)
> +		pmcfg1 |=3D PMCFG1_WR_TRANS_FILT_EN;
> +	else if (counter =3D=3D 3 && event !=3D 73)
> +		pmcfg1 &=3D ~PMCFG1_WR_TRANS_FILT_EN;
> +
> +	if (counter =3D=3D 4 && event =3D=3D 73)
> +		pmcfg1 |=3D PMCFG1_RD_BT_FILT_EN;
> +	else if (counter =3D=3D 4 && event !=3D 73)
> +		pmcfg1 &=3D ~PMCFG1_RD_BT_FILT_EN;
> +
> +	pmcfg1 &=3D ~FIELD_PREP(PMCFG1_ID_MASK, 0x3FFFF);
> +	pmcfg1 |=3D FIELD_PREP(PMCFG1_ID_MASK, cfg2);
> +	writel(pmcfg1, pmu->base + PMCFG1);
> +
> +	pmcfg2 =3D readl_relaxed(pmu->base + PMCFG2);
> +	pmcfg2 &=3D ~FIELD_PREP(PMCFG2_ID, 0x3FFFF);
> +	pmcfg2 |=3D FIELD_PREP(PMCFG2_ID, cfg1);
> +	writel(pmcfg2, pmu->base + PMCFG2);
> +}
> +
> +static void ddr_perf_event_update(struct perf_event *event)
> +{
> +	struct ddr_pmu *pmu =3D to_ddr_pmu(event->pmu);
> +	struct hw_perf_event *hwc =3D &event->hw;
> +	int counter =3D hwc->idx;
> +	u64 new_raw_count;
> +
> +	new_raw_count =3D ddr_perf_read_counter(pmu, counter);
> +	local64_add(new_raw_count, &event->count);
> +
> +	/* clear counter's value every time */
> +	ddr_perf_clear_counter(pmu, counter);
> +}
> +
> +static int ddr_perf_event_init(struct perf_event *event)
> +{
> +	struct ddr_pmu *pmu =3D to_ddr_pmu(event->pmu);
> +	struct hw_perf_event *hwc =3D &event->hw;
> +	struct perf_event *sibling;
> +
> +	if (event->attr.type !=3D event->pmu->type)
> +		return -ENOENT;
> +
> +	if (is_sampling_event(event) || event->attach_state & PERF_ATTACH_TASK)
> +		return -EOPNOTSUPP;
> +
> +	if (event->cpu < 0) {
> +		dev_warn(pmu->dev, "Can't provide per-task data!\n");
> +		return -EOPNOTSUPP;
> +	}
> +
> +	/*
> +	 * We must NOT create groups containing mixed PMUs, although software
> +	 * events are acceptable (for example to create a CCN group
> +	 * periodically read when a hrtimer aka cpu-clock leader triggers).
> +	 */
> +	if (event->group_leader->pmu !=3D event->pmu &&
> +			!is_software_event(event->group_leader))
> +		return -EINVAL;
> +
> +	for_each_sibling_event(sibling, event->group_leader) {
> +		if (sibling->pmu !=3D event->pmu &&
> +				!is_software_event(sibling))
> +			return -EINVAL;
> +	}
> +
> +	event->cpu =3D pmu->cpu;
> +	hwc->idx =3D -1;
> +
> +	return 0;
> +}
> +
> +static void ddr_perf_event_start(struct perf_event *event, int flags)
> +{
> +	struct ddr_pmu *pmu =3D to_ddr_pmu(event->pmu);
> +	struct hw_perf_event *hwc =3D &event->hw;
> +	int counter =3D hwc->idx;
> +
> +	local64_set(&hwc->prev_count, 0);
> +
> +	ddr_perf_counter_local_config(pmu, event->attr.config, counter, true);
> +	hwc->state =3D 0;
> +}
> +
> +static int ddr_perf_event_add(struct perf_event *event, int flags)
> +{
> +	struct ddr_pmu *pmu =3D to_ddr_pmu(event->pmu);
> +	struct hw_perf_event *hwc =3D &event->hw;
> +	int cfg =3D event->attr.config;
> +	int cfg1 =3D event->attr.config1;
> +	int cfg2 =3D event->attr.config2;
> +	int counter;
> +
> +	counter =3D (cfg & 0x0000FF00) >> 8;
> +
> +	pmu->events[counter] =3D event;
> +	pmu->active_events++;
> +	hwc->idx =3D counter;
> +	hwc->state |=3D PERF_HES_STOPPED;
> +
> +	if (flags & PERF_EF_START)
> +		ddr_perf_event_start(event, flags);
> +
> +	/* read trans, write trans, read beat */
> +	ddr_perf_monitor_config(pmu, cfg, cfg1, cfg2);
> +
> +	return 0;
> +}
> +
> +static void ddr_perf_event_stop(struct perf_event *event, int flags)
> +{
> +	struct ddr_pmu *pmu =3D to_ddr_pmu(event->pmu);
> +	struct hw_perf_event *hwc =3D &event->hw;
> +	int counter =3D hwc->idx;
> +
> +	ddr_perf_counter_local_config(pmu, event->attr.config, counter, false);
> +	ddr_perf_event_update(event);
> +
> +	hwc->state |=3D PERF_HES_STOPPED;
> +}
> +
> +static void ddr_perf_event_del(struct perf_event *event, int flags)
> +{
> +	struct ddr_pmu *pmu =3D to_ddr_pmu(event->pmu);
> +	struct hw_perf_event *hwc =3D &event->hw;
> +
> +	ddr_perf_event_stop(event, PERF_EF_UPDATE);
> +
> +	pmu->active_events--;
> +	hwc->idx =3D -1;
> +}
> +
> +static void ddr_perf_pmu_enable(struct pmu *pmu)
> +{
> +	struct ddr_pmu *ddr_pmu =3D to_ddr_pmu(pmu);
> +
> +	ddr_perf_counter_global_config(ddr_pmu, true);
> +}
> +
> +static void ddr_perf_pmu_disable(struct pmu *pmu)
> +{
> +	struct ddr_pmu *ddr_pmu =3D to_ddr_pmu(pmu);
> +
> +	ddr_perf_counter_global_config(ddr_pmu, false);
> +}
> +
> +static void ddr_perf_init(struct ddr_pmu *pmu, void __iomem *base,
> +			 struct device *dev)
> +{
> +	*pmu =3D (struct ddr_pmu) {
> +		.pmu =3D (struct pmu) {
> +			.module       =3D THIS_MODULE,
> +			.capabilities =3D PERF_PMU_CAP_NO_EXCLUDE,
> +			.task_ctx_nr  =3D perf_invalid_context,
> +			.attr_groups  =3D attr_groups,
> +			.event_init   =3D ddr_perf_event_init,
> +			.add          =3D ddr_perf_event_add,
> +			.del          =3D ddr_perf_event_del,
> +			.start        =3D ddr_perf_event_start,
> +			.stop         =3D ddr_perf_event_stop,
> +			.read         =3D ddr_perf_event_update,
> +			.pmu_enable   =3D ddr_perf_pmu_enable,
> +			.pmu_disable  =3D ddr_perf_pmu_disable,
> +		},
> +		.base =3D base,
> +		.dev =3D dev,
> +	};
> +}
> +
> +static irqreturn_t ddr_perf_irq_handler(int irq, void *p)
> +{
> +	struct ddr_pmu *pmu =3D (struct ddr_pmu *)p;
> +	struct perf_event *event;
> +	int i;
> +
> +	/*
> +	 * Counters can generate an interrupt on an overflow when msb of a
> +	 * counter changes from 0 to 1. For the interrupt to be signalled,
> +	 * below condition mush be satisfied:
> +	 * PMGC0[PMIE] =3D 1, PMGC0[FCECE] =3D 1, PMLCAn[CE] =3D 1
> +	 * When an interrupt is signalled, PMGC0[FAC] is set by hardware and
> +	 * all of the registers are frozen.
> +	 * Software can clear the interrupt condition by resetting the performa=
nce
> +	 * monitor and clearing the most significant bit of the counter that
> +	 * generate the overflow.
> +	 */
> +	for (i =3D 0; i < NUM_COUNTERS; i++) {
> +		if (!pmu->events[i])
> +			continue;
> +
> +		event =3D pmu->events[i];
> +
> +		ddr_perf_event_update(event);
> +	}
> +
> +	ddr_perf_counter_global_config(pmu, true);
> +
> +	return IRQ_HANDLED;
> +}
> +
> +static int ddr_perf_offline_cpu(unsigned int cpu, struct hlist_node *nod=
e)
> +{
> +	struct ddr_pmu *pmu =3D hlist_entry_safe(node, struct ddr_pmu, node);
> +	int target;
> +
> +	if (cpu !=3D pmu->cpu)
> +		return 0;
> +
> +	target =3D cpumask_any_but(cpu_online_mask, cpu);
> +	if (target >=3D nr_cpu_ids)
> +		return 0;
> +
> +	perf_pmu_migrate_context(&pmu->pmu, cpu, target);
> +	pmu->cpu =3D target;
> +
> +	WARN_ON(irq_set_affinity(pmu->irq, cpumask_of(pmu->cpu)));
> +
> +	return 0;
> +}
> +
> +static int ddr_perf_probe(struct platform_device *pdev)
> +{
> +	struct ddr_pmu *pmu;
> +	void __iomem *base;
> +	int ret, irq;
> +	char *name;
> +
> +	base =3D devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(base))
> +		return PTR_ERR(base);
> +
> +	pmu =3D devm_kzalloc(&pdev->dev, sizeof(*pmu), GFP_KERNEL);
> +	if (!pmu)
> +		return -ENOMEM;
> +
> +	ddr_perf_init(pmu, base, &pdev->dev);
> +
> +	pmu->devtype_data =3D of_device_get_match_data(&pdev->dev);
> +
> +	platform_set_drvdata(pdev, pmu);
> +
> +	pmu->id =3D ida_simple_get(&ddr_ida, 0, 0, GFP_KERNEL);
> +	name =3D devm_kasprintf(&pdev->dev, GFP_KERNEL, DDR_PERF_DEV_NAME "%d",=
 pmu->id);
> +	if (!name) {
> +		ret =3D -ENOMEM;
> +		goto format_string_err;
> +	}
> +
> +	pmu->cpu =3D raw_smp_processor_id();
> +	ret =3D cpuhp_setup_state_multi(CPUHP_AP_ONLINE_DYN, DDR_CPUHP_CB_NAME,
> +				      NULL, ddr_perf_offline_cpu);
> +	if (ret < 0) {
> +		dev_err(&pdev->dev, "Failed to add callbacks for multi state\n");
> +		goto cpuhp_state_err;
> +	}
> +	pmu->cpuhp_state =3D ret;
> +
> +	/* Register the pmu instance for cpu hotplug */
> +	ret =3D cpuhp_state_add_instance_nocalls(pmu->cpuhp_state, &pmu->node);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Error %d registering hotplug\n", ret);
> +		goto cpuhp_instance_err;
> +	}
> +
> +	/* Request irq */
> +	irq =3D platform_get_irq(pdev, 0);
> +	if (irq < 0) {
> +		dev_err(&pdev->dev, "Failed to get irq: %d", irq);
> +		ret =3D irq;
> +		goto ddr_perf_err;
> +	}
> +
> +	ret =3D devm_request_irq(&pdev->dev, irq, ddr_perf_irq_handler,
> +			       IRQF_NOBALANCING | IRQF_NO_THREAD,
> +			       DDR_CPUHP_CB_NAME, pmu);
> +	if (ret < 0) {
> +		dev_err(&pdev->dev, "Request irq failed: %d", ret);
> +		goto ddr_perf_err;
> +	}
> +
> +	pmu->irq =3D irq;
> +	ret =3D irq_set_affinity(pmu->irq, cpumask_of(pmu->cpu));
> +	if (ret) {
> +		dev_err(pmu->dev, "Failed to set interrupt affinity\n");
> +		goto ddr_perf_err;
> +	}
> +
> +	ret =3D perf_pmu_register(&pmu->pmu, name, -1);
> +	if (ret)
> +		goto ddr_perf_err;
> +
> +	return 0;
> +
> +ddr_perf_err:
> +	cpuhp_state_remove_instance_nocalls(pmu->cpuhp_state, &pmu->node);
> +cpuhp_instance_err:
> +	cpuhp_remove_multi_state(pmu->cpuhp_state);
> +cpuhp_state_err:
> +format_string_err:
> +	ida_simple_remove(&ddr_ida, pmu->id);
> +	dev_warn(&pdev->dev, "i.MX9 DDR Perf PMU failed (%d), disabled\n", ret)=
;
> +	return ret;
> +}
> +
> +static int ddr_perf_remove(struct platform_device *pdev)
> +{
> +	struct ddr_pmu *pmu =3D platform_get_drvdata(pdev);
> +
> +	cpuhp_state_remove_instance_nocalls(pmu->cpuhp_state, &pmu->node);
> +	cpuhp_remove_multi_state(pmu->cpuhp_state);
> +
> +	perf_pmu_unregister(&pmu->pmu);
> +
> +	ida_simple_remove(&ddr_ida, pmu->id);
> +
> +	return 0;
> +}
> +
> +static struct platform_driver imx_ddr_pmu_driver =3D {
> +	.driver         =3D {
> +		.name                =3D "imx9-ddr-pmu",
> +		.of_match_table      =3D imx_ddr_pmu_dt_ids,
> +		.suppress_bind_attrs =3D true,
> +	},
> +	.probe          =3D ddr_perf_probe,
> +	.remove         =3D ddr_perf_remove,
> +};
> +module_platform_driver(imx_ddr_pmu_driver);
> +
> +MODULE_AUTHOR("Xu Yang <xu.yang_2@nxp.com>");
> +MODULE_LICENSE("GPL v2");
> +MODULE_DESCRIPTION("DDRC PerfMon for i.MX9 SoCs");
> --
> 2.34.1

A gentle ping.

Thanks
