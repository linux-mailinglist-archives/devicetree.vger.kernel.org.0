Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7AFF62CA1F2
	for <lists+devicetree@lfdr.de>; Tue,  1 Dec 2020 13:02:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728263AbgLAL4L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Dec 2020 06:56:11 -0500
Received: from esa5.hgst.iphmx.com ([216.71.153.144]:13234 "EHLO
        esa5.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729545AbgLAL4K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Dec 2020 06:56:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1606823769; x=1638359769;
  h=from:to:cc:subject:date:message-id:references:
   content-transfer-encoding:mime-version;
  bh=VBtogH41TvB7RTmd1Bqnli1ysL1Ikp1cICmqAPyvWW0=;
  b=cvseOi/YbgYzysDzMTfU4pus16j84R9H7NWuNeJmu7+kWlmiYUU/uNqh
   ooutEO1Ykt9XfQovx/Vz+XOCGXippNMH1wJ6H9qSGJsUjiKBxtc5zKhXq
   HUERdqk9h0HEbeC9C+4kxI8tJNraejJyM7i3l/EWoKZE1LcMs+mFhZB1H
   ShqPTG02CX99KNYDk/PKaKrRMf1KfzhKeIwarnvu8G9z8xfoUcZE2O33G
   uT15tX1HfHxsSBK4q4NkTkCcHQ5/QZpAqEJGX58QrGMDvftZcGUgpT9EN
   v1QiZZfCT9HVnO4phXxlEC56OdED9wMA4HRxNW9PpN+va3Wyree+xojPU
   A==;
IronPort-SDR: RdK6G7XjY7OqG+c60lhEjMWggJLaQ8uKy3b3iUYomNmqr1952VId8zYXyzLqpZyEDtZRPqf3GX
 RdayJIDdTY0XN7XRJoFTa5gEolQhI9v14aczEGiYZ5VwmoDusEFOh7ibBEfNal03Uv8Ow3bDAy
 NhyLwHyAXRZc2R01zioaczQXDIA+IJWIS++ug65Y34SYFla0No+iFplrAJaIeB4gnM5ELgSWco
 ymAxVIK2WFZvl/Ln8LQCqdK0T9d+ijd49ICFMRtj28zAQDT1zBS+DCX6nOkwjFPfHtF4/C1rSV
 nzI=
X-IronPort-AV: E=Sophos;i="5.78,384,1599494400"; 
   d="scan'208";a="153980063"
Received: from mail-dm6nam12lp2176.outbound.protection.outlook.com (HELO NAM12-DM6-obe.outbound.protection.outlook.com) ([104.47.59.176])
  by ob1.hgst.iphmx.com with ESMTP; 01 Dec 2020 19:55:02 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C78y0HkUWG3NMxT4A1X0hsZBhZTG6K9onJnbWTWVHb0jbmw0md0WN1J3/mEcpGruYSkTk3a+Np3b2LB8WAOtva8Z56ebwZHPMO7oo2VodiDzRqAYq+tVF4AmoQCprrRVQpm0S0TlWuv2neOzhyhZf+Sgjn5l8d8RN3QqDx1bZxjw6wJchzZG4POZonaphzH4Ax5tr7jRswukIsIiwveyARvz9jS0+MduZrtM+Fk37Q9nblxy+ETUI9EMUgZTVSam2A1ql5EBO483Lr2ArOObYvyfp7xQlHWQe83YuerpkR0QUkp4TBIVzuWk23PtJCq3NAyufngqWUd81am3GltsrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gw/wBbOQNd7cSRbm2ndked09D5fT9SmH8GEgtNGFh74=;
 b=jpn5BdE333n0azToePKF/ZZ5rCakUmy7xWbAz75r/mwl+JTAUM97xB8D03vXsy1YjHFPX06pdZmND+17l/n9iazXQZqsS4jiK6ueyu/VjQXVB2kaRgQotVA02RotPl6NnYrPTcmq6Y+ucQEYmAaxnZJRJepCIBg9GpwbtL7kaduq9EuF87z0tHEdMnYOZIoXD4ukadzu62TVT3m4AKs1MP4n9I5nkvIGMvg75sA3qsqCcZ5gF/BVQBqfRFgFj5H5Bo0iGkWLA1mSVzJjT7HqfAX7CJTct80xvbDSYO9MaSycdagPJ00Y/WtSDr5GEm87S0Ay5vo+5h7vUsK+8wzGpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gw/wBbOQNd7cSRbm2ndked09D5fT9SmH8GEgtNGFh74=;
 b=LeaLJKpDWlWHRNNsiSkQI1b0U2TGHnkDNoJ6cDQRM69Cld2CJWUSLMc9NZZdEHWZH5ekO15UsX2zJaCu0X0++dTl24iyS4OH2Gt1yJqZ+EXlgVN442z9q+vEwsoGOR+cuWCmVBq6Fd+JE1fj+8R+6ZesUqFAw6hNRBlez975gq8=
Received: from CH2PR04MB6522.namprd04.prod.outlook.com (2603:10b6:610:34::19)
 by CH2PR04MB6508.namprd04.prod.outlook.com (2603:10b6:610:6a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.23; Tue, 1 Dec
 2020 11:55:01 +0000
Received: from CH2PR04MB6522.namprd04.prod.outlook.com
 ([fe80::897c:a04b:4eb0:640a]) by CH2PR04MB6522.namprd04.prod.outlook.com
 ([fe80::897c:a04b:4eb0:640a%7]) with mapi id 15.20.3589.022; Tue, 1 Dec 2020
 11:55:01 +0000
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
Subject: Re: [PATCH v2 1/5] mbox: add polarfire soc system controller mailbox
Thread-Topic: [PATCH v2 1/5] mbox: add polarfire soc system controller mailbox
Thread-Index: AQHWx9GDLBgLLmQtpk6KysIzPcmCXA==
Date:   Tue, 1 Dec 2020 11:55:01 +0000
Message-ID: <CH2PR04MB6522B0B3F824BFB01EE0C635E7F40@CH2PR04MB6522.namprd04.prod.outlook.com>
References: <20201201110242.28369-1-conor.dooley@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: microchip.com; dkim=none (message not signed)
 header.d=none;microchip.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [129.253.182.59]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c3a7d84f-b2db-4a1d-d8ea-08d895efef36
x-ms-traffictypediagnostic: CH2PR04MB6508:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR04MB650877C91470D788E7E5DA2BE7F40@CH2PR04MB6508.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:439;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FNfX+RCS4aBha4j3qoT0M7TzNAeaxSxQJBp2VR90jRObvEbDNYW1qGfYhqISR6Em8n6l66TOlAnrB8gLwJ6f54NgRcHcFDEq2J8UuqS1zsPYIqpAyT8KMIm3Xq0y0/5d6gXqsBkSTxbMNstJpQZ5mWvbbFiihhxeWaRm3e/OtgJxIa5eMGyZmpinMT2lHYx8slLPYZpiuM9N1v6MC9ZSUXNxLOCWu3Gr8WCTvy/E8TokTVW6lKn7qMq4/6AiBMKEMsG63ZKzRrFCDf0SEYjW38LjUzYho9zowidYipsZw+fNFeM/KSElwZCwN3lM222STgAfOT24lzXOSwmAyZe6Pg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH2PR04MB6522.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(136003)(376002)(366004)(39860400002)(2906002)(52536014)(33656002)(15650500001)(30864003)(26005)(66556008)(186003)(66476007)(316002)(64756008)(66946007)(83380400001)(55016002)(478600001)(91956017)(76116006)(110136005)(54906003)(7416002)(66446008)(53546011)(7696005)(5660300002)(8676002)(71200400001)(4326008)(8936002)(6506007)(9686003)(86362001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?fJaQeSKt7ex6qRpj+teMovkJUNez74z082yIue3Hi6t/F/I/ZIUSr/8sQR9a?=
 =?us-ascii?Q?84g3fCNGrKDrw9HPeC4v/6NFk2POpvkOnHlqausVfTTRaYGQFzZvU4gWXddG?=
 =?us-ascii?Q?qWAEpFWkK4cqe+x8VV0FuxHdQKt3uiyaCGof4XSWsa4Llfd5jjJ9Cs51gAlo?=
 =?us-ascii?Q?/IgtdEeUVkdkVBANxVgR3mZg46IkM6SeloglFqS5kaB27EBWvMx30qSO3TzJ?=
 =?us-ascii?Q?RtjEEnMl/hO6yFXsI7m8jMsdpH0Hjv/PF1rXqvGNCJLt0uaQEyW3H5TNCnvY?=
 =?us-ascii?Q?HuHjW4EurvCq+I09qcIFaQAGI4CMNzvX/OIsN41G2SD4qt1eGvZgYxwPLe3d?=
 =?us-ascii?Q?cBF1pVq8fLqj4LnP23nhDDJZCuQO5QC9U+zWdTrs3xRNcglOFr1je4NpoAye?=
 =?us-ascii?Q?ByTJz3d2kSSEDP8on2Xys4stcimDdAhwddaLyKDdkSn/aLGfLGgvJr+GT32R?=
 =?us-ascii?Q?h7r55toTfyXjMeyh8wyZHJaBklyrJPxFhhV7ro3x63HDvgsrybQQQys5thI5?=
 =?us-ascii?Q?6gnPjAZymK+UQ3otDNWJz8T7fb3+a9W+yPKwsHfx5cF8Wh9f+v9AmRHTz9WM?=
 =?us-ascii?Q?rz/jwPlvUiC9jheA39P7W7ZCFaYz1V3A1K+Xk5dO5YZz3DUpnn8d/lU8pybo?=
 =?us-ascii?Q?36HPBQ/Qz7/W7nGdUhIyQIDF8J3sMtQPo5o5yM1Hr8BlA+zmXgrgQqqaE3VN?=
 =?us-ascii?Q?36fXT90hh4W+L/rewkyeVkRJw/PbI/L/39eKemJGU59HEQ6xTuoyyb9n9FV3?=
 =?us-ascii?Q?KWOWmraHxYFTy3sk78RFYTi2/CaGTkNxTS0e14uaWIl3rQ3fkO5/NE8O0dFj?=
 =?us-ascii?Q?oOI2S6AmrIl5zWmod+U8cW38USPPiLgz8b070c5gCakBzOzo3U0vU88YVWhL?=
 =?us-ascii?Q?nFAGATtT7G9RfYU4ItpnXDF0SrjAfNcegqrNpTIAnU0KWubeEYd+lPE1qHT7?=
 =?us-ascii?Q?ArX5Nt/5zrqGXE/r4EQ0hXth6hZFoL6IlXMt7Zc4WlPRHHEbhuDGJv5Qxhxc?=
 =?us-ascii?Q?WGA9?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH2PR04MB6522.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3a7d84f-b2db-4a1d-d8ea-08d895efef36
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2020 11:55:01.5001
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: espflEnm36mAQqzp7SPXFrc7lkS4tdc28dRUY8vJxaftSimjR8urE+TDZ05LOYQK+YFLgKUJq71GUqZ1YGzzmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR04MB6508
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2020/12/01 20:02, conor.dooley@microchip.com wrote:=0A=
> From: Conor Dooley <conor.dooley@microchip.com>=0A=
> =0A=
> This driver adds support for the single mailbox channel of the MSS=0A=
> system controller on the Microchip PolarFire SoC.=0A=
> =0A=
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>=0A=
> ---=0A=
>  drivers/mailbox/Kconfig        |  12 ++=0A=
>  drivers/mailbox/Makefile       |   2 +=0A=
>  drivers/mailbox/mailbox-mpfs.c | 285 +++++++++++++++++++++++++++++++++=
=0A=
>  include/soc/microchip/mpfs.h   |  51 ++++++=0A=
>  4 files changed, 350 insertions(+)=0A=
>  create mode 100644 drivers/mailbox/mailbox-mpfs.c=0A=
>  create mode 100644 include/soc/microchip/mpfs.h=0A=
> =0A=
> diff --git a/drivers/mailbox/Kconfig b/drivers/mailbox/Kconfig=0A=
> index 05b1009e2820..fbf6902c3541 100644=0A=
> --- a/drivers/mailbox/Kconfig=0A=
> +++ b/drivers/mailbox/Kconfig=0A=
> @@ -153,6 +153,18 @@ config MAILBOX_TEST=0A=
>  	  Test client to help with testing new Controller driver=0A=
>  	  implementations.=0A=
>  =0A=
> +config MPFS_MBOX=0A=
> +	tristate "MPFS Mailbox"=0A=
> +	depends on HAS_IOMEM=0A=
> +	depends on SOC_MICROCHIP_POLARFIRE || COMPILE_TEST=0A=
> +	help=0A=
> +	  This driver adds support for the Polarfire SoC mailbox controller.=0A=
> +=0A=
> +	  To compile this driver as a module, choose M here. the=0A=
> +	  module will be called mailbox-mpfs.=0A=
> +=0A=
> +	  If unsure, say N.=0A=
> +=0A=
>  config QCOM_APCS_IPC=0A=
>  	tristate "Qualcomm APCS IPC driver"=0A=
>  	depends on ARCH_QCOM || COMPILE_TEST=0A=
> diff --git a/drivers/mailbox/Makefile b/drivers/mailbox/Makefile=0A=
> index 2e06e02b2e03..63f49b5bcc43 100644=0A=
> --- a/drivers/mailbox/Makefile=0A=
> +++ b/drivers/mailbox/Makefile=0A=
> @@ -39,6 +39,8 @@ obj-$(CONFIG_BCM_PDC_MBOX)	+=3D bcm-pdc-mailbox.o=0A=
>  =0A=
>  obj-$(CONFIG_BCM_FLEXRM_MBOX)	+=3D bcm-flexrm-mailbox.o=0A=
>  =0A=
> +obj-$(CONFIG_MPFS_MBOX)	+=3D mailbox-mpfs.o=0A=
> +=0A=
>  obj-$(CONFIG_QCOM_APCS_IPC)	+=3D qcom-apcs-ipc-mailbox.o=0A=
>  =0A=
>  obj-$(CONFIG_TEGRA_HSP_MBOX)	+=3D tegra-hsp.o=0A=
> diff --git a/drivers/mailbox/mailbox-mpfs.c b/drivers/mailbox/mailbox-mpf=
s.c=0A=
> new file mode 100644=0A=
> index 000000000000..e1ecf3081312=0A=
> --- /dev/null=0A=
> +++ b/drivers/mailbox/mailbox-mpfs.c=0A=
> @@ -0,0 +1,285 @@=0A=
> +// SPDX-License-Identifier: GPL-2.0=0A=
> +/*=0A=
> + * Microchip MPFS system controller/mailbox controller driver=0A=
> + *=0A=
> + * Copyright (c) 2020 Microchip Corporation. All rights reserved.=0A=
> + *=0A=
> + * Author: Conor Dooley <conor.dooley@microchip.com>=0A=
> + *=0A=
> + */=0A=
> +=0A=
> +#include <linux/io.h>=0A=
> +#include <linux/err.h>=0A=
> +#include <linux/init.h>=0A=
> +#include <linux/module.h>=0A=
> +#include <linux/kernel.h>=0A=
> +#include <linux/interrupt.h>=0A=
> +#include <linux/platform_device.h>=0A=
> +#include <linux/mailbox_controller.h>=0A=
> +#include <soc/microchip/mpfs.h>=0A=
> +=0A=
> +#define SERVICES_CR_OFFSET		0x50u=0A=
> +#define SERVICES_SR_OFFSET		0x54u=0A=
> +#define MAILBOX_REG_OFFSET		0x800u=0A=
> +#define MSS_SYS_BUSY			-EBUSY=0A=
> +#define MSS_SYS_PARAM_ERR		-EINVAL=0A=
> +#define MSS_SYS_MAILBOX_DATA_OFFSET	0u=0A=
> +#define SCB_MASK_WIDTH 			16u=0A=
=0A=
Value identation seems off here. Aligning it would be nice.=0A=
=0A=
> +/* SCBCTRL service control register */=0A=
> +=0A=
> +#define SCB_CTRL_REQ (0u)=0A=
> +#define SCB_CTRL_REQ_MASK BIT(SCB_CTRL_REQ)=0A=
> +=0A=
> +#define SCB_CTRL_BUSY (1u)=0A=
> +#define SCB_CTRL_BUSY_MASK BIT(SCB_CTRL_BUSY)=0A=
> +=0A=
> +#define SCB_CTRL_ABORT (2u)=0A=
> +#define SCB_CTRL_ABORT_MASK BIT(SCB_CTRL_ABORT)=0A=
> +=0A=
> +#define SCB_CTRL_NOTIFY (3u)=0A=
> +#define SCB_CTRL_NOTIFY_MASK BIT(SCB_CTRL_NOTIFY)=0A=
> +=0A=
> +#define SCB_CTRL_POS (16u)=0A=
> +#define SCB_CTRL_MASK GENMASK(SCB_CTRL_POS+SCB_MASK_WIDTH, SCB_CTRL_POS)=
=0A=
=0A=
Please add spaces before and after the "+" operator.=0A=
=0A=
And I am really not a big fan of the (useless in my opinion) "u" for unsign=
ed=0A=
for all of these.=0A=
=0A=
> +=0A=
> +/* SCBCTRL service status registers */=0A=
> +=0A=
> +#define SCB_STATUS_REQ (0u)=0A=
> +#define SCB_STATUS_REQ_MASK BIT(SCB_STATUS_REQ)=0A=
> +=0A=
> +#define SCB_STATUS_BUSY (1u)=0A=
> +#define SCB_STATUS_BUSY_MASK BIT(SCB_STATUS_BUSY)=0A=
> +=0A=
> +#define SCB_STATUS_ABORT (2u)=0A=
> +#define SCB_STATUS_ABORT_MASK BIT(SCB_STATUS_ABORT)=0A=
> +=0A=
> +#define SCB_STATUS_NOTIFY (3u)=0A=
> +#define SCB_STATUS_NOTIFY_MASK BIT(SCB_STATUS_NOTIFY)=0A=
> +=0A=
> +#define SCB_STATUS_POS (16u)=0A=
> +#define SCB_STATUS_MASK GENMASK(SCB_STATUS_POS+SCB_MASK_WIDTH, SCB_STATU=
S_POS)=0A=
=0A=
Spaces around "+".=0A=
=0A=
> +=0A=
> +struct mpfs_mbox {=0A=
> +	struct mbox_controller controller;=0A=
> +	struct device *dev;=0A=
> +	int irq;=0A=
> +	void __iomem *mailbox_base;=0A=
> +	void __iomem *int_reg;=0A=
> +	struct mbox_chan *chan;=0A=
> +	u16 response_size;=0A=
> +	u16 response_offset;=0A=
> +};=0A=
> +=0A=
> +static bool mpfs_mbox_busy(struct mpfs_mbox *mbox)=0A=
> +{=0A=
> +	u32 status;=0A=
> +=0A=
> +	status =3D readl_relaxed(mbox->mailbox_base + SERVICES_SR_OFFSET);=0A=
> +=0A=
> +	return status & SCB_STATUS_BUSY_MASK;=0A=
> +}=0A=
> +=0A=
> +static struct mpfs_mbox *mbox_chan_to_mpfs_mbox(struct mbox_chan *chan)=
=0A=
> +{=0A=
> +	if (!chan || !chan->con_priv)=0A=
> +		return NULL;=0A=
=0A=
You do not need the "|| !chan->con_priv" here. The return below will return=
 NULL.=0A=
=0A=
> +=0A=
> +	return (struct mpfs_mbox *)chan->con_priv;=0A=
> +}=0A=
> +=0A=
> +static int mpfs_mbox_send_data(struct mbox_chan *chan, void *data)=0A=
> +{=0A=
> +	u32 index;=0A=
> +	u32 *word_buf;=0A=
> +	u8 *byte_buf;=0A=
> +	u8 byte_off;=0A=
> +	u8 i;=0A=
> +	u32 mailbox_val =3D 0u;=0A=
> +	u16 mb_offset;=0A=
> +	u16 mbox_options_select;=0A=
> +	u32 mbox_tx_trigger;=0A=
> +	struct mpfs_mss_msg *msg =3D data;=0A=
> +	struct mpfs_mbox *mbox =3D mbox_chan_to_mpfs_mbox(chan);=0A=
> +	mb_offset =3D msg->mailbox_offset;=0A=
> +	mbox->response_size =3D msg->response_size;=0A=
> +	mbox->response_offset =3D msg->response_offset;=0A=
> +=0A=
> +	if (mpfs_mbox_busy(mbox))=0A=
> +		return MSS_SYS_BUSY;=0A=
> +=0A=
> +	mbox_options_select =3D ((mb_offset << 7u) | (msg->cmd_opcode & 0x7fu))=
;=0A=
> +	mbox_tx_trigger =3D (((mbox_options_select << SCB_CTRL_POS) &=0A=
> +		SCB_CTRL_MASK) | SCB_CTRL_REQ_MASK | SCB_STATUS_NOTIFY_MASK);=0A=
> +=0A=
> +	/* Code for MSS_SYS_PARAM_ERR is not implemented with this version of d=
river. */=0A=
> +=0A=
> +	writel_relaxed(0x0u, mbox->int_reg);=0A=
=0A=
0x0u seems like an awfully complicated way of writing 0. Less characters fo=
r the=0A=
brain to decode makes reading easier :)=0A=
=0A=
> +=0A=
> +	if (msg->cmd_data_size) {=0A=
> +		byte_buf =3D (u8 *)(msg->cmd_data);=0A=
> +=0A=
> +		for (index =3D 0; index < (msg->cmd_data_size / 4); index++) {=0A=
> +			writel_relaxed(word_buf[index],=0A=
> +				       mbox->mailbox_base + MAILBOX_REG_OFFSET + index);=0A=
> +		}=0A=
=0A=
You do not need the braces here.=0A=
=0A=
> +=0A=
> +		if ((msg->cmd_data_size % 4) > 0) {=0A=
=0A=
s/% 4/& 3. And you do not need the "> 0".=0A=
=0A=
> +			byte_off =3D (((msg->cmd_data_size / 4) * 4));=0A=
=0A=
Extra outside parenthesis not needed.=0A=
byte_off =3D msg->cmd_data_size & (~3);=0A=
or=0A=
byte_off =3D ALIGN_DOWN(msg->cmd_data_size, 4);=0A=
=0A=
> +			byte_buf =3D (u8 *)(msg->cmd_data + byte_off);=0A=
=0A=
cmd_data is already u8 *, so you do not need the cast.=0A=
=0A=
> +=0A=
> +			mailbox_val =3D readl_relaxed(mbox->mailbox_base +=0A=
> +					    MAILBOX_REG_OFFSET + index);=0A=
> +=0A=
> +			for (i =3D 0u; i < (msg->cmd_data_size % 4u); i++) {=0A=
=0A=
% 4 -> & 3=0A=
And since you already have taht in the if above, why not use a local variab=
le ?=0A=
=0A=
> +				mailbox_val &=3D ~(0xffu << (i * 8u));=0A=
> +				mailbox_val |=3D (byte_buf[i] << (i * 8u));=0A=
> +			}=0A=
> +=0A=
> +			writel_relaxed(mailbox_val, mbox->mailbox_base + MAILBOX_REG_OFFSET +=
 index);=0A=
> +		}=0A=
> +	}=0A=
> +=0A=
> +	writel_relaxed(mbox_tx_trigger, mbox->mailbox_base + SERVICES_CR_OFFSET=
);=0A=
> +=0A=
> +	return 0;=0A=
> +}=0A=
> +=0A=
> +static inline bool mpfs_mbox_pending(struct mpfs_mbox *mbox)=0A=
> +{=0A=
> +	u32 status;=0A=
> +=0A=
> +	status =3D readl_relaxed(mbox->mailbox_base + SERVICES_SR_OFFSET);=0A=
> +=0A=
> +	return !(status & SCB_STATUS_BUSY_MASK);=0A=
> +}=0A=
> +=0A=
> +static void mpfs_mbox_rx_data(struct mbox_chan *chan)=0A=
> +{=0A=
> +	struct mpfs_mbox *mbox =3D mbox_chan_to_mpfs_mbox(chan);=0A=
> +	u32 *data;=0A=
> +	u32 i;=0A=
> +	u32 response_limit;=0A=
> +=0A=
> +	data =3D devm_kzalloc(mbox->dev, sizeof(*data) * mbox->response_size, G=
FP_ATOMIC);=0A=
> +	if (!data)=0A=
> +		dev_err(mbox->dev, "failed to register mailbox interrupt:%d\n", -ENOME=
M);=0A=
> +=0A=
> +	response_limit =3D (mbox->response_size) + (mbox->response_offset);=0A=
> +	if (mpfs_mbox_pending(mbox) && mbox->response_size > 0U) {=0A=
> +		for (i =3D (mbox->response_offset); i < response_limit; i++) {=0A=
=0A=
Parenthesis not needed around (mbox->response_offset).=0A=
=0A=
> +			data[i - (mbox->response_offset)] =3D=0A=
=0A=
Same here.=0A=
=0A=
> +				readl_relaxed(mbox->mailbox_base + MAILBOX_REG_OFFSET + i * 0x4);=0A=
> +		}=0A=
> +	}=0A=
> +=0A=
> +	mbox_chan_received_data(chan, (void *)data);=0A=
> +	devm_kfree(mbox->dev, data);=0A=
> +}=0A=
> +=0A=
> +static irqreturn_t mpfs_mbox_inbox_isr(int irq, void *data)=0A=
> +{=0A=
> +	struct mbox_chan *chan =3D (struct mbox_chan *)data;=0A=
> +	struct mpfs_mbox *mbox =3D mbox_chan_to_mpfs_mbox(chan);=0A=
> +=0A=
> +	writel_relaxed(0x0U, mbox->int_reg);=0A=
=0A=
0x0U =3D=3D 0...=0A=
=0A=
> +=0A=
> +	mpfs_mbox_rx_data(chan);=0A=
> +=0A=
> +	mbox_chan_txdone(chan, 0);=0A=
> +	return IRQ_HANDLED;=0A=
> +}=0A=
> +=0A=
> +static int mpfs_mbox_startup(struct mbox_chan *chan)=0A=
> +{=0A=
> +	struct mpfs_mbox *mbox =3D mbox_chan_to_mpfs_mbox(chan);=0A=
> +	int ret =3D 0;=0A=
> +=0A=
> +	if (!mbox)=0A=
> +		return -EINVAL;=0A=
> +	ret =3D devm_request_irq(mbox->dev, mbox->irq, mpfs_mbox_inbox_isr, 0, =
"mpfs-mailbox", chan);=0A=
> +	if (ret) {=0A=
> +		dev_err(mbox->dev, "failed to register mailbox interrupt:%d\n", ret);=
=0A=
> +	}=0A=
=0A=
No need for the curly braces.=0A=
=0A=
> +=0A=
> +	return ret;=0A=
> +}=0A=
> +=0A=
> +static void mpfs_mbox_shutdown(struct mbox_chan *chan)=0A=
> +{=0A=
> +	struct mpfs_mbox *mbox =3D mbox_chan_to_mpfs_mbox(chan);=0A=
> +=0A=
> +	devm_free_irq(mbox->dev, mbox->irq, chan);=0A=
> +}=0A=
> +=0A=
> +static const struct mbox_chan_ops mpfs_mbox_ops =3D {=0A=
> +	.send_data =3D mpfs_mbox_send_data,=0A=
> +	.startup =3D mpfs_mbox_startup,=0A=
> +	.shutdown =3D mpfs_mbox_shutdown,=0A=
> +};=0A=
> +=0A=
> +static int mpfs_mbox_probe(struct platform_device *pdev)=0A=
> +{=0A=
> +	struct mpfs_mbox *mbox;=0A=
> +	struct resource *regs;=0A=
> +	struct mbox_chan *chans;=0A=
> +	int ret;=0A=
> +=0A=
> +	mbox =3D devm_kzalloc(&pdev->dev, sizeof(*mbox), GFP_KERNEL);=0A=
> +	if (!mbox)=0A=
> +		return -ENOMEM;=0A=
> +=0A=
> +	chans =3D devm_kzalloc(&pdev->dev, sizeof(*chans), GFP_KERNEL);=0A=
> +	if (!chans)=0A=
> +		return -ENOMEM;=0A=
> +=0A=
> +	mbox->mailbox_base =3D devm_platform_get_and_ioremap_resource(pdev, 0, =
&regs);=0A=
> +	if (IS_ERR(mbox->mailbox_base))=0A=
> +		return PTR_ERR(mbox->mailbox_base);=0A=
> +=0A=
> +	mbox->int_reg =3D devm_platform_get_and_ioremap_resource(pdev, 1, &regs=
);=0A=
> +	if (IS_ERR(mbox->int_reg))=0A=
> +		return PTR_ERR(mbox->int_reg);=0A=
> +=0A=
> +	mbox->irq =3D platform_get_irq(pdev, 0);=0A=
> +	if (mbox->irq < 0)=0A=
> +		return mbox->irq;=0A=
> +=0A=
> +	mbox->dev =3D &pdev->dev;=0A=
> +=0A=
> +	chans[0].con_priv =3D mbox;=0A=
> +	mbox->controller.dev =3D mbox->dev;=0A=
> +	mbox->controller.num_chans =3D 1;=0A=
> +	mbox->controller.chans =3D chans;=0A=
> +	mbox->controller.ops =3D &mpfs_mbox_ops;=0A=
> +	mbox->controller.txdone_irq =3D true;=0A=
> +=0A=
> +	ret =3D devm_mbox_controller_register(&pdev->dev, &mbox->controller);=
=0A=
> +	if (ret) {=0A=
> +		dev_err(&pdev->dev, "Registering MPFS mailbox controller failed\n");=
=0A=
> +		return ret;=0A=
> +	}=0A=
> +	dev_info(&pdev->dev, "Registered MPFS mailbox controller driver\n");=0A=
> +=0A=
> +	return 0;=0A=
> +}=0A=
> +=0A=
> +static const struct of_device_id mpfs_mbox_of_match[] =3D {=0A=
> +	{=0A=
> +		.compatible =3D "microchip,polarfire-soc-mailbox",=0A=
> +	},=0A=
> +	{},=0A=
> +};=0A=
=0A=
The typical way of writing this is:=0A=
=0A=
static const struct of_device_id mpfs_mbox_of_match[] =3D {=0A=
	{ .compatible =3D "microchip,polarfire-soc-mailbox", },=0A=
	{}=0A=
};=0A=
=0A=
=0A=
> +MODULE_DEVICE_TABLE(of, mpfs_mbox_of_match);=0A=
> +=0A=
> +static struct platform_driver mpfs_mbox_driver =3D {=0A=
> +	.driver =3D {=0A=
> +		.name =3D "mpfs-mailbox",=0A=
> +		.of_match_table =3D mpfs_mbox_of_match,=0A=
> +	},=0A=
> +	.probe =3D mpfs_mbox_probe,=0A=
> +};=0A=
> +module_platform_driver(mpfs_mbox_driver);=0A=
> +=0A=
> +MODULE_LICENSE("GPL v2");=0A=
> +MODULE_AUTHOR("Conor Dooley <conor.dooley@microchip.com>");=0A=
> +MODULE_DESCRIPTION("MPFS mailbox controller driver");=0A=
> diff --git a/include/soc/microchip/mpfs.h b/include/soc/microchip/mpfs.h=
=0A=
> new file mode 100644=0A=
> index 000000000000..b231f39f32eb=0A=
> --- /dev/null=0A=
> +++ b/include/soc/microchip/mpfs.h=0A=
> @@ -0,0 +1,51 @@=0A=
> +/* SPDX-License-Identifier: GPL-2.0 */=0A=
> +/*=0A=
> + *=0A=
> + * Microchip MPFS mailbox=0A=
> + *=0A=
> + * Copyright (c) 2020 Microchip Corporation. All rights reserved.=0A=
> + *=0A=
> + * Author: Conor Dooley <conor.dooley@microchip.com>=0A=
> + *=0A=
> + */=0A=
> +=0A=
> +#ifndef __SOC_MPFS_H__=0A=
> +#define __SOC_MPFS_H__=0A=
> +=0A=
> +#include <linux/types.h>=0A=
> +#include <linux/of_device.h>=0A=
> +=0A=
> +struct mpfs_sys_controller;=0A=
> +=0A=
> +struct mpfs_mss_msg {=0A=
> +	u8 cmd_opcode;=0A=
> +	u16 cmd_data_size;=0A=
> +	u16 response_size;=0A=
> +	u8 *cmd_data;=0A=
> +	u16 mailbox_offset;=0A=
> +	u16 response_offset;=0A=
> +};=0A=
> +=0A=
> +#if IS_ENABLED(CONFIG_MPFS_SYS_CONTROLLER)=0A=
=0A=
A simple #ifdef would do.=0A=
=0A=
> +=0A=
> +int mpfs_blocking_transaction(struct mpfs_sys_controller *mpfs_client, v=
oid *msg,=0A=
> +			      void *response, u16 response_size_bytes);=0A=
> +=0A=
> +struct mpfs_sys_controller *mpfs_sys_controller_get(struct device_node *=
mailbox_node);=0A=
> +=0A=
> +#else=0A=
> +=0A=
> +static int mpfs_blocking_transaction(struct mpfs_sys_controller *mpfs_cl=
ient, void *msg,=0A=
> +				     void *response, u16 response_size_bytes)=0A=
> +{=0A=
> +	return -ENOSYS;=0A=
> +};=0A=
> +=0A=
> +struct mpfs_sys_controller *mpfs_sys_controller_get(struct device_node *=
mailbox_node)=0A=
> +{=0A=
> +	return NULL;=0A=
> +}=0A=
> +=0A=
> +#endif /* IS_ENABLED(CONFIG_MPFS_SYS_CONTROLLER) */=0A=
> +=0A=
> +#endif /* __SOC_MPFS_H__ */=0A=
> =0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=
