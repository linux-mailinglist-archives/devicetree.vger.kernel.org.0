Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4C871D2D41
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2019 17:05:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725901AbfJJPF6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Oct 2019 11:05:58 -0400
Received: from mx0b-00128a01.pphosted.com ([148.163.139.77]:65382 "EHLO
        mx0b-00128a01.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725862AbfJJPF6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 10 Oct 2019 11:05:58 -0400
Received: from pps.filterd (m0167091.ppops.net [127.0.0.1])
        by mx0b-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id x9AErNKV028342;
        Thu, 10 Oct 2019 11:05:25 -0400
Received: from nam03-dm3-obe.outbound.protection.outlook.com (mail-dm3nam03lp2059.outbound.protection.outlook.com [104.47.41.59])
        by mx0b-00128a01.pphosted.com with ESMTP id 2vemxb1x30-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Thu, 10 Oct 2019 11:05:25 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GyI0yVtUnv+PasqyHE9fV7kJ95MTaioCm5jzSotuyToxZrNzu4+agyAxQcQcFPcW6gihRo2445P2yzfag+vXieOiOJXCO0uw2YCLAqQqXtz53/MGzWnhg1cpm1sNTfWFTt+KtDG/gkxovrXJD4zy9TCee4E+k4Mr+yrpifcKQF0C674lYu1LIizU6xDOmzKM2jR8ioR3uiwfGdjSTnTdVOQmVKX8bErrwN/O1o0rrDyHeX6SAFhAmKRtvaNYmwM7LkhAktMu26Iv740nheEScWdUEHsDgdHDVr4sViyDZdN63wqTCMNXSldBuWTtZFrLQda/JMP/Kbda9xQ3kPHVhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ix4Qk2ka/f+PGVTRy0ES7R4GD0iWc+Z0Gy0hCV/DXMc=;
 b=Jkqaahall2O1Kf/RE2YIrp6mmYN814p0JTOraBpQzMSMGCXTzqpOcaS+gIHm7Qh4a3s3gw5eZQ0nkYX0weOdJ7/ES0THKTFREpFIWupnNnDbWIJiiSgJ79MhqbUNajj3Ooq+sTquRb2iQNNOTsCYL8D1OWCgpaTL+jQX0Go4p7hb/7BzTKsybyAfBU/Gyt2ABkRkdtLNfXfk5pid+gWXB2DF5X7OON15A0Fm6WYCC6atSNiDbu6YqU4JWhU5ns2jJOjO27kCdGlRidKl5aULfTQCYgdBM29RoISHruIkxAYIhyyu8Tj+DawA941xGPOjzDGh0sr3JS+rPHd+TidBug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ix4Qk2ka/f+PGVTRy0ES7R4GD0iWc+Z0Gy0hCV/DXMc=;
 b=cqDGhhZ+xeu4YI+M/j80YOAcEjWiwjuZEQTtoOtd711ynFDWvseq2s9FxcZl9Cw8hfUh4HUChLhOVH23MHo4DGvYTxbTaKoYnzMOakMZUvgQnRbJW4CybOF2cxE8v5OFQFRY4I9MfdTL1Q8iYCrzbbVqO5XV1QsFoVuv7n1jWPk=
Received: from MN2PR03MB5117.namprd03.prod.outlook.com (52.132.171.137) by
 MN2PR03MB5135.namprd03.prod.outlook.com (52.132.171.205) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Thu, 10 Oct 2019 15:05:24 +0000
Received: from MN2PR03MB5117.namprd03.prod.outlook.com
 ([fe80::8c20:8f3b:b536:dca5]) by MN2PR03MB5117.namprd03.prod.outlook.com
 ([fe80::8c20:8f3b:b536:dca5%7]) with mapi id 15.20.2347.016; Thu, 10 Oct 2019
 15:05:24 +0000
From:   "Sa, Nuno" <Nuno.Sa@analog.com>
To:     "broonie@kernel.org" <broonie@kernel.org>
CC:     "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "lars@metafoo.de" <lars@metafoo.de>,
        "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
        "tiwai@suse.com" <tiwai@suse.com>
Subject: Re: [PATCH v3 1/2] ASOC: Add ADAU7118 8 Channel PDM-to-I2S/TDM
 Converter driver
Thread-Topic: [PATCH v3 1/2] ASOC: Add ADAU7118 8 Channel PDM-to-I2S/TDM
 Converter driver
Thread-Index: AQHVf3PV7U74waHrAk2W214BfzRKcKdT+YGA
Date:   Thu, 10 Oct 2019 15:05:24 +0000
Message-ID: <eace751502e84651d4bc727b59464f7cfbbebbd5.camel@analog.com>
References: <20191010074234.7344-1-nuno.sa@analog.com>
         <20191010140512.GT2036@sirena.org.uk>
In-Reply-To: <20191010140512.GT2036@sirena.org.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.71.226.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7e8be14c-46b3-4e76-d7b9-08d74d93470d
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: MN2PR03MB5135:
x-microsoft-antispam-prvs: <MN2PR03MB5135E4BBF3DC5E331A17FD3499940@MN2PR03MB5135.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 018632C080
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(39860400002)(136003)(396003)(366004)(376002)(346002)(189003)(199004)(66476007)(3846002)(7736002)(2906002)(6116002)(305945005)(86362001)(71200400001)(71190400001)(36756003)(256004)(66066001)(14454004)(1730700003)(2501003)(8676002)(8936002)(91956017)(76116006)(81166006)(81156014)(478600001)(25786009)(66946007)(66556008)(66446008)(64756008)(76176011)(102836004)(6246003)(99286004)(118296001)(4001150100001)(6506007)(26005)(4326008)(6512007)(186003)(316002)(5640700003)(6436002)(6916009)(5660300002)(2351001)(2616005)(476003)(486006)(6486002)(229853002)(54906003)(446003)(11346002);DIR:OUT;SFP:1101;SCL:1;SRVR:MN2PR03MB5135;H:MN2PR03MB5117.namprd03.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: analog.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1czkfV8DGoQw4CfNBaXwOqnjGZtvIfQStF5JpwpbIPISKYb3phhZMmbZqBz8sK98JXg/eDNKimsl+RkaEitokRWuKfY5sATs7qPubv3N5zVBgcEUd0NCV7QMCf0UkBLlL+nVwaSowuv2ZHxyKvvkKQXxOBekEwVmrIcbcFeLDogfmyuc95+trqXQGQrYu8V/i+hbjvEk2s6evTaee7PuDrMouWYwy7JLVt/oGLzqy85lWhBdowyHz34ZQ2Kn6EcjkTuJAA1znEwW+AHtq8GVT957E/q8OmaswXU3ypgvc4P49EQnHjWPG5kSA7quR1c94nKPz5P8jLO4egNR23GWLhER1aOMBP9OFcMTIurvMAErJ+Z0xl9qFIG4g5zvhJgdCUms/tRS7p/nOVeZsaFtclecXzf6WN1OdQzBwh7vLMU=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-ID: <E145CDC4C8B2AC45B4D5E59FB7BC8EAC@namprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e8be14c-46b3-4e76-d7b9-08d74d93470d
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2019 15:05:24.2899
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wwgcaZLvgfwJJ6veatF1JAx+Kt+6heY4X9CmTHPtDPW/41Sg5N6pBSZhByVAUFiKkLTJXmkLRhgQgrsN7kCc8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR03MB5135
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-10_05:2019-10-10,2019-10-10 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 suspectscore=0
 bulkscore=0 phishscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0
 priorityscore=1501 impostorscore=0 mlxscore=0 malwarescore=0
 mlxlogscore=920 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1910100141
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gVGh1LCAyMDE5LTEwLTEwIGF0IDE1OjA1ICswMTAwLCBNYXJrIEJyb3duIHdyb3RlOg0KPiAN
Cj4gT24gVGh1LCBPY3QgMTAsIDIwMTkgYXQgMDk6NDI6MzNBTSArMDIwMCwgTnVubyBTw6Egd3Jv
dGU6DQo+IA0KPiA+ICsJCQkvKiBwb3dlciBvbiAqLw0KPiA+ICsJCQlyZXQgPSByZWd1bGF0b3Jf
ZW5hYmxlKHN0LT5pb3ZkZCk7DQo+ID4gKwkJCWlmIChyZXQpDQo+ID4gKwkJCQlyZXR1cm4gcmV0
Ow0KPiA+ICsNCj4gPiArCQkJLyogdGhlcmUncyBubyB0aW1pbmcgY29uc3RyYWludHMgYmVmb3Jl
DQo+ID4gZW5hYmxpbmcgZHZkZCAqLw0KPiA+ICsJCQlyZXQgPSByZWd1bGF0b3JfZW5hYmxlKHN0
LT5kdmRkKTsNCj4gPiArCQkJaWYgKHJldCkgew0KPiA+ICsJCQkJcmVndWxhdG9yX2Rpc2FibGUo
c3QtPmlvdmRkKTsNCj4gPiArCQkJCXJldHVybiByZXQ7DQo+ID4gKwkJCX0NCj4gDQo+IFlvdSBj
b3VsZCB1c2UgcmVndWxhdG9yX2J1bGtfZW5hYmxlKCkgaGVyZSAoYW5kIHNpbWlsYXJseSBvbg0K
PiBkaXNhYmxlKSBidXQgaXQgZG9lc24ndCBmdW5kYW1lbnRhbGx5IG1hdHRlciAtIHRoZXkgZG8g
Z3VhcmFudGVlDQo+IHRoYXQgdGhleSdsbCBkbyB0aGluZ3MgaW4gc2VxdWVuY2UsIHRob3VnaCB0
aGV5IGRvbid0IHdhaXQgZm9yDQo+IHRoZSByYW1wIHRvIGNvbXBsZXRlIGJlZm9yZSBraWNraW5n
IG9mZiB0aGUgbmV4dCBlbmFibGUgaW4gdGhlDQo+IHNlcXVlbmNlIHdoaWNoIGNhbiBiZSBhbiBp
c3N1ZSBmb3Igc29tZSBoYXJkd2FyZS4NCg0KWWVzLCByZWd1bGF0b3JfYnVsa19lbmFibGUoKSBj
b3VsZCBmaXQuIFRoZSBvbmx5IHRoaW5nIHRoYXQgd29ycmllcyBtZQ0KaXMgdGhhdCB3ZSBvbmx5
IGNoZWNrIGZvciBlcnJvcnMgcmV0dXJuZWQgZnJvbSByZWd1bGF0b3JfZW5hYmxlKCkgYWZ0ZXIN
CmFsbCBhc3luYyB3b3JrIGlzIGRvbmUgKHdoaWNoIGlzIHByb2JhYmx5IHdoYXQgeW91IG1lYW4g
YnkgInRoZXkgZG9uJ3QNCndhaXQgZm9yIHRoZSByYW1wIHRvIGNvbXBsZXRlIGJlZm9yZSBraWNr
aW5nIG9mZiB0aGUgbmV4dCBlbmFibGUuLi4iKQ0Kd2hpY2ggY291bGQgbGVhdmUgdXMgd2l0aCBE
VkREIGFwcGxpZWQgd2l0aG91dCBJT1ZERCBmb3IgYSBzaG9ydCBhbW91bnQNCm9mIHRpbWUuIEkn
bSBub3Qgc3VyZSB0aGlzIHdvdWxkIGJlIGEgcmVhbGx5IGlzc3VlIGFuZCB0aGF0IHdvdWxkDQpk
YW1hZ2UgdGhlIEhXLCBidXQgZnJvbSB3aGF0IEkgY2FuIHRlbGwgZnJvbSB0aGUgZGF0YXNoZWV0
LCBJdCdzIG5vdA0KYWR2aXNlZCB0byBhcHBseSBEVkREIHdpdGhvdXQgSU9WREQuDQoNCk51bm8g
U8OhDQo=
