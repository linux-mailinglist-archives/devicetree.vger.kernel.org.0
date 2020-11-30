Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 154DE2C9049
	for <lists+devicetree@lfdr.de>; Mon, 30 Nov 2020 22:52:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730333AbgK3VvV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 16:51:21 -0500
Received: from esa5.hgst.iphmx.com ([216.71.153.144]:37762 "EHLO
        esa5.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726158AbgK3VvV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Nov 2020 16:51:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1606773079; x=1638309079;
  h=from:to:cc:subject:date:message-id:references:
   content-transfer-encoding:mime-version;
  bh=C1BT7GlDlpvpcXUxuKHfn0dn7pXWAR0e9Zgb8JxCH3s=;
  b=bRd0plqMpRiEI5F5x51HPQ7zktRG8srGiNrns8bG3WUjjLZbFN1oHjon
   JIvZE3WG4VptIHZ7/rlwNf+0wr95YXMdMsj//AJIp/MlBDqABE3HEzBYD
   6mvhAm1VwGLJZV39+10dCZWVvErARfVv2oSjpjdiyMRY8vfuDdvP03pXt
   oejK+ix2cbazViF1ogSfs3XiSfkT9VfZneia4q+gNxU5okVgVkPG/h7xG
   xXtP8WUbREa7nl8qZB9LKYFT7RXpvO6tzGtz56NPK8RR0YV33J/gdPXrQ
   vopTIACsNa4hFUe2unGUH2cMfPMgfxGpAVH3jLvGGJWySdNHp1N0Y6pSh
   Q==;
IronPort-SDR: I4pGi2dDC8BGC4kj3QsD8qc//8ZHTjzkFKhl48FFoiebXLUwxu7Fzo0eoq3ieS4eUQi/iNchMH
 ckX2HLFBt4a1aqmFL31hJPjBgKsEp6rwK43kaKe/mC46f3IRZJ6AXALTBtYzo+CTKZkAzuZfkR
 sE6LWF39+IoDlE7V9Hjqr89Wu7SumRk1Ao5rP4KY+QwPS/FPab82bejJoNwKgxZEdWJk/qFgB/
 SqT7ZUJLJv6sl2flotbpmPq8EMBDk+e23ziissw5G9W3Qd935pWwDYl7R7fX+Pl/RqSXDsf9dE
 Cug=
X-IronPort-AV: E=Sophos;i="5.78,382,1599494400"; 
   d="scan'208";a="153919650"
Received: from mail-dm6nam12lp2173.outbound.protection.outlook.com (HELO NAM12-DM6-obe.outbound.protection.outlook.com) ([104.47.59.173])
  by ob1.hgst.iphmx.com with ESMTP; 01 Dec 2020 05:50:13 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=elLWZUr4PKoa0YJ13ascTo8Nzjy6hn+Ndb0C7QppcLFjOTeSUxXG//5nDvpIOGBxvrJXEmlEMBAgjm8XVpRaD0KFSoLTweN3P/2nUbGneaA7mRmDrwV9yuJn/Q+gbqWHDakP719xZKGp+aqXkldpReG+1o2hIMNWqEKrlJXVfuWOmVxNlD6LYRJdUv/kWPvIKF47e+AH2QJ7dT5shI3ii917u3is4ewN+lz1qskajKt7PVpiYrQ/Z1eB8fdisXV9KGNSHSV/m6A9goxzuRWwAgzlvNg3PE8omDvNpo3NyM5zA4kphUZ3KuKt6q2g4IigFl7FPgqufeGdPI4dT2nNbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WUqLF1rwbh32V+4LmJ6lPpWz/QfkGLUCEM26ptg+6iQ=;
 b=LdEovBe4mQfyzbFyXczckwgUV+FkVmU/Y2hSVGWL2okJd/lxXOLzvUo5+4+ztHcU9v6h10yJ53rVAcab87EhE7qL1RZfXFQZmexZw64ArOsmxXlwHPW5NxlzswJXKd5BPqrN1yxEdrbwBTDYFZh5Oxp+XT39D1KkmDPW5ANzg7cYqxht6+3+vNzJH4qkO3vZXJoAv64iXPwXhqpefv/IRDsN2U1z0E1x6nyVT1X5Wj83LbMCMix6m8SwGRa5MD5pFSs+wI4Rlfj0dlyyDMbjPz4OF1GKxCPfRhlsbvce+WuiDdBQJ7Vg4cPPf5GYtojf33HhxxrKnVLq7U26OdadAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WUqLF1rwbh32V+4LmJ6lPpWz/QfkGLUCEM26ptg+6iQ=;
 b=NtR7sTekykOqOyFHS2VrFdotwYYYGqCJrR9/1HmMmofyGzpPZKPQBPOwkZ2kRwVC0C6sx/zMlNKxgGrpdMNA4J+xBl9TkFGPp4sl0rzbekFiWtmhJTU3Ula0hh0cP1jc7Wog4lwTWv6D83teiIi0sSbnu9nnfAfl7+N+5VjXHtM=
Received: from CH2PR04MB6522.namprd04.prod.outlook.com (2603:10b6:610:34::19)
 by CH2PR04MB6538.namprd04.prod.outlook.com (2603:10b6:610:35::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.23; Mon, 30 Nov
 2020 21:50:12 +0000
Received: from CH2PR04MB6522.namprd04.prod.outlook.com
 ([fe80::897c:a04b:4eb0:640a]) by CH2PR04MB6522.namprd04.prod.outlook.com
 ([fe80::897c:a04b:4eb0:640a%7]) with mapi id 15.20.3589.022; Mon, 30 Nov 2020
 21:50:12 +0000
From:   Damien Le Moal <Damien.LeMoal@wdc.com>
To:     "Conor.Dooley@microchip.com" <Conor.Dooley@microchip.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
        "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
        "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
        "palmer@dabbelt.com" <palmer@dabbelt.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
CC:     "Cyril.Jean@microchip.com" <Cyril.Jean@microchip.com>,
        "david.abdurachmanov@gmail.com" <david.abdurachmanov@gmail.com>,
        "Daire.McNamara@microchip.com" <Daire.McNamara@microchip.com>,
        Anup Patel <Anup.Patel@wdc.com>,
        Atish Patra <Atish.Patra@wdc.com>,
        "Lewis.Hanly@microchip.com" <Lewis.Hanly@microchip.com>
Subject: Re: [PATCH 1/6] mbox: add polarfire soc system controller mailbox
Thread-Topic: [PATCH 1/6] mbox: add polarfire soc system controller mailbox
Thread-Index: AQHWvpYfVU6mtg0xhkO8MWTEOL0QWg==
Date:   Mon, 30 Nov 2020 21:50:11 +0000
Message-ID: <CH2PR04MB6522D8B7E1EC319733D72CA5E7F50@CH2PR04MB6522.namprd04.prod.outlook.com>
References: <20201119170419.18272-1-conor.dooley@microchip.com>
 <BL0PR04MB6514AA9B313828842F7EF0D8E7FF0@BL0PR04MB6514.namprd04.prod.outlook.com>
 <ffa091eb-0963-f2b5-de9a-c76767d6776c@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: microchip.com; dkim=none (message not signed)
 header.d=none;microchip.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [60.117.181.124]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 689b61fd-168c-4ead-78ea-08d89579e9ea
x-ms-traffictypediagnostic: CH2PR04MB6538:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR04MB65386FB561FB26C7FBA7ADA9E7F50@CH2PR04MB6538.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vvFxFCpgNXGPxwimOZEZfA8xKgJ1i63HDG27wpQbDBt6OCpFwj1vBOP/y0h4SgYVPLh3E+HBvL74RpBmZhwC3YclGJDWKQygZe6t485c3nU8eh0q6922Tzq714ifYSaiM1KunDMCNt0+HXEvzCtgJ3XkcX/TO476QTVmSdiRPYmq/SyB5oNp8iXtnBJeib0svZz+u4Fi+AyDYvOKB8YfNYGs2mvjgZdl6K1YMoQRWJEBZYnIxchunJi9yZNXk2CZi8SWcz3mkicdm3NdOQ+50COf+/fb5y+vS++a8vPQ71miCh2RdJbB7uLiOQ9kzNR3
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH2PR04MB6522.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(136003)(346002)(396003)(376002)(366004)(9686003)(76116006)(6506007)(8676002)(66556008)(7416002)(186003)(66446008)(91956017)(66946007)(64756008)(8936002)(478600001)(110136005)(26005)(71200400001)(15650500001)(86362001)(7696005)(5660300002)(2906002)(33656002)(316002)(83380400001)(52536014)(54906003)(4326008)(66476007)(53546011)(55016002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?/OmoFwZdY9CXU5E67EXZcU730nkowQ0Mdy9xG4A5jIjJCNxRKXyidIUd0g?=
 =?iso-8859-1?Q?wH7Fp1FWNlve1remKLl69Fwa0AJI7K07XVGGbVGckpOC9OFW6AMcMvCQUM?=
 =?iso-8859-1?Q?dhohMeWktZiy3I75qvLpbHgEjJZg7ahVzww/lhpD0lznS5Q8KjARpFpIcU?=
 =?iso-8859-1?Q?WCu47PwUvlmtwmfDCJ7cSjT3ZZuJfHKN95IZA2prYS1eZ3DIizkc0H066t?=
 =?iso-8859-1?Q?UIoY4N/vIV0sq9etHxLJToOYQoxSd9ZRLSKj/QlfCSzVXKwcyOjwl5Hlir?=
 =?iso-8859-1?Q?InZe9ZTPa6a+b48alBVd3/IKJWrcY3kYFO9ps6pDvxjvs9Pk66DtSKZO8v?=
 =?iso-8859-1?Q?Qtng9Vaeo4e0iiHCScHIQ6L4leL/GgI+8bzvlv7Z6Q5sE6vDPsDGlBGWVQ?=
 =?iso-8859-1?Q?ovzCTrkbTJXMQYmPFnduNj4paZrDkh4FkhXdx4zzkjTluYT74mD+8SME4K?=
 =?iso-8859-1?Q?m7KyrWoXBcacD3q7xt9PdOp/jRDbULm1soXEe/aQ0+7ZVIthbNA9Oc47+2?=
 =?iso-8859-1?Q?zyb0sjBT0iTckSS5Y/6WaEAIGihMH7E9keC5ZdcY+mvfKHelHkeM7BN4l+?=
 =?iso-8859-1?Q?M0QW63soNqOgqDz9BXTdyeaYmB/inIUHHl1WFJaocaIV6J5wP42OyuolNN?=
 =?iso-8859-1?Q?izz1eE7L6qCgrpuURLYYL2bKxyrXQhyB04/nkERRZRCBKle6gzVxGj3JZF?=
 =?iso-8859-1?Q?d5EZX2wzsrSqyqSxSXRgiL/h5xre9UgSMzKIye5+LcCZpBPFQ/fSldar6o?=
 =?iso-8859-1?Q?00xWeV7F6EchBP6cL5IncjFqprPklLObdiK6sMCa7sdca5VIVIGESDw4Aq?=
 =?iso-8859-1?Q?wX32IgGmme2gwR8/Wuc53vWoVyjsAqUW4HUEsqku0qbNUGJQs6WPdehJWN?=
 =?iso-8859-1?Q?V6j1UihPk86HhU5BN0/ObyeS5IrRSWH198SDNoBatg1eVMXD9fWogt/+6L?=
 =?iso-8859-1?Q?HvXG5coPjx5w5/Ool7T0JYEotl+7jzKjP22wOLN7bJ9B45acHhJmiMUU+n?=
 =?iso-8859-1?Q?9MA+grfw94xrGnqciuY0CeGIsAXoQCOtSWh/xw?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH2PR04MB6522.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 689b61fd-168c-4ead-78ea-08d89579e9ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2020 21:50:11.9391
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U96q0cOg7ZEpRzwxe402U53WrU3Dc/q2E8z5irTu7nlt6R6THNh2UGmeg7AhRqwBG7QMbMYKu0JoLRYdrv/LNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR04MB6538
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2020/11/30 22:23, Conor.Dooley@microchip.com wrote:=0A=
> On 20/11/2020 00:05, Damien Le Moal wrote:=0A=
>> EXTERNAL EMAIL: Do not click links or open attachments unless you know t=
he content is safe=0A=
>>=0A=
>> On 2020/11/20 2:05, conor.dooley@microchip.com wrote:=0A=
>>> From: Conor Dooley <conor.dooley@microchip.com>=0A=
>>>=0A=
>>> This driver adds support for the single mailbox channel of the MSS=0A=
>>> system controller on the Microchip PolarFire SoC.=0A=
>>>=0A=
>>> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>=0A=
>>> ---=0A=
>>>  drivers/mailbox/Kconfig        |  12 ++=0A=
>>>  drivers/mailbox/Makefile       |   2 +=0A=
>>>  drivers/mailbox/mailbox-mpfs.c | 296 +++++++++++++++++++++++++++++++++=
=0A=
>>>  3 files changed, 310 insertions(+)=0A=
>>>  create mode 100644 drivers/mailbox/mailbox-mpfs.c=0A=
>>>=0A=
>>> diff --git a/drivers/mailbox/Kconfig b/drivers/mailbox/Kconfig=0A=
>>> index 05b1009e2820..4881a519683a 100644=0A=
>>> --- a/drivers/mailbox/Kconfig=0A=
>>> +++ b/drivers/mailbox/Kconfig=0A=
>>> @@ -153,6 +153,18 @@ config MAILBOX_TEST=0A=
>>>         Test client to help with testing new Controller driver=0A=
>>>         implementations.=0A=
>>>=0A=
>>> +config MPFS_MBOX=0A=
>>> +     tristate "MPFS Mailbox"=0A=
>>> +     depends on HAS_IOMEM=0A=
>> Shouldn't this dependency be on SOC_MICROCHIP_POLARFIRE ?=0A=
> Not entirely sure what you mean by this one. You want the HAS_IOMEM to be=
 selected by SOC_MICROCHIP_POLARFIRE ?=0A=
=0A=
Sorry, I was not clear. I was referring to MPFS_MBOX: shouldn't it be depen=
dent=0A=
on SOC_MICROCHIP_POLARFIRE ? E.g.:=0A=
=0A=
config MPFS_MBOX=0A=
	tristate "MPFS Mailbox"=0A=
	depends on HAS_IOMEM=0A=
	depends on SOC_MICROCHIP_POLARFIRE=0A=
	...=0A=
=0A=
Since it will probably not make sense to compile the driver when the SoC su=
pport=0A=
is not selected. No ?=0A=
=0A=
>>=0A=
>>> +     depends on SOC_MICROCHIP_POLARFIRE=0A=
>>> +     help=0A=
>>> +       This driver adds support for the Polarfire SoC mailbox controll=
er.=0A=
>>> +=0A=
>>> +       To compile this driver as a module, choose M here. the=0A=
>>> +       module will be called mailbox-mpfs.=0A=
>>> +=0A=
>>> +       If unsure, say Y.=0A=
>>> +=0A=
>>>  config QCOM_APCS_IPC=0A=
>>>       tristate "Qualcomm APCS IPC driver"=0A=
>>>       depends on ARCH_QCOM || COMPILE_TEST=0A=
>>> diff --git a/drivers/mailbox/Makefile b/drivers/mailbox/Makefile=0A=
>>> index 2e06e02b2e03..63f49b5bcc43 100644=0A=
>>> --- a/drivers/mailbox/Makefile=0A=
>>> +++ b/drivers/mailbox/Makefile=0A=
>>> @@ -39,6 +39,8 @@ obj-$(CONFIG_BCM_PDC_MBOX)  +=3D bcm-pdc-mailbox.o=0A=
>>>=0A=
>>>  obj-$(CONFIG_BCM_FLEXRM_MBOX)        +=3D bcm-flexrm-mailbox.o=0A=
>>>=0A=
>>> +obj-$(CONFIG_MPFS_MBOX)      +=3D mailbox-mpfs.o=0A=
>>> +=0A=
>>>  obj-$(CONFIG_QCOM_APCS_IPC)  +=3D qcom-apcs-ipc-mailbox.o=0A=
>>>=0A=
>>>  obj-$(CONFIG_TEGRA_HSP_MBOX) +=3D tegra-hsp.o=0A=
>>> diff --git a/drivers/mailbox/mailbox-mpfs.c b/drivers/mailbox/mailbox-m=
pfs.c=0A=
>>> new file mode 100644=0A=
>>> index 000000000000..686ccd3317f9=0A=
>>> --- /dev/null=0A=
>>> +++ b/drivers/mailbox/mailbox-mpfs.c=0A=
>>> @@ -0,0 +1,296 @@=0A=
>>> +// SPDX-License-Identifier: GPL-2.0=0A=
>>> +/*=0A=
>>> + * Microchip MPFS system controller/mailbox controller driver=0A=
>>> + *=0A=
>>> + * Copyright (c) 2020 Microchip Corporation. All rights reserved.=0A=
>>> + *=0A=
>>> + * Author: Conor Dooley <conor.dooley@microchip.com>=0A=
>>> + *=0A=
>>> + */=0A=
>>> +=0A=
>>> +#include <linux/io.h>=0A=
>>> +#include <linux/err.h>=0A=
>>> +#include <linux/init.h>=0A=
>>> +#include <linux/module.h>=0A=
>>> +#include <linux/kernel.h>=0A=
>>> +#include <linux/interrupt.h>=0A=
>>> +#include <linux/platform_device.h>=0A=
>>> +#include <linux/mailbox_controller.h>=0A=
>>> +#include <soc/microchip/mpfs.h>=0A=
>>> +=0A=
>>> +#define SERVICES_CR_OFFSET                   0x50u=0A=
>>> +#define SERVICES_SR_OFFSET                   0x54u=0A=
>>> +#define MAILBOX_REG_OFFSET                   0x800u=0A=
>>> +#define MSS_SYS_SUCCESS                              0u=0A=
> trimmed, will address the rest in V2=0A=
>> -- =0A=
>> Damien Le Moal=0A=
>> Western Digital Research=0A=
> =0A=
> =A0=0A=
> =0A=
> =0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=
