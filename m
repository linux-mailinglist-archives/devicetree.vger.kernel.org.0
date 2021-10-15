Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 855F742FDCD
	for <lists+devicetree@lfdr.de>; Sat, 16 Oct 2021 00:05:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243208AbhJOWHb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Oct 2021 18:07:31 -0400
Received: from mo-csw-fb1514.securemx.jp ([210.130.202.170]:49300 "EHLO
        mo-csw-fb.securemx.jp" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243204AbhJOWHa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Oct 2021 18:07:30 -0400
X-Greylist: delayed 487 seconds by postgrey-1.27 at vger.kernel.org; Fri, 15 Oct 2021 18:07:30 EDT
Received: by mo-csw-fb.securemx.jp (mx-mo-csw-fb1514) id 19FLvHca016322; Sat, 16 Oct 2021 06:57:17 +0900
Received: by mo-csw.securemx.jp (mx-mo-csw1514) id 19FLvEEb023193; Sat, 16 Oct 2021 06:57:14 +0900
X-Iguazu-Qid: 34tMYeBbJZoUVDWCI5
X-Iguazu-QSIG: v=2; s=0; t=1634335034; q=34tMYeBbJZoUVDWCI5; m=3PoNASkfY/97gQKcc6UPnYo0KxOPduI7UEhyzFAHyTc=
Received: from imx2-a.toshiba.co.jp (imx2-a.toshiba.co.jp [106.186.93.35])
        by relay.securemx.jp (mx-mr1510) id 19FLvEBv000836
        (version=TLSv1.2 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
        Sat, 16 Oct 2021 06:57:14 +0900
Received: from enc01.toshiba.co.jp (enc01.toshiba.co.jp [106.186.93.100])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by imx2-a.toshiba.co.jp (Postfix) with ESMTPS id 223EE1000F9
        for <devicetree@vger.kernel.org>; Sat, 16 Oct 2021 06:57:14 +0900 (JST)
Received: from hop001.toshiba.co.jp ([133.199.164.63])
        by enc01.toshiba.co.jp  with ESMTP id 19FLvDKD028188
        for <devicetree@vger.kernel.org>; Sat, 16 Oct 2021 06:57:14 +0900
From:   <nobuhiro1.iwamatsu@toshiba.co.jp>
To:     <yuji2.ishikawa@toshiba.co.jp>, <robh+dt@kernel.org>
CC:     <punit1.agrawal@toshiba.co.jp>, <yuji2.ishikawa@toshiba.co.jp>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 0/3] arm64: dts: visconti: Add Toshiba Visconti TMPV7708
 VisROBO VRB board support
Thread-Topic: [PATCH 0/3] arm64: dts: visconti: Add Toshiba Visconti TMPV7708
 VisROBO VRB board support
Thread-Index: AQHXwN2vS/kvB/VxzkiSsXbPd59Kd6vUnVBA
Date:   Fri, 15 Oct 2021 21:57:11 +0000
X-TSB-HOP: ON
Message-ID: <TYAPR01MB6252AAB3AFBC8B0BCD3A9E1692B99@TYAPR01MB6252.jpnprd01.prod.outlook.com>
References: <20211014092703.15251-1-yuji2.ishikawa@toshiba.co.jp>
In-Reply-To: <20211014092703.15251-1-yuji2.ishikawa@toshiba.co.jp>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
authentication-results: toshiba.co.jp; dkim=none (message not signed)
 header.d=none;toshiba.co.jp; dmarc=none action=none
 header.from=toshiba.co.jp;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3bd0be70-e6d4-4502-2c65-08d99026bdb4
x-ms-traffictypediagnostic: TYAPR01MB4718:
x-ld-processed: f109924e-fb71-4ba0-b2cc-65dcdf6fbe4f,ExtAddr,ExtFwd
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TYAPR01MB47182BB26F83E17017C40BD292B99@TYAPR01MB4718.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: m7GyOrc3prPlOdfBRobjRXsyuhi+kkn5RIIMsBkCc9j7DiUvO578AP9DMfGgv5VfsGJu/ZsIMat8bXDEHm2rBzgC3TlgyTw2/yyQN6+/2KN1aqU47bVk2QQpmB8cjEkn+IPmhhTNscMkIhb2x0N3en0jfYBb3yOsy/R5Rs9vXps30fesq18D60FYkXaCcegI1VMGJk5Q4vOhbMdYEqQZEwjAFhOnmmrRRz005A6lGQKsjVi9eAhb2E74McITY58yez20aPDTaheNRcJ/vPLg+ZVS8gG5KNkT/IsfH1TNdayAcMHWzfcrbcDq9CiF0Ot4OzFRrrxe+SE89FNr6fIDokE5BCBI2hXy0cUo8wQ8HeBBFA3uacDih2Bxkz5nlutZ4Wh1R0499EGUcDfNMSg2Mv864HnXrIvRqsrrmc7lLGlXakswgcm4LwugX1+1wXSj3XzGnfim+bsQ7fXszSvUGhu2eguVog28uqBVZc9NAnmCQyxM7yWlA5xE8mz9AnI+iKXUkKkFA50rLXkZEfhxQYUO7pzPvHVs20YR0dKuiZPAUfBZVzPRBJ8Nn+nJ88gFuojMygWygca1Lt4ZiQBQZSG0k9S4LI7/EXdpVCaLbnaBu5NdMZZ+aEdEIuw6ub7e74uZ3rOZD5T55owEAtU/+YxvYbrIQRww8p5lrF3p+LKj6HQH58UwBGq9aFHhS0xmfcgis2eN+jRU+ryvQRJcZWOu9vlRNFfVj9sqeafi1nTKSvRpBY9d+BCcUPkJW7XwlIdj0rpz9pb6TkYy1o++Uav6OpEvAOWpJUrHrRko8u8=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYAPR01MB6252.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(9686003)(52536014)(33656002)(8936002)(8676002)(55236004)(26005)(66446008)(64756008)(66556008)(66476007)(71200400001)(66946007)(55016002)(53546011)(6506007)(2906002)(76116006)(86362001)(122000001)(4326008)(316002)(5660300002)(83380400001)(966005)(508600001)(110136005)(7696005)(54906003)(38070700005)(38100700002)(186003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?STVaSVZYNkNmNVJKWUl6Qzlhdm83ZE56am9PZ2JETk9QU2tHMmdpaVAzbkJJ?=
 =?utf-8?B?WURuNXF3eVZZOHI2TE5pQWpGQUxUYVhUZlFQMjY3dDRERE5iWnJXZk5JdDJ0?=
 =?utf-8?B?Uno1Q01SUE15Ymh6QmMyeitWOG4yTWF4b1JDS2h2M1BJVHpyZ0FuTGEwdDEx?=
 =?utf-8?B?NHk4NEVJQkRheWFuMERvSEVBcXpTemIycFRiVlN2WFZOZHhnbkFhVHNUSXN5?=
 =?utf-8?B?a3pJT25Lcm5INURsMTdDZ201WFkyZUpsZngxeFpBaDh3NGdPNWtjSldneDMz?=
 =?utf-8?B?Vm9MVEdQL2RiQm5PNyswUHJNWTdTS0FVdTJnekVRY2VpT2Z2eWlkaXdsdW5I?=
 =?utf-8?B?azJLS25HVmlzM2JiMWxTc3pzT1M3L2VXaU4rNVdKUTVGRWdickk5QVhJdW5H?=
 =?utf-8?B?OGltK0VwVU9aWktYcTJpUk9QMUhGcFl1bWV2R0I5dzVSTUcyaVE1bHB5azhp?=
 =?utf-8?B?cTU3YXhWRldyRjl6TWlxMzhQSkc5NjJFZGYwOWMvenRzWlgwWStyd210NHJw?=
 =?utf-8?B?eERUOTF3MTR6b1dhM3g3Q2xzL24yOWdHc2dJTzFuLzVXRUtsL1hmYlZPaG9p?=
 =?utf-8?B?U2pYRnlPaHBNZFBiTnF2bTdjWFpqTUFTNmJ3VWsyQm9sTTIxaUVXUUpRRms0?=
 =?utf-8?B?SjVlekZMdGpDSm8vd0tNRTR3Q0FlVUYvcDllRVRmNEtYK1FiYzdhUDlEVHZC?=
 =?utf-8?B?cWNOV3BheW9EZW03TDFGaGkvWDY4QlJ3MHNMMzJLaHZuU1Z6Q0RBMXBWd2tL?=
 =?utf-8?B?K2tRanJRUEhVMTY1YnkyTEEyZkh6UE1aNVJzZUhqT2NtWjNMMDh6eTY0MUNL?=
 =?utf-8?B?TExKOEdaYmw2dWxLUEhoRFMwNStQSGtLMUsxOGdOc2FvTlRycXhCN1FQTUlG?=
 =?utf-8?B?Zi84ZmhVTE9TL1k0L1FQNFpRUUkwM2wybUN4eHE0OW05K0orZ2JIYW11MTFD?=
 =?utf-8?B?c0pzNWZFZitrUVY5ZmpFT3ZGZlJLY2pzd3BnQ0h4U0hHaDZiOUYrd3pQVDJM?=
 =?utf-8?B?V3h1SG85VjFFWWhwdnRvWTBna01EelZ4Q0Y2L25ZZVpKZG1DM0dJZDFBV1FO?=
 =?utf-8?B?QnNXZzF2d2dKRzVOb2Q1OXY0dVk2aEJ0ZmE3NTVHUEt5ZW9KcjJMcU9TajlF?=
 =?utf-8?B?WjhDV2JZVjdPQmR3MEo3aTFJVUlKT3doQmZoY2c1bFZtM1pqZmtSSE92eUdG?=
 =?utf-8?B?WjNFNW1LaTlWVGQ5eFJtWXZRc3hjSmw1bVBWMzh0TU1ES0VDdFNJMU53RUgz?=
 =?utf-8?B?WEcxYlhVU3haZm5QMHhYQk5IRWZTLzhONXBDdGNBNGpISTArN1VvRk56ek1m?=
 =?utf-8?B?T1VuTThjWE9DTi9EQmJCVXFxMW1JVHAxcTRnbVhHaFJFQnhxR3NMWG9Ia2Jn?=
 =?utf-8?B?ZTFnbTJldzNIODN5cnVzUEp2enRudHB3OUszOE1JOExrdEgzZ2M2bE1jR0Rm?=
 =?utf-8?B?RlhLZnNieFIrOElEcDRhQ1REcjFqWGZ0QWk5cVg4MnY4SW40Q1JIa1Rwejly?=
 =?utf-8?B?QnJ0cFovRzIybnBJQjNKZ2cwNzZpN0VXdHVNU3JWK3lSdmY4WEx5UExZbGJp?=
 =?utf-8?B?UCsxSWFrYW5iVmZJTE9iazYzaEdFRmYyVGZSNXQ2UTFGZ1V3UXQrWit1eWVO?=
 =?utf-8?B?SVlJbHBld2ZnbjJGS1I2eUxxVGxmVUxleEw1SUpMMjVLZFRDTTVYeFlUL1hI?=
 =?utf-8?B?Wlh1d0U2NU9Tck5SbFl2SG96VGdWa28vUnVHN0k5S0E0SWoxdXphbElTWVlG?=
 =?utf-8?Q?NWl29YPnUsgtrIiMu6JkRkarh7NiU0lF+va9NQu?=
arc-seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SLJAhzVwxDDCy+Xy/Y45CVm4H3D7k7VQJ/VKw5lHuPid6PJgWDe/4SyNLU81yQuqMbIPX8MBnUwGEn0wiwKcCVr62qzCx9lnw4xx5/3YBMLcyzQony9XXwhEWBMH2I4yXiPZ8xLzuJhfQT11fPJ0wpR2FIKzg38/9aq/Qj2Evymt18+PIcpOS3jYchP83nsAAKLxUXTg0HzVjMEdUXVDcki6wYx8ppAYxtVW6u8x7nm4Uoxm/84sXguym+nb40RZ6SGecKox1fY6ltsA7NEWk4/ISGuyNHB+pZzUD5dECP2pDyG7IwchVlO+XZ05r/xmUtX+9uFXvnqHMbWKV+W4+Q==
arc-message-signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RxxxApgW2D4f+8VHHwvhXNz0CkRBupt2sUdrTN8qW10=;
 b=DmgG7bsBLdoqAzI4JMVIPsf3Hemqit/pzBGTlLajBt0yVfs0yZPRunmxEgw1+XQvKJ6LhBk997EsfVgyuB5r/bvaYHs2oaEYdDwmmHKIhr+aULpqwCaZmcf4OCtOI6JanXuxgOscaXw0hOsN4pn4hst0Y1iIqZBuIzjnAXM3a+rpkwg+KnIOCEaMBBvlscScHLvW4zZtq1F8jR99+AV+AILqGjYBCSktYzD3wANXNITDFiDvcQBrwuaFdZoacXuMXq8Q+FDb/DWMqyHSs/armOFH6SWbJnZNVBsfzLqP83lbXmy/DwItjBSHHlv/glOGukM16srB0zvpxy6Dc0IntA==
arc-authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toshiba.co.jp; dmarc=pass action=none
 header.from=toshiba.co.jp; dkim=pass header.d=toshiba.co.jp; arc=none
x-ms-exchange-crosstenant-authas: Internal
x-ms-exchange-crosstenant-authsource: TYAPR01MB6252.jpnprd01.prod.outlook.com
x-ms-exchange-crosstenant-network-message-id: 3bd0be70-e6d4-4502-2c65-08d99026bdb4
x-ms-exchange-crosstenant-originalarrivaltime: 15 Oct 2021 21:57:11.4329 (UTC)
x-ms-exchange-crosstenant-fromentityheader: Hosted
x-ms-exchange-crosstenant-id: f109924e-fb71-4ba0-b2cc-65dcdf6fbe4f
x-ms-exchange-crosstenant-mailboxtype: HOSTED
x-ms-exchange-crosstenant-userprincipalname: CZm9YzMOEtkw5IyH4O5JPy6CrqizkLOK6QbVA7BvQXBxIXrHIF9hz1og0v9mIAT1uQhd3lWnPk1iyWDITL/aaBiDPhGBkC/bb+euqoyZSAfb/x0ye4HbZS1P//POznZ2
x-ms-exchange-transport-crosstenantheadersstamped: TYAPR01MB4718
msscp.transfermailtomossagent: 103
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: toshiba.co.jp
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SGksDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogWXVqaSBJc2hpa2F3
YSBbbWFpbHRvOnl1amkyLmlzaGlrYXdhQHRvc2hpYmEuY28uanBdDQo+IFNlbnQ6IFRodXJzZGF5
LCBPY3RvYmVyIDE0LCAyMDIxIDY6MjcgUE0NCj4gVG86IFJvYiBIZXJyaW5nIDxyb2JoK2R0QGtl
cm5lbC5vcmc+OyBpd2FtYXRzdSBub2J1aGlybyjlsqnmnb4g5L+h5rSLIOKWoe+8s++8t++8o+KX
r++8oe+8o++8tCkgPG5vYnVoaXJvMS5pd2FtYXRzdUB0b3NoaWJhLmNvLmpwPg0KPiBDYzogYWdy
YXdhbCBwdW5pdCjjgqLjgrDjg6njg6/jg6sg44OX44OL44OIIOKWoe+8s++8t++8o+KXr++8oe+8
o++8tCkgPHB1bml0MS5hZ3Jhd2FsQHRvc2hpYmEuY28uanA+OyBpc2hpa2F3YSB5dWppKOefs+W3
nSDmgqDlj7gg4peL77yy77ykDQo+IO+8o+KWoe+8oe+8qe+8tO+8o+KXi++8pe+8oemWiykgPHl1
amkyLmlzaGlrYXdhQHRvc2hpYmEuY28uanA+OyBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsN
Cj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBsaW51eC1rZXJuZWxAdmdl
ci5rZXJuZWwub3JnDQo+IFN1YmplY3Q6IFtQQVRDSCAwLzNdIGFybTY0OiBkdHM6IHZpc2NvbnRp
OiBBZGQgVG9zaGliYSBWaXNjb250aSBUTVBWNzcwOCBWaXNST0JPIFZSQiBib2FyZCBzdXBwb3J0
DQo+DQo+IEhpLA0KPg0KPiBUaGlzIHNlcmllcyBpcyBhIGRldmljZSB0cmVlIGZvciBhIG5ldyBi
b2FyZA0KPiB3aXRoIFRvc2hpYmEncyBBUk0gU29DLCBWaXNjb250aVswXS4NCj4gVGhlIGJvYXJk
IHN5c3RlbSwgY2FsbGVkIFZpc1JPQk8sIGNvbnNpc3RzIG9mIHR3byBwYXJ0czoNCj4gVlJDIFNv
TSBhbmQgVlJCIGJhc2UgYm9hcmQuDQo+DQo+IEJlc3QgcmVnYXJkcywNCj4gICBZdWppDQo+DQo+
IFswXTogaHR0cHM6Ly90b3NoaWJhLnNlbWljb24tc3RvcmFnZS5jb20vYXAtZW4vc2VtaWNvbmR1
Y3Rvci9wcm9kdWN0L2ltYWdlLXJlY29nbml0aW9uLXByb2Nlc3NvcnMtdmlzY29udGkuaHRtbA0K
Pg0KPiBZdWppIElzaGlrYXdhICgzKToNCj4gICBhcm02NDogZHRzOiB2aXNjb250aTogQWRkIDE1
ME1IeiBmaXhlZCBjbG9jayB0byBUTVBWNzcwOCBTb0MNCj4gICBkdC1iaW5kaW5nczogYXJtOiB0
b3NoaWJhOiBBZGQgdGhlIFRNUFY3NzA4IFZpc1JPQk8gVlJCIGJvYXJkDQo+ICAgYXJtNjQ6IGR0
czogdmlzY29udGk6IEFkZCBEVFMgZm9yIHRoZSBWaXNST0JPIGJvYXJkDQo+DQo+ICAuLi4vZGV2
aWNldHJlZS9iaW5kaW5ncy9hcm0vdG9zaGliYS55YW1sICAgICAgfCAgMSArDQo+ICBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3Rvc2hpYmEvTWFrZWZpbGUgICAgICAgICAgfCAgMSArDQo+ICAuLi4vYm9v
dC9kdHMvdG9zaGliYS90bXB2NzcwOC12aXNyb2JvLXZyYi5kdHMgfCA2MSArKysrKysrKysrKysr
KysrKysrDQo+ICAuLi4vZHRzL3Rvc2hpYmEvdG1wdjc3MDgtdmlzcm9iby12cmMuZHRzaSAgICAg
fCA0NCArKysrKysrKysrKysrDQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Rvc2hpYmEvdG1wdjc3
MDguZHRzaSAgICAgfCAgNyArKysNCj4gIDUgZmlsZXMgY2hhbmdlZCwgMTE0IGluc2VydGlvbnMo
KykNCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3Rvc2hpYmEvdG1w
djc3MDgtdmlzcm9iby12cmIuZHRzDQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9i
b290L2R0cy90b3NoaWJhL3RtcHY3NzA4LXZpc3JvYm8tdnJjLmR0c2kNCj4NCg0KQXBwbGllZCwg
dGhhbmtzLg0KDQpCZXN0IHJlZ2FyZHMsDQogIE5vYnVoaXJvDQo=

