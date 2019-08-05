Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A1564814BE
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2019 11:08:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726454AbfHEJIa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Aug 2019 05:08:30 -0400
Received: from mail-eopbgr40058.outbound.protection.outlook.com ([40.107.4.58]:5446
        "EHLO EUR03-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726423AbfHEJIa (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 5 Aug 2019 05:08:30 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IpEoRyvJR7nJ+3y2bsKvKDvSRsSFlAJ8soVpJ8Zp6BQ89WUDBwL9ePEKAbyM9JFfc7k6k7fauQ8F+vRl43cYTjiQQ/tJxhis5ZeTlju9RxymEfy7tmGBPSzKj7qxoeMbkQs/s5oqT1/rNh4u8NeHyE+JdcJHIOBpOUL6tXwf/Cn6PqhoxMp/0devDwOdFBr/WPTgpVGc6I3JhMExaUARZMfOXX6rlBYMamYWm5kbLAAG3xPRgrBb7lIJD/p6FWVW8Q30nymixJ51b23eVdDLsEFsYTRg6zXmIlKpT9IM5iNGZIXgNFe8A3lX7IBwlAd0U7qmI0l3G0uXH6gPRbQH7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ST7/tNOExl5QepKRDYERuH0TrFxmy23vThhLhdWNeuY=;
 b=Qm+RQMqVkbrUeL+b6n0yv5YiLeEjPpR58XikyYNY1kGlcnIXtlMhj4z9rF+Cenrmm+djGkMi4aqm49ZNx7dNaVCzzXYbj7Odg42TbenwnP9dLvK7TgEhOJMsnibdnBQeaEJ8Ff+kv43M49JEi3H9ZH8gRtw/tQTUih1ieP155cCGAibsJ/38a3ZFU0eIg2zrz7JAYzBGylG7jRlXetr4TqbZtmGYVLjivNfH6JnlC4Z6LZGBQ0z25TxbRaL0D3XahJ4jDUMG0aETDVHhB00b8INwbSS4KU/FyaT34sXYO1D+FD0VIbULEUZO0vi1FJGXudAvaZNxsUcdjOk7aFBDrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ST7/tNOExl5QepKRDYERuH0TrFxmy23vThhLhdWNeuY=;
 b=nG5cEQStPiY6U4TjBeBv47arweOMuod7uyfs17et3B0hUdFGrvtDygRn72JPTez9KuK/ZAZGTdBCIZEDOGAewNc+lcBooj54VXjrGF31zTNz3AEERyFLX86NUgi5lvuaLS0/rbds1jgprj71IZps8CbTYaKVaspJgG8ySiHDh8U=
Received: from VI1PR04MB4015.eurprd04.prod.outlook.com (10.171.182.24) by
 VI1PR04MB6191.eurprd04.prod.outlook.com (20.179.28.81) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Mon, 5 Aug 2019 09:07:47 +0000
Received: from VI1PR04MB4015.eurprd04.prod.outlook.com
 ([fe80::9c4f:262d:db31:e339]) by VI1PR04MB4015.eurprd04.prod.outlook.com
 ([fe80::9c4f:262d:db31:e339%4]) with mapi id 15.20.2136.018; Mon, 5 Aug 2019
 09:07:47 +0000
From:   Ashish Kumar <ashish.kumar@nxp.com>
To:     "broonie@kernel.org" <broonie@kernel.org>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
        Kuldeep Singh <kuldeep.singh@nxp.com>,
        "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>, Han Xu <xhnjupt@gmail.com>,
        Rob Herring <robh@kernel.org>
Subject: RE: [EXT] Re: [Patch v3 2/2] dt-bindings: spi: spi-fsl-qspi: Add
 bindings of ls1088a and ls1012a
Thread-Topic: [EXT] Re: [Patch v3 2/2] dt-bindings: spi: spi-fsl-qspi: Add
 bindings of ls1088a and ls1012a
Thread-Index: AQHVJo/WR5aDyJa0DkeJCggmqW/DRqbC1yeAgCPWBACABdtZoA==
Date:   Mon, 5 Aug 2019 09:07:47 +0000
Message-ID: <VI1PR04MB401579932CF0E7D4AE80E0C995DA0@VI1PR04MB4015.eurprd04.prod.outlook.com>
References: <1560942714-13330-1-git-send-email-Ashish.Kumar@nxp.com>
 <1560942714-13330-3-git-send-email-Ashish.Kumar@nxp.com>
 <20190709200857.GA8477@bogus>
 <CA+EcR20ui8Liot+PtzdU6CJb5WzLDHS0Xc7VR7qGAOpD5=ArNQ@mail.gmail.com>
In-Reply-To: <CA+EcR20ui8Liot+PtzdU6CJb5WzLDHS0Xc7VR7qGAOpD5=ArNQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ashish.kumar@nxp.com; 
x-originating-ip: [92.120.0.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0c65bca6-7cec-4454-6c94-08d71984625d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);SRVR:VI1PR04MB6191;
x-ms-traffictypediagnostic: VI1PR04MB6191:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <VI1PR04MB6191621040BFC676F6E6A16795DA0@VI1PR04MB6191.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2000;
x-forefront-prvs: 01208B1E18
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(366004)(136003)(376002)(346002)(396003)(39860400002)(189003)(199004)(13464003)(86362001)(5660300002)(76176011)(66066001)(2501003)(44832011)(71190400001)(71200400001)(74316002)(2906002)(26005)(229853002)(186003)(7696005)(81166006)(81156014)(256004)(102836004)(33656002)(1730700003)(8676002)(99286004)(6506007)(316002)(305945005)(7736002)(6246003)(14454004)(52536014)(11346002)(45080400002)(486006)(9686003)(478600001)(25786009)(5640700003)(966005)(8936002)(54906003)(6116002)(53546011)(3846002)(2351001)(76116006)(476003)(66476007)(66556008)(64756008)(53936002)(6916009)(6436002)(4326008)(446003)(66946007)(55016002)(6306002)(68736007)(66446008);DIR:OUT;SFP:1101;SCL:1;SRVR:VI1PR04MB6191;H:VI1PR04MB4015.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 5H6TyHwrLENmhBpLW2GWlj+gxxB8xPQK3+oQJz1sy3POvc2Azw5XcQGJ2ujjS51SsTHjOymfob/2+WIZr9jFOfvbbogAGrtEMfORX7rt0HXAlRqC+RgKc88EK7URu5T1m9OJupmt+LUsVRSDrRoZgrX2KVtr3cBWnn8T5K9oL0wegyM1SOpCQkp8zT4appG0JUgn1nxRFq8rJWV8g8HVsWojohAoCU7mh/YMAdfBaT+hwEuUmnA7DgyZGr47LELx5BPdvxILZcfYAUtW5BXU1p6Iobw/tK6ZiS4B/zz6U/kfGtib7vXl+G8XEtyBRY0an8ujQRushVeRrW1O+K1jEvDEDyi9QpdAmSlsl3PjfXdiqfkL/ORW1xbJYvehF/hB1oabou0HTA9bpmL+3hzaCe0Kq9O8pWgjUhfsKXacGrk=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c65bca6-7cec-4454-6c94-08d71984625d
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2019 09:07:47.1672
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ashish.kumar@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6191
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSGFuIFh1IDx4aG5qdXB0
QGdtYWlsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIEF1Z3VzdCAxLCAyMDE5IDg6NTQgUE0NCj4g
VG86IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+DQo+IENjOiBBc2hpc2ggS3VtYXIgPGFz
aGlzaC5rdW1hckBueHAuY29tPjsgZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7DQo+IGJicmV6
aWxsb25Aa2VybmVsLm9yZzsgS3VsZGVlcCBTaW5naCA8a3VsZGVlcC5zaW5naEBueHAuY29tPjsN
Cj4gYnJvb25pZUBrZXJuZWwub3JnOyBsaW51eC1tdGRAbGlzdHMuaW5mcmFkZWFkLm9yZzsgbGlu
dXgtYXJtLQ0KPiBrZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZw0KPiBTdWJqZWN0OiBbRVhUXSBS
ZTogW1BhdGNoIHYzIDIvMl0gZHQtYmluZGluZ3M6IHNwaTogc3BpLWZzbC1xc3BpOiBBZGQgYmlu
ZGluZ3Mgb2YNCj4gbHMxMDg4YSBhbmQgbHMxMDEyYQ0KPiANCj4gQ2F1dGlvbjogRVhUIEVtYWls
DQo+IA0KPiBPbiBUdWUsIEp1bCA5LCAyMDE5IGF0IDM6MDkgUE0gUm9iIEhlcnJpbmcgPHJvYmhA
a2VybmVsLm9yZz4gd3JvdGU6DQo+ID4NCj4gPiBPbiBXZWQsIDE5IEp1biAyMDE5IDE2OjQxOjU0
ICswNTMwLCBBc2hpc2ggS3VtYXIgd3JvdGU6DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBLdWxkZWVw
IFNpbmdoIDxrdWxkZWVwLnNpbmdoQG54cC5jb20+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBBc2hp
c2ggS3VtYXIgPGFzaGlzaC5rdW1hckBueHAuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiB2MzoNCj4g
PiA+IFJlYmFzZSB0byB0b3ANCj4gPiA+IHYyOg0KPiA+ID4gQ29udmVydCB0byBwYXRjaCBzZXJp
ZXMgYW5kIHJlYmFzaW5nIGRvbmUgb24gdG9wIG9mIHRyZWUNCj4gPiA+DQo+ID4gPiAgRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NwaS9zcGktZnNsLXFzcGkudHh0IHwgMiArKw0K
PiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykNCj4gPiA+DQo+ID4NCj4gPiBS
ZXZpZXdlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4NCj4gDQo+IEFja2VkLWJ5
OiBIYW4gWHUgPGhhbi54dUBueHAuY29tPg0KDQpIZWxsbyBNYXJrLA0KDQpDb3VsZCB5b3UgcGxl
YXNlIHNlbmQgdGhpcyBwYXRjaFsxXSBmcm9tIHlvdXIgc3BpIHRyZWUsIEl0IGFwcGxpZXMgc2Vh
bWxlc3NseSBvbg0KaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9n
aXQvYnJvb25pZS9zcGkuZ2l0Lw0KDQpbMV06IGh0dHA6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9w
YXRjaC8xMTE4NjM3Lw0KDQpSZWdhcmRzIA0KQXNoaXNoIA0KDQoNCj4gDQo+ID4NCj4gPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gPiBM
aW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QNCj4gPg0KPiBodHRwczovL2V1cjAxLnNh
ZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cCUzQSUyRiUyRmxpc3RzLmlu
Zg0KPiByYWRlYWQub3JnJTJGbWFpbG1hbiUyRmxpc3RpbmZvJTJGbGludXgtDQo+IG10ZCUyRiZh
bXA7ZGF0YT0wMiU3QzAxJTdDQXNoaXNoLkt1bWFyJTQwbnhwLmNvbSU3QzI0M2RjMjE4OTQNCj4g
YWQ0YzJhNjUxODA4ZDcxNjk0NTAxNiU3QzY4NmVhMWQzYmMyYjRjNmZhOTJjZDk5YzVjMzAxNjM1
JTdDMCU3DQo+IEMxJTdDNjM3MDAyNjk4NTYyMTMyMTA4JmFtcDtzZGF0YT02WVp5WjZENkR5d2dM
WWxwJTJCV1pma3Z5YURyDQo+IFRLdlI1NkprT3h5MFhTRDlrJTNEJmFtcDtyZXNlcnZlZD0wDQo+
IA0KPiANCj4gDQo+IC0tDQo+IFNpbmNlcmVseSwNCj4gDQo+IEhhbiBYVQ0K
