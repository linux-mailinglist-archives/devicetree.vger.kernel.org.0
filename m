Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E49F22FEA96
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 13:49:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728643AbhAUMso (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 07:48:44 -0500
Received: from esa.microchip.iphmx.com ([68.232.154.123]:35028 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728458AbhAUMsX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 07:48:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1611233302; x=1642769302;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=CaUZehLEPs3R0B5XtozfFQ2K1IBbp9WavGveXpAZmT0=;
  b=MSbavh981Y07wORwCrFsmxNgdNLouK6leQD93jGhHD7hHvA32PbxedAd
   G4IXz+pwpZeNmheM5bmvqfYbAQXW6xf0X7QjG8Z0GBPhzsTqWDmGYk7JD
   aczqGGpw5sv6htQejDYvJEhj2a5sbNu41GbmPjiGa2NE5uv5Cu4n8XkHc
   3OOu/pdHKtQjhQjHJ1je5tThE8eGg4g8f8uZfVJU7fqMLb+wIC3prtNfH
   2Ny8gu0YRQlukQd8PQVEgSr4/njzUZueCz+Juk+Y8hOIJSAAqbn5bz9it
   oaqR0ECoLovAj46bzhs5eT+8E7M6rxRI/CK9bEurQRD839NOJE9lb+4fM
   w==;
IronPort-SDR: ye5gD6GM2LkQERXJhrZUaexWWQo2EwPwRpfT2/4lChqHK+HiRerxTLClHYNkWKxKESQapF6F/O
 1DPHncYscLw1vAC+lZ2PFS9XRqmfAVioEQv11nGNq4Nd5bnPGnqkbX+Ug/WEZblWzfHAKFuUx2
 LTIndYo6yvHn18nXx6pzt5ydr3g/RLMU3DDjQngzQTs1jJcR+RWfKEvxdtMdVJ3Wqe7EH+yOV3
 nvHcklibfSVIgQtyAtxirNEo/9e4QKeZQE5IP9lDWja/ohN74FaYtOh4ZW5m2fSYuJvZJM0BKZ
 azQ=
X-IronPort-AV: E=Sophos;i="5.79,363,1602572400"; 
   d="scan'208";a="41215908"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 21 Jan 2021 05:46:49 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 21 Jan 2021 05:46:44 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3
 via Frontend Transport; Thu, 21 Jan 2021 05:46:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E/A94J5MO/zfq6HGcT96/hmsJBINwIGc8uMxkJ2ZVrNqk9E1kwcV3mLjDjBBk/igIJNC00EVD5XY9DiaRQezu3f7z01yTNeRuhFAOItqQX++Z0AVeZ/afg88zRQOkSMvSZioNgAV6J+MeG2AGkQ4qIz7ILweB9ks3mZb+Jf70sQyomsHek07N5zxmag1wY5cKJdFhpHaDTl0BneCFkxKrFkLG7IvCIXBm1M+REvaIj4xT8R28i+B9imiXzlLC0hJiOukhSnUA7EV2BFxOlxChR4/uBZsFBhgd2cEZ93LFC3qeuHdcm2p8HS3D/ZZXmahRFIjzjdwq+eqUTjlZCcbLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CaUZehLEPs3R0B5XtozfFQ2K1IBbp9WavGveXpAZmT0=;
 b=PeP9mLuDp/58SSgoWGt+WGoB0LSQu/sfIf4+Kc/ASnwtlSPv0EOxe/4kaz9arw3gX/fsnogq8+VEzZ6k80b20Cc8mm27UU+w2mRg52vua2Lrpt0nUYRyTd3vOo2cOChZwfC6cGoJ1RG3e9gI2tEh/cXdwIiaQo262chIDxGOEDlbYy2YizHsZbfCTXAkAjTj67WXFoRK1yorm9bzNp09w4CJfif4SXlvRTDQOkLdYfOfSnErZj4nlCb0CHiSq5xUQKlf2+KXYBQv06Ar++rfZvcrPiVaDqiMINpna2y4NBTshlMowm3+CkkyT8tPHBS5u04XS76KuxCfjoVMGwoAng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CaUZehLEPs3R0B5XtozfFQ2K1IBbp9WavGveXpAZmT0=;
 b=jKpBPedm4s962tWrPdYP9tjav+U2NnqTpeor80t8ltH31DW1Gfjo9A1YaSKGWQxFtsi2PkOdd2wd3L70HxfV8nDPdyk+0GRrb3zKQ78vu4P+ad41L7HXWU/ULNhAd0ryaAVIBMJRKgRzUlhezd5ApW5UX9vR3njm0mrY6ZefOzI=
Received: from CO1PR11MB5154.namprd11.prod.outlook.com (2603:10b6:303:95::7)
 by MWHPR1101MB2269.namprd11.prod.outlook.com (2603:10b6:301:4d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.13; Thu, 21 Jan
 2021 12:46:42 +0000
Received: from CO1PR11MB5154.namprd11.prod.outlook.com
 ([fe80::9863:7157:f43e:3205]) by CO1PR11MB5154.namprd11.prod.outlook.com
 ([fe80::9863:7157:f43e:3205%5]) with mapi id 15.20.3763.015; Thu, 21 Jan 2021
 12:46:42 +0000
From:   <Conor.Dooley@microchip.com>
To:     <j.neuschaefer@gmx.net>
CC:     <robh+dt@kernel.org>, <damien.lemoal@wdc.com>,
        <jassisinghbrar@gmail.com>, <aou@eecs.berkeley.edu>,
        <paul.walmsley@sifive.com>, <palmer@dabbelt.com>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
        <Lewis.Hanly@microchip.com>, <Cyril.Jean@microchip.com>,
        <Daire.McNamara@microchip.com>, <atish.patra@wdc.com>,
        <anup.patel@wdc.com>, <david.abdurachmanov@gmail.com>
Subject: Re: [PATCH v3 1/5] mbox: add polarfire soc system controller mailbox
Thread-Topic: [PATCH v3 1/5] mbox: add polarfire soc system controller mailbox
Thread-Index: AQHW2UlNXeYm4PMxvUi4o6GADiv4HaoUXEWAgB3YFoA=
Date:   Thu, 21 Jan 2021 12:46:42 +0000
Message-ID: <3425400b-889f-5393-6c26-bf708f2734f1@microchip.com>
References: <20201223163247.28923-1-conor.dooley@microchip.com>
 <20201223163255.28992-1-conor.dooley@microchip.com>
 <X/BuucfqPGpE/S1r@latitude>
In-Reply-To: <X/BuucfqPGpE/S1r@latitude>
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
x-ms-office365-filtering-correlation-id: 26297adb-bc5b-451a-be13-08d8be0a9a80
x-ms-traffictypediagnostic: MWHPR1101MB2269:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB22691277037A6BF1E01E7F3898A19@MWHPR1101MB2269.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: I7fNk03CbYv2dycQyvRbyCuNVee+yo+kBdyocamx9NpAYJh/5uQmIPAzgzLtQJ8gGOGjFDBVgpW828LXvYADGxKl1c4PGd7k+aeR3RLDR4B+kxTyxlemTnziAg4R3p/6bcDog/AVMYYt3OtWvYQ9vQI+/XxcnOAiaZ50cbt5RZf6j332oe4TJIyr9a/3Y2PQNlyedlW1KFS7zaF47TPxLYRnYUjJDEgL6vngQRD94+9cZGCtMRoasQmQG4I225tjj8d27CLJKDbuSrwR3J3nKSICLoKv26BKv2spvsmfhrArgasTwJBmVC0wQpPaI9k/3LBX7kI6aVlIz39VLIkIcVVUNzC6Z+Glz0+c5ZMYaUSNVuUM6QWh0sM9Ssv04daMrV5nbmGk3bBUU0ftBc1rQVpzn50SG38+tHqdzdAUyNo5L9eID8TB1PQnRvjb4g97g0coVvOxfm6Vha6WwbgPsmSwuWQpNBwv+QHSHVZK0Vw=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5154.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(39860400002)(346002)(396003)(366004)(136003)(376002)(64756008)(66446008)(36756003)(91956017)(66476007)(66556008)(76116006)(66946007)(8676002)(66574015)(6512007)(2906002)(316002)(5660300002)(26005)(6486002)(15650500001)(86362001)(186003)(8936002)(2616005)(31686004)(6916009)(83380400001)(6506007)(71200400001)(4326008)(478600001)(31696002)(7416002)(54906003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?Windows-1252?Q?yZO2B7eiFLLq6WHq66erATenRMuLnokXqQjQNEfCo79ALH1IZw9VU9XE?=
 =?Windows-1252?Q?2viAND3rFduYGFUWFKaBbAezGJxWHHYi/0aTEBI/Jgb8dHAe3yDmOm+b?=
 =?Windows-1252?Q?YG166alhfG4/lTYPXmi2En4UZ9cRBxB6qDcdkvpUy6Ek55EKoa1rE6KS?=
 =?Windows-1252?Q?F4k8Uu+t8lCfaiAn7aQSpJ6hN35dycl5Q75mEAYgUz+oUenWCyuu6P8l?=
 =?Windows-1252?Q?NC6NVpRUseQJ5cnwE1e4VIYAid8vri5aH0ATgQ7bsC4ks70RTz7RLyFD?=
 =?Windows-1252?Q?VRJg11xQKAGkBpZP54ehEB4F6R1Qrb9n1wQfwTO7h13J4xPgtyjRVSb8?=
 =?Windows-1252?Q?GEfYE1WGFikxRdfb58B45f6XV1Y3h1+jRSLSzxiR2cTAHsKQ71kHnuOl?=
 =?Windows-1252?Q?fSjbA2gnSyZhpS02SamdbhhGgBMJ59qrILmt8ameS2CwzMT+REKFE+QA?=
 =?Windows-1252?Q?Wj2MQJscCtf/Cnhrmr3lnZhNJvPYzjo4buj6qC7O/xlWmGyz9SqV86Ks?=
 =?Windows-1252?Q?KUjvPHHx8E6DCLDgGXPw7L3L8P5vgAj860Q3/gECSm8hQoux6LWGOjPq?=
 =?Windows-1252?Q?H/PWi3hsv7FpW/iUIBKhB9C/9UKp1QNlYNQw1vBmNtMZRFJvVSFEIvl8?=
 =?Windows-1252?Q?nHlLmf5f2+ICg6Ww83gHbrdGbxQKKgXqCocHtBXbJQxJjCV4mbMAejGe?=
 =?Windows-1252?Q?hky7rF859pZYdMAsOgyxYJdUYVajZezTI4KpnrWipWmZNRJwDYpjFbkK?=
 =?Windows-1252?Q?o31RDOIv+P5uCX5pW1Dg45MkUofEfVerCsn5uHWTUy1WglFvwE9ZuJbZ?=
 =?Windows-1252?Q?T7c8wSy65SfDKOMur0IclCJey2f54vv+7wat27PzLywHNTqEVzCw/5Yd?=
 =?Windows-1252?Q?PcEq3v2ApxJy+196IrAFi9+NTJe6UgOrBBNYbnNY8SwovHCwsFndLxPA?=
 =?Windows-1252?Q?8MwP4Sw5U2NEn6Mn+QbfURJMlF57tPfgHg2KdrnPwISRC3SccsR7Wfye?=
 =?Windows-1252?Q?Dw/Y0CeFyuf8Ozsq+eBvyZyTEc4FKDTwlJGeZODWyHS2mLYQe/4DUmoz?=
 =?Windows-1252?Q?LA/DkdZbmGx48MPQQPAepBnoiDTN8puYkw8/7Ch6+5BlcIY/KSj4Ewbs?=
 =?Windows-1252?Q?c8qUR7h3mfNbjTc+lHjvsr5b?=
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <9D97453363D5334E984D346FAB298ABC@namprd11.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5154.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26297adb-bc5b-451a-be13-08d8be0a9a80
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2021 12:46:42.1634
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LX6fF+lQlhrYQRQYtibX3jT4xLXxpVQr4zMgLkpqCWUWOp9NKC6VYnwmS1Y1pI2SBU4dWERUKkZ1/ti+XG1LYyaYgH+IQZObBjmngLbVYZY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2269
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/01/2021 13:01, Jonathan Neusch=E4fer wrote

>Hello,
>
>I've added review comments below. Some of them might be more detailed
>than necessary, and reflect my opinion rather than something that must
>be fixed. Anyway, I hope my comments make sense.
>
the more detailed feedback the better in my book, if i dont mention it youl=
l probably see in changed in the next day or two
...
...
>
>
>> +=A0=A0=A0 /* Code for MSS_SYS_PARAM_ERR is not implemented with this ve=
rsion of driver. */
>
>What is the "code for MSS_SYS_PARAM_ERR" semantically? Input validation?
>
>> +=A0=A0=A0 writel_relaxed(0, mbox->int_reg);
>
>What does a write to mbox->int_reg do? Does it acknowledge an interrupt?
>It would be interesting to have an explaining comment here.

both of these are hang overs from the bare metal driver and will be dropped
>> +
>> +=A0=A0=A0 if (msg->cmd_data_size) {
>> +=A0=A0=A0 =A0=A0=A0 byte_buf =3D msg->cmd_data;
>> +
>> +=A0=A0=A0 =A0=A0=A0 for (index =3D 0; index < (msg->cmd_data_size / 4);=
 index++)
>> +=A0=A0=A0 =A0=A0=A0 =A0=A0=A0 writel_relaxed(word_buf[index],
>> +=A0=A0=A0 =A0=A0=A0 =A0=A0=A0 =A0=A0=A0 =A0=A0=A0=A0=A0=A0 mbox->mailbo=
x_base + MAILBOX_REG_OFFSET + index);
>
>word_buf is uninitialized.
>
>In mpfs_mbox_rx_data, you access the registers at mbox->mailbox_base +
>MAILBOX_REG_OFFSET in steps of four bytes, here you increment the offset
>in steps of one byte, because the index isn't scaled. This seems wrong.
>

Thanks for catching this bug, both are related and were introduced during r=
efactoring.
The only dependent drivers implemented so far don't use the full sending fu=
nctionality
so it went unnoticed.

...
>
>
>> +
>> +=A0=A0=A0 mbox_chan_received_data(chan, (void *)data);
>> +=A0=A0=A0 devm_kfree(mbox->dev, data);
>> +}
>> +
>> +static irqreturn_t mpfs_mbox_inbox_isr(int irq, void *data)
>> +{
>> +=A0=A0=A0 struct mbox_chan *chan =3D (struct mbox_chan *)data;
>
>This cast and the one at the end of mpfs_mbox_rx_data are somewhat
>uncessary, because C allows implicit conversion of void pointers to and
>from other pointer types.
>

true, i had put them in thinking it made it more clear, but on reflection i=
t doesnt.

...
>> +++ b/include/soc/microchip/mpfs.h
>> @@ -0,0 +1,51 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/*
>> + *
>> + * Microchip PolarFire SoC (MPFS) mailbox
>
>This is mpfs.h, but the comment implies it's only for mailbox-related
>code, not for all of the Microchip PolarFire SoC. Is this intentional?
>

yeah, while thats correct for now it wont remain that way for long. ill dro=
p the mailbox reference

>
>Best regards,
>Jonathan Neusch=E4fer

