Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A7202768A20
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 04:46:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229592AbjGaCqc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Jul 2023 22:46:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229544AbjGaCqb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Jul 2023 22:46:31 -0400
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (mail-db5eur01on2059.outbound.protection.outlook.com [40.107.15.59])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13629E48
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 19:46:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ng5fzPXuSoHiR+lKv61pFsT1hHpZ4L9ggNbmkvsBRYXAgXpth1OhlRpzl8PLO8TjBsbqt+9+QaQBEkdQWhjQId0XoCJYQbg+2hEFBZynGgpLSl1GkabaA+HOvTJIO/lq88h4FaR2G2Z6ENM69vJFalNdOPc0zyD8WcLZdwcX7yxOvgXcLbTdiRx/D0gw76T5PHN+FvA/1nrEtqmyzJ9VuJM93YI+kwnbPmWwc/WnMu8QwmcRXuUyaEmGhv0vehljazugjt5XA090WfhNJP/JKIalsG5JTb9yiU7W/Q3SiIdMixyxdVE+bwmc4ukcnesNy8MP0X+ooo31u83CIC+20A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M1EdwCPGlNoTBhxO/WCjUMLufpACBFl6TPFo1/iDHoU=;
 b=YscqFgjhq369lhk7dAl172CDY1Bf9jGZWlxThmuOB77JS82+docFCVC0NfBQd97F31WSy6VsPd8/G6341IG9aQfbuqB63cS2y0nE+wV+BU0Lb5wrmP2LuVilwwmNshPxmy0D0/EkqQJ2mAxk1WY5LPoTo4a0aTSok68XwuJgNtZwaaL+9LZPYLoXUfvVEY5jos2WIaq8Bn3PeVbIFvUnXxirDfVUVe+lq1n13B4altH2aqqZAfhYk6idWbb0c/7Gs+creOWjeuzG3AR0DtKkobXpxH9KPTIO4UId3KCOTYb3t0uMTji0buu2pMBQry2noJX8vW/0nsx5Dos1gda5Vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 194.138.21.74) smtp.rcpttodomain=gmail.com smtp.mailfrom=siemens.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=siemens.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M1EdwCPGlNoTBhxO/WCjUMLufpACBFl6TPFo1/iDHoU=;
 b=PWgguW2aVe0zyMDBKjzSSynlU1usbX50iqJn4HkJPaewtstLpmLuWNRihDnF9jrKYnZwboVf/XUfyTatv0M7LX+vhZo78EjupfNa6NnmP36V8UB3cIyZK2GnFEaLIvLsne6QDRbiVYe/1WfQQbp5y8PHKU1X9KmnCesDqhs1fb9SVU7FOl0EVhYNcA1erWjJUmrM6k6smYYzGz6r8EsYxg1KLckrRa/qx17qC/RqncmkspOqGiCqyNM4v/ig6X5IHlKOYoLfgVKlyKJA68yYjB1V6ywyQ755OH2m+IgI2LUP2DvVbhdcqwhwpYaEmuC4Jxkvm5z/f5m/9UwlsUwRIQ==
Received: from DUZPR01CA0351.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b8::12) by DB9PR10MB8285.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:10:4c9::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.39; Mon, 31 Jul
 2023 02:46:26 +0000
Received: from DU6PEPF0000A7E1.eurprd02.prod.outlook.com
 (2603:10a6:10:4b8:cafe::a8) by DUZPR01CA0351.outlook.office365.com
 (2603:10a6:10:4b8::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.42 via Frontend
 Transport; Mon, 31 Jul 2023 02:46:26 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 194.138.21.74)
 smtp.mailfrom=siemens.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=siemens.com;
Received-SPF: Pass (protection.outlook.com: domain of siemens.com designates
 194.138.21.74 as permitted sender) receiver=protection.outlook.com;
 client-ip=194.138.21.74; helo=hybrid.siemens.com; pr=C
Received: from hybrid.siemens.com (194.138.21.74) by
 DU6PEPF0000A7E1.mail.protection.outlook.com (10.167.8.45) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6631.22 via Frontend Transport; Mon, 31 Jul 2023 02:46:26 +0000
Received: from CNPEK01M06MSX.ad011.siemens.net (139.24.237.223) by
 DEMCHDC8VQA.ad011.siemens.net (194.138.21.74) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.16; Mon, 31 Jul 2023 04:46:25 +0200
Received: from CNPEK01M01MSX.ad011.siemens.net (139.24.237.214) by
 CNPEK01M06MSX.ad011.siemens.net (139.24.237.223) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 31 Jul 2023 10:46:23 +0800
Received: from CNPEK01M01MSX.ad011.siemens.net ([139.24.237.214]) by
 CNPEK01M01MSX.ad011.siemens.net ([139.24.237.214]) with mapi id
 15.01.2507.027; Mon, 31 Jul 2023 10:46:23 +0800
From:   "MOESSBAUER, Felix" <felix.moessbauer@siemens.com>
To:     "jernej.skrabec@gmail.com" <jernej.skrabec@gmail.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>
CC:     "linux-sunxi@lists.linux.dev" <linux-sunxi@lists.linux.dev>,
        "wens@csie.org" <wens@csie.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "Matzinger, Manuel Josef" <manuel.matzinger@siemens.com>,
        "Bovensiepen, Daniel (bovi)" <daniel.bovensiepen@siemens.com>,
        "conor+dt@kernel.org" <conor+dt@kernel.org>,
        "Gylstorff, Quirin" <quirin.gylstorff@siemens.com>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH 1/1] arm: dts: Enable device-tree overlay support for
 sun8i-h3 pi devices
Thread-Topic: [PATCH 1/1] arm: dts: Enable device-tree overlay support for
 sun8i-h3 pi devices
Thread-Index: AQHZqPyPDN0MHfjaQU2VD8WHo5pzVq+0h5wAgAye1ICAEWdEAIAATJcA
Date:   Mon, 31 Jul 2023 02:46:23 +0000
Message-ID: <6fbb0e557a97555876f8de4a283162a9e7d290b8.camel@siemens.com>
References: <20230627133703.355893-1-felix.moessbauer@siemens.com>
         <1830379.atdPhlSkOF@jernej-laptop>
         <17c7a0c952913e21d9a323f42a1cfad84ed8a51b.camel@siemens.com>
         <4818881.GXAFRqVoOG@jernej-laptop>
In-Reply-To: <4818881.GXAFRqVoOG@jernej-laptop>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
x-originating-ip: [139.24.236.51]
Content-Type: text/plain; charset="utf-8"
Content-ID: <6E7A5F64F77B334084C162AD8219073B@siemens.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU6PEPF0000A7E1:EE_|DB9PR10MB8285:EE_
X-MS-Office365-Filtering-Correlation-Id: 0ffe9484-bc6f-470b-734e-08db917055f6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oD/jgwEesVr65JJffVbs+YbcWCWJpAzxMalGTZCUTjyBG+eddD2snvU8ASMHevb6eZzGfdnkZSp057PC0OYJmAZHjPCsRFS2e9QFH0HHL5GdCPUMTfbkO/lZuBNwCeWRUj8sSdu75gIDZwVTY+ohe7EIGTRKFB6JmprHrgpSO6u75x9v/RotJSUOjk2pwMsShYIJY9ySuZetVmraK5WD90gTnTkS47SyX1LdStIJwG1czetJqjoRUv3xLaEwlKD82pbckp/LcPIrmcb6iN0xoEMge1feAV73OF1/cV3DUz+lMDZiCyd3dDSENZ2PKmHjt/44TrQSqTJnAJSm9y8bAvHmRhk7GFZdt+qJtlwW8owCvV/ag/KLjlaGh3XXCSBbsHPFFVbMv4kZiKXDIJuZqwKcMq1DQE+bvrGmGiBFKY36IfBTCoxu1OU3rOWhKPC97rZxxdWI0BKHPygPJSug77d0rKNazLJmhOJ/EKxcBro+2HzYwUO4/H1mbEG/mbBsoUN4X9R4L9lw9U5rpk9R/RVIF3VeTYKPtA7G6CYGYrNn1EDACNJ7LiC7OR5EucM+qQORWSBlhvARASg4k5BO1ZMIXU33zWM8O6z/F8ZfsLwmn9aXAx7Ls10CZiVzvcmmWydQgLYde2RIqbXkxk5w9QfjEdWiNLBgqc+zrTCFmKqf4Fsf7qj+vMlOhUnAnMZumANvjfXUJtv20xM6O/IQZhVj81ghtdIxm42WVEQOyTG3OuZ8LhYsOL1SQ/l92/fh
X-Forefront-Antispam-Report: CIP:194.138.21.74;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:hybrid.siemens.com;PTR:hybrid.siemens.com;CAT:NONE;SFS:(13230028)(4636009)(396003)(39860400002)(346002)(136003)(376002)(451199021)(82310400008)(40470700004)(46966006)(36840700001)(2906002)(70206006)(4326008)(70586007)(5660300002)(316002)(110136005)(54906003)(41300700001)(956004)(2616005)(8936002)(8676002)(26005)(186003)(336012)(66574015)(36860700001)(47076005)(83380400001)(478600001)(7636003)(7596003)(82960400001)(356005)(82740400003)(36756003)(966005)(40460700003)(40480700001)(86362001)(32563001);DIR:OUT;SFP:1101;
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2023 02:46:26.7011
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ffe9484-bc6f-470b-734e-08db917055f6
X-MS-Exchange-CrossTenant-Id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;Ip=[194.138.21.74];Helo=[hybrid.siemens.com]
X-MS-Exchange-CrossTenant-AuthSource: DU6PEPF0000A7E1.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR10MB8285
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gTW9uLCAyMDIzLTA3LTMxIGF0IDAwOjEyICswMjAwLCBKZXJuZWogxaBrcmFiZWMgd3JvdGU6
DQo+IERuZSBzcmVkYSwgMTkuIGp1bGlqIDIwMjMgb2IgMTQ6MjY6MTMgQ0VTVCBqZSBNb2Vzc2Jh
dWVyIEZlbGl4DQo+IG5hcGlzYWwoYSk6DQo+ID4gT24gVHVlLCAyMDIzLTA3LTExIGF0IDIxOjQy
ICswMjAwLCBKZXJuZWogxaBrcmFiZWMgd3JvdGU6DQo+ID4gPiBEbmUgdG9yZWssIDI3LiBqdW5p
aiAyMDIzIG9iIDE1OjM3OjAzIENFU1QgamUgRmVsaXggTW9lc3NiYXVlcg0KPiA+ID4gDQo+ID4g
PiBuYXBpc2FsKGEpOg0KPiA+ID4gPiBBZGQgdGhlICctQCcgRFRDIG9wdGlvbiBmb3IgdGhlIHN1
bjhpLWgzIHBpLWNsYXNzIGRldmljZXMuIFRoaXMNCj4gPiA+ID4gb3B0aW9uDQo+ID4gPiA+IHBv
cHVsYXRlcyB0aGUgJ19fc3ltYm9sc19fJyBub2RlIHRoYXQgY29udGFpbnMgYWxsIHRoZQ0KPiA+
ID4gPiBuZWNlc3NhcnkNCj4gPiA+ID4gc3ltYm9scw0KPiA+ID4gPiBmb3Igc3VwcG9ydGluZyBk
ZXZpY2UtdHJlZSBvdmVybGF5cyAoZm9yIGluc3RhbmNlIGZyb20gdGhlDQo+ID4gPiA+IGZpcm13
YXJlDQo+ID4gPiA+IG9yDQo+ID4gPiA+IHRoZSBib290bG9hZGVyKSBvbiB0aGVzZSBkZXZpY2Vz
Lg0KPiA+ID4gPiANCj4gPiA+ID4gVGhlc2UgZGV2aWNlcyBhbGxvdyB2YXJpb3VzIG1vZHVsZXMg
dG8gYmUgY29ubmVjdGVkIGFuZCB0aGlzDQo+ID4gPiA+IGVuYWJsZXMNCj4gPiA+ID4gdXNlcnMg
dG8gY3JlYXRlIG91dC1vZi10cmVlIGRldmljZS10cmVlIG92ZXJsYXlzIGZvciB0aGVzZQ0KPiA+
ID4gPiBtb2R1bGVzLg0KPiA+ID4gPiANCj4gPiA+ID4gUGxlYXNlIG5vdGUgdGhhdCB0aGlzIGNo
YW5nZSBkb2VzIGluY3JlYXNlIHRoZSBzaXplIG9mIHRoZQ0KPiA+ID4gPiByZXN1bHRpbmcgRFRC
DQo+ID4gPiA+IGJ5IH4zMCUuIEZvciBleGFtcGxlLCB3aXRoIHY2LjQgaW5jcmVhc2UgaW4gc2l6
ZSBpcyBhcyBmb2xsb3dzOg0KPiA+ID4gPiANCj4gPiA+ID4gMjI5MDkgLT4gMjk1NjQgc3VuOGkt
aDMtb3JhbmdlcGktbGl0ZS5kdGINCj4gPiA+ID4gMjQyMTQgLT4gMzA5MzUgc3VuOGktaDMtYmFu
YW5hcGktbTItcGx1cy5kdGINCj4gPiA+ID4gMjM5MTUgLT4gMzA2NjQgc3VuOGktaDMtbmFub3Bp
LW0xLXBsdXMuZHRiDQo+ID4gPiA+IDIyOTY5IC0+IDI5NTM3IHN1bjhpLWgzLW5hbm9waS1tMS5k
dGINCj4gPiA+ID4gMjQxNTcgLT4gMzA4MzYgc3VuOGktaDMtbmFub3BpLWR1bzIuZHRiDQo+ID4g
PiA+IDI0MTEwIC0+IDMwODQ1IHN1bjhpLWgzLW9yYW5nZXBpLXBsdXMyZS5kdGINCj4gPiA+ID4g
MjM0NzIgLT4gMzAwMzcgc3VuOGktaDMtb3JhbmdlcGktb25lLmR0Yg0KPiA+ID4gPiAyNDYwMCAt
PiAzMTQxMCBzdW44aS1oMy1vcmFuZ2VwaS1wbHVzLmR0Yg0KPiA+ID4gPiAyMzYxOCAtPiAzMDIz
MCBzdW44aS1oMy1vcmFuZ2VwaS0yLmR0Yg0KPiA+ID4gPiAyMjE3MCAtPiAyODU0OCBzdW44aS1o
My1vcmFuZ2VwaS16ZXJvLXBsdXMyLmR0Yg0KPiA+ID4gPiAyMzI1OCAtPiAyOTc5NSBzdW44aS1o
My1uYW5vcGktbmVvLWFpci5kdGINCj4gPiA+ID4gMjMxMTMgLT4gMjk2OTkgc3VuOGktaDMtemVy
b3BpLmR0Yg0KPiA+ID4gPiAyMjgwMyAtPiAyOTI3MCBzdW44aS1oMy1uYW5vcGktbmVvLmR0Yg0K
PiA+ID4gPiAyNDY3NCAtPiAzMTMxOCBzdW44aS1oMy1uYW5vcGktcjEuZHRiDQo+ID4gPiA+IDIz
NDc3IC0+IDMwMDM4IHN1bjhpLWgzLW9yYW5nZXBpLXBjLmR0Yg0KPiA+ID4gPiAyNDYyMiAtPiAz
MTM4MCBzdW44aS1oMy1iYW5hbmFwaS1tMi1wbHVzLXYxLjIuZHRiDQo+ID4gPiA+IDIzNzUwIC0+
IDMwMzY2IHN1bjhpLWgzLW9yYW5nZXBpLXBjLXBsdXMuZHRiDQo+ID4gPiA+IA0KPiA+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBGZWxpeCBNb2Vzc2JhdWVyIDxmZWxpeC5tb2Vzc2JhdWVyQHNpZW1lbnMu
Y29tPg0KPiA+ID4gPiAtLS0NCj4gPiA+ID4gUGxlYXNlIG5vdGUgdGhhdCBJIG9ubHkgdGVzdGVk
IHRoZSBvdmVybGF5IG9uIHRoZSBzdW44aS1oMy0NCj4gPiA+ID4gbmFub3BpLQ0KPiA+ID4gPiBu
ZW8NCj4gPiA+ID4gZGV2aWNlLiBIb3dldmVyLCB0aGUgZGV2aWNlcyBhcmUgcXVpdGUgc2ltaWxh
ciBhbmQgaW4gZ2VuZXJhbA0KPiA+ID4gPiB0aGUNCj4gPiA+ID4gY2hhbmdlIHRvIGFkZCBzeW1i
b2xzIHNob3VsZCBiZSBwcmV0dHkgc2FmZS4gU2ltaWxhciBwYXRjaGVzDQo+ID4gPiA+IGhhdmUN
Cj4gPiA+ID4gYmVlbg0KPiA+ID4gPiBhcHBsaWVkIHRvIHZhcmlvdXMgb3RoZXIgZGV2aWNlcyBp
biB0aGUgcGFzdCB3aXRob3V0IGFueQ0KPiA+ID4gPiBuZWdhdGl2ZQ0KPiA+ID4gPiBlZmZlY3Qg
KGV4Y2VwdCBmb3IgdGhlIGluY3JlYXNlZCBzaXplKS4NCj4gPiA+IA0KPiA+ID4gSSdtIG5vdCBh
IGZhbiBvZiB0aGlzIGFwcHJvYWNoLiBXaGF0J3Mgd3Jvbmcgd2l0aCBsZXR0aW5nIGtlcm5lbA0K
PiA+ID4gYnVpbGRlcnMNCj4gPiA+IHNwZWNpZnkgdGhpcyBmbGFnIG9uIHRoZWlyIG93biBhdCBj
b21waWxlIHRpbWU/IFRoYXQgd2F5IHNpemUgaXMNCj4gPiA+IHN0aWxsDQo+ID4gPiBjb21wbGV0
ZWx5IGluIGRvbWFpbiBvZiBidWlsZGVyLg0KPiA+IA0KPiA+IFRoYXQncyBlYXNpZXIgc2FpZCB0
aGFuIGRvbmUuIFRoZXNlIHN5bWJvbHMgYXJlIG9ubHkgbmVlZGVkIGZvcg0KPiA+IHNvbWUNCj4g
PiB0YXJnZXRzICh0aGF0IGFyZSBjb21tb25seSB1c2VkIHdpdGggb3ZlcmxheXMpLiBCdXQgaG93
IHNob3VsZCBhDQo+ID4gZ2VuZXJhbCBwdXJwb3NlIGtlcm5lbCBidWlsZGVyIGxpa2UgRGViaWFu
IGtub3cgd2hpY2ggRFQgdG8gYnVpbGQNCj4gPiB3aXRoDQo+ID4gc3ltYm9scyBhbmQgd2hpY2gg
d2l0aG91dD8gSW4gWW9jdG8gdGhlIG92ZXJsYXlzIGFyZSBub3QgcmVhbGx5DQo+ID4gbmVlZGVk
LA0KPiA+IGFzIG9mdGVuIHRoZSBvcmlnaW5hbCBkdHMgaXMganVzdCBwYXRjaGVkIGRpcmVjdGx5
Lg0KPiANCj4gTGlicmVFTEVDIChkaXN0cm8gSSBoZWxwIHdpdGgpIGhhcyBzdXBwb3J0IGZvciBE
VCBvdmVybGF5cyBmb3Igc29tZQ0KPiB0aW1lIGFuZCANCj4gaXQgd2FzIGVhc3kgdG8gZW5hYmxl
IHN5bWJvbHMgZm9yIGFsbCBEVHMgd2l0aCBzaW1wbGUgIkRUQ19GTEFHUz0tQCINCj4gYWRkaXRp
b24gDQoNClRoYW5rcyBmb3IgdGhlIHBvaW50ZXIuIElmIHRoaXMgd291bGQgYmUgYSBrY29uZmln
IG9wdGlvbiwgSSB3b3VsZA0KYWdyZWUuIFRoZXJlJ3MgYSBwYXRjaCB0byBhZGQgdGhpcyBvcHRp
b24sIGJ1dCB0aGlzIGRpZCBub3QgZ2V0DQphY2NlcHRlZCBbM10uIEp1c3QgbWFudWFsbHkgYWRk
aW5nIHNvbWUgIm1hZ2ljIiBvcHRpb25zIGRvZXMgbm90IGZlZWwNCmNvcnJlY3QuDQoNCj4gdG8g
YnVpbGQgY29tbWFuZCBbMV0uIERvIHlvdSBzZWUgYW55IGRvd25zaWRlIGV4Y2VwdCBrbm93aW5n
IHlvdSBoYXZlDQo+IHRvIA0KPiBpbmNsdWRlIGl0PyBPbiB0aGUgdXBzaWRlLCB0aGVyZSBpcyBu
byBuZWVkIHRvIHBhdGNoIGVhY2ggYW5kIGV2ZXJ5DQo+IGZpbGUgYW5kIA0KPiBrZXJuZWwgYnVp
bGRlciBoYXMgYSBjaG9pY2UgaWYgb3ZlcmxheXMgc2hvdWxkIGJlIHN1cHBvcnRlZCBvciBub3Qu
DQoNClRoZXJlIGlzIGEgc2ltaWxhciBmZWF0dXJlIHJlcXVlc3QgZm9yIERlYmlhbiwgYnV0IHdp
dGhvdXQgYSBkZWNpc2lvbg0KeWV0IFs0XS4gSSBqdXN0IGNyb3NzLXJlZmVyZW5jZWQgaXQgdG8g
dGhpcyB0aHJlYWQuDQoNCj4gTm90ZSB0aGF0IA0KPiBpbiBzb21lIGNhc2VzIG92ZXJsYXlzIGNh
biBiZSBuZWVkZWQgZXZlbiBpbiB0aGUgY2FzZSB3aGVuIGJvYXJkDQo+IGRvZXNuJ3QgaGF2ZSAN
Cj4gZXhwYW5zaW9uIHBvcnRzLg0KDQpJZiB0aGF0IGlzIHRoZSBjYXNlLCB3aHkgY2FuJ3Qgd2Ug
YXQgbGVhc3QgYWRkIHRoZSBwYXRjaCBmcm9tIFszXSBhbmQNCnByb3ZpZGUgdGhlIGRpc3Ryb3Mg
YW4gZWFzeSBvcHRpb24gdG8gZW5hYmxlIG92ZXJsYXlzPyBPbmNlIGludGVncmF0ZWQsDQp3ZSBj
YW4gZXZlbnR1YWxseSBnZXQgcmlkIG9mIGFsbCB0aGUgcGVyLWRldmljZSBwYXRjaGVzIGluIHRo
ZSBrZXJuZWwuDQoNCkJlc3QgcmVnYXJkcywNCkZlbGl4DQoNClszXSBodHRwczovL3d3dy5zcGlu
aWNzLm5ldC9saXN0cy9rZXJuZWwvbXNnNDI1MjM2MS5odG1sDQpbNF0gaHR0cHM6Ly9idWdzLmRl
Ymlhbi5vcmcvY2dpLWJpbi9idWdyZXBvcnQuY2dpP2J1Zz05MTA3MjcNCg0KPiANCj4gQmVzdCBy
ZWdhcmRzLA0KPiBKZXJuZWoNCj4gDQo+IFsxXQ0KPiBodHRwczovL2dpdGh1Yi5jb20vTGlicmVF
TEVDL0xpYnJlRUxFQy50di9ibG9iL21hc3Rlci9wYWNrYWdlcy9saW51eC8NCj4gcGFja2FnZS5t
ayNMMjEzDQo+IA0KPiA+IA0KPiA+IFRoZXJlIGhhcyBiZWVuIGEgZGlzY3Vzc2lvbiBpbiAyMDE3
IHRvIGltcHJvdmUgdGhlIHNpdHVhdGlvbiBpbg0KPiA+IGdlbmVyYWwsIGJ1dCB3aXRob3V0IGFu
eSBmaW5hbCBkZWNpc2lvbiBvciBpbXBsZW1lbnRhdGlvbiBbMV0uIEJ5DQo+ID4gdGhhdCwNCj4g
PiB0aGVzZSBwYXRjaGVzIGdvdCBtb3JlIGFuZCBtb3JlIGNvbW1vbi4gSSByZWNlbnRseSBzZW50
IGEgdmVyeQ0KPiA+IHNpbWlsYXINCj4gPiBwYXRjaCBmb3IgYSByaXNjdiBib2FyZCB0aGF0IGdv
dCBhY2NlcHRlZCBbMl0uDQo+ID4gDQo+ID4gSU1ITyBpdCBpcyBiZXR0ZXIgdG8gaGF2ZSB0aGVz
ZSBwYXRjaGVzIGluIHRoZSBrZXJuZWwgaW5zdGVhZCBvZg0KPiA+IGNhcnJ5aW5nIGRpZmZlcmVu
dCB2YXJpYW50cyBvZiB0aGlzIGluIGVhY2ggTGludXggZGlzdHJvLiBJTUhPLCB0aGUNCj4gPiBi
b2FyZCB2ZW5kb3JzIHRoZW1zZWx2ZXMgc2hvdWxkIGFkZCB0aGlzIHdoZW4gdGhleSBhZGQgYSBi
b2FyZC4NCj4gPiANCj4gPiBbMV0NCj4gPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzE1
MDI4MzE3MzYtMjgyODItMS1naXQtc2VuZC1lbWFpbC10cmluaUBrb25zdWxrDQo+ID4gby5jb20v
IFsyXQ0KPiA+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWRldmljZXRyZWUvMjAyMzA2
MjcwODA2MjAuMzI5ODczLTEtZmVsaXgubW9lc3MNCj4gPiBiYXVlckBzaWVtZW5zLmNvbS8NCj4g
PiANCj4gPiBCZXN0IHJlZ2FyZHMsDQo+ID4gRmVsaXgNCj4gPiANCj4gPiA+IEJlc3QgcmVnYXJk
cywNCj4gPiA+IEplcm5lag0KPiA+ID4gDQo+ID4gPiA+IEZlbGl4IE1vZXNzYmF1ZXINCj4gPiA+
ID4gU2llbWVucyBBRw0KPiA+ID4gPiANCj4gPiA+ID4gwqBhcmNoL2FybS9ib290L2R0cy9hbGx3
aW5uZXIvTWFrZWZpbGUgfCAxOSArKysrKysrKysrKysrKysrKysrDQo+ID4gPiA+IMKgMSBmaWxl
IGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKykNCj4gPiA+ID4gDQo+ID4gPiA+IGRpZmYgLS1naXQg
YS9hcmNoL2FybS9ib290L2R0cy9hbGx3aW5uZXIvTWFrZWZpbGUNCj4gPiA+ID4gYi9hcmNoL2Fy
bS9ib290L2R0cy9hbGx3aW5uZXIvTWFrZWZpbGUgaW5kZXgNCj4gPiA+ID4gNTg5YTFjZTExMjBh
Li5lZWJiNWEwYzg3M2ENCj4gPiA+ID4gMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL2FyY2gvYXJtL2Jv
b3QvZHRzL2FsbHdpbm5lci9NYWtlZmlsZQ0KPiA+ID4gPiArKysgYi9hcmNoL2FybS9ib290L2R0
cy9hbGx3aW5uZXIvTWFrZWZpbGUNCj4gPiA+ID4gQEAgLTE3OSw2ICsxNzksMjUgQEAgZHRiLSQo
Q09ORklHX01BQ0hfU1VON0kpICs9IFwNCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqAgc3VuN2ktYTIw
LXBjZHVpbm8zLW5hbm8uZHRiIFwNCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqAgc3VuN2ktYTIwLXdl
eGxlci10YWI3MjAwLmR0YiBcDQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgIHN1bjdpLWEyMC13aXRz
LXByby1hMjAtZGt0LmR0Yg0KPiA+ID4gPiArDQo+ID4gPiA+ICsjIEVuYWJsZXMgc3VwcG9ydCBm
b3IgZGV2aWNlLXRyZWUgb3ZlcmxheXMgZm9yIGFsbCBwaXMNCj4gPiA+ID4gK0RUQ19GTEFHU19z
dW44aS1oMy1vcmFuZ2VwaS1saXRlIDo9IC1ADQo+ID4gPiA+ICtEVENfRkxBR1Nfc3VuOGktaDMt
YmFuYW5hcGktbTItcGx1cyA6PSAtQA0KPiA+ID4gPiArRFRDX0ZMQUdTX3N1bjhpLWgzLW5hbm9w
aS1tMS1wbHVzIDo9IC1ADQo+ID4gPiA+ICtEVENfRkxBR1Nfc3VuOGktaDMtbmFub3BpLW0xIDo9
IC1ADQo+ID4gPiA+ICtEVENfRkxBR1Nfc3VuOGktaDMtbmFub3BpLWR1bzIgOj0gLUANCj4gPiA+
ID4gK0RUQ19GTEFHU19zdW44aS1oMy1vcmFuZ2VwaS1wbHVzMmUgOj0gLUANCj4gPiA+ID4gK0RU
Q19GTEFHU19zdW44aS1oMy1vcmFuZ2VwaS1vbmUgOj0gLUANCj4gPiA+ID4gK0RUQ19GTEFHU19z
dW44aS1oMy1vcmFuZ2VwaS1wbHVzIDo9IC1ADQo+ID4gPiA+ICtEVENfRkxBR1Nfc3VuOGktaDMt
b3JhbmdlcGktMiA6PSAtQA0KPiA+ID4gPiArRFRDX0ZMQUdTX3N1bjhpLWgzLW9yYW5nZXBpLXpl
cm8tcGx1czIgOj0gLUANCj4gPiA+ID4gK0RUQ19GTEFHU19zdW44aS1oMy1uYW5vcGktbmVvLWFp
ciA6PSAtQA0KPiA+ID4gPiArRFRDX0ZMQUdTX3N1bjhpLWgzLXplcm9waSA6PSAtQA0KPiA+ID4g
PiArRFRDX0ZMQUdTX3N1bjhpLWgzLW5hbm9waS1uZW8gOj0gLUANCj4gPiA+ID4gK0RUQ19GTEFH
U19zdW44aS1oMy1uYW5vcGktcjEgOj0gLUANCj4gPiA+ID4gK0RUQ19GTEFHU19zdW44aS1oMy1v
cmFuZ2VwaS1wYyA6PSAtQA0KPiA+ID4gPiArRFRDX0ZMQUdTX3N1bjhpLWgzLWJhbmFuYXBpLW0y
LXBsdXMtdjEuMiA6PSAtQA0KPiA+ID4gPiArRFRDX0ZMQUdTX3N1bjhpLWgzLW9yYW5nZXBpLXBj
LXBsdXMgOj0gLUANCj4gPiA+ID4gwqBkdGItJChDT05GSUdfTUFDSF9TVU44SSkgKz0gXA0KPiA+
ID4gPiDCoMKgwqDCoMKgwqDCoCBzdW44aS1hMjMtZXZiLmR0YiBcDQo+ID4gPiA+IMKgwqDCoMKg
wqDCoMKgIHN1bjhpLWEyMy1ndDkwaC12NC5kdGIgXA0KPiANCj4gDQo+IA0KPiANCg0K
