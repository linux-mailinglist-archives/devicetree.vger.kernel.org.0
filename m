Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 42FAB2CA20C
	for <lists+devicetree@lfdr.de>; Tue,  1 Dec 2020 13:02:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728474AbgLAMBq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Dec 2020 07:01:46 -0500
Received: from esa3.hgst.iphmx.com ([216.71.153.141]:7378 "EHLO
        esa3.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728108AbgLAMBq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Dec 2020 07:01:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1606824104; x=1638360104;
  h=from:to:cc:subject:date:message-id:references:
   content-transfer-encoding:mime-version;
  bh=XDGeVpA0xql5NpkYgpFR1fViFuuB/gn5hYd6VV7rVHU=;
  b=BBdWu1Nxl/sPPC8Lpcv/wPt1ySy0Fz/TC1ShEAuTXPUuYWdu12w9Z8Ke
   Ri4RB1PUEPBij1AnqA+/tVqrBAeO+dE9Lw93MaCAEC+VoauIwAvseKaeI
   ezH++CzCTUrifsBVJcaRl/bNvfDLCaAIAx123Jgbn4Pw4jYXXM31nGbVT
   XxZuW2bp+ytC8rHkQvd/X0zZmo4whOINQVbspq+35+T2SqLrWmFZ1T+pQ
   CcIfXjheeKZ9mtfGMXSdwFpjSmzRGLjiXSOdHj4NljmRjV2KQGD3awGnm
   Hl04qSJCWOYyhn4Q2W6GCeLnmWXrg8Q08QUt0uN1mjHSRnyUff9prQIm3
   g==;
IronPort-SDR: UkzYL864FunG5DF6SOBgCMcUFLvLW3BZ2FudlwfJOptB1NTld10SUooFp+7KLLjcRjraMUv1Wb
 cxzOn9m7m1CCXfN/PzcioGKf9XnS9FDU3X/1ey9nPLhl3ZqBFA4uTqScVil7SjYyDOIDWfwzGW
 TzYoSwYRgAbENCxVZIx8UyzHWF03JoqzcyhFo7d73EcJqY7skzif0Yuc7VH80eASlxGq9xROVJ
 FyMjOm3f35d0rjxa5p3OQlw6K2SAN/2aq9dcXYIIvreKt5Oq9Pt8+8vUiy7h2VbK9Yw5zBB8G9
 AZY=
X-IronPort-AV: E=Sophos;i="5.78,384,1599494400"; 
   d="scan'208";a="158379873"
Received: from mail-sn1nam02lp2056.outbound.protection.outlook.com (HELO NAM02-SN1-obe.outbound.protection.outlook.com) ([104.47.36.56])
  by ob1.hgst.iphmx.com with ESMTP; 01 Dec 2020 20:00:36 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bNp4N6e7Yc3ZgVqWjcNoh4GMbSUgBl53BOdKrI0qP14lsBx0XLUSogqL6C+yM/sDgRgoG1lgCq0VbNDQDHkOBMPdyYSF+OroXnqeROJgXJYO6g1X4UxDvpxg5I1HYyUWQ4wRLuURk4lzGPMoPLh2qcr2Dj7QfadXjoIn6OKEgvvTIAz6On9ztSz9B90Ei4BnzuA/T75lXJlqxuZNUHR/vpaHs4koME8hBOffqVvZ//EaDp4pU8UwHwcgEHlMl8L1RFdIbPjKmoP6/qCg08vRnW8nX/iifLUapK6UOA0NHug8/2n4Bk3GGbMKnCYQ5Owdigz403Ci3RAXFbr47wBHtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V43vZdn7/y8vMofipXCMaXlSji92N3wAMbBQ0mC5qqo=;
 b=EpbZrqfgiAYHYq2wFLukkmqw5JVZ1aOinYikPifnptayxh8Yu8GqML4RilOM/8q9pyyENmPTlUCLpZUEq9TAUnKYNcqVtlf1rd0OPY//MeCxmn8i8+2hzR7EVRts5Ch9KngKOaxzi5O+bQ4419aAO4S1JdszY+XB/AG7aCeFGvt3qMiX9xGMBnFyLcNGHgguy5EoKKxk4DROrfMxttz0BoHcFVL09j9xgOBwz38j4LFvAiVi9o6lW4/Dunhg7URERNy5w+8ka4GW0dm2ovwOHk4rmJa/hNUidLajDOKbg1i9BSf4dHSD/3148XRlkn8pjoFolf4qs+a0ivt7KVHsCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V43vZdn7/y8vMofipXCMaXlSji92N3wAMbBQ0mC5qqo=;
 b=zZ0W0YBdpkhelqfxNor6UINJOXQr4FJSTB0/xf+W7ckRNvZbYAglxv190iUyOY1qgFDRQfTiR6uPXWmdkvhe0Gah9G4Dl7u3QjwbFY0g/Ef/04ySijfRk3PR+z8gg/yjoG6uLQbUaDvp/DScBau/g6VXmu8iNtVRBlF1vG4T+Kk=
Received: from CH2PR04MB6522.namprd04.prod.outlook.com (2603:10b6:610:34::19)
 by CH2PR04MB6663.namprd04.prod.outlook.com (2603:10b6:610:99::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.22; Tue, 1 Dec
 2020 12:00:34 +0000
Received: from CH2PR04MB6522.namprd04.prod.outlook.com
 ([fe80::897c:a04b:4eb0:640a]) by CH2PR04MB6522.namprd04.prod.outlook.com
 ([fe80::897c:a04b:4eb0:640a%7]) with mapi id 15.20.3589.022; Tue, 1 Dec 2020
 12:00:34 +0000
From:   Damien Le Moal <Damien.LeMoal@wdc.com>
To:     "conor.dooley@microchip.com" <conor.dooley@microchip.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
        "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
        "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
        "palmer@dabbelt.com" <palmer@dabbelt.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
CC:     "lewis.hanly@microchip.com" <lewis.hanly@microchip.com>,
        "cyril.jean@microchip.com" <cyril.jean@microchip.com>,
        "daire.mcnamara@microchip.com" <daire.mcnamara@microchip.com>,
        Atish Patra <Atish.Patra@wdc.com>,
        Anup Patel <Anup.Patel@wdc.com>,
        "david.abdurachmanov@gmail.com" <david.abdurachmanov@gmail.com>
Subject: Re: [PATCH v2 3/5] soc: add polarfire soc system controller
Thread-Topic: [PATCH v2 3/5] soc: add polarfire soc system controller
Thread-Index: AQHWx9GPBNmhkWSEf0arVrOyBIjWRw==
Date:   Tue, 1 Dec 2020 12:00:34 +0000
Message-ID: <CH2PR04MB6522C138E30D5E53FD1317F2E7F40@CH2PR04MB6522.namprd04.prod.outlook.com>
References: <20201201110257.28507-1-conor.dooley@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: microchip.com; dkim=none (message not signed)
 header.d=none;microchip.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [129.253.182.59]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3c5cdfac-b21c-4882-4145-08d895f0b5cd
x-ms-traffictypediagnostic: CH2PR04MB6663:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR04MB66634ED4B4160FF4BE39B9AEE7F40@CH2PR04MB6663.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cQnlPA2midNBCkwW+p/CZ1Ky3+fByqkpLidHUBmABzFvlJTEn3AJGuo1xak7xG9LtAcZgF8TckouvKJUpZUf/iE1b0x0l1k21vzmJAOryOTO5UQDW8N1erFN1RD8eSWHwS5r8CiBVsValZPPAFjazC/gSooUUIJJDbOnvZ8HWchf66kPR6CBgzwSghJ5q8lt9MGN38xWCq5xn2rJkwJu4pwzb3Cd9Nsu+7LhbEi6dA18TiNqN1bbwxkhFTzU+F1X6JgeipLjM+yVLy2/yMAQ2aA/sf/7HGDKSgogeymlywoJyUA8sMXkqOBSMM0CwiTr
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH2PR04MB6522.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(136003)(346002)(366004)(39860400002)(396003)(316002)(26005)(71200400001)(54906003)(33656002)(83380400001)(110136005)(8936002)(76116006)(55016002)(7696005)(478600001)(4326008)(91956017)(186003)(8676002)(66446008)(6506007)(53546011)(64756008)(66556008)(9686003)(66946007)(7416002)(66476007)(86362001)(5660300002)(52536014)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?YLzFyoxzXjf7s8iW79WBoMKYOL0fvXFYrXLYcu83UunQD9TJFeJ4D8Xc7xqf?=
 =?us-ascii?Q?I34XnaCqRpn2RXJonCveLnIfGZZexQc7swRQIyvpR/kMMH7zricT+fdjTE9k?=
 =?us-ascii?Q?+4Kl+L3wUQLL0SXhyUciB3qHxcxAj9S5f/3MMTt0uaTBSfkqPGpYjoIMi1PM?=
 =?us-ascii?Q?IoBUIsKyYNFdtUi99STf4TmEVS560kTeKH47HHGTRZclgFKS0xAt1Z0I+bRb?=
 =?us-ascii?Q?7N+QbGyjZH+T8fB+VKAyGRppiCNrEeMoO9wGa4qKkl89E35+jnHPe9v7va41?=
 =?us-ascii?Q?0SdwhYTeRZ0b88cMI73BvDmOrTCiXyNuuJtMPANb3vSLeI8vaK8afRJ+by7l?=
 =?us-ascii?Q?0ksymW97b7nA6XfecbdMVlSMifCr873+ioHavLHMjiETjMvgg7LntaC5hcm7?=
 =?us-ascii?Q?IgnnQVZtj6jClnfwGbvgccOErQbQduEueLMXVvuuinutakQ98QWKGtfBdJZ4?=
 =?us-ascii?Q?WdHuv5Em29eooB2N7YEu3g2mR5r4tt1nn9eq9mv5DnuicE67cF9HFaZd1UFW?=
 =?us-ascii?Q?nJ4Ru5+PfsM+mrtqeU7lF+5yZzRMMMQCuoTT0NGscxa8k9OwLRaOHpYgSUCH?=
 =?us-ascii?Q?9UhKPEwfUpmwQCv60a2uNJe0BANxHTQplFIJYwb2d9cYZ7nPmOfhN+hISTVh?=
 =?us-ascii?Q?blh0sDGvi5VgeQiyNmuzvBOkNg92i4GBAg7ZcVPoPkhc6kc5Me6B7FfCysac?=
 =?us-ascii?Q?2FXhC+cdnHBv+OTtJxvA03UaKZpA5E/q0eAtDEGJ8sQ9wO32BnPkQWV67Jkv?=
 =?us-ascii?Q?QGAek9836IG7gFXIgxsp+Rj2X2QQfEULyYE+D2UebcDQtK/AgU8vd5d1i15u?=
 =?us-ascii?Q?HuSYqeqtW9ADiCq8uv5/TDEyuNXFy1kaDgjdfIXPqSNkdB1mlDqzpF/72qyR?=
 =?us-ascii?Q?yfJcYPvPl0YtD0YeKdXUb3aGkiHF/8CD4ILIdW6WeSnvpxxNZSJdc2qfbm8u?=
 =?us-ascii?Q?IvNlE4NkpA5jYFJ4vLR1CSZRrdWKk4d7xRcY4DdhNPFBxFifiTmQg1ZtxQZw?=
 =?us-ascii?Q?GeGV?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH2PR04MB6522.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c5cdfac-b21c-4882-4145-08d895f0b5cd
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2020 12:00:34.6816
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XvbsR2lzglGbX4TnpIBL6S+KnIce/xIk3VngePvR5ilR5kefmEEqQOR7F54o8fJ0k/UbiYhtnaQEB4bjbtfjBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR04MB6663
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2020/12/01 20:03, conor.dooley@microchip.com wrote:=0A=
> From: Conor Dooley <conor.dooley@microchip.com>=0A=
> =0A=
> This driver provides an interface for other drivers to access the=0A=
> functions of the system controller on the Microchip PolarFire SoC.=0A=
> =0A=
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>=0A=
> ---=0A=
>  drivers/soc/Kconfig                         |   1 +=0A=
>  drivers/soc/Makefile                        |   1 +=0A=
>  drivers/soc/microchip/Kconfig               |  10 ++=0A=
>  drivers/soc/microchip/Makefile              |   1 +=0A=
>  drivers/soc/microchip/mpfs_sys_controller.c | 135 ++++++++++++++++++++=
=0A=
>  5 files changed, 148 insertions(+)=0A=
>  create mode 100644 drivers/soc/microchip/Kconfig=0A=
>  create mode 100644 drivers/soc/microchip/Makefile=0A=
>  create mode 100644 drivers/soc/microchip/mpfs_sys_controller.c=0A=
> =0A=
> diff --git a/drivers/soc/Kconfig b/drivers/soc/Kconfig=0A=
> index 425ab6f7e375..22cb097bcbdc 100644=0A=
> --- a/drivers/soc/Kconfig=0A=
> +++ b/drivers/soc/Kconfig=0A=
> @@ -9,6 +9,7 @@ source "drivers/soc/bcm/Kconfig"=0A=
>  source "drivers/soc/fsl/Kconfig"=0A=
>  source "drivers/soc/imx/Kconfig"=0A=
>  source "drivers/soc/ixp4xx/Kconfig"=0A=
> +source "drivers/soc/microchip/Kconfig"=0A=
>  source "drivers/soc/mediatek/Kconfig"=0A=
>  source "drivers/soc/qcom/Kconfig"=0A=
>  source "drivers/soc/renesas/Kconfig"=0A=
> diff --git a/drivers/soc/Makefile b/drivers/soc/Makefile=0A=
> index 36452bed86ef..fb084cf2d12e 100644=0A=
> --- a/drivers/soc/Makefile=0A=
> +++ b/drivers/soc/Makefile=0A=
> @@ -14,6 +14,7 @@ obj-$(CONFIG_ARCH_GEMINI)	+=3D gemini/=0A=
>  obj-y				+=3D imx/=0A=
>  obj-$(CONFIG_ARCH_IXP4XX)	+=3D ixp4xx/=0A=
>  obj-$(CONFIG_SOC_XWAY)		+=3D lantiq/=0A=
> +obj-$(CONFIG_SOC_MICROCHIP_POLARFIRE)	+=3D microchip/=0A=
>  obj-y				+=3D mediatek/=0A=
>  obj-y				+=3D amlogic/=0A=
>  obj-y				+=3D qcom/=0A=
> diff --git a/drivers/soc/microchip/Kconfig b/drivers/soc/microchip/Kconfi=
g=0A=
> new file mode 100644=0A=
> index 000000000000..40e5203c8ba0=0A=
> --- /dev/null=0A=
> +++ b/drivers/soc/microchip/Kconfig=0A=
> @@ -0,0 +1,10 @@=0A=
> +config MPFS_SYS_CONTROLLER=0A=
> +	tristate "MPFS_SYS_CONTROLLER"=0A=
> +	depends on MPFS_MBOX=0A=
> +	help=0A=
> +	  This driver adds support for the Polarfire SoC system controller.=0A=
> +=0A=
> +	  To compile this driver as a module, choose M here. the=0A=
> +	  module will be called mpfs_system_controller.=0A=
> +=0A=
> +	  If unsure, say N.=0A=
> diff --git a/drivers/soc/microchip/Makefile b/drivers/soc/microchip/Makef=
ile=0A=
> new file mode 100644=0A=
> index 000000000000..23b1f42a37db=0A=
> --- /dev/null=0A=
> +++ b/drivers/soc/microchip/Makefile=0A=
> @@ -0,0 +1 @@=0A=
> +obj-$(CONFIG_MPFS_SYS_CONTROLLER)	+=3D mpfs_sys_controller.o=0A=
> diff --git a/drivers/soc/microchip/mpfs_sys_controller.c b/drivers/soc/mi=
crochip/mpfs_sys_controller.c=0A=
> new file mode 100644=0A=
> index 000000000000..875a0671e196=0A=
> --- /dev/null=0A=
> +++ b/drivers/soc/microchip/mpfs_sys_controller.c=0A=
> @@ -0,0 +1,135 @@=0A=
> +// SPDX-License-Identifier: GPL-2.0=0A=
> +/*=0A=
> + * Microchip MPFS system controller driver=0A=
> + *=0A=
> + * Copyright (c) 2020 Microchip Corporation. All rights reserved.=0A=
> + *=0A=
> + * Author: Conor Dooley <conor.dooley@microchip.com>=0A=
> + *=0A=
> + */=0A=
> +=0A=
> +#include <linux/slab.h>=0A=
> +#include <linux/module.h>=0A=
> +#include <linux/interrupt.h>=0A=
> +#include <linux/of_platform.h>=0A=
> +#include <linux/mailbox_client.h>=0A=
> +#include <linux/platform_device.h>=0A=
> +#include <soc/microchip/mpfs.h>=0A=
> +=0A=
> +static DEFINE_MUTEX(transaction_lock);=0A=
> +=0A=
> +struct mpfs_sys_controller {=0A=
> +	struct mbox_client client;=0A=
> +	struct mbox_chan *chan;=0A=
> +	struct completion c;=0A=
> +	u32 enabled;=0A=
> +	void *response;=0A=
> +	u16 response_size_bytes;=0A=
> +};=0A=
> +=0A=
> +int mpfs_blocking_transaction(struct mpfs_sys_controller *mpfs_client, v=
oid *msg,=0A=
> +			      void *response, u16 response_size_bytes)=0A=
> +{=0A=
> +	int ret;=0A=
> +=0A=
> +	mpfs_client->response =3D response;=0A=
> +	mpfs_client->response_size_bytes =3D response_size_bytes;=0A=
> +=0A=
> +	mutex_lock_interruptible(&transaction_lock);=0A=
> +=0A=
> +	reinit_completion(&mpfs_client->c);=0A=
> +=0A=
> +	ret =3D mbox_send_message(mpfs_client->chan, msg);=0A=
> +	if (ret >=3D 0) {=0A=
> +		if (wait_for_completion_timeout(&mpfs_client->c, HZ)) {=0A=
> +			ret =3D 0;=0A=
> +		} else {=0A=
> +			ret =3D -ETIMEDOUT;=0A=
> +			dev_warn(mpfs_client->client.dev, "MPFS sys controller transaction ti=
meout");=0A=
> +		}=0A=
> +	} else {=0A=
> +		dev_err(mpfs_client->client.dev,=0A=
> +			"mpfs sys controller transaction returned %d\r\n", ret);=0A=
> +	}=0A=
> +=0A=
> +	mutex_unlock(&transaction_lock);=0A=
> +=0A=
> +	return ret;=0A=
> +}=0A=
> +EXPORT_SYMBOL(mpfs_blocking_transaction);=0A=
> +=0A=
> +static void rx_callback(struct mbox_client *client, void *msg)=0A=
> +{=0A=
> +	struct mpfs_sys_controller *mpfs_client =3D=0A=
> +		container_of(client, struct mpfs_sys_controller, client);=0A=
> +=0A=
> +	memcpy(mpfs_client->response, (u8 *)msg,=0A=
> +	       mpfs_client->response_size_bytes);=0A=
> +=0A=
> +	complete(&mpfs_client->c);=0A=
> +}=0A=
> +=0A=
> +static int mpfs_sys_controller_probe(struct platform_device *pdev)=0A=
> +{=0A=
> +	struct device *dev =3D &pdev->dev;=0A=
> +	struct mpfs_sys_controller *mpfs_client;=0A=
> +=0A=
> +	mpfs_client =3D devm_kzalloc(dev, sizeof(*mpfs_client), GFP_KERNEL);=0A=
> +	if (!mpfs_client)=0A=
> +		return -ENOMEM;=0A=
> +=0A=
> +	mpfs_client->client.dev =3D dev;=0A=
> +	mpfs_client->client.rx_callback =3D rx_callback;=0A=
> +	mpfs_client->client.tx_block =3D 1U;=0A=
> +=0A=
> +	mpfs_client->chan =3D mbox_request_channel_byname(&mpfs_client->client,=
=0A=
> +							"mbox-mpfs");=0A=
> +	if (IS_ERR(mpfs_client->chan)) {=0A=
> +		int ret =3D PTR_ERR(mpfs_client->chan);=0A=
> +=0A=
> +		if (ret !=3D -EPROBE_DEFER)=0A=
> +			dev_err(dev, "Failed to get mbox channel: %d\n", ret);=0A=
> +		return ret;=0A=
=0A=
You can replace all of this with=0A=
=0A=
		return dev_err_probe(dev, PTR_ERR(mpfs_client->chan),=0A=
				     ""Failed to get mbox channel\n");=0A=
=0A=
> +	}=0A=
> +=0A=
> +	init_completion(&mpfs_client->c);=0A=
> +=0A=
> +	platform_set_drvdata(pdev, mpfs_client);=0A=
> +=0A=
> +	dev_info(&pdev->dev, "Registered MPFS system controller driver\n");=0A=
> +=0A=
> +	return 0;=0A=
> +}=0A=
> +=0A=
> +struct mpfs_sys_controller *=0A=
> +mpfs_sys_controller_get(struct device_node *mss_node)=0A=
> +{=0A=
> +	struct platform_device *pdev =3D of_find_device_by_node(mss_node);=0A=
> +=0A=
> +	if (!pdev)=0A=
> +		return NULL;=0A=
> +=0A=
> +	return platform_get_drvdata(pdev);=0A=
> +}=0A=
> +EXPORT_SYMBOL(mpfs_sys_controller_get);=0A=
> +=0A=
> +static const struct of_device_id mpfs_sys_controller_of_match[] =3D {=0A=
> +	{=0A=
> +		.compatible =3D "microchip,polarfire-soc-sys-controller",=0A=
> +	},=0A=
> +	{},=0A=
> +};=0A=
> +MODULE_DEVICE_TABLE(of, mpfs_sys_controller_of_match);=0A=
> +=0A=
> +static struct platform_driver mpfs_sys_controller_driver =3D {=0A=
> +	.driver =3D {=0A=
> +		.name =3D "mpfs-sys-controller",=0A=
> +		.of_match_table =3D mpfs_sys_controller_of_match,=0A=
> +	},=0A=
> +	.probe =3D mpfs_sys_controller_probe,=0A=
> +};=0A=
> +module_platform_driver(mpfs_sys_controller_driver);=0A=
> +=0A=
> +MODULE_LICENSE("GPL v2");=0A=
> +MODULE_AUTHOR("Conor Dooley <conor.dooley@microchip.com>");=0A=
> +MODULE_DESCRIPTION("MPFS system controller driver");=0A=
> =0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=
