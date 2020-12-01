Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 354342CA840
	for <lists+devicetree@lfdr.de>; Tue,  1 Dec 2020 17:29:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726441AbgLAQ1t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Dec 2020 11:27:49 -0500
Received: from esa6.microchip.iphmx.com ([216.71.154.253]:9010 "EHLO
        esa6.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726037AbgLAQ1s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Dec 2020 11:27:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1606840068; x=1638376068;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=l+qKWlKYMEBthv4evDfq2mp13ksFllYa7w7Tlf8VBqY=;
  b=shWAE9TJiSWglTLSTM+knrxyMi1ehpHeIZdg2StJlAiSB/5JuFAa4T1a
   orHu/dF8SkvjZDgfyy+WlaY2f3p08XjCWg37CqD9P+OulbBvw22N7Asgp
   W97y+0hLswnPcH2zqASkyGQpZI1atiL+shdmcLGL78OSJjI/EtPgQ8YRY
   ElKrx1gLjl9bSGlh3h3v1WdWtO5W67hqauXgYkZEbezm6WLY09Tm4xmqZ
   GxdRneK0dIt0WNutaq5JuSF5aSPijq71IWNRhrztgQU+/IId3bEmXcauz
   3XYHJ8VNXu53kG+PsjmO1ozVHySnPD9cKfImMfvl50jBSRRO1/9gA7NCL
   Q==;
IronPort-SDR: pL2x+Gvb8R4+rZUPLkc4SIEc2eFtMKqvEDSpUYIXzTk5nX/inrJXM09+SJx7R9m/kmReQA5ng5
 q6/mNJ6QnJTnqCDwVadlEINDkubuAPAUnXsNtYKQtio7EqxjUmzcmTJ4KHSn9NBgrL2457v9yg
 pQUN65p+vIWnjhjtJnM4Nd1yW00ctXOHFYMNK5UtgTytmhc12KVoenIOiJLg7QST9PShudHxqA
 9wUloa3CHNXLTYXAiIpsqlMnfKW3TxAkFWBAN6v363q0vTDMSXrmfyDtkheh++mOu6nx/aZTT8
 Zf8=
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; 
   d="scan'208";a="35623351"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 01 Dec 2020 09:26:42 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 1 Dec 2020 09:26:42 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3 via Frontend
 Transport; Tue, 1 Dec 2020 09:26:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N5a+F5DrtXrEn4BcAX9Z7K0/O/lRdy08wYnewsOaNgNvJbrPnE9fbPorAhJF0OR2ZqQyv8JCsx7mIh0s/9A7yrf/8tuPA75I6iEKbGiTWVVL+/6Etx3HA+IfR7LOa/LAFLHDUgmT84QN1jGa6IUB1qPag2mn/AVDW+HAR1Dcl1ldp76gHKlxQm2CxAgxHSq5rqmvpEcOtaWMlJzD4CKYhUVFVb/erSbH+oiOfZtSJsU83jjV0ORkiAwhl6VkQhLG64/7rCAJ2a/v7H+k5o7eCZ+dt0XvGu8NZdd6JPSKwMkUoHr9/K3EQQphp4TX1uD8FQrP2MCX0Vec74830QwCoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tu28krhHz3i9jbK0NybkgQMtVjNE/+GAOLwbkd15S+k=;
 b=fJNc1vG83+yZ/8jrhYistnFzk61MDpNheG6q3m6bgXxl1HUGUp4HsPRq2P/krEXfle8hcqaBuHlMYGEMkC5K3n7E8FEfsnszwpRyA7QW+l5TNRS8NRggPDA6eRe5cAs6H11YY8uALVrcnLUBvRHJSvS6Ge3nsg7ttvjG3WCdOCN37bQXtUHfDN7E/ypgy1gGkYi53tXjFOTFI9uYQFIxYVCwZ0ESVzhbAN3qOQipWJSV66BZF/q3iMEPGcj9gQIYjgwwefJwfqmtRQTN8wunT0MVk1os4teCF8cmdHZmKXlwvAJrOw/lYE63JtejgFzpbj/JBpabzruFPCDnbaFewg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tu28krhHz3i9jbK0NybkgQMtVjNE/+GAOLwbkd15S+k=;
 b=Ss1F3GGyZf7pdY7plJHTljTspKq3R87JdsKqT62iFDNpL8wyM2x14TRGT7UIKy7TQiRpff6xb6cg7W2v5s0m2HNaHGlwM7KyuW/3rUMTIFdZPhMmWaxDU8GvNuauQvmqrC+gCfNQRyv1qC/hh/T1umjlCBBvCnGKJxZ3khAQ7r0=
Received: from CO1PR11MB5154.namprd11.prod.outlook.com (2603:10b6:303:95::7)
 by MW3PR11MB4714.namprd11.prod.outlook.com (2603:10b6:303:5d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.24; Tue, 1 Dec
 2020 16:26:41 +0000
Received: from CO1PR11MB5154.namprd11.prod.outlook.com
 ([fe80::a007:19e8:3f74:b14d]) by CO1PR11MB5154.namprd11.prod.outlook.com
 ([fe80::a007:19e8:3f74:b14d%5]) with mapi id 15.20.3589.037; Tue, 1 Dec 2020
 16:26:41 +0000
From:   <Conor.Dooley@microchip.com>
To:     <j.neuschaefer@gmx.net>
CC:     <robh+dt@kernel.org>, <damien.lemoal@wdc.com>,
        <jassisinghbrar@gmail.com>, <aou@eecs.berkeley.edu>,
        <paul.walmsley@sifive.com>, <palmer@dabbelt.com>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
        <Cyril.Jean@microchip.com>, <david.abdurachmanov@gmail.com>,
        <Daire.McNamara@microchip.com>, <anup.patel@wdc.com>,
        <atish.patra@wdc.com>, <Lewis.Hanly@microchip.com>
Subject: Re: [PATCH v2 1/5] mbox: add polarfire soc system controller mailbox
Thread-Topic: [PATCH v2 1/5] mbox: add polarfire soc system controller mailbox
Thread-Index: AQHWx9GEFTONGkHUEEK7u8XSwGTWUKniSKQAgAAlNwA=
Date:   Tue, 1 Dec 2020 16:26:40 +0000
Message-ID: <f5683df4-8e90-7d39-189a-0f7faf1d899e@microchip.com>
References: <20201201110242.28369-1-conor.dooley@microchip.com>
 <20201201141328.GJ456020@latitude>
In-Reply-To: <20201201141328.GJ456020@latitude>
Accept-Language: en-IE, en-US
Content-Language: en-IE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
authentication-results: gmx.net; dkim=none (message not signed)
 header.d=none;gmx.net; dmarc=none action=none header.from=microchip.com;
x-originating-ip: [89.204.252.178]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5322f9bb-e2cb-4667-1601-08d89615e271
x-ms-traffictypediagnostic: MW3PR11MB4714:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB4714A870A6AE5E9E4F638EB198F40@MW3PR11MB4714.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xvwAJPnT8EoxVJebNg82wc/GLdaVQ4racnSyxKC5e5AMjPLDbeAWexVuF9j2eYylG/AkHxjoxI6dopliQFcqTU0S69DHwRQqlmPVEkNqUP44pfzXpUUTRbd/fDBTKP6PFPe/SlhY/6rxvFffAGBPXWwCId3L97oHRadoX4TlzytAfBTD/7Bl+fYHN2DJ8g5q3ispne4GzcfXTUUr/BnklwRN7Y+lG9ZvEb8/IVkbjtO4C37gKxfcuShpCDvlj2GW6Tg0BGJyvgabJlMxu/iD1loQoXYvG0zqELnV+ALhui8MkVQuGKLyJbPYLz1ab5L1OHRWIH7h9sSc55xY21yV+V/2k0jvVHCRNbEcDRHvUU20EHIFJypaHQYa+7NyRuco
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5154.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(346002)(376002)(136003)(39860400002)(366004)(396003)(6512007)(83380400001)(26005)(8676002)(4326008)(2616005)(71200400001)(31686004)(53546011)(36756003)(316002)(8936002)(6506007)(31696002)(2906002)(86362001)(186003)(478600001)(7416002)(6916009)(66574015)(5660300002)(54906003)(107886003)(66946007)(6486002)(15650500001)(66556008)(76116006)(66476007)(64756008)(66446008)(91956017)(43740500002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?Windows-1252?Q?neMUkQY6nWk0mBfFVdgopNLFralgFN4T5vEqQ5JHG59hK0QEMyKoBfo1?=
 =?Windows-1252?Q?4k4mJJ+2oObybcGza9GELNblPl8pJlzPtq6RDpPajhm2TAqjJ58zmLd+?=
 =?Windows-1252?Q?CRYPH2G3udhP+4k6Ypv3dtE173qlPrlxNhbi1kskNw9UmC06Dc++HdTt?=
 =?Windows-1252?Q?LWtT5sWx0IbcEky3+m6jJ2+RjJc75FVTifOcd18SpG2X24BTZ8LtMs1r?=
 =?Windows-1252?Q?Gs6gHocUNjCzyRMKRcrQMh/7NXqqiKH0Z0nE1K2kCoaeLlZHS6lE+Kva?=
 =?Windows-1252?Q?oeLT60WMpncRYxKiWSkROhGMmiDTsK6V00au2Oaw/hYfZgXfAD20xIfU?=
 =?Windows-1252?Q?J5RKUbQC5tfuUgNsfcFyKxSeWBXJwztpOGHb+QPrFpHECXnkSP3VmvNu?=
 =?Windows-1252?Q?TYC2MrHjVFOAKqkCu8iu8n+XrLCZChcZsebpoTkBtWe/I5fle5OUCYqW?=
 =?Windows-1252?Q?voO5PSxVfZUDBjGYeGdcQk7W+VfMC6YeuMT1Llq3D5UyUsKdJ0hUv9ni?=
 =?Windows-1252?Q?/sSk+X+HC4eCwF1nHFvCIbJNUWWyrAbnkPczSab+kuTBRUGepc67kYH8?=
 =?Windows-1252?Q?wjMYzbGrsuvdP5Qk0AbjzvghVwAFkidWQSPen9/KB884LgGhcs8sqYc0?=
 =?Windows-1252?Q?YIXoSYIkJItgVlliFZHCdJ4XkvU4zreP84SdB28d3OIq89PiWAkrgb/n?=
 =?Windows-1252?Q?d2lzTsyLw6IRWGvRFjsM8UtprFM7DtYtTY2o7jMYphGXvFL542Hhqxz1?=
 =?Windows-1252?Q?NB02SuGSfE/GWGEDAtqqU2Z+McpDwTtjRaUX3BXItC5oBcgkfKQhUwyx?=
 =?Windows-1252?Q?ZyoWoIsX5cF83UeLAZl1Vx+M6l2K8CPOuE41+mFuwLpsNTcKfOCxFMY4?=
 =?Windows-1252?Q?3zzPgl/agPl2cvRGXJh4bnkEboRHGylYoedbglIXnGknpYC5p5HS919p?=
 =?Windows-1252?Q?0QLtxl/KCteHR9nLe+NvqmsQJVC+7ZYBcKrG2UAPEvVuj1mmcfBJPSqB?=
 =?Windows-1252?Q?JzI+FO1qr7ciIi56y4GDINd0QtMNFwCrrhmx/sYnjXRWhAVHlno=3D?=
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <B7900DE6CC02CE42A04FD8002B35729D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5154.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5322f9bb-e2cb-4667-1601-08d89615e271
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2020 16:26:40.9311
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5bKa0l7CZ5F6Rr++5Oz/2WAV6oj5G8uCpwSsdeH/Ftq3O0VWcCKLFLLof75D0pB35GH7IdCfDantaAROJl3PVrou4SRKoYEelGnkyLs1rgQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4714
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/12/2020 14:13, Jonathan Neusch=E4fer wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know th=
e content is safe
>
> On Tue, Dec 01, 2020 at 11:02:42AM +0000, conor.dooley@microchip.com wrot=
e:
> > From: Conor Dooley <conor.dooley@microchip.com>
> >
> > This driver adds support for the single mailbox channel of the MSS
> > system controller on the Microchip PolarFire SoC.
>
> Out of my curiosity: What is MSS? Is it the Microprocessor Subsystem in
> the SoC?
>
yes, it is the microprocessor subsystem
> (It isn't quite clear from the PolarFire documentation I could find)
>
> >
> > Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> > ---
> [...]
> > +config MPFS_MBOX
> > +	tristate "MPFS Mailbox"
>
> "MPFS" in the title seems (to me) a bit too obscure for the uninitiated.
> Perhaps you could use something slightly longer that mentions Microchip
> and/or the PolarFire series?
Sure. MPFS is the part name while PolarFire SoC is the marketing name.
I will switch it in the next version to POLARFIRE_SOC_MBOX, which better ma=
tches
the config option for the SoC directory that's in Atish's patches anyway.
> > +++ b/drivers/mailbox/mailbox-mpfs.c
> > @@ -0,0 +1,285 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Microchip MPFS system controller/mailbox controller driver
>
> The same might apply here.
>
>
> Best regards,
> Jonathan Neusch=E4fer
>

