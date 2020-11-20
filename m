Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 836082B9EFA
	for <lists+devicetree@lfdr.de>; Fri, 20 Nov 2020 01:07:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725907AbgKTAGD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 19:06:03 -0500
Received: from esa2.hgst.iphmx.com ([68.232.143.124]:12820 "EHLO
        esa2.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726117AbgKTAGD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Nov 2020 19:06:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1605831706; x=1637367706;
  h=from:to:cc:subject:date:message-id:references:
   content-transfer-encoding:mime-version;
  bh=Wwra0rOOeH6QWlFIIw81YBv1RBiMLNwe8SNUxew4OkM=;
  b=QP9dMUIK+1tKWXoymFfCQdJFeoRxJpryveACL2qTx6EADxJ0GxIMZLeN
   MfpdH5nKweH9zCB0vkLEWQ5Da0tJ9pgTbpsPAO+I7I8A9sgV+aB9rZk68
   /XwO3bx2yY9bEFiRODYYPbEymGkbSxDDLDQCAZcZhfAGXWdZxjM1cmfOi
   LomC0g+1P5voqI/eoHAgS4IiNWm+A10bsNr7ExskNkq3sND12BbN+LmWi
   2lRcgdz8Ahm/KLoJeDEfzIEEdes6mKgqoiZGA/U/Ds/oXWiVckG6COP8Z
   ixQjdQHmGayjAkH+/iDTOuZPlHBfHPLJLdDP+qYVuqBGOKyG59TZH2d5R
   g==;
IronPort-SDR: hrddj+5SWf2Jq7dgbUv3iOxqhR1fYttYye02sk2WcP97HXBi8qVJM0tsR1mk68bNeKzSRH4CEm
 mITnz1g0ScBCPD7D0MKjxn23EbaB73oPD7tf07h0fq5Mf0q7MqE9Ij8BoK90qelqhK5W7ygPeP
 0ylN1FgRa02RDint4F5qNObpVahh10wsurK9aRe2dpJ71kwRnScLpBcRxF5Us1Zl0DTE6TOGQ+
 HKEyMlqW3xP323F1oZBsyeBU0J6L6SWDSlGy5lfp/GrWU1d8rqTMWnYm9G9XUpr67jKcXghZZi
 mfg=
X-IronPort-AV: E=Sophos;i="5.78,354,1599494400"; 
   d="scan'208";a="256630278"
Received: from mail-mw2nam12lp2043.outbound.protection.outlook.com (HELO NAM12-MW2-obe.outbound.protection.outlook.com) ([104.47.66.43])
  by ob1.hgst.iphmx.com with ESMTP; 20 Nov 2020 08:21:43 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IElYOiSIcYv1wQu++huEAEgFxFRZEZLBVu8ClchtHuIc4E6zpShoEif5/x+1riGBoV8AMU5m/cV3CgXRrFo7Vg8goJ0eVLgIhti3CYAyCo3QULspyWjgIZoH1knjWHgdW6kPzKRrOb2ipV42itll9kDpSGJY+PWIRpTymvMIGkJnggpJkH4cqrnWtxsCVGftRQlgJV6vkGKZKnF2bLQpvn/hXgzsnmxnRvmJzFdWg/cKrxJi27aaEjnLwOt4/SuagsAoipYc0aLnx0ipWuTpBnhIeF9a9G0Li/vWMWQWBUdlPa7t7Zn4tf/521FYCrBHzLOfCxRLajUOytmBtjfV9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1f8wQKYGhxLxt0YSvYrWm9VcQNn/50PkViD7DjmI0Bw=;
 b=FDsr3x3nAjETX7xqWN6/AgIJqDOcEf3JcBuy8wL68xE7OEoWLcpfDcEui3OGz3ONzXRU9cLVeH6vuTvxLwVlOWCQBOlOPrpY+fv/T4nwLf+o4kvo2maX/yO9/K/S2mmpx2codEKxfQe0AL2Z3IcGhMRDKypwZeCax79E5MEL3oQNymGs6OO8sbNRswnv/44gQMakA+TcP5J+qYk5/1v8xZRgVnXCoaHyM9jNH+N9qrmy/gHnuwEPkRoFVsGjMaJL5dgByeomqBojF+/YCekktFEm9RIa3gGNrCD8B/oRYIY4FX8p5gjungm9W87yq3Q/LFxfo4Sag51ZCNBSCMqG2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1f8wQKYGhxLxt0YSvYrWm9VcQNn/50PkViD7DjmI0Bw=;
 b=PC4IWg4yyso7Mpvxr06fT3uY67DObaaI38N3ZGK7YgzCtMU9QOf6cYiBM+6ReeVGMTZtUJHWa5SWtqefkpGM4uxN/PYD55BOZZxL7Cnu2kaS8okDDJT6rx+fsGL+FnmuMgWLEceX9/eikC3OusS9+XqlQspu6vYHa+v0euT4lPg=
Received: from BL0PR04MB6514.namprd04.prod.outlook.com (2603:10b6:208:1ca::23)
 by BL0PR04MB6531.namprd04.prod.outlook.com (2603:10b6:208:1c5::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.18; Fri, 20 Nov
 2020 00:05:59 +0000
Received: from BL0PR04MB6514.namprd04.prod.outlook.com
 ([fe80::4c3e:2b29:1dc5:1a85]) by BL0PR04MB6514.namprd04.prod.outlook.com
 ([fe80::4c3e:2b29:1dc5:1a85%7]) with mapi id 15.20.3499.034; Fri, 20 Nov 2020
 00:05:59 +0000
From:   Damien Le Moal <Damien.LeMoal@wdc.com>
To:     "conor.dooley@microchip.com" <conor.dooley@microchip.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
        "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
        "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
        "palmer@dabbelt.com" <palmer@dabbelt.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
CC:     "cyril.jean@microchip.com" <cyril.jean@microchip.com>,
        "david.abdurachmanov@gmail.com" <david.abdurachmanov@gmail.com>,
        "daire.mcnamara@microchip.com" <daire.mcnamara@microchip.com>,
        Anup Patel <Anup.Patel@wdc.com>,
        Atish Patra <Atish.Patra@wdc.com>,
        "lewis.hanly@microchip.com" <lewis.hanly@microchip.com>
Subject: Re: [PATCH 1/6] mbox: add polarfire soc system controller mailbox
Thread-Topic: [PATCH 1/6] mbox: add polarfire soc system controller mailbox
Thread-Index: AQHWvpYfVU6mtg0xhkO8MWTEOL0QWg==
Date:   Fri, 20 Nov 2020 00:05:59 +0000
Message-ID: <BL0PR04MB6514AA9B313828842F7EF0D8E7FF0@BL0PR04MB6514.namprd04.prod.outlook.com>
References: <20201119170419.18272-1-conor.dooley@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: microchip.com; dkim=none (message not signed)
 header.d=none;microchip.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [2400:2411:43c0:6000:752d:4d55:43bb:285f]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 2d8f19f3-d434-4fbf-e88f-08d88ce80f6a
x-ms-traffictypediagnostic: BL0PR04MB6531:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BL0PR04MB653170D6AEE878AE4B4EAFC8E7FF0@BL0PR04MB6531.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:935;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7VKYcd840xI2XP3K4vPDgTSMIVBbuf4Uhh78dBUzeTmtkKydOOc+AG78CnyRXtQw6ZnzPNgVrUWpokSRVkNB6XzlMmNRBgk2sz0VOqbCG2Jf18Hs9zXatNrNR+q8l7/FThOJnQdbMff5q0afDJSQ3QwoCRCapmVLPbjyDX0X7OaRKyvVUuezzDKIAWr1Od7GHVDIqur5CIiS/zRc/XI8K1KcpYGXkxG2UJRECAIVvAbEz/ra7jqwIJ/riaCqPQfBHP1KEAt+SJvUAi3peQnNg0D4aFj/SNUMPQN4+Q9Vc9axRWBLCzmX0geUXG6ZaCYErlzQyXyzzevwDuiXQjefCw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR04MB6514.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(136003)(346002)(376002)(396003)(366004)(83380400001)(6506007)(5660300002)(33656002)(9686003)(53546011)(8676002)(110136005)(15650500001)(54906003)(71200400001)(52536014)(91956017)(2906002)(316002)(478600001)(86362001)(76116006)(66556008)(64756008)(186003)(66446008)(8936002)(7416002)(30864003)(66476007)(4326008)(7696005)(55016002)(66946007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: /3tvznOZb+nSNqk7lPcDj5R/M3l9fJJ9Wy3z29GYWbjz2Py+sRUYKy2aOAk4a1yALNN8rSq2rt2Qk0xfsHrNTGb+bMXjyzPdV0blHv37/Q/jqJelrwea+7SrJWA6d6Tk2w5xYKitpLIeJSJD7qZ3yMZ4hvF9JS8APwDukbVfmsDQ3OWGmzjxohqH1eUCeZ8s9XcI5BU6noGyLw5etruqDLWGUnGI+kx9YsXvZQyIYRXfGsCIXSKkjc/4e2tQ4SWUmCqn7IbYH8dhs63gZbI2fZ2K+MfL8DK5nOmbc0X1KpwbjzTSAMm8VHuC6BkBQlJXkEJx3xYe03zXFmTx6Oj1JGHfRcLEna58SUaFLJF/saWo+4XUN2I46cr4uoFiQF42zoHKN3k7MtvQRKJ1mUB5nu1dPqbhT1/JDeZmeitClHCALsuLwLxO8FlJuRR+U7vldbHRhn3vog+K7p33p2rB4YIRvJLG4HwbmrtYhpGhH//NkQFrrT2+1p1XAXiQIJxK6+U7fROtURCXbuvRDYzNciwLfTgxvyzQ7YiNo+/z1dhiAX+N10pNKlYw0Cv+NOGvkGcLHLURmJnjFtHvQrPDghqmm27rRkhcJGO+ZAY6502wLen6kT32qiZWStoDbhe+VyPjSKI9pgMNHQt2MYLZS6ZzoadcgvtSP/tpZ+7vQRKidnfGRRDpZJk2gkHyexNqBdOJoxEHnYIJ80PEfGA5Ug==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR04MB6514.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d8f19f3-d434-4fbf-e88f-08d88ce80f6a
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2020 00:05:59.0616
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0CTubeCfse9NmaUlNMfDp4BgK0XsGcc0BQ6Yt2pPMIHJp4xkiUyyV0gwL0monF+p2Ws5V1ejTnFyVFr5CpYBIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR04MB6531
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2020/11/20 2:05, conor.dooley@microchip.com wrote:=0A=
> From: Conor Dooley <conor.dooley@microchip.com>=0A=
> =0A=
> This driver adds support for the single mailbox channel of the MSS=0A=
> system controller on the Microchip PolarFire SoC. =0A=
> =0A=
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>=0A=
> ---=0A=
>  drivers/mailbox/Kconfig        |  12 ++=0A=
>  drivers/mailbox/Makefile       |   2 +=0A=
>  drivers/mailbox/mailbox-mpfs.c | 296 +++++++++++++++++++++++++++++++++=
=0A=
>  3 files changed, 310 insertions(+)=0A=
>  create mode 100644 drivers/mailbox/mailbox-mpfs.c=0A=
> =0A=
> diff --git a/drivers/mailbox/Kconfig b/drivers/mailbox/Kconfig=0A=
> index 05b1009e2820..4881a519683a 100644=0A=
> --- a/drivers/mailbox/Kconfig=0A=
> +++ b/drivers/mailbox/Kconfig=0A=
> @@ -153,6 +153,18 @@ config MAILBOX_TEST=0A=
>  	  Test client to help with testing new Controller driver=0A=
>  	  implementations.=0A=
>  =0A=
> +config MPFS_MBOX=0A=
> +	tristate "MPFS Mailbox"=0A=
> +	depends on HAS_IOMEM=0A=
=0A=
Shouldn't this dependency be on SOC_MICROCHIP_POLARFIRE ?=0A=
=0A=
> +	depends on SOC_MICROCHIP_POLARFIRE=0A=
> +	help=0A=
> +	  This driver adds support for the Polarfire SoC mailbox controller.=0A=
> +=0A=
> +	  To compile this driver as a module, choose M here. the=0A=
> +	  module will be called mailbox-mpfs.=0A=
> +=0A=
> +	  If unsure, say Y.=0A=
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
> index 000000000000..686ccd3317f9=0A=
> --- /dev/null=0A=
> +++ b/drivers/mailbox/mailbox-mpfs.c=0A=
> @@ -0,0 +1,296 @@=0A=
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
> +#define SERVICES_CR_OFFSET			0x50u=0A=
> +#define SERVICES_SR_OFFSET			0x54u=0A=
> +#define MAILBOX_REG_OFFSET			0x800u=0A=
> +#define MSS_SYS_SUCCESS				0u=0A=
=0A=
Is this really necessary ?=0A=
=0A=
> +#define MSS_SYS_BUSY				0xefu=0A=
> +#define MSS_SYS_PARAM_ERR			0xffu=0A=
=0A=
-EBUSY ? -EINVAL ?=0A=
=0A=
> +#define MSS_SYS_MAILBOX_DATA_OFFSET 0u=0A=
> +=0A=
> +/***************SCBCTRL  SERVICES_CR register*************************/=
=0A=
=0A=
I personally prefer more sober comments :)=0A=
May be drop the "*********************" ?=0A=
=0A=
> +=0A=
> +#define SCBCTRL_SERVICESCR_REQ (0u)=0A=
> +#define SCBCTRL_SERVICESCR_REQ_MASK BIT(SCBCTRL_SERVICESCR_REQ)=0A=
> +=0A=
> +#define SCBCTRL_SERVICESCR_BUSY (1u)=0A=
> +#define SCBCTRL_SERVICESCR_BUSY_MASK BIT(SCBCTRL_SERVICESCR_BUSY)=0A=
> +=0A=
> +#define SCBCTRL_SERVICESCR_ABORT (2u)=0A=
> +#define SCBCTRL_SERVICESCR_ABORT_MASK BIT(SCBCTRL_SERVICESCR_ABORT)=0A=
> +=0A=
> +#define SCBCTRL_SERVICESCR_NOTIFY (3u)=0A=
> +#define SCBCTRL_SERVICESCR_NOTIFY_MASK BIT(SCBCTRL_SERVICESCR_NOTIFY)=0A=
> +=0A=
> +#define SCBCTRL_SERVICESCR_COMMAND (16u)=0A=
> +#define SCBCTRL_SERVICESCR_COMMAND_MASK (0xffffu << SCBCTRL_SERVICESCR_C=
OMMAND)=0A=
=0A=
If you use BIT(), then it would be better to use GENMASK() here.=0A=
=0A=
> +=0A=
> +/***************SCBCTRL  SERVICES_SR registers*************************/=
=0A=
> +=0A=
> +#define SCBCTRL_SERVICESSR_REQ (0u)=0A=
> +#define SCBCTRL_SERVICESSR_REQ_MASK BIT(SCBCTRL_SERVICESSR_REQ)=0A=
> +=0A=
> +#define SCBCTRL_SERVICESSR_BUSY (1u)=0A=
> +#define SCBCTRL_SERVICESSR_BUSY_MASK BIT(SCBCTRL_SERVICESSR_BUSY)=0A=
> +=0A=
> +#define SCBCTRL_SERVICESSR_ABORT (2u)=0A=
> +#define SCBCTRL_SERVICESSR_ABORT_MASK BIT(SCBCTRL_SERVICESSR_ABORT)=0A=
> +=0A=
> +#define SCBCTRL_SERVICESSR_NOTIFY (3u)=0A=
> +#define SCBCTRL_SERVICESSR_NOTIFY_MASK BIT(SCBCTRL_SERVICESSR_NOTIFY)=0A=
> +=0A=
> +#define SCBCTRL_SERVICESSR_STATUS (16u)=0A=
> +#define SCBCTRL_SERVICESSR_STATUS_MASK (0xffffu << SCBCTRL_SERVICESSR_ST=
ATUS)=0A=
=0A=
GENMASK().=0A=
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
> +static int mpfs_mbox_busy(struct mpfs_mbox *mbox)=0A=
=0A=
Return bool ?=0A=
=0A=
> +{=0A=
> +	u32 status;=0A=
> +=0A=
> +	status =3D readl_relaxed(mbox->mailbox_base + SERVICES_SR_OFFSET);=0A=
> +=0A=
> +	return status & SCBCTRL_SERVICESSR_BUSY_MASK;=0A=
> +}=0A=
> +=0A=
> +static struct mpfs_mbox *mbox_chan_to_mpfs_mbox(struct mbox_chan *chan)=
=0A=
> +{=0A=
> +	if (!chan || !chan->con_priv)=0A=
> +		return NULL;=0A=
=0A=
Is this ever called with chan =3D=3D NULL ?=0A=
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
> +	u8 byte_index;=0A=
> +	u32 mailbox_val =3D 0u;=0A=
> +	u16 mb_offset;=0A=
> +	u16 mbox_options_select;=0A=
> +	u32 mbox_tx_trigger;=0A=
> +=0A=
> +	struct mpfs_mss_msg *msg =3D data;=0A=
> +=0A=
> +	struct mpfs_mbox *mbox =3D mbox_chan_to_mpfs_mbox(chan);=0A=
=0A=
Please remove the empty lines before the declarations.=0A=
=0A=
> +=0A=
> +	mb_offset =3D msg->mailbox_offset;=0A=
> +	mbox->response_size =3D msg->response_size;=0A=
> +	mbox->response_offset =3D msg->response_offset;=0A=
> +=0A=
> +	mbox_options_select =3D ((mb_offset << 7u) | (msg->cmd_opcode & 0x7fu))=
;=0A=
> +	mbox_tx_trigger =3D (((mbox_options_select << SCBCTRL_SERVICESCR_COMMAN=
D) &=0A=
> +		SCBCTRL_SERVICESCR_COMMAND_MASK) |=0A=
> +		SCBCTRL_SERVICESCR_REQ_MASK | SCBCTRL_SERVICESSR_NOTIFY_MASK);=0A=
> +=0A=
> +	if (mpfs_mbox_busy(mbox))=0A=
> +		return MSS_SYS_BUSY;=0A=
=0A=
You can probably move this before the previous hunk, no ? If you are going =
to do=0A=
nothing, then let's detect it earlier.=0A=
=0A=
> +=0A=
> +	/* Code for MSS_SYS_PARAM_ERR is not implemented with this version of d=
river. */=0A=
> +=0A=
> +	writel_relaxed(0x0U, mbox->int_reg);=0A=
> +=0A=
> +	if (msg->cmd_data_size > 0u) {=0A=
=0A=
0u ? Seriously ?=0A=
=0A=
> +		byte_buf =3D (u8 *)(msg->cmd_data);=0A=
> +=0A=
> +		for (index =3D 0u; index < (msg->cmd_data_size / 4u); index++) {=0A=
> +			writel_relaxed(word_buf[index],=0A=
> +				       mbox->mailbox_base + MAILBOX_REG_OFFSET + index);=0A=
> +		}=0A=
> +=0A=
> +		if ((msg->cmd_data_size % 4u) > 0u) {=0A=
> +			byte_off =3D (((msg->cmd_data_size / 4u) * 4u));=0A=
=0A=
There are in my opinion far too many "u"s... Many of them are not necessary=
 and=0A=
just make the code harder to read.=0A=
=0A=
> +			byte_buf =3D (u8 *)(msg->cmd_data + byte_off);=0A=
> +=0A=
> +			mailbox_val =3D readl_relaxed(mbox->mailbox_base +=0A=
> +					    MAILBOX_REG_OFFSET + index);=0A=
> +=0A=
> +			for (byte_index =3D 0u;=0A=
> +			     byte_index < (msg->cmd_data_size % 4u);=0A=
> +			     byte_index++) {=0A=
=0A=
s/byte_index/i and your line would become shorter and easier to read.=0A=
=0A=
> +				mailbox_val &=3D ~(0xffu << (byte_index * 8u));=0A=
> +				mailbox_val |=3D (byte_buf[byte_index]=0A=
> +						<< (byte_index * 8u));=0A=
> +			}=0A=
> +=0A=
> +			writel_relaxed(mailbox_val,=0A=
> +				       mbox->mailbox_base + MAILBOX_REG_OFFSET + index);=0A=
> +		}=0A=
> +	}=0A=
> +=0A=
> +	writel_relaxed(mbox_tx_trigger, mbox->mailbox_base + SERVICES_CR_OFFSET=
);=0A=
> +=0A=
> +	return MSS_SYS_SUCCESS;=0A=
> +}=0A=
> +=0A=
> +static inline int mpfs_mbox_pending(struct mpfs_mbox *mbox)=0A=
=0A=
return bool ?=0A=
=0A=
> +{=0A=
> +	u32 status;=0A=
> +=0A=
> +	status =3D readl_relaxed(mbox->mailbox_base + SERVICES_SR_OFFSET);=0A=
> +=0A=
> +	return !(status & SCBCTRL_SERVICESSR_BUSY_MASK);=0A=
> +}=0A=
> +=0A=
> +static void mpfs_mbox_rx_data(struct mbox_chan *chan)=0A=
> +{=0A=
> +	struct mpfs_mbox *mbox =3D mbox_chan_to_mpfs_mbox(chan);=0A=
> +	u32 *data;=0A=
> +	u32 index;=0A=
> +	u32 response_limit;=0A=
> +=0A=
> +	data =3D devm_kzalloc(mbox->dev, sizeof(*data) * mbox->response_size,=
=0A=
> +			    GFP_ATOMIC);=0A=
=0A=
check the result please. What if that fails ? That is a GFP_ATOMIC. It can =
fail...=0A=
=0A=
> +=0A=
> +	response_limit =3D (mbox->response_size) + (mbox->response_offset);=0A=
> +	if (mpfs_mbox_pending(mbox) && mbox->response_size > 0U) {=0A=
> +		for (index =3D (mbox->response_offset); index < response_limit;=0A=
> +		     index++) {=0A=
=0A=
s/index/i=0A=
=0A=
> +			data[index - (mbox->response_offset)] =3D=0A=
> +				readl_relaxed(mbox->mailbox_base + MAILBOX_REG_OFFSET +=0A=
> +				      index * 0x4);=0A=
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
> +	ret =3D devm_request_irq(mbox->dev, mbox->irq, mpfs_mbox_inbox_isr, 0,=
=0A=
> +			       "mpfs-mailbox", chan);=0A=
> +	if (unlikely(ret)) {=0A=
=0A=
I do not think the unlikely is needed here. This is not hot-path.=0A=
=0A=
> +		dev_err(mbox->dev, "failed to register mailbox interrupt:%d\n",=0A=
> +			ret);=0A=
> +		return ret;=0A=
=0A=
you do not need this return. Or at least change the next return to 0.=0A=
=0A=
> +	}=0A=
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
=0A=
No error check ? Or did you mean to use platform_get_irq_optional() ?=0A=
=0A=
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
> +		return -1;=0A=
=0A=
return ret;=0A=
=0A=
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
> =0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=
