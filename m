Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A85B976B440
	for <lists+devicetree@lfdr.de>; Tue,  1 Aug 2023 14:02:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234448AbjHAMCB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Aug 2023 08:02:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234479AbjHAMBg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Aug 2023 08:01:36 -0400
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-db3eur04on0630.outbound.protection.outlook.com [IPv6:2a01:111:f400:fe0c::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C38630F2
        for <devicetree@vger.kernel.org>; Tue,  1 Aug 2023 05:00:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NNtsgpuEMQqZgV03Wq0jzGJKVQ8wQ54iHRJT642caufWyENsgEgobfTUM/ojCPDliyN6tBP38aElRxGOhE9b0z2+uEE0nS83AJsqe1EKSaxpdpAjKpu5GKet5FbXnO+UAJLbRCUm1mvWXDABDu3NgW3YDdeiWZ1NLZnavf3p7qilysOE8HAQ06nN9Ro4r4xCIJScPBEbIge08NHYq+4YgRQrpcmJetDwMhrQxnHA61EhmYUZ8pNEOmCfLp9DVkqQn+cXN8QXmXTjXPHUV7F8jNJYlJhtQ/2vgGyM4VYHCBTP2DSe6IE5RSwUBj55aw82Xv1oqg7vPX2vg0B3GOPESw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a+OCi/LwNMgKspXEfQMxWTKouN4yI26uPXH0KQCqfjU=;
 b=YV45iBwO9WSBo+nxoxvQxjgBj6o8CxLC3TYx648CJxt8zTnelXA3ye5ffooT2wVfJR6/H/wNVT9syVD2HOE58zBJSNpmh/ALl49uHEautxS5gD2o9nunlzjhsX9v5F0O4UPlo64EFRx6xssBnGKDzR+oW/HV4rXo/+Kh9QMD5EkmsrNuBU06msJHJsARq/N6z28TaT140W2islyOtDSSiUa9L6PQD/Fd0hafA03ACxmfZuX0Uqe5zUk35UxUXCcMPinKXA+6g1HtYsyyomhmzC1BxLZm8H4DxsHMI4dLSCKBhY0LghZgUvDntLI4pDghxPPyBsK6fOQ6jDrIzROasg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 194.138.21.74) smtp.rcpttodomain=arm.com smtp.mailfrom=siemens.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=siemens.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a+OCi/LwNMgKspXEfQMxWTKouN4yI26uPXH0KQCqfjU=;
 b=bZNndPW3ARRzEXArsAAdjd/Ffg9K13JffaPAQupp7L/SoXShcjW7FJ7IZ7GFpTtCE0+hXhyMCw/bQAKW9o12ThxoAdZ94JZ1StmLH/uN0WG124uQpRiT9A0my9CV5SM8Tj0p8pQz47HYHnD8Vek9RlbPaF9OS5rk+cw7hR+Ei0+VYYYdRD3qnDHYk5Oaogv4+2xjPwFHlQGiNeC3KlhOclxFwG60ivBIZS9r6pFoVRV/sM/6bZwMVvd2amDGITnsbH+v0Bv+SmHv9WOX43Bh2amI+tcKx9WFJNH83eN45q374b51Im0W7NV/IQSuSIYsoP5E/rB3j9vWqFkXZc3zPw==
Received: from AS9PR06CA0371.eurprd06.prod.outlook.com (2603:10a6:20b:460::24)
 by GV1PR10MB6244.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:150:90::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.44; Tue, 1 Aug
 2023 11:59:54 +0000
Received: from AM4PEPF00025F97.EURPRD83.prod.outlook.com
 (2603:10a6:20b:460:cafe::94) by AS9PR06CA0371.outlook.office365.com
 (2603:10a6:20b:460::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.44 via Frontend
 Transport; Tue, 1 Aug 2023 11:59:53 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 194.138.21.74)
 smtp.mailfrom=siemens.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=siemens.com;
Received-SPF: Pass (protection.outlook.com: domain of siemens.com designates
 194.138.21.74 as permitted sender) receiver=protection.outlook.com;
 client-ip=194.138.21.74; helo=hybrid.siemens.com; pr=C
Received: from hybrid.siemens.com (194.138.21.74) by
 AM4PEPF00025F97.mail.protection.outlook.com (10.167.16.6) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6652.0 via Frontend Transport; Tue, 1 Aug 2023 11:59:53 +0000
Received: from CNPEK01M09MSX.ad011.siemens.net (139.24.237.227) by
 DEMCHDC8VQA.ad011.siemens.net (194.138.21.74) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.16; Tue, 1 Aug 2023 13:59:53 +0200
Received: from CNPEK01M01MSX.ad011.siemens.net (139.24.237.214) by
 CNPEK01M09MSX.ad011.siemens.net (139.24.237.227) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 1 Aug 2023 19:59:50 +0800
Received: from CNPEK01M01MSX.ad011.siemens.net ([139.24.237.214]) by
 CNPEK01M01MSX.ad011.siemens.net ([139.24.237.214]) with mapi id
 15.01.2507.027; Tue, 1 Aug 2023 19:59:49 +0800
From:   "MOESSBAUER, Felix" <felix.moessbauer@siemens.com>
To:     "andre.przywara@arm.com" <andre.przywara@arm.com>,
        "jernej.skrabec@gmail.com" <jernej.skrabec@gmail.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>
CC:     "linux-sunxi@lists.linux.dev" <linux-sunxi@lists.linux.dev>,
        "wens@csie.org" <wens@csie.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "Matzinger, Manuel Josef" <manuel.matzinger@siemens.com>,
        "Bovensiepen, Daniel (bovi)" <daniel.bovensiepen@siemens.com>,
        "conor+dt@kernel.org" <conor+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "Gylstorff, Quirin" <quirin.gylstorff@siemens.com>
Subject: Re: [PATCH 1/1] arm: dts: Enable device-tree overlay support for
 sun8i-h3 pi devices
Thread-Topic: [PATCH 1/1] arm: dts: Enable device-tree overlay support for
 sun8i-h3 pi devices
Thread-Index: AQHZqPyPDN0MHfjaQU2VD8WHo5pzVq+0h5wAgAye1ICAEWdEAIAATJcAgAB3YQCAAbWUgA==
Date:   Tue, 1 Aug 2023 11:59:49 +0000
Message-ID: <2dcc90f8329fe0f3306b8c2a6a1ab17fe1fc48c9.camel@siemens.com>
References: <20230627133703.355893-1-felix.moessbauer@siemens.com>
         <1830379.atdPhlSkOF@jernej-laptop>
         <17c7a0c952913e21d9a323f42a1cfad84ed8a51b.camel@siemens.com>
         <4818881.GXAFRqVoOG@jernej-laptop>
         <6fbb0e557a97555876f8de4a283162a9e7d290b8.camel@siemens.com>
         <a137cb78-f687-e9c6-e6f3-27be92c19da3@arm.com>
In-Reply-To: <a137cb78-f687-e9c6-e6f3-27be92c19da3@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
x-originating-ip: [139.24.247.19]
Content-Type: text/plain; charset="utf-8"
Content-ID: <D527C8D6F7E82844BEEF7003197AD4AC@siemens.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM4PEPF00025F97:EE_|GV1PR10MB6244:EE_
X-MS-Office365-Filtering-Correlation-Id: ea652845-8a3e-4fa0-db10-08db9286d14d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DB2JqtGN0c7HkDSKdcVFirKOj2kKxzbaDz/i1az44+8+W+DsSVNFayFP0s+4hTm0Q4iuNn7X4jtkoB/RO3Jy7WFdy7VsqLGqiE9BpOsXEYwMRRWfdcwJfSrAg9rtdn7SOhDAvb4Gi2u2Wljal1h8wjCGMHo8M6sMjmovLriqv1+V3IYBYfVo+LTROFIA4h9YSo7H2wUQoMRTrJJgOOoTQarrtN44iwJK6M/H5ZrkqQx5Zxpx2lU/Xw0aeuerAd/GEmbTptZ65mqF6Rngy5ZonlNxfmqbLFA6XuZ1LG6msXI6WpxI50IcFfHGC9w2IXKth7RPwOBuMSpBTdyhCJ4SOYUSmCvTuGAc+hplM9BlzW9KEAXpr2K2BLkqlGFMUw2qrxQSuK64Hq1SQnCE9A4Yca0uV3Hxn6gNzhlxKeLB5DKVWJK47aK+z+Fpb8y6gykKdIReSh17qLUJ5gFyd/Ssw8P6qCOnB2QbWbhgJo6FzlWA7+WeMncXuzl/1jKfHJ2FxvKFdB5rgzWSOae9AgUWZCXhGb9mWhgGHUQhbh/tQBE3ZFvG16gpKMAZVC0m2Jz/DaVj0nCzUz95uYUw/Set+YB170Ourzlz/WvNfW551ebAKKkiybUpuk5wpfBl/zyiQHvF25U1CuCIoEiXHumRawT7a6Qi9S7brZRr5dL0jvv2mBQo5yfJ0iMe7ObozBUXR/B8YDIK+Lpf/ImLK/+aQtuIJsXVeuW5fFHLdNRENcAfIAJ0UKaJWB5cg8fcZmdz
X-Forefront-Antispam-Report: CIP:194.138.21.74;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:hybrid.siemens.com;PTR:hybrid.siemens.com;CAT:NONE;SFS:(13230028)(4636009)(376002)(136003)(346002)(39860400002)(396003)(451199021)(82310400008)(40470700004)(46966006)(36840700001)(36860700001)(66899021)(5660300002)(70586007)(70206006)(4326008)(53546011)(110136005)(107886003)(40480700001)(356005)(82960400001)(7596003)(7636003)(54906003)(40460700003)(966005)(82740400003)(478600001)(2906002)(66574015)(2616005)(956004)(8936002)(8676002)(41300700001)(36756003)(186003)(316002)(336012)(47076005)(86362001)(26005)(83380400001)(32563001);DIR:OUT;SFP:1101;
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2023 11:59:53.7401
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ea652845-8a3e-4fa0-db10-08db9286d14d
X-MS-Exchange-CrossTenant-Id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;Ip=[194.138.21.74];Helo=[hybrid.siemens.com]
X-MS-Exchange-CrossTenant-AuthSource: AM4PEPF00025F97.EURPRD83.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR10MB6244
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,
        SPF_HELO_PASS,SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gTW9uLCAyMDIzLTA3LTMxIGF0IDEwOjUzICswMTAwLCBBbmRyZSBQcnp5d2FyYSB3cm90ZToN
Cj4gSGksDQo+IA0KPiBPbiAzMS8wNy8yMDIzIDAzOjQ2LCBNT0VTU0JBVUVSLCBGZWxpeCB3cm90
ZToNCj4gPiBPbiBNb24sIDIwMjMtMDctMzEgYXQgMDA6MTIgKzAyMDAsIEplcm5laiDFoGtyYWJl
YyB3cm90ZToNCj4gPiA+IERuZSBzcmVkYSwgMTkuIGp1bGlqIDIwMjMgb2IgMTQ6MjY6MTMgQ0VT
VCBqZSBNb2Vzc2JhdWVyIEZlbGl4DQo+ID4gPiBuYXBpc2FsKGEpOg0KPiA+ID4gPiBPbiBUdWUs
IDIwMjMtMDctMTEgYXQgMjE6NDIgKzAyMDAsIEplcm5laiDFoGtyYWJlYyB3cm90ZToNCj4gPiA+
ID4gPiBEbmUgdG9yZWssIDI3LiBqdW5paiAyMDIzIG9iIDE1OjM3OjAzIENFU1QgamUgRmVsaXgN
Cj4gPiA+ID4gPiBNb2Vzc2JhdWVyDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gbmFwaXNhbChhKToN
Cj4gPiA+ID4gPiA+IEFkZCB0aGUgJy1AJyBEVEMgb3B0aW9uIGZvciB0aGUgc3VuOGktaDMgcGkt
Y2xhc3MgZGV2aWNlcy4NCj4gPiA+ID4gPiA+IFRoaXMNCj4gPiA+ID4gPiA+IG9wdGlvbg0KPiA+
ID4gPiA+ID4gcG9wdWxhdGVzIHRoZSAnX19zeW1ib2xzX18nIG5vZGUgdGhhdCBjb250YWlucyBh
bGwgdGhlDQo+ID4gPiA+ID4gPiBuZWNlc3NhcnkNCj4gPiA+ID4gPiA+IHN5bWJvbHMNCj4gPiA+
ID4gPiA+IGZvciBzdXBwb3J0aW5nIGRldmljZS10cmVlIG92ZXJsYXlzIChmb3IgaW5zdGFuY2Ug
ZnJvbSB0aGUNCj4gPiA+ID4gPiA+IGZpcm13YXJlDQo+ID4gPiA+ID4gPiBvcg0KPiA+ID4gPiA+
ID4gdGhlIGJvb3Rsb2FkZXIpIG9uIHRoZXNlIGRldmljZXMuDQo+ID4gPiA+ID4gPiANCj4gPiA+
ID4gPiA+IFRoZXNlIGRldmljZXMgYWxsb3cgdmFyaW91cyBtb2R1bGVzIHRvIGJlIGNvbm5lY3Rl
ZCBhbmQNCj4gPiA+ID4gPiA+IHRoaXMNCj4gPiA+ID4gPiA+IGVuYWJsZXMNCj4gPiA+ID4gPiA+
IHVzZXJzIHRvIGNyZWF0ZSBvdXQtb2YtdHJlZSBkZXZpY2UtdHJlZSBvdmVybGF5cyBmb3IgdGhl
c2UNCj4gPiA+ID4gPiA+IG1vZHVsZXMuDQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IFBsZWFz
ZSBub3RlIHRoYXQgdGhpcyBjaGFuZ2UgZG9lcyBpbmNyZWFzZSB0aGUgc2l6ZSBvZiB0aGUNCj4g
PiA+ID4gPiA+IHJlc3VsdGluZyBEVEINCj4gPiA+ID4gPiA+IGJ5IH4zMCUuIEZvciBleGFtcGxl
LCB3aXRoIHY2LjQgaW5jcmVhc2UgaW4gc2l6ZSBpcyBhcw0KPiA+ID4gPiA+ID4gZm9sbG93czoN
Cj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gMjI5MDkgLT4gMjk1NjQgc3VuOGktaDMtb3Jhbmdl
cGktbGl0ZS5kdGINCj4gPiA+ID4gPiA+IDI0MjE0IC0+IDMwOTM1IHN1bjhpLWgzLWJhbmFuYXBp
LW0yLXBsdXMuZHRiDQo+ID4gPiA+ID4gPiAyMzkxNSAtPiAzMDY2NCBzdW44aS1oMy1uYW5vcGkt
bTEtcGx1cy5kdGINCj4gPiA+ID4gPiA+IDIyOTY5IC0+IDI5NTM3IHN1bjhpLWgzLW5hbm9waS1t
MS5kdGINCj4gPiA+ID4gPiA+IDI0MTU3IC0+IDMwODM2IHN1bjhpLWgzLW5hbm9waS1kdW8yLmR0
Yg0KPiA+ID4gPiA+ID4gMjQxMTAgLT4gMzA4NDUgc3VuOGktaDMtb3JhbmdlcGktcGx1czJlLmR0
Yg0KPiA+ID4gPiA+ID4gMjM0NzIgLT4gMzAwMzcgc3VuOGktaDMtb3JhbmdlcGktb25lLmR0Yg0K
PiA+ID4gPiA+ID4gMjQ2MDAgLT4gMzE0MTAgc3VuOGktaDMtb3JhbmdlcGktcGx1cy5kdGINCj4g
PiA+ID4gPiA+IDIzNjE4IC0+IDMwMjMwIHN1bjhpLWgzLW9yYW5nZXBpLTIuZHRiDQo+ID4gPiA+
ID4gPiAyMjE3MCAtPiAyODU0OCBzdW44aS1oMy1vcmFuZ2VwaS16ZXJvLXBsdXMyLmR0Yg0KPiA+
ID4gPiA+ID4gMjMyNTggLT4gMjk3OTUgc3VuOGktaDMtbmFub3BpLW5lby1haXIuZHRiDQo+ID4g
PiA+ID4gPiAyMzExMyAtPiAyOTY5OSBzdW44aS1oMy16ZXJvcGkuZHRiDQo+ID4gPiA+ID4gPiAy
MjgwMyAtPiAyOTI3MCBzdW44aS1oMy1uYW5vcGktbmVvLmR0Yg0KPiA+ID4gPiA+ID4gMjQ2NzQg
LT4gMzEzMTggc3VuOGktaDMtbmFub3BpLXIxLmR0Yg0KPiA+ID4gPiA+ID4gMjM0NzcgLT4gMzAw
Mzggc3VuOGktaDMtb3JhbmdlcGktcGMuZHRiDQo+ID4gPiA+ID4gPiAyNDYyMiAtPiAzMTM4MCBz
dW44aS1oMy1iYW5hbmFwaS1tMi1wbHVzLXYxLjIuZHRiDQo+ID4gPiA+ID4gPiAyMzc1MCAtPiAz
MDM2NiBzdW44aS1oMy1vcmFuZ2VwaS1wYy1wbHVzLmR0Yg0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBGZWxpeCBNb2Vzc2JhdWVyDQo+ID4gPiA+ID4gPiA8ZmVsaXgu
bW9lc3NiYXVlckBzaWVtZW5zLmNvbT4NCj4gPiA+ID4gPiA+IC0tLQ0KPiA+ID4gPiA+ID4gUGxl
YXNlIG5vdGUgdGhhdCBJIG9ubHkgdGVzdGVkIHRoZSBvdmVybGF5IG9uIHRoZSBzdW44aS1oMy0N
Cj4gPiA+ID4gPiA+IG5hbm9waS0NCj4gPiA+ID4gPiA+IG5lbw0KPiA+ID4gPiA+ID4gZGV2aWNl
LiBIb3dldmVyLCB0aGUgZGV2aWNlcyBhcmUgcXVpdGUgc2ltaWxhciBhbmQgaW4NCj4gPiA+ID4g
PiA+IGdlbmVyYWwNCj4gPiA+ID4gPiA+IHRoZQ0KPiA+ID4gPiA+ID4gY2hhbmdlIHRvIGFkZCBz
eW1ib2xzIHNob3VsZCBiZSBwcmV0dHkgc2FmZS4gU2ltaWxhcg0KPiA+ID4gPiA+ID4gcGF0Y2hl
cw0KPiA+ID4gPiA+ID4gaGF2ZQ0KPiA+ID4gPiA+ID4gYmVlbg0KPiA+ID4gPiA+ID4gYXBwbGll
ZCB0byB2YXJpb3VzIG90aGVyIGRldmljZXMgaW4gdGhlIHBhc3Qgd2l0aG91dCBhbnkNCj4gPiA+
ID4gPiA+IG5lZ2F0aXZlDQo+ID4gPiA+ID4gPiBlZmZlY3QgKGV4Y2VwdCBmb3IgdGhlIGluY3Jl
YXNlZCBzaXplKS4NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBJJ20gbm90IGEgZmFuIG9mIHRoaXMg
YXBwcm9hY2guIFdoYXQncyB3cm9uZyB3aXRoIGxldHRpbmcNCj4gPiA+ID4gPiBrZXJuZWwNCj4g
PiA+ID4gPiBidWlsZGVycw0KPiA+ID4gPiA+IHNwZWNpZnkgdGhpcyBmbGFnIG9uIHRoZWlyIG93
biBhdCBjb21waWxlIHRpbWU/IFRoYXQgd2F5IHNpemUNCj4gPiA+ID4gPiBpcw0KPiA+ID4gPiA+
IHN0aWxsDQo+ID4gPiA+ID4gY29tcGxldGVseSBpbiBkb21haW4gb2YgYnVpbGRlci4NCg0KQXQg
bGVhc3QgdGhlIERlYmlhbiBtYWludGFpbmVycyBkZWNpZGVkIHRvIE5PVCBpbmNsdWRlIHRoZSAt
QCBmb3IgYWxsDQp0YXJnZXRzLCBidXQgcHVyZWx5IHJlbHkgb24gd2hhdCB0aGUga2VybmVsIG9m
ZmVycyBbNV0uIFRoZXkgbW90aXZhdGUNCnRoaXMgd2l0aCBhIHNpbWlsYXIgZGVjaXNpb24gbWFk
ZSBpbiB0aGUgS2VybmVsLiBUaGlzIGJyaW5ncyB1cyBiYWNrIHRvDQpteSBwYXRjaCB3aGljaCBl
bmFibGVzIHRoZSAtQCBmb3IgcGFydGljdWxhciBib2FyZHMgaW4gdGhlIEtlcm5lbA0KaXRzZWxm
Lg0KDQpbNV0gaHR0cHM6Ly9idWdzLmRlYmlhbi5vcmcvY2dpLWJpbi9idWdyZXBvcnQuY2dpP2J1
Zz05MTA3MjcjMjgNCg0KPiA+ID4gPiANCj4gPiA+ID4gVGhhdCdzIGVhc2llciBzYWlkIHRoYW4g
ZG9uZS4gVGhlc2Ugc3ltYm9scyBhcmUgb25seSBuZWVkZWQgZm9yDQo+ID4gPiA+IHNvbWUNCj4g
PiA+ID4gdGFyZ2V0cyAodGhhdCBhcmUgY29tbW9ubHkgdXNlZCB3aXRoIG92ZXJsYXlzKS4gQnV0
IGhvdyBzaG91bGQNCj4gPiA+ID4gYQ0KPiA+ID4gPiBnZW5lcmFsIHB1cnBvc2Uga2VybmVsIGJ1
aWxkZXIgbGlrZSBEZWJpYW4ga25vdyB3aGljaCBEVCB0bw0KPiA+ID4gPiBidWlsZA0KPiA+ID4g
PiB3aXRoDQo+ID4gPiA+IHN5bWJvbHMgYW5kIHdoaWNoIHdpdGhvdXQ/IEluIFlvY3RvIHRoZSBv
dmVybGF5cyBhcmUgbm90IHJlYWxseQ0KPiA+ID4gPiBuZWVkZWQsDQo+ID4gPiA+IGFzIG9mdGVu
IHRoZSBvcmlnaW5hbCBkdHMgaXMganVzdCBwYXRjaGVkIGRpcmVjdGx5Lg0KPiA+ID4gDQo+ID4g
PiBMaWJyZUVMRUMgKGRpc3RybyBJIGhlbHAgd2l0aCkgaGFzIHN1cHBvcnQgZm9yIERUIG92ZXJs
YXlzIGZvcg0KPiA+ID4gc29tZQ0KPiA+ID4gdGltZSBhbmQNCj4gPiA+IGl0IHdhcyBlYXN5IHRv
IGVuYWJsZSBzeW1ib2xzIGZvciBhbGwgRFRzIHdpdGggc2ltcGxlDQo+ID4gPiAiRFRDX0ZMQUdT
PS1AIg0KPiA+ID4gYWRkaXRpb24NCj4gDQo+IFNvIHdoeSBkb24ndCB5b3UgdXNlIHRoZSBVLUJv
b3QgcHJvdmlkZWQgY29weSBvZiB0aGUgRFRCPyBXZSBzeW5jIHRoZQ0KPiBEVHMgcmVndWxhcmx5
IGZyb20gdGhlIGtlcm5lbCByZXBvIHRvIHRoZSBVLUJvb3QgcmVwbywgYW5kIHRoZSBVLUJvb3QN
Cj4gYnVpbGQgc3lzdGVtIGJ1aWxkcyBhbGwgRFRCcyB3aXRoIG92ZXJsYXkgc3VwcG9ydCBhbHJl
YWR5Lg0KPiBUaGlzIGFsc28gc2F2ZXMgeW91IGZyb20gdGhlIGhhc3NsZSB0byBhY3R1YWxseSBm
aW5kIGFuZCBsb2FkIHRoZQ0KPiByaWdodCANCj4gRFRCLCBhcyBpdCBhdXRvbWF0aWNhbGx5IGNv
bWVzIGFzIHBhcnQgb2YgdGhlIFUtQm9vdCBiaW5hcnkuDQo+IE9uIHRoZSBVLUJvb3QgcHJvbXB0
IChvciByYXRoZXIgaW4gYSBzY3JpcHQpIHlvdSB3b3VsZCB0aGVuIGRvOg0KPiA9PiBmZHQgbW92
ZSAkZmR0Y29udHJvbGFkZHIgJGZkdF9hZGRyX3INCj4gPT4gbG9hZCA8c291cmNlPiAkZmR0b3Zl
cmxheV9hZGRyX3IgPHlvdXJfb3ZlcmxheT4uZHRibw0KPiA9PiBmZHQgYXBwbHkgJGZkdG92ZXJs
YXlfYWRkcl9yDQoNCkZvciBzeXN0ZW1zIHRoYXQgdXNlIHUtYm9vdCB0aGlzIGlzIGEgdmVyeSBj
b252ZW5pZW50IG9wdGlvbi4gVGhhbmtzDQpmb3IgYnJpbmdpbmcgdGhpcyB1cC4gSG93ZXZlciwg
dGhlcmUgYXJlIG90aGVyIGJvb3QtY2hhaW5zIHdoZXJlIHRoaXMNCmlzIG5vdCBhbiBvcHRpb24u
IEFsc28sIHdpdGggdGhpcyBhcmd1bWVudCBubyB0YXJnZXQgaW4gdGhlIEtlcm5lbA0Kd291bGQg
bmVlZCB0byBiZSBjb21waWxlZCB3aXRoIC1ALg0KDQpNeSB1bmRlcnN0YW5kaW5nIHdhcyB0aGF0
IGFkZGluZyB0aGUgLUAgaXMgZ2VuZXJhbGx5IGFjY2VwdGVkIGlmIGl0IGlzDQpvbmx5IGRvbmUg
b24gYSBwZXItZGV2aWNlIGJhc2lzICh3aGljaCB0aGlzIHBhdGNoIGRvZXMpLCBidXQgbm90DQph
Y2NlcHRlZCBmb3Igd2hvbGUgYXJjaGl0ZWN0dXJlcy4gQnkgdGhhdCwgSSBleHBlY3QgdG8gc2Vl
IG1hbnkgc2ltaWxhcg0KcGF0Y2hlcyBpbiB0aGUgZnV0dXJlLg0KDQpDaGVlcnMsDQpGZWxpeA0K
DQo+IA0KPiBZb3UgY291bGQgYWxzbyBjaGltZSBpbiBvbiB0aGlzIFUtQm9vdCBwYXRjaCBvZiBt
aW5lLCB0aGF0IGxvYWRzIGFuZCANCj4gYXBwbGllcyBhbGwgLmR0Ym8gZmlsZXMgZm91bmQgaW4g
YSBnaXZlbiBkaXJlY3Rvcnk6DQo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3UtYm9vdC8yMDIz
MDIxMDExMDIxMy4yNTMxMTkwLTEtYW5kcmUucHJ6eXdhcmFAYXJtLmNvbS8NCj4gDQo+IENoZWVy
cywNCj4gQW5kcmUNCj4gDQo+ID4gDQo+ID4gVGhhbmtzIGZvciB0aGUgcG9pbnRlci4gSWYgdGhp
cyB3b3VsZCBiZSBhIGtjb25maWcgb3B0aW9uLCBJIHdvdWxkDQo+ID4gYWdyZWUuIFRoZXJlJ3Mg
YSBwYXRjaCB0byBhZGQgdGhpcyBvcHRpb24sIGJ1dCB0aGlzIGRpZCBub3QgZ2V0DQo+ID4gYWNj
ZXB0ZWQgWzNdLiBKdXN0IG1hbnVhbGx5IGFkZGluZyBzb21lICJtYWdpYyIgb3B0aW9ucyBkb2Vz
IG5vdA0KPiA+IGZlZWwNCj4gPiBjb3JyZWN0Lg0KPiA+IA0KPiA+ID4gdG8gYnVpbGQgY29tbWFu
ZCBbMV0uIERvIHlvdSBzZWUgYW55IGRvd25zaWRlIGV4Y2VwdCBrbm93aW5nIHlvdQ0KPiA+ID4g
aGF2ZQ0KPiA+ID4gdG8NCj4gPiA+IGluY2x1ZGUgaXQ/IE9uIHRoZSB1cHNpZGUsIHRoZXJlIGlz
IG5vIG5lZWQgdG8gcGF0Y2ggZWFjaCBhbmQNCj4gPiA+IGV2ZXJ5DQo+ID4gPiBmaWxlIGFuZA0K
PiA+ID4ga2VybmVsIGJ1aWxkZXIgaGFzIGEgY2hvaWNlIGlmIG92ZXJsYXlzIHNob3VsZCBiZSBz
dXBwb3J0ZWQgb3INCj4gPiA+IG5vdC4NCj4gPiANCj4gPiBUaGVyZSBpcyBhIHNpbWlsYXIgZmVh
dHVyZSByZXF1ZXN0IGZvciBEZWJpYW4sIGJ1dCB3aXRob3V0IGENCj4gPiBkZWNpc2lvbg0KPiA+
IHlldCBbNF0uIEkganVzdCBjcm9zcy1yZWZlcmVuY2VkIGl0IHRvIHRoaXMgdGhyZWFkLg0KPiA+
IA0KPiA+ID4gTm90ZSB0aGF0DQo+ID4gPiBpbiBzb21lIGNhc2VzIG92ZXJsYXlzIGNhbiBiZSBu
ZWVkZWQgZXZlbiBpbiB0aGUgY2FzZSB3aGVuIGJvYXJkDQo+ID4gPiBkb2Vzbid0IGhhdmUNCj4g
PiA+IGV4cGFuc2lvbiBwb3J0cy4NCj4gPiANCj4gPiBJZiB0aGF0IGlzIHRoZSBjYXNlLCB3aHkg
Y2FuJ3Qgd2UgYXQgbGVhc3QgYWRkIHRoZSBwYXRjaCBmcm9tIFszXQ0KPiA+IGFuZA0KPiA+IHBy
b3ZpZGUgdGhlIGRpc3Ryb3MgYW4gZWFzeSBvcHRpb24gdG8gZW5hYmxlIG92ZXJsYXlzPyBPbmNl
DQo+ID4gaW50ZWdyYXRlZCwNCj4gPiB3ZSBjYW4gZXZlbnR1YWxseSBnZXQgcmlkIG9mIGFsbCB0
aGUgcGVyLWRldmljZSBwYXRjaGVzIGluIHRoZQ0KPiA+IGtlcm5lbC4NCj4gPiANCj4gPiBCZXN0
IHJlZ2FyZHMsDQo+ID4gRmVsaXgNCj4gPiANCj4gPiBbM10gaHR0cHM6Ly93d3cuc3Bpbmljcy5u
ZXQvbGlzdHMva2VybmVsL21zZzQyNTIzNjEuaHRtbA0KPiA+IFs0XSBodHRwczovL2J1Z3MuZGVi
aWFuLm9yZy9jZ2ktYmluL2J1Z3JlcG9ydC5jZ2k/YnVnPTkxMDcyNw0KPiA+IA0KPiA+ID4gDQo+
ID4gPiBCZXN0IHJlZ2FyZHMsDQo+ID4gPiBKZXJuZWoNCj4gPiA+IA0KPiA+ID4gWzFdDQo+ID4g
PiBodHRwczovL2dpdGh1Yi5jb20vTGlicmVFTEVDL0xpYnJlRUxFQy50di9ibG9iL21hc3Rlci9w
YWNrYWdlcy9saW51eC8NCj4gPiA+IHBhY2thZ2UubWsjTDIxMw0KPiA+ID4gDQo+ID4gPiA+IA0K
PiA+ID4gPiBUaGVyZSBoYXMgYmVlbiBhIGRpc2N1c3Npb24gaW4gMjAxNyB0byBpbXByb3ZlIHRo
ZSBzaXR1YXRpb24gaW4NCj4gPiA+ID4gZ2VuZXJhbCwgYnV0IHdpdGhvdXQgYW55IGZpbmFsIGRl
Y2lzaW9uIG9yIGltcGxlbWVudGF0aW9uIFsxXS4NCj4gPiA+ID4gQnkNCj4gPiA+ID4gdGhhdCwN
Cj4gPiA+ID4gdGhlc2UgcGF0Y2hlcyBnb3QgbW9yZSBhbmQgbW9yZSBjb21tb24uIEkgcmVjZW50
bHkgc2VudCBhIHZlcnkNCj4gPiA+ID4gc2ltaWxhcg0KPiA+ID4gPiBwYXRjaCBmb3IgYSByaXNj
diBib2FyZCB0aGF0IGdvdCBhY2NlcHRlZCBbMl0uDQo+ID4gPiA+IA0KPiA+ID4gPiBJTUhPIGl0
IGlzIGJldHRlciB0byBoYXZlIHRoZXNlIHBhdGNoZXMgaW4gdGhlIGtlcm5lbCBpbnN0ZWFkDQo+
ID4gPiA+IG9mDQo+ID4gPiA+IGNhcnJ5aW5nIGRpZmZlcmVudCB2YXJpYW50cyBvZiB0aGlzIGlu
IGVhY2ggTGludXggZGlzdHJvLiBJTUhPLA0KPiA+ID4gPiB0aGUNCj4gPiA+ID4gYm9hcmQgdmVu
ZG9ycyB0aGVtc2VsdmVzIHNob3VsZCBhZGQgdGhpcyB3aGVuIHRoZXkgYWRkIGEgYm9hcmQuDQo+
ID4gPiA+IA0KPiA+ID4gPiBbMV0NCj4gPiA+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGtt
bC8xNTAyODMxNzM2LTI4MjgyLTEtZ2l0LXNlbmQtZW1haWwtdHJpbmlAa29uc3Vsaw0KPiA+ID4g
PiBvLmNvbS8gWzJdDQo+ID4gPiA+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWRldmlj
ZXRyZWUvMjAyMzA2MjcwODA2MjAuMzI5ODczLTEtZmVsaXgubW9lc3MNCj4gPiA+ID4gYmF1ZXJA
c2llbWVucy5jb20vDQo+ID4gPiA+IA0KPiA+ID4gPiBCZXN0IHJlZ2FyZHMsDQo+ID4gPiA+IEZl
bGl4DQo+ID4gPiA+IA0KPiA+ID4gPiA+IEJlc3QgcmVnYXJkcywNCj4gPiA+ID4gPiBKZXJuZWoN
Cj4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IEZlbGl4IE1vZXNzYmF1ZXINCj4gPiA+ID4gPiA+IFNp
ZW1lbnMgQUcNCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gwqDCoGFyY2gvYXJtL2Jvb3QvZHRz
L2FsbHdpbm5lci9NYWtlZmlsZSB8IDE5DQo+ID4gPiA+ID4gPiArKysrKysrKysrKysrKysrKysr
DQo+ID4gPiA+ID4gPiDCoMKgMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKykNCj4gPiA+
ID4gPiA+IA0KPiA+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2FsbHdp
bm5lci9NYWtlZmlsZQ0KPiA+ID4gPiA+ID4gYi9hcmNoL2FybS9ib290L2R0cy9hbGx3aW5uZXIv
TWFrZWZpbGUgaW5kZXgNCj4gPiA+ID4gPiA+IDU4OWExY2UxMTIwYS4uZWViYjVhMGM4NzNhDQo+
ID4gPiA+ID4gPiAxMDA2NDQNCj4gPiA+ID4gPiA+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2Fs
bHdpbm5lci9NYWtlZmlsZQ0KPiA+ID4gPiA+ID4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvYWxs
d2lubmVyL01ha2VmaWxlDQo+ID4gPiA+ID4gPiBAQCAtMTc5LDYgKzE3OSwyNSBAQCBkdGItJChD
T05GSUdfTUFDSF9TVU43SSkgKz0gXA0KPiA+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoCBzdW43
aS1hMjAtcGNkdWlubzMtbmFuby5kdGIgXA0KPiA+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoCBz
dW43aS1hMjAtd2V4bGVyLXRhYjcyMDAuZHRiIFwNCj4gPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKg
wqAgc3VuN2ktYTIwLXdpdHMtcHJvLWEyMC1ka3QuZHRiDQo+ID4gPiA+ID4gPiArDQo+ID4gPiA+
ID4gPiArIyBFbmFibGVzIHN1cHBvcnQgZm9yIGRldmljZS10cmVlIG92ZXJsYXlzIGZvciBhbGwg
cGlzDQo+ID4gPiA+ID4gPiArRFRDX0ZMQUdTX3N1bjhpLWgzLW9yYW5nZXBpLWxpdGUgOj0gLUAN
Cj4gPiA+ID4gPiA+ICtEVENfRkxBR1Nfc3VuOGktaDMtYmFuYW5hcGktbTItcGx1cyA6PSAtQA0K
PiA+ID4gPiA+ID4gK0RUQ19GTEFHU19zdW44aS1oMy1uYW5vcGktbTEtcGx1cyA6PSAtQA0KPiA+
ID4gPiA+ID4gK0RUQ19GTEFHU19zdW44aS1oMy1uYW5vcGktbTEgOj0gLUANCj4gPiA+ID4gPiA+
ICtEVENfRkxBR1Nfc3VuOGktaDMtbmFub3BpLWR1bzIgOj0gLUANCj4gPiA+ID4gPiA+ICtEVENf
RkxBR1Nfc3VuOGktaDMtb3JhbmdlcGktcGx1czJlIDo9IC1ADQo+ID4gPiA+ID4gPiArRFRDX0ZM
QUdTX3N1bjhpLWgzLW9yYW5nZXBpLW9uZSA6PSAtQA0KPiA+ID4gPiA+ID4gK0RUQ19GTEFHU19z
dW44aS1oMy1vcmFuZ2VwaS1wbHVzIDo9IC1ADQo+ID4gPiA+ID4gPiArRFRDX0ZMQUdTX3N1bjhp
LWgzLW9yYW5nZXBpLTIgOj0gLUANCj4gPiA+ID4gPiA+ICtEVENfRkxBR1Nfc3VuOGktaDMtb3Jh
bmdlcGktemVyby1wbHVzMiA6PSAtQA0KPiA+ID4gPiA+ID4gK0RUQ19GTEFHU19zdW44aS1oMy1u
YW5vcGktbmVvLWFpciA6PSAtQA0KPiA+ID4gPiA+ID4gK0RUQ19GTEFHU19zdW44aS1oMy16ZXJv
cGkgOj0gLUANCj4gPiA+ID4gPiA+ICtEVENfRkxBR1Nfc3VuOGktaDMtbmFub3BpLW5lbyA6PSAt
QA0KPiA+ID4gPiA+ID4gK0RUQ19GTEFHU19zdW44aS1oMy1uYW5vcGktcjEgOj0gLUANCj4gPiA+
ID4gPiA+ICtEVENfRkxBR1Nfc3VuOGktaDMtb3JhbmdlcGktcGMgOj0gLUANCj4gPiA+ID4gPiA+
ICtEVENfRkxBR1Nfc3VuOGktaDMtYmFuYW5hcGktbTItcGx1cy12MS4yIDo9IC1ADQo+ID4gPiA+
ID4gPiArRFRDX0ZMQUdTX3N1bjhpLWgzLW9yYW5nZXBpLXBjLXBsdXMgOj0gLUANCj4gPiA+ID4g
PiA+IMKgwqBkdGItJChDT05GSUdfTUFDSF9TVU44SSkgKz0gXA0KPiA+ID4gPiA+ID4gwqDCoMKg
wqDCoMKgwqDCoCBzdW44aS1hMjMtZXZiLmR0YiBcDQo+ID4gPiA+ID4gPiDCoMKgwqDCoMKgwqDC
oMKgIHN1bjhpLWEyMy1ndDkwaC12NC5kdGIgXA0KPiA+ID4gDQo+ID4gPiANCj4gPiA+IA0KPiA+
ID4gDQo+ID4gDQoNCg==
