Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3E3112CA299
	for <lists+devicetree@lfdr.de>; Tue,  1 Dec 2020 13:24:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728419AbgLAMWc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Dec 2020 07:22:32 -0500
Received: from esa2.hgst.iphmx.com ([68.232.143.124]:63064 "EHLO
        esa2.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726862AbgLAMWc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Dec 2020 07:22:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1606825696; x=1638361696;
  h=from:to:cc:subject:date:message-id:references:
   content-transfer-encoding:mime-version;
  bh=lklpcndLwRiTwpIHhz2Sbr9x2cA8j2vyaAIINKo8yis=;
  b=JimusGrrSO/bpYVoiFf6FLb5H84AXid8/WbCOm7zTvsBnB0BQ0wjQ7Nq
   ZrpUPVC2tuvZmua8CNSQNb9VLtL3af2hqZiV4VbP3ha8NaJ1WK/zspnnj
   XwVABX9qlJ9IcdkB/uBGR9i9oV8LMsxYkRYF6TdgDSjh+W1wmJ+AlZFlg
   WNYqipR1GOv1ahDrGpyPhOHMtxGDtTP7IUIjwUoZKP34dOUGE70qMqIxr
   BQYVWbCxyBvEbUi8zDMK9knbpqGjylMK7r74Qzuvr9KIradnwTmBVFAlb
   RA7aYqhLbbKSaN8hI8l+Pb4AuerI4OuBi3BVU+aQ0Ghgk3zuSwwcuz/aO
   g==;
IronPort-SDR: fQ80MZx5twsgiBgsCuIOFBenlB8GlvGAH65+gUbtB87avL8Lgi9OpdzjIWhSrqeW/rL+5FDnq8
 ckcrlF5AIu7XGCPqVyDDktPehDe7NuKzm1GuOODXNKXI9GlgJXlT2okceAow6Sk8hhvVqGZk3V
 4N701EE7IbZR1lBfVWG9FyT4jVm19dD1z8xVvCXKPoDPJQ917lB90h1wKFeMBFConxPQ1DgQML
 53dNTP3ALt4lSK5qDC0m2ksBZeU+/jlR+FAU7kmxceB+JZSamfFv91Z98JJ705/YZZ9cl23OcR
 xO8=
X-IronPort-AV: E=Sophos;i="5.78,384,1599494400"; 
   d="scan'208";a="257596610"
Received: from mail-co1nam11lp2177.outbound.protection.outlook.com (HELO NAM11-CO1-obe.outbound.protection.outlook.com) ([104.47.56.177])
  by ob1.hgst.iphmx.com with ESMTP; 01 Dec 2020 20:26:35 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HxmrRpJLrttgG2MjoYYtbRYiMiYvUqOsx5Q8ms+gW9/ljyy5FwGdBP9opOmh4dfZj0gq0UxmC47Gxxx3PNQ1nN1DwatQ0Me7fetrEfri1Zcy/IfoCOR7v1b+FPN4QRRZO0tI9v+LNgcw336UX4JrpOxN2OUN2VbpjaXU2bsnV6ufKMhF6G9Zqnr7FL+dl+0zLSNADEVs9kWscfSkuHe5qJkXN0nRe1UVQ+AqUlVUmmyF4ZFSKr9Wm5bw9Ph9CB0M/VT4uLzfjcmOFh/r6dPJF3E+tfTqNKxVkJsm3Ve4XBilXWskXf9ne7h0k2jFXVJn1sdMFwjkWLvZlRUpFO4zgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9AU3+gbsqjIaWKRjpPsOliHwKBm98t4xFO294/WymAs=;
 b=i4zuroODyg0V81etB88opSTEkGEpqoOStS70ZA+JTwJUpqeVADREUDf4qql8af7b3/guC/PMD6P+mz3jVdaznSKxMMvlAqmu1xk1O5Tjtq8QcujVCwJer8CooopWeHdPszHgRlVZH9dNrbQddM2jMufKH1kPcwEjVd+vSFidXduryj5dsZqOJlQG+LxbAo+VhQ7avfGZZwatvQuf3qOsjX4bymS23tJ44CI0J6oUXbnYmlze/nuZCUwwj7Lh4EXnXggL5TZxldBFdWBzRmmhd+QsSJblGQLpJLEoFZflQef3j0Fmlm5d7XzK0bYKo4OrRC5NvkhFsbX5z4kzkoE7Gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9AU3+gbsqjIaWKRjpPsOliHwKBm98t4xFO294/WymAs=;
 b=e4QvUsw/rTWs/nGzd8jr2vAzEkLPbabGL3qXfU/0EXJFUyXvV4VK1td0zv38nQuAZE2WE0clyfEyfeGSJk8rIz6VVpO2XRrf6y2RM0zQgv1PtgljXHAibwjkXyaSyuLaordZMd5PLpGZaeyHLgeSwcrNBykSsStgAHT4k/s2058=
Received: from CH2PR04MB6522.namprd04.prod.outlook.com (2603:10b6:610:34::19)
 by CH2PR04MB6631.namprd04.prod.outlook.com (2603:10b6:610:9f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.25; Tue, 1 Dec
 2020 12:21:21 +0000
Received: from CH2PR04MB6522.namprd04.prod.outlook.com
 ([fe80::897c:a04b:4eb0:640a]) by CH2PR04MB6522.namprd04.prod.outlook.com
 ([fe80::897c:a04b:4eb0:640a%7]) with mapi id 15.20.3589.022; Tue, 1 Dec 2020
 12:21:21 +0000
From:   Damien Le Moal <Damien.LeMoal@wdc.com>
To:     Ben Dooks <ben.dooks@codethink.co.uk>,
        "conor.dooley@microchip.com" <conor.dooley@microchip.com>,
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
Subject: Re: [PATCH v2 3/5] soc: add polarfire soc system controller
Thread-Topic: [PATCH v2 3/5] soc: add polarfire soc system controller
Thread-Index: AQHWx9GPBNmhkWSEf0arVrOyBIjWRw==
Date:   Tue, 1 Dec 2020 12:21:21 +0000
Message-ID: <CH2PR04MB6522AA25CA6F470CF2DCBCB7E7F40@CH2PR04MB6522.namprd04.prod.outlook.com>
References: <20201201110257.28507-1-conor.dooley@microchip.com>
 <CH2PR04MB6522C138E30D5E53FD1317F2E7F40@CH2PR04MB6522.namprd04.prod.outlook.com>
 <33138723-73d2-1460-2158-bdfc51b4c5c4@codethink.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: codethink.co.uk; dkim=none (message not signed)
 header.d=none;codethink.co.uk; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [2400:2411:43c0:6000:18de:edc1:5ede:e698]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 46fc3a95-8ca2-4d0b-d38a-08d895f39d13
x-ms-traffictypediagnostic: CH2PR04MB6631:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR04MB66311C4A8F165EF21B8A7708E7F40@CH2PR04MB6631.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ocvcYx3pbW6UrP+4fWPL0nrKDUx42ZUIGXxCJB4SzhwtXcLAWNY4VBneM+z8ASX4Xf611LlfwFAbu1tiK41+o9GoFiAunwB+evCaIVmzqLZ0VNZYvG8RvTGVu8Cbe8ZtIT4B61xWJaKvGfOxpG3l/OiIGDG4oC7jRND1RWIU0pcfCRuvZCFMDystW6rJEXvH0Uo8JxOFMwX/CQrBXfxbXQrp5FmXDqpLGIirAL7UYUcpySDDNAypI9seQj827k4X/WnvhmqWFpuFgTZfpA7GQum1pWua1vBHNUOAXR7tDUKw5ykpTORN0GGRgiGwTBUA
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH2PR04MB6522.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(7416002)(498600001)(76116006)(66446008)(66946007)(91956017)(33656002)(8676002)(66476007)(66556008)(64756008)(6506007)(52536014)(4326008)(8936002)(186003)(7696005)(53546011)(5660300002)(110136005)(55016002)(2906002)(54906003)(86362001)(71200400001)(83380400001)(9686003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?ajFaem7Bx6wm1ig9yXXTuxBqgphTa4aD/AzXL8xCEX+OB8OqMdmRuZzE/BKh?=
 =?us-ascii?Q?1UJKtQpJl8962V5M1e+GDRle+lRh70rK21FNQvgkzp4PEZI99G6u8tlJlLvU?=
 =?us-ascii?Q?6X4bdeVIZMTetCaSlrZaBSYOnxktEjxUr2YvyJAqh4jtUmAq2FcgUdEVJxJx?=
 =?us-ascii?Q?ArJAvk0xFhoJogYLfFUlIw0bT6t23vErQW7dRC6LNA+8PWa63VUQp3LoT3eo?=
 =?us-ascii?Q?6CqQEdDqOD9hTviljaKlS1V69yDh+jkK9DEuw47mjRQpxWC9py0udTyGlTPq?=
 =?us-ascii?Q?1K+Yjq+DrLufVLo1wRXOBAhwAkULS4Z95w+coW92uG7SPvDyMszpYRZOhVkD?=
 =?us-ascii?Q?nt5FQ7CzXzFZDus7f8gt5VXZeSrP9McS0RQrychnCn6XLRRLZcXfg1p4SXul?=
 =?us-ascii?Q?l/RrdRRZjhKyW1FLn26z331TOxYdYWOYrFZOlVT6ziFdOG4z9sZyf/Ix6HWq?=
 =?us-ascii?Q?mS1rdn/UlxCYqeLxhRu1UAc+5R6QYZVSbH4Q5NAG3cCg8qEL2XSgBRcwMNmi?=
 =?us-ascii?Q?ImslqXRnmnFvVUWfM5TkpeMRjjPL77Q0RMUKCo1pr44Fckj0y0f0LtHUlV1W?=
 =?us-ascii?Q?3raCmwazzDSmRQTZvb+RC4E87CRJPo+JuddXpthqaS6hpvhyMOockGanes3K?=
 =?us-ascii?Q?tXRMLC436MyM5eJkjSILsh0KnHGL9Ndyd/xmnVmBBF75LdQ1lWkr2jMRjTq9?=
 =?us-ascii?Q?RwcllO+XhsWIg9JCRIje3FB1AW8bFbjAG1lL446Y2FwAd6Kv35YPc2jY/i0W?=
 =?us-ascii?Q?UOVpR6k8xTKs7LB8m9L5Ky5RStsNpmDx771mcFiX4A99546SrFyZzg1+ex01?=
 =?us-ascii?Q?b/OUy70ZfQ3/l0H0OeBJbz+m6Q7w+MzPZzd2DjoK/IKHGItQbCO8l0zscNF1?=
 =?us-ascii?Q?MKjYgGaUiumfQEkpSQsZfe/5OFe8Zns+kH6RiFli5x9R1JAEadzzO0MmikdH?=
 =?us-ascii?Q?2vuWR1qszWWlF9+3ARQ3fa+3rC1WUIxM+XrOgAYy6Alhz1b4PFSYdOKlSty7?=
 =?us-ascii?Q?5XyOccTNApgOTvD41KgKkOr4bUtHpmnDxaPyrUfiAtDzp2N2LNAA1JXXKjaZ?=
 =?us-ascii?Q?tSOSj8Ld?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH2PR04MB6522.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46fc3a95-8ca2-4d0b-d38a-08d895f39d13
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2020 12:21:21.6853
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3A0WBRjN0EIah29Q4AHz6RNoR+oxDeqfiD7naJ517tXyl5rJOIm+Y7cje0RzIJpohnf/Qy0qZxvAmqP7DctNyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR04MB6631
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2020/12/01 21:18, Ben Dooks wrote:=0A=
> On 01/12/2020 12:00, Damien Le Moal wrote:=0A=
>> On 2020/12/01 20:03, conor.dooley@microchip.com wrote:=0A=
>>> From: Conor Dooley <conor.dooley@microchip.com>=0A=
>>>=0A=
>>> This driver provides an interface for other drivers to access the=0A=
>>> functions of the system controller on the Microchip PolarFire SoC.=0A=
>>>=0A=
>>> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>=0A=
>>> ---=0A=
>>>   drivers/soc/Kconfig                         |   1 +=0A=
>>>   drivers/soc/Makefile                        |   1 +=0A=
>>>   drivers/soc/microchip/Kconfig               |  10 ++=0A=
>>>   drivers/soc/microchip/Makefile              |   1 +=0A=
>>>   drivers/soc/microchip/mpfs_sys_controller.c | 135 +++++++++++++++++++=
+=0A=
>>>   5 files changed, 148 insertions(+)=0A=
>>>   create mode 100644 drivers/soc/microchip/Kconfig=0A=
>>>   create mode 100644 drivers/soc/microchip/Makefile=0A=
>>>   create mode 100644 drivers/soc/microchip/mpfs_sys_controller.c=0A=
>>>=0A=
>>> diff --git a/drivers/soc/Kconfig b/drivers/soc/Kconfig=0A=
>>> index 425ab6f7e375..22cb097bcbdc 100644=0A=
>>> --- a/drivers/soc/Kconfig=0A=
>>> +++ b/drivers/soc/Kconfig=0A=
>>> @@ -9,6 +9,7 @@ source "drivers/soc/bcm/Kconfig"=0A=
>>>   source "drivers/soc/fsl/Kconfig"=0A=
>>>   source "drivers/soc/imx/Kconfig"=0A=
>>>   source "drivers/soc/ixp4xx/Kconfig"=0A=
>>> +source "drivers/soc/microchip/Kconfig"=0A=
>>>   source "drivers/soc/mediatek/Kconfig"=0A=
>>>   source "drivers/soc/qcom/Kconfig"=0A=
>>>   source "drivers/soc/renesas/Kconfig"=0A=
>>> diff --git a/drivers/soc/Makefile b/drivers/soc/Makefile=0A=
>>> index 36452bed86ef..fb084cf2d12e 100644=0A=
>>> --- a/drivers/soc/Makefile=0A=
>>> +++ b/drivers/soc/Makefile=0A=
>>> @@ -14,6 +14,7 @@ obj-$(CONFIG_ARCH_GEMINI)	+=3D gemini/=0A=
>>>   obj-y				+=3D imx/=0A=
>>>   obj-$(CONFIG_ARCH_IXP4XX)	+=3D ixp4xx/=0A=
>>>   obj-$(CONFIG_SOC_XWAY)		+=3D lantiq/=0A=
>>> +obj-$(CONFIG_SOC_MICROCHIP_POLARFIRE)	+=3D microchip/=0A=
>>>   obj-y				+=3D mediatek/=0A=
>>>   obj-y				+=3D amlogic/=0A=
>>>   obj-y				+=3D qcom/=0A=
>>> diff --git a/drivers/soc/microchip/Kconfig b/drivers/soc/microchip/Kcon=
fig=0A=
>>> new file mode 100644=0A=
>>> index 000000000000..40e5203c8ba0=0A=
>>> --- /dev/null=0A=
>>> +++ b/drivers/soc/microchip/Kconfig=0A=
>>> @@ -0,0 +1,10 @@=0A=
>>> +config MPFS_SYS_CONTROLLER=0A=
>>> +	tristate "MPFS_SYS_CONTROLLER"=0A=
>>> +	depends on MPFS_MBOX=0A=
>>> +	help=0A=
>>> +	  This driver adds support for the Polarfire SoC system controller.=
=0A=
>>> +=0A=
>>> +	  To compile this driver as a module, choose M here. the=0A=
>>> +	  module will be called mpfs_system_controller.=0A=
>>> +=0A=
>>> +	  If unsure, say N.=0A=
>>> diff --git a/drivers/soc/microchip/Makefile b/drivers/soc/microchip/Mak=
efile=0A=
>>> new file mode 100644=0A=
>>> index 000000000000..23b1f42a37db=0A=
>>> --- /dev/null=0A=
>>> +++ b/drivers/soc/microchip/Makefile=0A=
>>> @@ -0,0 +1 @@=0A=
>>> +obj-$(CONFIG_MPFS_SYS_CONTROLLER)	+=3D mpfs_sys_controller.o=0A=
>>> diff --git a/drivers/soc/microchip/mpfs_sys_controller.c b/drivers/soc/=
microchip/mpfs_sys_controller.c=0A=
>>> new file mode 100644=0A=
>>> index 000000000000..875a0671e196=0A=
>>> --- /dev/null=0A=
>>> +++ b/drivers/soc/microchip/mpfs_sys_controller.c=0A=
>>> @@ -0,0 +1,135 @@=0A=
>>> +// SPDX-License-Identifier: GPL-2.0=0A=
>>> +/*=0A=
>>> + * Microchip MPFS system controller driver=0A=
>>> + *=0A=
>>> + * Copyright (c) 2020 Microchip Corporation. All rights reserved.=0A=
>>> + *=0A=
>>> + * Author: Conor Dooley <conor.dooley@microchip.com>=0A=
>>> + *=0A=
>>> + */=0A=
>>> +=0A=
>>> +#include <linux/slab.h>=0A=
>>> +#include <linux/module.h>=0A=
>>> +#include <linux/interrupt.h>=0A=
>>> +#include <linux/of_platform.h>=0A=
>>> +#include <linux/mailbox_client.h>=0A=
>>> +#include <linux/platform_device.h>=0A=
>>> +#include <soc/microchip/mpfs.h>=0A=
>>> +=0A=
>>> +static DEFINE_MUTEX(transaction_lock);=0A=
>>> +=0A=
>>> +struct mpfs_sys_controller {=0A=
>>> +	struct mbox_client client;=0A=
>>> +	struct mbox_chan *chan;=0A=
>>> +	struct completion c;=0A=
>>> +	u32 enabled;=0A=
>>> +	void *response;=0A=
>>> +	u16 response_size_bytes;=0A=
>>> +};=0A=
>>> +=0A=
>>> +int mpfs_blocking_transaction(struct mpfs_sys_controller *mpfs_client,=
 void *msg,=0A=
>>> +			      void *response, u16 response_size_bytes)=0A=
>>> +{=0A=
>>> +	int ret;=0A=
>>> +=0A=
>>> +	mpfs_client->response =3D response;=0A=
>>> +	mpfs_client->response_size_bytes =3D response_size_bytes;=0A=
>>> +=0A=
>>> +	mutex_lock_interruptible(&transaction_lock);=0A=
>>> +=0A=
>>> +	reinit_completion(&mpfs_client->c);=0A=
>>> +=0A=
>>> +	ret =3D mbox_send_message(mpfs_client->chan, msg);=0A=
>>> +	if (ret >=3D 0) {=0A=
>>> +		if (wait_for_completion_timeout(&mpfs_client->c, HZ)) {=0A=
>>> +			ret =3D 0;=0A=
>>> +		} else {=0A=
>>> +			ret =3D -ETIMEDOUT;=0A=
>>> +			dev_warn(mpfs_client->client.dev, "MPFS sys controller transaction =
timeout");=0A=
>>> +		}=0A=
>>> +	} else {=0A=
>>> +		dev_err(mpfs_client->client.dev,=0A=
>>> +			"mpfs sys controller transaction returned %d\r\n", ret);=0A=
>>> +	}=0A=
>>> +=0A=
>>> +	mutex_unlock(&transaction_lock);=0A=
>>> +=0A=
>>> +	return ret;=0A=
>>> +}=0A=
>>> +EXPORT_SYMBOL(mpfs_blocking_transaction);=0A=
>>> +=0A=
>>> +static void rx_callback(struct mbox_client *client, void *msg)=0A=
>>> +{=0A=
>>> +	struct mpfs_sys_controller *mpfs_client =3D=0A=
>>> +		container_of(client, struct mpfs_sys_controller, client);=0A=
>>> +=0A=
>>> +	memcpy(mpfs_client->response, (u8 *)msg,=0A=
>>> +	       mpfs_client->response_size_bytes);=0A=
>>> +=0A=
>>> +	complete(&mpfs_client->c);=0A=
>>> +}=0A=
>>> +=0A=
>>> +static int mpfs_sys_controller_probe(struct platform_device *pdev)=0A=
>>> +{=0A=
>>> +	struct device *dev =3D &pdev->dev;=0A=
>>> +	struct mpfs_sys_controller *mpfs_client;=0A=
>>> +=0A=
>>> +	mpfs_client =3D devm_kzalloc(dev, sizeof(*mpfs_client), GFP_KERNEL);=
=0A=
>>> +	if (!mpfs_client)=0A=
>>> +		return -ENOMEM;=0A=
>>> +=0A=
>>> +	mpfs_client->client.dev =3D dev;=0A=
>>> +	mpfs_client->client.rx_callback =3D rx_callback;=0A=
>>> +	mpfs_client->client.tx_block =3D 1U;=0A=
>>> +=0A=
>>> +	mpfs_client->chan =3D mbox_request_channel_byname(&mpfs_client->clien=
t,=0A=
>>> +							"mbox-mpfs");=0A=
>>> +	if (IS_ERR(mpfs_client->chan)) {=0A=
>>> +		int ret =3D PTR_ERR(mpfs_client->chan);=0A=
>>> +=0A=
>>> +		if (ret !=3D -EPROBE_DEFER)=0A=
>>> +			dev_err(dev, "Failed to get mbox channel: %d\n", ret);=0A=
>>> +		return ret;=0A=
>>=0A=
>> You can replace all of this with=0A=
>>=0A=
>> 		return dev_err_probe(dev, PTR_ERR(mpfs_client->chan),=0A=
>> 				     ""Failed to get mbox channel\n");=0A=
> =0A=
> you'll spam the error log if you get a lot of probe defferals.=0A=
> I think the code as is fine.=0A=
=0A=
Please look at that function code: it does not print anything if the error =
is=0A=
-EPROBE_DEFER.=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=
