Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F7B52B9F1A
	for <lists+devicetree@lfdr.de>; Fri, 20 Nov 2020 01:13:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726381AbgKTAM6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 19:12:58 -0500
Received: from esa6.hgst.iphmx.com ([216.71.154.45]:6566 "EHLO
        esa6.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726275AbgKTAM5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Nov 2020 19:12:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1605831177; x=1637367177;
  h=from:to:cc:subject:date:message-id:references:
   content-transfer-encoding:mime-version;
  bh=Cmf1aSt5zLpKa3XzN6s2zWhQWskgaviM1BQGRqwN5uQ=;
  b=o73ILmJpE4h4kGfbbJUtfohQ0Y2NFHH7D9UUq8wmo2Ff+8nlBH8+8BS9
   cweTzVSGqvv+WyWk4/y7J26Ovh0fL47KRxRxuiy2e9L5zX2FwWWU9rtiI
   XKFJH+8Gln4CYNixY4ZoASPjd2HJb2VYSQ5Uph9KEYMZExFUbZlYS0j8/
   OiB0PaBzGEi+r4jqDWV/Wcy0mY04mCkkncouM6s3Vt2yO0gPC4ryR0Uo/
   71jL8TqUOb+Px+jPELtnAT/eff3KaPU1EHG1vOK0vONu9HZYvgDZwVESH
   Nt3hplQMi+wEfBiml4gLevqRLiT3/a3x7JNAThaKO9VzLI7nCIszAgP0Q
   g==;
IronPort-SDR: Pp9HdORBDmPsBxwR6vL08wgn1NU++6QGb5ibTWqucIFOBs42Tbzbr1mzhlPDZjk9RfXMbz1l3h
 ogR0FloMT4/Y3kgGp/86PNz0BXCu/VujMzN3+n83PqpqPDB9cMBnlM84cVdxixHm+bRIsfAnlF
 kFq15tIrHA88MWfGCrMLgYJGfFXtXVgg3M7OyLa2b7TNdiNmXUHSXX+o8JS6C8V0zdckNz0/8U
 j6+xtcts4INaWMvwHka3A/Tdq3X3r50gdyP54jFGKI9MaPMlzidcTDMYwLzhQjc4paq16CyaTa
 ipg=
X-IronPort-AV: E=Sophos;i="5.78,354,1599494400"; 
   d="scan'208";a="154234432"
Received: from mail-bn8nam11lp2175.outbound.protection.outlook.com (HELO NAM11-BN8-obe.outbound.protection.outlook.com) ([104.47.58.175])
  by ob1.hgst.iphmx.com with ESMTP; 20 Nov 2020 08:12:52 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=djC/rg7jJGpQKzrtc6bYhpTv3pOVmMb17/877M+2rmARtUdMvPreQTLI/3gJTZMG0mSH9SUDJY44nXFg2l6AqoYKfasaUkOaByyp3ov3Yxj5cb4GaHEy0qTdIZMMaD0+9R5D1/93zgmdNYSCC6DbYubIC398rKaISljO9GjIN4YlBrGzNLyoSPQACfbeBr0RC4ESEh1E05OseabFUeV6WDtTZ1EIgBij9DcncvMIlqncUzkYiMvsde24Jia4Eze7k+XX7DpWjcQCKcI1xNl6VR0nd9p79/NaFJbSYvIyAq3vJzB4oECbvxY5foNvxrrd8631aQUz74IO8pJrnc7YWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gONBB5fUKkI1mRdxPNhHHt4JbT4AC6sSRwn9JhP2Ub0=;
 b=WOfOnvHk9mPeMxogqZtWkFphGky6cEk/IGgJalN9m6LJsQBy7Xs52rMuqEfF5/bSMJcAmDZ+ObzN1xobnATIX26lwukLxuBd8ikYgiTnJqKCVmopur3Ez5XovUFCtI/Sa5JPnmmcKiipaUgG+OdY9LM2aJN4KfZALPgy3hShir8tn6SpUygWLAqFeYdCGOh+uYzjI1TLMjliqmRi4EpeY5nuPIGJzXP+4CCfTVTcvkwlIV15bZlEFnNVxq10GimFn4Bie7+pzJ3nfssUHv5/pSk/vPIE/fG7TWmoR3hRKuHUFl31WlJclBnZ2OVMNPukm5S0OVr++dFNevISGTwzlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gONBB5fUKkI1mRdxPNhHHt4JbT4AC6sSRwn9JhP2Ub0=;
 b=NbzrS/WDCoJX11EbgWGoWlKmsedh22bofSewUk3UChoq4kmzquFXCx8LzsCmf8TDtwZmvy/q2tKrqyemjBMXMTUNkX+HlD351kEG41gSAu3zK+2sBoJ0tr81ECRwpCZdS+tp4giYMQ1REWu/jL7YiTWdthsKrsCRDDypbArUhmg=
Received: from BL0PR04MB6514.namprd04.prod.outlook.com (2603:10b6:208:1ca::23)
 by MN2PR04MB6640.namprd04.prod.outlook.com (2603:10b6:208:1ec::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3564.25; Fri, 20 Nov
 2020 00:12:48 +0000
Received: from BL0PR04MB6514.namprd04.prod.outlook.com
 ([fe80::4c3e:2b29:1dc5:1a85]) by BL0PR04MB6514.namprd04.prod.outlook.com
 ([fe80::4c3e:2b29:1dc5:1a85%7]) with mapi id 15.20.3499.034; Fri, 20 Nov 2020
 00:12:48 +0000
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
Subject: Re: [PATCH 2/6] soc: add polarfire soc header file
Thread-Topic: [PATCH 2/6] soc: add polarfire soc header file
Thread-Index: AQHWvpYfbatSa8asgkSdpmbGR05PmQ==
Date:   Fri, 20 Nov 2020 00:12:48 +0000
Message-ID: <BL0PR04MB65145685ACA45790C2F17A96E7FF0@BL0PR04MB6514.namprd04.prod.outlook.com>
References: <20201119170425.18365-1-conor.dooley@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: microchip.com; dkim=none (message not signed)
 header.d=none;microchip.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [2400:2411:43c0:6000:752d:4d55:43bb:285f]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6356b82b-0354-4de9-5e4b-08d88ce9037d
x-ms-traffictypediagnostic: MN2PR04MB6640:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB6640A50BCFDCEED8B2FA8702E7FF0@MN2PR04MB6640.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:923;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IIFUoMS0Bk0mhX3pC/K84maAFSORiuzulaJtqsSJIhntORIQ+Msi/Gtwb7UHSbJUcCJSwphIt+K9BuGRiYH6KT3ASRFaAQj5dNlqr9OvN4XbjfAEPrVM0h9O7tncdottb8tiDqSN+eYGt/Q1EwXew02DxhaEBRlH/jTF1OWhEtcyWAXMA1Rnln7dsAX8tsI8298lGE1czLe7h20kflE60ygBDMzoEpQHdLokcDjvJ/rD+YXTtSRbdWU1I1XKGD/xPAIsPtyTbf+3CmomeS5Q254Bq8XsMR0VBgIhN1xOqd4EGTrd7V6dehIGZXpj4pZ4
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR04MB6514.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(39860400002)(396003)(346002)(136003)(376002)(2906002)(66446008)(71200400001)(66946007)(91956017)(4326008)(83380400001)(5660300002)(54906003)(186003)(86362001)(66476007)(110136005)(66556008)(53546011)(7416002)(33656002)(64756008)(8936002)(6506007)(478600001)(7696005)(8676002)(76116006)(55016002)(316002)(9686003)(52536014);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 2fmoYbHVHetlvCHKReRgH9zu1gXojxLweyxBrFXZLxoccM0QjYGoCR1li/ke46GEOJMVv8zPHeutj3GMxsrJ5xvvdS9+sW4ze8Vrgud9iM4ieIAWH5ongTKEA3OdkNZbkXJJ3UJZWP8SM2SB/wuznMuZuqimFcZOFwhyHwvA8YCQo0znXWU2qmKjoN1mG4VA72BfDP2bNa0kDq5I885gvG8oCYSp6Do/iq5odQqFyjBKPAan7o6UlC8TAkVvvcxvcmmrFCBKCNoztIhBzHIxm6YHqa49tBtzEVnNvwXfwD4Q9rU/ErvqWsvl1mcQLewpeSdhYtaDRld3o+bjXO5Y9xmP26/sYRXSPOMrUKeBJbU4DyylEuPLWADehmy7Ulca285/uNzmR1lvZrFDpUYiv9akfh8W7oTqez/Lrk20hWdeUie9G5Rf3uVpwvZqtl+HBApF/Gy7ZQK+RMgozHiAdgv5Gnuum71gRxu7lGvEK1UvwkMKN2iEwN0AqSFkoec/ZEu0leGD1wKe7Jrkc/+q0Kp1yFaa1xCDG9PRSQJyreyJrd/fckyaV9r9Eu+zM1xFyrcUuxW3BeBvkjb/171wWbvbxfl+nqsX5nWWFRsLD3CYiZb0DZHx6lxHPSUlOsUQW/glAicOZPVfszgEqE8YrfR9vwSFw8h51njBNeatsvsKC4pO+5MUlXO6SowuPqbWTmRxhZ3AV5p+2Tpd3VBDFQ==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR04MB6514.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6356b82b-0354-4de9-5e4b-08d88ce9037d
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2020 00:12:48.5387
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ioPRyTWa38XB3iM2fKNSPC/35iJXMz3ZLd2dNBgwzyRLDkk9oDJb4D/2PV0WX0TNHlSFWuSTGMdgT0lyGlzkrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6640
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2020/11/20 2:05, conor.dooley@microchip.com wrote:=0A=
> From: Conor Dooley <conor.dooley@microchip.com>=0A=
> =0A=
> Add header to support the Microchip PolarFire SoC MSS system=0A=
> controller mailbox.=0A=
=0A=
This should be squashed into patch 1.=0A=
=0A=
> =0A=
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>=0A=
> ---=0A=
>  include/soc/microchip/mpfs.h | 50 ++++++++++++++++++++++++++++++++++++=
=0A=
>  1 file changed, 50 insertions(+)=0A=
>  create mode 100644 include/soc/microchip/mpfs.h=0A=
> =0A=
> diff --git a/include/soc/microchip/mpfs.h b/include/soc/microchip/mpfs.h=
=0A=
> new file mode 100644=0A=
> index 000000000000..60311ab72b76=0A=
> --- /dev/null=0A=
> +++ b/include/soc/microchip/mpfs.h=0A=
> @@ -0,0 +1,50 @@=0A=
> +/* SPDX-License-Identifier: GPL-2.0=0A=
=0A=
This line should be a comment on its  own:=0A=
=0A=
/* SPDX-License-Identifier: GPL-2.0 */=0A=
=0A=
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
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=
