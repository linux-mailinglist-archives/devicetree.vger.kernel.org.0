Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 289CD51500A
	for <lists+devicetree@lfdr.de>; Fri, 29 Apr 2022 17:58:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350801AbiD2QBa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 12:01:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235747AbiD2QB3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 12:01:29 -0400
Received: from EUR02-HE1-obe.outbound.protection.outlook.com (mail-eopbgr10064.outbound.protection.outlook.com [40.107.1.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 630BC8303C
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 08:58:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VzWJDZZ9liNou9ueURyq0y9WT/24M+pUOZja5wyIsQwwAd/yAL7U9Oaiw8GDFlEOXztLJiq+AkKWgHx2XNL4G9mHr9v1Hmgj2I/6qPJtMAidW2dP5RcKrljL/G94jkCFYy924ukHegAc2hbLhGyv43mKiv0NfPJ+gVo5qSj6j1c1LPskoBVX/HpqwRdhdAhshT+ihRsJGDCpJppZGgcEl0bzXtxkLzpFwkej476ZEpvlRN7oDeWzuz2aIy8zMtrvojaorHWcQgRyAOBlgePryfgTN+iLapEXbuIFGvVDfBEpk2ti9jBqTpO4APjMxQ+iUTmFwgx7iSNL6vUnyXv8/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q0LDgawkG6dz8vZ++x0hU7UoxgdhRgy+YxFN+POFuPI=;
 b=VvafnHtmQ7oYrvzVgIAGZt6eoJsY/nP3EmTBwsKdjdvEoK0V6B43iaRIvNbBEBHXn97tnqUslEocK9NpEZgpACRzR4k7PQfZ1pu1OXDZvEc/FIXQcsLDZEmXH2jrYWqhhyuEVDb6xY7buKb4pVgf6/yANkURAZBBX5twJ7PIdpB1aubG0CewylVmU6JmPPaXf5FWz+emzqovrrBf4uT+IeGsVYpQxBEXHiajT50IZkZAbh2QBk853wUccmtUUwuxUpgofoQ1d02zsFCi1hQJSUfgZU8IYBXA+W5/9T6BFZvG1GXp7yOsqK7AqBK4pVaT93s5PO7WixzqxcyLEUC+Qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q0LDgawkG6dz8vZ++x0hU7UoxgdhRgy+YxFN+POFuPI=;
 b=OraLU30YlDAOd72jMHrT7i6+Cyc88Mus428jsyhTHEZQn62jen3UgTCVleHF3RhSKZI1zFl1XZo99cNOZA/2GFL5jdhzSNqQ854rCuKubc7z+13sr4nDPMicL3Oq62fE1HRBW9peHA6N6YdFBNQScFQnvu7jKiZszegmt0gRuxE=
Received: from AS1PR04MB9631.eurprd04.prod.outlook.com (2603:10a6:20b:476::5)
 by VI1PR04MB5951.eurprd04.prod.outlook.com (2603:10a6:803:d5::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5206.14; Fri, 29 Apr
 2022 15:58:06 +0000
Received: from AS1PR04MB9631.eurprd04.prod.outlook.com
 ([fe80::f9d6:a5a9:c2f3:3076]) by AS1PR04MB9631.eurprd04.prod.outlook.com
 ([fe80::f9d6:a5a9:c2f3:3076%3]) with mapi id 15.20.5186.021; Fri, 29 Apr 2022
 15:58:06 +0000
From:   Jun Li <jun.li@nxp.com>
To:     Frieder Schrempf <frieder.schrempf@kontron.de>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>
CC:     "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
        "aford173@gmail.com" <aford173@gmail.com>,
        "tharvey@gateworks.com" <tharvey@gateworks.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        Jacky Bai <ping.bai@nxp.com>
Subject: RE: [PATCH] arm64: dts: imx8m: correct usb power domain
Thread-Topic: [PATCH] arm64: dts: imx8m: correct usb power domain
Thread-Index: AQHYW550A6WdYfW2SEu2/G1uk/hMDq0GmM8AgAAHLDCAAGM8gIAABZTQ
Date:   Fri, 29 Apr 2022 15:58:06 +0000
Message-ID: <AS1PR04MB963113399991B4C109E8C2A289FC9@AS1PR04MB9631.eurprd04.prod.outlook.com>
References: <1651218184-22066-1-git-send-email-jun.li@nxp.com>
 <1241eccc-5267-b241-7da5-ce5e62cdb6a3@kontron.de>
 <PA4PR04MB96405F791707A549A1A69B5F89FC9@PA4PR04MB9640.eurprd04.prod.outlook.com>
 <3f4da592-d0f7-df6c-5215-c72244bb617e@kontron.de>
In-Reply-To: <3f4da592-d0f7-df6c-5215-c72244bb617e@kontron.de>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f6d45319-0e6e-48ed-a98a-08da29f90cf3
x-ms-traffictypediagnostic: VI1PR04MB5951:EE_
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <VI1PR04MB595139F7D30D31F74787E1B389FC9@VI1PR04MB5951.eurprd04.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: c38dPbdhna209tDkZYU2BkPFG1GOS2nEKfFQys3wgCGwOELEMoE/hXVa4WwFakivhwrO8BJQmB/B16KwaCM8OIguSnKNACBW51oQi+2P1Aj/BKspBca+2fCvBH/3amHRIh0dwERaTUkir3M5VyNeRXr6qJ83nNVb4Rvq/fra5HxiBYxRtyFhZQBsJLrVoa+gEtlsAH+Wx01fZQaXAI/Y05bpAt6UuzvRFournKcNV2kbhKBHzyBE3jz7iCaldthtdoMGAbGQJONgpHV4r6PkQZRyt9mnKy026tvWLfsEVhfkVlpGPI58kJAas37gt82JNRWk1qD61Y1Ml1b87FmCXlpkVrEMRztrZVzkhwAEXA8WzVuvwp9jxte3If/ZSanaQHr6d/0Y2Et33wTmQI7tdEWCxxYlMj47LcjwJz0wlidr8aBsMdKvt0TQ/qgLWkEMMQi+z6qij3+kUAuoFKB410UHME4EHQiCVbw4/5Sx+uzDqIysmppVljOIJB8b8UWR32opfh+faD4jeHS7VRsuLQaDCJYbhsHrGtuy1Asg1BsWfPRJ/lOVFZb2oc/b/ebWC1Q4a2M5f4zruM1Xpgj51aqosB1tMEytJKYjNj9BOf7OFdojFKSKczMqleA6mztnQtNoXub2RLRtn0p8dBeP+KkWoQvp/QbNJ1STTkaqfHRPfQopBMpyJQI2cQHEG2AV8Xh6ZLtiLBEIMDJ7vGWTZ/5sYG98VrJk6PkDRa/Hpdo=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS1PR04MB9631.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(64756008)(66476007)(66446008)(6506007)(53546011)(26005)(76116006)(66946007)(7696005)(83380400001)(9686003)(66556008)(44832011)(8676002)(4326008)(122000001)(54906003)(5660300002)(86362001)(110136005)(2906002)(316002)(38100700002)(38070700005)(7416002)(33656002)(186003)(52536014)(8936002)(508600001)(55016003)(71200400001)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TmVLeUlHL3YrckZYb0dLVTVRWEVUVjZkbngvbDRIa3krWDJTb1R1L0l6NVVk?=
 =?utf-8?B?cktoU3JCTHNlRzhFU3p5MHJUb1IwRE1iSk5vZjd1NVVpakFtSEY5b2Rpd2k3?=
 =?utf-8?B?bmVMMzQrOG9peGUraGFFOEJ2Z0IzUUhob3laVWk0WU5ZUjI2SDh3dFFjcGdm?=
 =?utf-8?B?NnFySXBDenlnK0hkNjdCTGttNDd0OXdyMzdMZU5WWHRFYm8xQ3c0Q1JWRFVX?=
 =?utf-8?B?dDlOWE9NNGxqTXRRNldNNHluSVMxUWZGUlo2Rk1FNmlDODVRaFlOb1JrMlhh?=
 =?utf-8?B?Wkp0Y1lHaXMzYkFkVVcrb3pXYldTNUJkRktDRnViZHlJL0lsczF4Z3NleGJS?=
 =?utf-8?B?bGxWOUtxOEQyRENQV24xZ1dJZzZLNVFOZUhiSXhLS1lPYlh5NjdyVUhEV1Uw?=
 =?utf-8?B?S2JteFpwcnc4bkZNbDBGVVlYZ2x1bmNURjdZRmNPMEZMcGhBbXEwb0dYRHUx?=
 =?utf-8?B?Qll1cEtVdENhVFdqd3N0SmhEc1hMSTgzelRWbnNIMXdDNmlNMVpxTmh0UEZN?=
 =?utf-8?B?SUsyNU1ML3A5M2VobzMrcXZQU3FlSkJiQWRueVN6TWpyZzNGZWFUZnY3Vyt4?=
 =?utf-8?B?akFuQno1czJPcjVUSlowNXRJYzZpYmROQUxjTG5ZMlI5RG4vN25nS3JLRjVz?=
 =?utf-8?B?cXF3bG5jazBoLzdHY1NTb2RLZ2pSVmZkNUNiUHlBeHYwcDU4MFo1R1N0Y2pM?=
 =?utf-8?B?T0xkRTVCSHo1OHM5NWFpWExtcm9NZi8rVFY0Q29uanZSTk5ZelFJRDJWV1Ny?=
 =?utf-8?B?dXJJblg0L3lGYVRJSnUvNTlTdWZ4WWhua1BkTnZXdEpsdUphN1ZFaWNhcTht?=
 =?utf-8?B?L1RGY2JIVThSNWJwOWROQ2p3OTM2K0oyOGJNSWYrbm1MWDMvNGxrWFBFMEhp?=
 =?utf-8?B?NC9Jb3RkczMxQ005VlJqZFRIMC91bk02ZkQvNnVKeVRWZFdlckdRaXphR0xn?=
 =?utf-8?B?MkVrMXUzMVVVeUI0Szk5eFk4bHRMOEZ6Mk9zWVRzRDhOV3hMUFBKR1Q5SG9i?=
 =?utf-8?B?NFl5YzVkNElFVngxL0I5NlRoWjJPY1RHejg4N0REYk1HTHk2VlBBMHZJUjd0?=
 =?utf-8?B?cUZYT2JpMTZ5ZEdWeFZRQlZHY2s5LzJQZ1h2QVk4dUxZVnVJY1pZaDJReG55?=
 =?utf-8?B?eGQ4NEM1c1YxTEVqMWRxYTBWaGJyRVBWSmNycUllcDVWNzFSYlkvSjE1NENY?=
 =?utf-8?B?ZG42ZE55OFhJZithVEVTb1lvL3k3MnNoVG5UZnNWYWlHNHJhYWU4QzNjSDE1?=
 =?utf-8?B?elNRZGlHa0NEWklSRDRNNncwVkwxa1dUWWQwZEI1b2FXbTkrSGRlOE1Za1pq?=
 =?utf-8?B?UjVveEUxd2xLRFNHampNSitENVZZTlgvbU1RclRtcnlrZm5qb3B5QjJ2MTBM?=
 =?utf-8?B?a0tsTVk5VGp3ZVBibU05bnVmQTVKMnFxeXJkOERubkZ3UWs3OTNCUHdvV1ps?=
 =?utf-8?B?MHRTSjZibnNBNk9EYy85VVhmL21rVmlKTG5yZnhCWjJoRjVIRlhZZWtpNS83?=
 =?utf-8?B?UkdHdUp3RUsvWW85LzMzaFU2N3lheTloOGJNS2taQ0l5UExSZGNVa1lvcS9D?=
 =?utf-8?B?alRuc1FvZnRsOGxhVm1PeVFsU1VkQmc5UURFQUhlZXd3U0U1VGxCVGNRODBo?=
 =?utf-8?B?dFZiM2pPTWQxeGgxUmw5NHBKUVFQVFllVGtVdWJ5OWVWUHcvS1FDUXBUYytH?=
 =?utf-8?B?TTkwcjFXL3dYMFNRcWdLRnJiRm9HQlo3ZUJtcHZxcVBwZ0Q1dTZOb3NKcXU4?=
 =?utf-8?B?N20zR01SSDhDTldJQXQ3MjBpSitPQU8rZUxlQlFoc1hobVNGb2d4S2FFTU92?=
 =?utf-8?B?NWJkTTVScWluME9FOVVhV2IvNlBiWitjaGlqUHFiM1FVb21WUVpsTUpPQjRT?=
 =?utf-8?B?TEQ5Mm5ieXlSb3RRTGVXcDNMN2xHK2VkSGZOVEQxa09tOC8rUzFaMWhGdm00?=
 =?utf-8?B?S1hocDVTMzVjMjhVYkVCNE1XVDloOGk4ZkVVSDJsbTVPVThZR1dCSzY3Vm1x?=
 =?utf-8?B?enFKeUYybUpoU1Y1ZUt5ZVJubFRqZnl3YXROSkh0eFdVQnJjM2prK3IwcElW?=
 =?utf-8?B?S0dGRmZ1UTRjN1pxZDhXWmlzUkF4aFRvSzNNTFR2L0h5Z0g4WHd0UU1mdzRq?=
 =?utf-8?B?a0xMd055OFcvVGpWbXZDNzlTbkFURDQ0QTNlYnFIUXIxNWViSU5acHRiV3Zx?=
 =?utf-8?B?Ym42S2QyZG1qcEhGVTNZTStUZUVWLzVjNnd3enFCNzBUeXpKMWFrQ3JGdGc2?=
 =?utf-8?B?NEtCa1dJbkJ4VkE1SGQva1gwdE9wS2ltYWR3ZUsySUo2ckY0U1JJdnBVaFZx?=
 =?utf-8?Q?dh28qZGrn1+9nYBg8o?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR04MB9631.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6d45319-0e6e-48ed-a98a-08da29f90cf3
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2022 15:58:06.6924
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fFfHN13mKyb91MBh3I2rKR7zWZ38tT/iGdvKjlHdkVuF+7ad8sH6rh8kV+1HKAZo
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5951
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogRnJpZWRlciBTY2hyZW1w
ZiA8ZnJpZWRlci5zY2hyZW1wZkBrb250cm9uLmRlPg0KPiBTZW50OiBGcmlkYXksIEFwcmlsIDI5
LCAyMDIyIDExOjI1IFBNDQo+IFRvOiBKdW4gTGkgPGp1bi5saUBueHAuY29tPjsgc2hhd25ndW9A
a2VybmVsLm9yZw0KPiBDYzogcm9iaCtkdEBrZXJuZWwub3JnOyBrcnp5c3p0b2Yua296bG93c2tp
K2R0QGxpbmFyby5vcmc7DQo+IHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU7IGtlcm5lbEBwZW5ndXRy
b25peC5kZTsgZmVzdGV2YW1AZ21haWwuY29tOw0KPiBkbC1saW51eC1pbXggPGxpbnV4LWlteEBu
eHAuY29tPjsgbC5zdGFjaEBwZW5ndXRyb25peC5kZTsNCj4gYWZvcmQxNzNAZ21haWwuY29tOyB0
aGFydmV5QGdhdGV3b3Jrcy5jb207IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnOw0KPiBsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IEphY2t5IEJhaSA8cGluZy5iYWlAbnhw
LmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSF0gYXJtNjQ6IGR0czogaW14OG06IGNvcnJlY3Qg
dXNiIHBvd2VyIGRvbWFpbg0KPiANCj4gQW0gMjkuMDQuMjIgdW0gMTI6MDkgc2NocmllYiBKdW4g
TGk6DQo+ID4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4+IEZyb206IEZyaWVkZXIg
U2NocmVtcGYgPGZyaWVkZXIuc2NocmVtcGZAa29udHJvbi5kZT4NCj4gPj4gU2VudDogRnJpZGF5
LCBBcHJpbCAyOSwgMjAyMiA1OjA0IFBNDQo+ID4+IFRvOiBKdW4gTGkgPGp1bi5saUBueHAuY29t
Pjsgc2hhd25ndW9Aa2VybmVsLm9yZw0KPiA+PiBDYzogcm9iaCtkdEBrZXJuZWwub3JnOyBrcnp5
c3p0b2Yua296bG93c2tpK2R0QGxpbmFyby5vcmc7DQo+ID4+IHMuaGF1ZXJAcGVuZ3V0cm9uaXgu
ZGU7IGtlcm5lbEBwZW5ndXRyb25peC5kZTsgZmVzdGV2YW1AZ21haWwuY29tOw0KPiA+PiBkbC1s
aW51eC1pbXggPGxpbnV4LWlteEBueHAuY29tPjsgbC5zdGFjaEBwZW5ndXRyb25peC5kZTsNCj4g
Pj4gYWZvcmQxNzNAZ21haWwuY29tOyB0aGFydmV5QGdhdGV3b3Jrcy5jb207DQo+ID4+IGRldmlj
ZXRyZWVAdmdlci5rZXJuZWwub3JnOyBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmc7DQo+ID4+IEphY2t5IEJhaSA8cGluZy5iYWlAbnhwLmNvbT4NCj4gPj4gU3ViamVjdDogUmU6
IFtQQVRDSF0gYXJtNjQ6IGR0czogaW14OG06IGNvcnJlY3QgdXNiIHBvd2VyIGRvbWFpbg0KPiA+
Pg0KPiA+PiBBbSAyOS4wNC4yMiB1bSAwOTo0MyBzY2hyaWViIExpIEp1bjoNCj4gPj4+IHBnY19v
dGcxLzIgaXMgZm9yIGVhY2ggdXNiIHBoeSBhbmQgcGdjX2hzaW9taXggaXMgc2hhcmVkIGJ5IDIg
dXNiDQo+ID4+PiBjb250cm9sbGVycywgc28gYXNzaWduIHRob3NlIHBvd2VyIGRvbWFpbnMgdG8g
Y29ycmVjdCBjb250cm9sbGVyIGFuZA0KPiA+Pj4gcGh5IG5vZGUsIGRlY291cGxlIHRoZSBwZ2Nf
b3RnMS8yIGZyb20gcGdjX2hzaW9taXggc2luY2UgdGhlcmUgaXMgbm8NCj4gPj4+IGhhcmR3YXJl
IGRlcGVuZGVuY3kuDQo+ID4+Pg0KPiA+Pj4gU3VnZ2VzdGVkLWJ5OiBKYWNreSBCYWkgPHBpbmcu
YmFpQG54cC5jb20+DQo+ID4+PiBTaWduZWQtb2ZmLWJ5OiBMaSBKdW4gPGp1bi5saUBueHAuY29t
Pg0KPiA+Pg0KPiA+PiBUaGFua3MgZm9yIHRoZSBwYXRjaCENCj4gPj4NCj4gPj4gSW4gbXkgcHJl
dmlvdXMgdGVzdCBJIHByb2JhYmx5IG1hZGUgc29tZSBtaXN0YWtlLiBUaGUgc2Vjb25kIFVTQg0K
PiA+PiBjb250cm9sbGVyIHdhcyBrZXB0IGVuYWJsZWQgYnkgdGhlIG9uYm9hcmQgaHViLiBXaGVu
IEkgZGlzYWJsZSB0aGUNCj4gPj4gc2Vjb25kIHBvcnQgYW5kIHRlc3QgdGhlIHBhdGNoIHdpdGgg
dGhlIGZpcnN0IHBvcnQgb25seSwgcmVzdW1pbmcNCj4gPj4gZnJvbSBhdXRvc3VzcGVuZCBzdGls
bCBkb2Vzbid0IHdvcmssIGV2ZW4gd2hlbiBJIGtlZXAgdGhlIEhTSU9NSVggYXMNCj4gPj4gcGFy
ZW50IGZvciBPVEcxLzIuIFNvIHRoZXJlJ3MgcHJvYmFibHkgc3RpbGwgc29tZXRoaW5nIG1pc3Np
bmcuLi4NCj4gPg0KPiA+IE15IHRlc3Qgd2FzIGRvbmUgd2l0aCBib3RoIHNlY29uZCBVU0IgcG9y
dCBhbmQgUENJRSBkaXNhYmxlZCwgc28gd2hpbGUNCj4gPiBhdXRvc3VzcGVuZCBvZiBmaXJzdCBw
b3J0LCB0aGUgcGdjX2hzaW9taXggaXMgb2ZmLCBpdCB3b3JrcyBmaW5lIG9uIG15DQo+ID4gSFc6
DQo+ID4NCj4gPiByb290QGlteDhtcWV2azp+IyBbICAgODEuMDIxNDM3XSB1c2IgMS0xOiBVU0Ig
ZGlzY29ubmVjdCwgZGV2aWNlIG51bWJlcg0KPiAzDQo+IA0KPiBBcmUgeW91IHRlc3Rpbmcgb24g
aS5NWDhNTS9OIEVWSz8gWW91ciBDTEkgcHJvbXB0IHNheXMgaW14OG1xZXZrLCB3aGljaCBzZWVt
cw0KPiBhIGJpdCBtaXNsZWFkaW5nLi4uDQoNCkkgd2FzIGp1c3QgdXNpbmcgYSByb290ZnMgZm9y
IGlNWDhtcSwgd2hpY2ggZG9lc24ndCBtYXR0ZXIuDQoNCj4gDQo+IE9uIHdoaWNoIGtlcm5lbCB2
ZXJzaW9uIGFyZSB5b3UgdGVzdGluZz8gSSdtIG9uIDUuMTgtcmM0Lg0KDQpBZGQgbGludXgtbmV4
dCBzcGVjaWZpYyBmaWxlcyBmb3IgMjAyMjA0MjgNCg0KPiANCj4gPg0KPiA+IHJvb3RAaW14OG1x
ZXZrOn4jIGNhdA0KPiA+IC9zeXMva2VybmVsL2RlYnVnL3BtX2dlbnBkL3VzYi1vdGcxL2N1cnJl
bnRfc3RhdGUNCj4gPiBvbg0KPiA+IHJvb3RAaW14OG1xZXZrOn4jIGNhdCAvc3lzL2tlcm5lbC9k
ZWJ1Zy9wbV9nZW5wZC9oc2lvbWl4L2N1cnJlbnRfc3RhdGUNCj4gPiBvZmYtMA0KPiA+IHJvb3RA
aW14OG1xZXZrOn4jIGNhdCAvc3lzL2tlcm5lbC9kZWJ1Zy9wbV9nZW5wZC91c2Itb3RnMi9jdXJy
ZW50X3N0YXRlDQo+ID4gb2ZmLTANCj4gPiByb290QGlteDhtcWV2azp+IyBbICAxODIuMTk2NDUw
XSB1c2IgMS0xOiBuZXcgaGlnaC1zcGVlZCBVU0IgZGV2aWNlDQo+ID4gbnVtYmVyIDQgdXNpbmcg
Y2lfaGRyYyBbICAxODIuMzU2MTMwXSB1c2Itc3RvcmFnZSAxLTE6MS4wOiBVU0IgTWFzcw0KPiA+
IFN0b3JhZ2UgZGV2aWNlIGRldGVjdGVkIFsgIDE4Mi4zNTc2MzJdIHNjc2kgaG9zdDA6IHVzYi1z
dG9yYWdlIDEtMToxLjANCj4gPiBbICAxODMuMzY3OTIzXSBzY3NpIDA6MDowOjA6IERpcmVjdC1B
Y2Nlc3MgICAgIFNhbkRpc2sgIFVsdHJhDQo+IDEuMDAgUFE6IDAgQU5TSTogNg0KPiA+IFsgIDE4
My4zNzA1NTldIHNkIDA6MDowOjA6IFtzZGFdIDYwMDYyNTAwIDUxMi1ieXRlIGxvZ2ljYWwgYmxv
Y2tzOg0KPiA+ICgzMC44IEdCLzI4LjYgR2lCKSBbICAxODMuMzcyMzMyXSBzZCAwOjA6MDowOiBb
c2RhXSBXcml0ZSBQcm90ZWN0IGlzDQo+ID4gb2ZmIFsgIDE4My4zNzMwNjFdIHNkIDA6MDowOjA6
IFtzZGFdIFdyaXRlIGNhY2hlOiBkaXNhYmxlZCwgcmVhZA0KPiA+IGNhY2hlOiBlbmFibGVkLCBk
b2Vzbid0IHN1cHBvcnQgRFBPIG9yIEZVQSBbICAxODMuMzg0NzA5XSBzZCAwOjA6MDowOg0KPiA+
IFtzZGFdIEF0dGFjaGVkIFNDU0kgcmVtb3ZhYmxlIGRpc2sgWyAgMTg0LjIwNzU1Ml0gRVhUNC1m
cyAoc2RhKTogbW91bnRlZA0KPiBmaWxlc3lzdGVtIHdpdGggb3JkZXJlZCBkYXRhIG1vZGUuIFF1
b3RhIG1vZGU6IG5vbmUuDQo+ID4NCj4gPiByb290QGlteDhtcWV2azp+IyBscyAvc3lzL2J1cy9w
bGF0Zm9ybS9kZXZpY2VzLyp1c2IqIC1kDQo+ID4gL3N5cy9idXMvcGxhdGZvcm0vZGV2aWNlcy8z
MmU0MDAwMC51c2INCj4gPiAvc3lzL2J1cy9wbGF0Zm9ybS9kZXZpY2VzLzMyZTQwMjAwLnVzYm1p
c2MNCj4gPiAvc3lzL2J1cy9wbGF0Zm9ybS9kZXZpY2VzL3VzYnBoeW5vcDENCj4gDQo+IFRoZSBQ
Q0llIG5vZGVzLCB1c2JvdGcyLCB1c2JwaHlub3AyIGFuZCB1c2JtaXNjMiBhcmUgZGlzYWJsZWQg
YW5kIGRldmljZXMNCj4gb24gdGhlIGF1dG9zdXNwZW5kZWQgZmlyc3QgcG9ydCBhcmVuJ3QgZGV0
ZWN0ZWQ6DQo+IA0KPiByb290QGtvbnRyb24tbXg4bW06fiMgY2F0DQo+IC9zeXMva2VybmVsL2Rl
YnVnL3BtX2dlbnBkL3VzYi1vdGcxL2N1cnJlbnRfc3RhdGUNCj4gb24NCj4gcm9vdEBrb250cm9u
LW14OG1tOn4jIGNhdA0KPiAvc3lzL2tlcm5lbC9kZWJ1Zy9wbV9nZW5wZC91c2Itb3RnMi9jdXJy
ZW50X3N0YXRlDQo+IG9mZi0wDQo+IHJvb3RAa29udHJvbi1teDhtbTp+IyBjYXQNCj4gL3N5cy9r
ZXJuZWwvZGVidWcvcG1fZ2VucGQvaHNpb21peC9jdXJyZW50X3N0YXRlDQo+IG9mZi0wDQo+IA0K
PiByb290QGtvbnRyb24tbXg4bW06fiMgbHMgL3N5cy9idXMvcGxhdGZvcm0vZGV2aWNlcy8qdXNi
KiAtZA0KPiAvc3lzL2J1cy9wbGF0Zm9ybS9kZXZpY2VzLzMyZTQwMDAwLnVzYg0KPiAvc3lzL2J1
cy9wbGF0Zm9ybS9kZXZpY2VzLzMyZTQwMjAwLnVzYm1pc2MNCj4gL3N5cy9idXMvcGxhdGZvcm0v
ZGV2aWNlcy91c2JwaHlub3AxDQo+IA0KPiA+DQo+ID4gU28gYmFzaWNhbGx5IHlvdSBhcmUgc2F5
aW5nIHlvdXIgZmlyc3QgcG9ydCBjYW5ub3Qgd29yayBldmVuIGJvdGgNCj4gPiBwZ2Nfb3RnMSBh
bmQgcGdjX2hzaW9taXggYXJlIG9uIGlmIHlvdSBkaXNhYmxlIDJuZCBwb3J0Pw0KPiANCj4gRXhh
Y3RseS4gSSByZWFsbHkgZG9uJ3QgdW5kZXJzdGFuZCBpdCwgYnV0IGFzIHNvb24gYXMgSSBkaXNh
YmxlIHRoZSBzZWNvbmQNCj4gcG9ydCB0aGUgZGV0ZWN0aW9uIG9mIGEgZGV2aWNlIG9uIHRoZSBz
dXNwZW5kZWQgZmlyc3QgcG9ydCBzdG9wcyB3b3JraW5nLg0KPiBXaGVuIEkgZm9yY2UgdGhlIHBv
cnQgb24sIHRoZSBkZXZpY2UgaXMgZGV0ZWN0ZWQ6DQoNCkhlcmUgeW91ciBpbnRlbnRpb24gaXMg
Zm9yY2UgKndoaWNoKiBwb3J0PyAxc3QgcG9ydCh1c2JvdGcxKSBvciB0aGUgMm5kDQpwb3J0KHVz
Ym90ZzIpPw0KDQo+IA0KPiByb290QGtvbnRyb24tbXg4bW06fiMgZWNobyBvbiA+IC9zeXMvYnVz
L3VzYi9kZXZpY2VzL3VzYjEvcG93ZXIvY29udHJvbA0KDQpJcyB0aGlzIHVzYiByb290IGh1YiBm
b3IgeW91ciBzZWNvbmQgdXNiIHBvcnQ/IElmIGl0J3MgZm9yIHlvdXIgMXN0IHBvcnQsDQp0aGlz
IGp1c3QgY2FuIGluZGljYXRlIHRoZSAxc3QgcG9ydCBjYW4gZGV0ZWN0IGRldmljZSBpZiBkaXNh
YmxlIHRoZSB3aG9sZQ0KcnVudGltZSBzdXNwZW5kLg0KDQpDYW4geW91IHNob3cgdGhlIGZ1bGwg
dGVzdCBsb2cgd2l0aCBib3RoIHVzYiBwb3J0cyh1c2JvdGcxIGFuZCB1c2JvdGcyKQ0KRW5hYmxl
ZD8gRS5nLCBsaWtlIGlmIHlvdSBsZXQgYm90aCB1c2IgcG9ydHMgcnVudGltZSBzdXNwZW5kZWQs
IHRoZW4NCkVpdGhlciBwb3J0IHdpbGwgbm90IHdvcmssIHRoZW4gaWYgeW91IGZvcmNlIHRoZSAy
bmQgcG9ydCBvbiwgdGhlbiB5b3VyDQoxc3QgcG9ydCB3aWxsIHN0YXJ0IHdvcms/DQoNCkxpIEp1
bg0KDQo+IHJvb3RAa29udHJvbi1teDhtbTp+IyBbICAxOTQuNTIzMjk2XSB1c2IgMS0xOiBuZXcg
ZnVsbC1zcGVlZCBVU0IgZGV2aWNlDQo+IG51bWJlciAyIHVzaW5nIGNpX2hkcmMNCg0K
