Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5FDA92B9F2F
	for <lists+devicetree@lfdr.de>; Fri, 20 Nov 2020 01:23:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726249AbgKTAUt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 19:20:49 -0500
Received: from esa2.hgst.iphmx.com ([68.232.143.124]:14158 "EHLO
        esa2.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726118AbgKTAUs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Nov 2020 19:20:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1605831826; x=1637367826;
  h=from:to:cc:subject:date:message-id:references:
   content-transfer-encoding:mime-version;
  bh=bwxkwyXmLSHg9P0W5TO9tlqlXW073nFGE0bpPETD8Fk=;
  b=HRXN0aQqmxGaNIhOliEPux/JSVBvdQDHCCTXmla7KVgS0wscfwJsJLMl
   RmJl3dzQfcsMW+SPA4b+EeciV+tRZwVn20uAR9C7lma5+TFPjd/ZlvbDV
   G4KH3n7UzMpmdVlctQjciZGdgJqetPDCCo/SpOTMx20HntzgQWdIEearQ
   pyJ9PqnJ0bnBegvAXl4qS8H0K+OFSUArMtnCtnSLbjtkS+VENQu/+ViUR
   DkHhYUOC7pVWdUHNHVoYG5+VCYx9J1DechSm+yTB0p3DUsiXDBqNImkyb
   Z1Vm1wKbSN68dSPxWEy+52SmWLNb6ZB8iCU0v6+ERIs9/2kFHzoJm4vty
   g==;
IronPort-SDR: 4La6vlLM8hpxBSkOT4jUXktbvQ5M+uUTA++97cnWc4SF3oOVPXUS/U5LC/ailO0k5JLHhx7E3g
 oOow6UyWZMUORltK6EQ2u7s/3tlq3mNisaWSRPklC7oeNMt0e/8W3aYCqbI/sWQ6z8u1YzI/FH
 CaUFoyzBJWBGiQYb/L6kK9KlPQ+0LMbbkg7E8/TsWCByJvWXMLJbJpEsyPeiELgc8bN7UvHmfi
 59i63fz8BVmv1Hj9uxfbxbWd//zW+6dOYadRxwqlIX0XbqVl4qorlR8N0rQqAbiWIoueWBN8UE
 zRg=
X-IronPort-AV: E=Sophos;i="5.78,354,1599494400"; 
   d="scan'208";a="256631481"
Received: from mail-bn8nam08lp2042.outbound.protection.outlook.com (HELO NAM04-BN8-obe.outbound.protection.outlook.com) ([104.47.74.42])
  by ob1.hgst.iphmx.com with ESMTP; 20 Nov 2020 08:23:43 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jI3ER1QzVOfGk+xTRMKUaRMfyHsCwmjrh9J5w2X0je9XOKMPpMq9+5ntizHR/yZ9VAwObDoYfcV78xA/ZupDfhqIvdz+I3mqTUVFj8jfgYiiFsbSvbHCKXIVh2pW+XGYqVECHucTrI4jdT5Oy0c4A4x+C3oVyq1PLVR+IKSlBaIyKM4LKlVYBE4BDkfD2Tvb7xkauMSn2rD0yh19TJc+egqI6kH68HvntUnM0SdBBhetQTvZ7Fz06Mh9eKBKAfny/eBJStuHyX/1/tDzXN+6+z4vshvsmv+PAA36qSc11UGiqXRGXHCxM36VGM2K0nrljM9ugdqyDT4Y4wAkQPvwBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EqMkfA2rapcuM1s5pKVgiY7gGfJu04GUaa074Xg++IQ=;
 b=A3tNDLi9eC71/7hEO6sRsx+/FZez/SslH3are+cbei4FwZZrduffDVyFwCNAg65xVWFzETiBzI4rsVVqXJZz9MAAYorEqAY+QGYcK7HChQsR+V/VmEbPNu5duMnZA2vQ95agONqBjAT7uCxOgdUY/AMPA6/PJ2I1+l+2OpYgP/vE92rmvXJRLwqeo5nXkdsd2NnXwAjkULBXxJ/kqqm4t1erVbLh4pF3w+6CihwoX2TgfZHmUKlKcrMbNwR9El/kNX+yWvv7dDMVdssUtFnG9svUfqNKQyLmddxE+ockfUdcVwf87aKuK+elP6U3vodoYBNSjJwWNHf9asRXZaFSyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EqMkfA2rapcuM1s5pKVgiY7gGfJu04GUaa074Xg++IQ=;
 b=auVVJCQhwHS04rMPFKsWb10flcN+F3ecU3Dbvoeh0p0G7TJ3bx3noB1dbr9RII0v2jiQQ2RK7CBJkWoUpDLl2iPhHFJWtvVYLladNnLPWes5ZiOaWv2LBFVWqq9nifBeSpITEgbJJmlENPTtBpU967cx/4PlANw0gSvJiJehYIc=
Received: from BL0PR04MB6514.namprd04.prod.outlook.com (2603:10b6:208:1ca::23)
 by BL0PR04MB5058.namprd04.prod.outlook.com (2603:10b6:208:58::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.21; Fri, 20 Nov
 2020 00:20:44 +0000
Received: from BL0PR04MB6514.namprd04.prod.outlook.com
 ([fe80::4c3e:2b29:1dc5:1a85]) by BL0PR04MB6514.namprd04.prod.outlook.com
 ([fe80::4c3e:2b29:1dc5:1a85%7]) with mapi id 15.20.3499.034; Fri, 20 Nov 2020
 00:20:44 +0000
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
Subject: Re: [PATCH 4/6] soc: add polarfire soc system controller
Thread-Topic: [PATCH 4/6] soc: add polarfire soc system controller
Thread-Index: AQHWvpYnwNtFLYxODk28dCxfuD0bUQ==
Date:   Fri, 20 Nov 2020 00:20:44 +0000
Message-ID: <BL0PR04MB6514CA00C893EB9E23561860E7FF0@BL0PR04MB6514.namprd04.prod.outlook.com>
References: <20201119170437.18519-1-conor.dooley@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: microchip.com; dkim=none (message not signed)
 header.d=none;microchip.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [2400:2411:43c0:6000:752d:4d55:43bb:285f]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 24c391de-27be-4fd7-ca07-08d88cea1ef2
x-ms-traffictypediagnostic: BL0PR04MB5058:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BL0PR04MB505856A891B5A3C264876A72E7FF0@BL0PR04MB5058.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /p5r1VOcRVqHQrdoicrEEsCoowNot9rWzSQJmAQLmqFF/RS3G37ISSqf+7WvXcDEVBz1txtUyMQ4pyVNiyYHoSTKpfyg3hPIflO3U0+LvvnYPaBmQ8FK9pgYJhevf7DyWvHDS1y55oODqjlf3q41+ouojWFy8zOd5/Yv4UUi+tJibtRoc7IjnSWACyXIE8KYUQFgx72JGHhaARHw4wq3W2lsmkNIm58speLrKtmo4vvQxzd70IE/vfwFRQ+qRVQUq6+tTxmGxBMvcKNGGrs9FXuNSS+t0T9z9M9n1z/X2WkDpbWI/KszkJbl0N2J8JjG
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR04MB6514.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(39860400002)(136003)(376002)(366004)(71200400001)(7416002)(8676002)(5660300002)(4326008)(9686003)(55016002)(186003)(110136005)(33656002)(54906003)(2906002)(478600001)(86362001)(7696005)(83380400001)(66476007)(53546011)(52536014)(316002)(76116006)(64756008)(91956017)(66946007)(66446008)(66556008)(8936002)(6506007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: L6qpHul4sS8xaJV7Jd7vnmrdomGVCrISTN1jk3WgKV7WfEf9iZDBcO0UbUQ7T8MLj53yf/XLVS+c/Rv0N2UbWMAXJwLgakIz1dDfiTtki6Nd8DvKxatdxBA5/tWWThd+JdZqABS1dJRMoqnhZVkXLD6XxNkNjpLTAXHmJINWETEqIBbOAgRYpYkMFGQASb4to/+C9YPY7hgfAHHL66NV/SmZT5fZZA39ynTJPKA2Ik9fBvocbZGTs5kRKjeuMFgK5Sf32TwdOWHIcvpkWoflGEneEzDNuaYKRubEaZmeHmbI1mfG9K6XpxGYblKzZMUzC+cz21HZ/qEelGhLQ+UF8HqZBR84U/VC3kKueS2RReeCu0euKDOCGgy8KRB6Y6MyFv/pTHBfKaH4nDvpj547K7JvF0YqygmZlrX9SmGp+UaQGP5mh8z4BTUBkDXWmAA28XnHlnKAUJ+qnDfHBeLkjOikFe7QqkgeBDb/Y/6tSJMTwx80QxTMcF88J/63GZcq+WlfA1nHVhX7HDkB35gQombq970XfiZ372YaLh//nLVKuIYocNn4nrpyywrBZBIdzw1us/+NBM4vKikc6G1B/lBEcCEkDkwbHZCkqKCO3Pu9C18+m34UXv/bBe7tS5oyjA+BJ+rQkpk1SGtn35/brPeys9g3LwfKeAWfXmYZOAVJl3TiqXezK+ppxE7xEIM0vGY5QW0t9aSPh37GOn0drQ==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR04MB6514.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24c391de-27be-4fd7-ca07-08d88cea1ef2
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2020 00:20:44.0606
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WepkCaSYSjFNjlbakemjvtTp2L1hVLyXhrVFr4nY20vYBayoazo/Hd7kXkR2rG9TEvbP4DxK5KbCpfjeQ4wPnQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR04MB5058
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2020/11/20 2:05, conor.dooley@microchip.com wrote:=0A=
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
>  drivers/soc/microchip/mpfs_sys_controller.c | 136 ++++++++++++++++++++=
=0A=
>  5 files changed, 149 insertions(+)=0A=
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
> index 000000000000..8fdba8b5eae3=0A=
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
> +	  If unsure, say Y.=0A=
=0A=
Say Y if unsure ? If someone is unsure they are using a polarfire, they I w=
ould=0A=
say all hope is lost, so "say N" sound like a better idea to avoid compilin=
g=0A=
unnecessary drivers...=0A=
=0A=
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
> index 000000000000..0074ae529a2e=0A=
> --- /dev/null=0A=
> +++ b/drivers/soc/microchip/mpfs_sys_controller.c=0A=
> @@ -0,0 +1,136 @@=0A=
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
> +=0A=
=0A=
No need for this empty line.=0A=
=0A=
> +	if (ret >=3D 0U) {=0A=
=0A=
Please stop with the 0u and 0U... Just use "0".=0A=
=0A=
> +		if (wait_for_completion_timeout(&mpfs_client->c, HZ)) {=0A=
> +			ret =3D 0U;=0A=
> +		} else {=0A=
> +			ret =3D -ETIMEDOUT;=0A=
> +			WARN_ONCE(1, "MPFS sys controller transaction timeout");=0A=
=0A=
Why not dev_warn() ?=0A=
=0A=
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
