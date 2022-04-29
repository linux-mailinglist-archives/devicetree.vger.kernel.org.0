Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 032AC514651
	for <lists+devicetree@lfdr.de>; Fri, 29 Apr 2022 12:10:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356954AbiD2KMu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 06:12:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238897AbiD2KMs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 06:12:48 -0400
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2048.outbound.protection.outlook.com [40.107.20.48])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A1C7C6654
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 03:09:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HaseVPQ0PXaYb56/cwPdLA8iD5cA6GZTE38wQG+eb4hQZh0BuvCj2oO/7qIAhy+Mgo9Puq15i34mmrlQGCkYemKeh//Mf4V77ZmlacweUWO6JLlzXvwzncJmmzji+MmFNG+3o81YBhSIGVY2ol5tDZQUmkkHB+KBQEo9+iV1D3V/GrMnnk4y4OVfdhMDxUUGElTSYwyBG/km+avgBcfK6W6nIbzojn7sSj5UiS7s96s6Nwog6mFKz+q44ZxjeATbCAp1EKIpK1hVQ4KqrhS6/on/u+1ue+i7V8tfINltafKXNA+/EQEpzqcoE3IJv89oFahhej+9n90NiZw4rlasfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dKqqXECE9WcEvun6MwVqVJlKSNfB3APPuHhVanmZ4zM=;
 b=TFw2WT0WSSHz4Ennn3KGMmOsq97tjSeKnfUyEtAKXhFLHSD5Bms508pnxl4sNgAWNzBW9V5rYcxPSogQDEFK3r9DR06i8OJ9iUyCr0QsGNSNGC6MZ4qnzBPfpsXGg8Qol8JUHZ8BFuC3rcRKwi9DSCqGbnHhB0GNP5gsjHaQf6GgJcpXWsiBe3rL8fFRiw7937X7Do2F2tHVQEyMUrTfuL3xqqDXUw+sn/AJhALqvlIFEOhx0x/AYpyVVMvzMBGEfP/zSJeJCCe6TCbf809R1ylAGnoWsZhlt7PiTScpWFH0k3aNxB1KZIDR02SqaTMll4fXcnlXx/wEV039tcMjCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dKqqXECE9WcEvun6MwVqVJlKSNfB3APPuHhVanmZ4zM=;
 b=I0IE5onrRqh5kJ8Iv/cAkwmdt7T6q2u9PZPXf2GMoFmu668NijQZkAjHZOkCwlrINRxfGZXCYW/UCXj4tZvD1Ss1CYFGFOkb5GOAkwvq0tL+pDmaS4GrMMi4CPs+VhdT4SzoaNRRBxa7vAVPRSR7YM13l503MzNKuryKmPB/uys=
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com (2603:10a6:102:261::21)
 by PAXPR04MB9007.eurprd04.prod.outlook.com (2603:10a6:102:20f::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.26; Fri, 29 Apr
 2022 10:09:26 +0000
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::597b:6d36:1222:b37a]) by PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::597b:6d36:1222:b37a%7]) with mapi id 15.20.5186.021; Fri, 29 Apr 2022
 10:09:26 +0000
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
Thread-Index: AQHYW550A6WdYfW2SEu2/G1uk/hMDq0GmM8AgAAHLDA=
Date:   Fri, 29 Apr 2022 10:09:26 +0000
Message-ID: <PA4PR04MB96405F791707A549A1A69B5F89FC9@PA4PR04MB9640.eurprd04.prod.outlook.com>
References: <1651218184-22066-1-git-send-email-jun.li@nxp.com>
 <1241eccc-5267-b241-7da5-ce5e62cdb6a3@kontron.de>
In-Reply-To: <1241eccc-5267-b241-7da5-ce5e62cdb6a3@kontron.de>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a90be8f4-d933-4d5d-82a2-08da29c8578f
x-ms-traffictypediagnostic: PAXPR04MB9007:EE_
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <PAXPR04MB90077FF96F474D88DA21072989FC9@PAXPR04MB9007.eurprd04.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Oa8AXHDBdwsT413/Wz3I4JdDdcnVtT6W+kynSGjWGtHPiUD7ZLM7wvnzpcNkLNlGG2meiqdXWNgtEFXwImb0zDdlhStp5Li5nkaWq1sj5jk2MwCTG9qi+VV2/tvvEre1+1J20nmL4droSxJyjb1OnjdA7pYY2g6nI6MpjO5mnOWjycj/e7CX36q+gtaQpxijYb3Qy5wBWjJ2CImG59hYKjCfXgw915aZFUS0vl7S7YLe4YI5kInmG1dhqqATMCa/pgZ7EaLFyi3+XMgNfQsKAUNPrEp58SU15UyiJP1Yq9MKUs26s4bMXYt6d2T7ZkQM1cnj9a0KxpmLwKmoF/1KIBM9gXmPGmLHXz2jztZ/XBhAL13q+kALtZBA1SL/d7Y+b4/Ke9jSAtOi9BcMnca+o6Eea25aMLE185w7nA1iLWsin29Nw23K10DcMRBMzqjt84Wq1OiMyGUrj/7995V3jwfkVQdasJm8XqM1UZum1fxNXaS0fbafvU7D18Nczp2YK52gdKH3Pvb/Dv+Tr26AW85YLHRXet6h9IvSIQSrsM788wSyRVmY4HPulxQYMLFfiXc55y36W1CeBr3JuuQMl+nB6Y4gR1ScVReSaNUOjHRjztYofO7ktj/k9virvksMXTROzasmwBDDjjQOddPyh7UdwuzkC/kUhVieCHlIsJyRjm4kyFIw6TcJ4JhNlNOmL2S2tQ9tlxjNzgw/gaICmKCRwx/fw4anq6gE8EJv2HY=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9640.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(26005)(86362001)(53546011)(6506007)(122000001)(7696005)(38100700002)(9686003)(38070700005)(186003)(83380400001)(52536014)(33656002)(5660300002)(66476007)(66446008)(64756008)(316002)(66946007)(76116006)(8676002)(7416002)(4326008)(66556008)(55016003)(2906002)(44832011)(54906003)(8936002)(508600001)(110136005)(71200400001)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V3kya1NCOHJUQ0ZUZXNuanNSWFdKVml0Nk1iRmlxY3RkalBxUnZqZnZ1cGlz?=
 =?utf-8?B?aElQK2JPNzhqTGRnbWxQUkYrVHU3NEdEL1NGZysvYmFXZWlkT1RmYzZWdlNS?=
 =?utf-8?B?c2o3RjFMOXRua05MbzllYlREQWgrdG1xVWEzWnhobjVkTi95eGRZRytTN001?=
 =?utf-8?B?V2xiaWorVTYzeWQwaDJ3TXY0ajRNTWtyb0tnT3A2UnF0ODE5M2N6cWZPMEVk?=
 =?utf-8?B?UlFubVdUemx5MkdDMVZ5UEwyNDh3NjBFaHhPcnlXWW5IemRMVGtmR09laFlF?=
 =?utf-8?B?aDlsaUZLdzRHQmpWY1RsMWQzY3A0YjduV0FTYkY5dmJMY1cxeGFjS3lSRldr?=
 =?utf-8?B?YlBSblM1bW9wekRVVlI5VE1Vemp0M3lJTCtBOGZZeTVPb0dlUGhXcmdKeGhP?=
 =?utf-8?B?RUVOL3dCYnMySXQ4d0JUOWtOb1dldnl6UlNzdnJzaEdQeFJNV0FyeFY2Q0s1?=
 =?utf-8?B?RGFudk9NdzYwTU1kOWhvTUdQanlMRGpiSG05Y1ZUdE9JR2lJa3l4ZWVJQTY2?=
 =?utf-8?B?eW9Wc1VOQ0V3ZGVlTndVcDU5UkMwTVRhaGYxR21TWFNlY1R5WnpWclV1cFNy?=
 =?utf-8?B?UzlyN0dCaFdsTWFtc2c1R2VSR2FFWDh0SDlxUnV5ZW1WNFdROWU0Tm1YSnI1?=
 =?utf-8?B?UDI3cUgydlgwb0pSM2xPU0M3SzBTZWZZdXJDQU02ZmpYdjBaZkR1STd5Z2ZF?=
 =?utf-8?B?V0pPUUdKRTM0dzRhNG1jNE5FUytkakRBSnE4aFlvcjBpcDMvc0k4dmwzd0dn?=
 =?utf-8?B?MnNDeHRxT0FVTVFpUmVqM0p1bjdUL2pKZ0dCS2lMblFVVVorUVM1dlA3dy9Y?=
 =?utf-8?B?eURocGlBSS9FNWdqQUpIclUzeUt4eTIwei9NVC9OY3hqS04xd0VMcC93NGt5?=
 =?utf-8?B?Q01tYXI0TCtiOFJNMUpDZmNOK1Y2Vi9zUmNsZ29abzEwaENEc1Z0aUtHRUdH?=
 =?utf-8?B?ZytNWDhkeEVOV2h2dVFxM3hHcy9adlVpMWVMc3JkUm9NcDIzanFaN0xTY1ZP?=
 =?utf-8?B?S2dpTEh2WHBkcmNQbzRZVGFBTkdGMnpjS2RaWUhUWGhndHpSNW1KOTNwampY?=
 =?utf-8?B?b0NhZi85NjhMOGZ5VEJKdmtLa0J3ZVp0ZUczdWhJZDhlcGVUWGVtVElNR3o0?=
 =?utf-8?B?S1JDdGFjR2FSS0pXZVB2VktBMGtSRmhxMUVJcjBXdFhVeHppVDltUjFaOE1j?=
 =?utf-8?B?bVcySVE1VWdvSUpEYm5RV1c1YmFkQXJZRzlrRnNrUVBKWk1zNmVadGJEM2M0?=
 =?utf-8?B?ckRlU0h1WWVwc0JzQWZINndTU2IyaU53cUNhMTlJbm1RWVV5WDJTZmp2TXF2?=
 =?utf-8?B?MWlmSmoyZ0Q1ZExTV25jNHZKZDlBT3ZwVGZrT1NSRWJpcDR6TW1Qa20vTHBX?=
 =?utf-8?B?dk1nM2ZSTjF3TjZPcW5ocldIV3NZOXpPeVpWR0xSV3lTekZodHU3TFF1b3VI?=
 =?utf-8?B?VWd3ajJWdlVneGE0SURSSkZDWGFubUp6c241MGNoZFVIRXBhZGM3VTFrYzI0?=
 =?utf-8?B?SThWRVkvaEFNYWFQWGEySi9wNUYyT05lTnowSU9OQW5tM3RyNHhteDNFZjF4?=
 =?utf-8?B?M1RrbndIampNZTU2b3h5ckFGMlh5VFNBb25RRjJITCsxb09JeVNzVG9UTC9h?=
 =?utf-8?B?Ri90dlNXSVhFMitlSTdGRDRXSndSRFVCb0d6UzI3YlFDL3BYenk0SG5HMUxF?=
 =?utf-8?B?dTd2bHBNUG5MUUVqVXA5cG5vKys2ZUZCWmtseE9qc3QzU0QzNkF0T3ZZbVh5?=
 =?utf-8?B?NHhzUDFqYW5sczlLNGVJQ09xRGNRd0tUWVRSVkNRcFJWQ3Z2ZzJyVWQvZjF3?=
 =?utf-8?B?alNSNE1LZUYzR216VnZoR2dBODNBMTJRU2xhTEF0bGZtcGZQMXhURkMyTkJi?=
 =?utf-8?B?Ly8relJNZzY2K25KY2oyeVo1MCtPUnhRNnVUWGk1SS9yMjJiY3BNTWFNcUNz?=
 =?utf-8?B?K2RSbmpYdmN4alk5U0NiVWlIR1VPYlF6UW4yTktsYVJFb1VIZHJVb2lPZjBC?=
 =?utf-8?B?Q0V5T01nRk5BZFBCcWRiSXN4Q0VkK0R6bkZzUmtLT2JrVnJMenZuaHdHa1J0?=
 =?utf-8?B?U2ZrTldIMTdNZGVmaUI3d2JTaXZ4aS9TMWRGS0lkNGducDZ5L1dEUUh6K0hy?=
 =?utf-8?B?Q2VXdEp5WkNhYUFLczdNUFh4SU5zYS9oeDVqWTV4SnVPK3huRUtaME5UL3RS?=
 =?utf-8?B?c1lMalU0MVRVSEd6U0FoN1ZkUzhwQXgxK1J6ZlhYcTBFZ0E1WkZDbWRYaVNk?=
 =?utf-8?B?T0hBSVJZRkw3bzJLMUJiN1dMUmc2NzdML2tOUVU5ZlRMOUcvdGRLYmlmTGxm?=
 =?utf-8?Q?hRkMGhYKWnANxmCFVO?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9640.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a90be8f4-d933-4d5d-82a2-08da29c8578f
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2022 10:09:26.5098
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +DbAzWFOnSYc5yNwaAB2EVON/5KV7cwGofwm2ubAIpvTVjgR69XgcbyD+6O1te1+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9007
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
LCAyMDIyIDU6MDQgUE0NCj4gVG86IEp1biBMaSA8anVuLmxpQG54cC5jb20+OyBzaGF3bmd1b0Br
ZXJuZWwub3JnDQo+IENjOiByb2JoK2R0QGtlcm5lbC5vcmc7IGtyenlzenRvZi5rb3psb3dza2kr
ZHRAbGluYXJvLm9yZzsNCj4gcy5oYXVlckBwZW5ndXRyb25peC5kZTsga2VybmVsQHBlbmd1dHJv
bml4LmRlOyBmZXN0ZXZhbUBnbWFpbC5jb207DQo+IGRsLWxpbnV4LWlteCA8bGludXgtaW14QG54
cC5jb20+OyBsLnN0YWNoQHBlbmd1dHJvbml4LmRlOw0KPiBhZm9yZDE3M0BnbWFpbC5jb207IHRo
YXJ2ZXlAZ2F0ZXdvcmtzLmNvbTsgZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7DQo+IGxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgSmFja3kgQmFpIDxwaW5nLmJhaUBueHAu
Y29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIXSBhcm02NDogZHRzOiBpbXg4bTogY29ycmVjdCB1
c2IgcG93ZXIgZG9tYWluDQo+IA0KPiBBbSAyOS4wNC4yMiB1bSAwOTo0MyBzY2hyaWViIExpIEp1
bjoNCj4gPiBwZ2Nfb3RnMS8yIGlzIGZvciBlYWNoIHVzYiBwaHkgYW5kIHBnY19oc2lvbWl4IGlz
IHNoYXJlZCBieSAyIHVzYg0KPiA+IGNvbnRyb2xsZXJzLCBzbyBhc3NpZ24gdGhvc2UgcG93ZXIg
ZG9tYWlucyB0byBjb3JyZWN0IGNvbnRyb2xsZXIgYW5kDQo+ID4gcGh5IG5vZGUsIGRlY291cGxl
IHRoZSBwZ2Nfb3RnMS8yIGZyb20gcGdjX2hzaW9taXggc2luY2UgdGhlcmUgaXMgbm8NCj4gPiBo
YXJkd2FyZSBkZXBlbmRlbmN5Lg0KPiA+DQo+ID4gU3VnZ2VzdGVkLWJ5OiBKYWNreSBCYWkgPHBp
bmcuYmFpQG54cC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogTGkgSnVuIDxqdW4ubGlAbnhwLmNv
bT4NCj4gDQo+IFRoYW5rcyBmb3IgdGhlIHBhdGNoIQ0KPiANCj4gSW4gbXkgcHJldmlvdXMgdGVz
dCBJIHByb2JhYmx5IG1hZGUgc29tZSBtaXN0YWtlLiBUaGUgc2Vjb25kIFVTQiBjb250cm9sbGVy
DQo+IHdhcyBrZXB0IGVuYWJsZWQgYnkgdGhlIG9uYm9hcmQgaHViLiBXaGVuIEkgZGlzYWJsZSB0
aGUgc2Vjb25kIHBvcnQgYW5kIHRlc3QNCj4gdGhlIHBhdGNoIHdpdGggdGhlIGZpcnN0IHBvcnQg
b25seSwgcmVzdW1pbmcgZnJvbSBhdXRvc3VzcGVuZCBzdGlsbCBkb2Vzbid0DQo+IHdvcmssIGV2
ZW4gd2hlbiBJIGtlZXAgdGhlIEhTSU9NSVggYXMgcGFyZW50IGZvciBPVEcxLzIuIFNvIHRoZXJl
J3MgcHJvYmFibHkNCj4gc3RpbGwgc29tZXRoaW5nIG1pc3NpbmcuLi4NCg0KTXkgdGVzdCB3YXMg
ZG9uZSB3aXRoIGJvdGggc2Vjb25kIFVTQiBwb3J0IGFuZCBQQ0lFIGRpc2FibGVkLCBzbw0Kd2hp
bGUgYXV0b3N1c3BlbmQgb2YgZmlyc3QgcG9ydCwgdGhlIHBnY19oc2lvbWl4IGlzIG9mZiwgaXQg
d29ya3MNCmZpbmUgb24gbXkgSFc6DQoNCnJvb3RAaW14OG1xZXZrOn4jIFsgICA4MS4wMjE0Mzdd
IHVzYiAxLTE6IFVTQiBkaXNjb25uZWN0LCBkZXZpY2UgbnVtYmVyIDMNCiANCnJvb3RAaW14OG1x
ZXZrOn4jIGNhdCAvc3lzL2tlcm5lbC9kZWJ1Zy9wbV9nZW5wZC91c2Itb3RnMS9jdXJyZW50X3N0
YXRlDQpvbg0Kcm9vdEBpbXg4bXFldms6fiMgY2F0IC9zeXMva2VybmVsL2RlYnVnL3BtX2dlbnBk
L2hzaW9taXgvY3VycmVudF9zdGF0ZSANCm9mZi0wDQpyb290QGlteDhtcWV2azp+IyBjYXQgL3N5
cy9rZXJuZWwvZGVidWcvcG1fZ2VucGQvdXNiLW90ZzIvY3VycmVudF9zdGF0ZSAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICANCm9mZi0w
DQpyb290QGlteDhtcWV2azp+IyBbICAxODIuMTk2NDUwXSB1c2IgMS0xOiBuZXcgaGlnaC1zcGVl
ZCBVU0IgZGV2aWNlIG51bWJlciA0IHVzaW5nIGNpX2hkcmMNClsgIDE4Mi4zNTYxMzBdIHVzYi1z
dG9yYWdlIDEtMToxLjA6IFVTQiBNYXNzIFN0b3JhZ2UgZGV2aWNlIGRldGVjdGVkDQpbICAxODIu
MzU3NjMyXSBzY3NpIGhvc3QwOiB1c2Itc3RvcmFnZSAxLTE6MS4wDQpbICAxODMuMzY3OTIzXSBz
Y3NpIDA6MDowOjA6IERpcmVjdC1BY2Nlc3MgICAgIFNhbkRpc2sgIFVsdHJhICAgICAgICAgICAg
MS4wMCBQUTogMCBBTlNJOiA2DQpbICAxODMuMzcwNTU5XSBzZCAwOjA6MDowOiBbc2RhXSA2MDA2
MjUwMCA1MTItYnl0ZSBsb2dpY2FsIGJsb2NrczogKDMwLjggR0IvMjguNiBHaUIpDQpbICAxODMu
MzcyMzMyXSBzZCAwOjA6MDowOiBbc2RhXSBXcml0ZSBQcm90ZWN0IGlzIG9mZg0KWyAgMTgzLjM3
MzA2MV0gc2QgMDowOjA6MDogW3NkYV0gV3JpdGUgY2FjaGU6IGRpc2FibGVkLCByZWFkIGNhY2hl
OiBlbmFibGVkLCBkb2Vzbid0IHN1cHBvcnQgRFBPIG9yIEZVQQ0KWyAgMTgzLjM4NDcwOV0gc2Qg
MDowOjA6MDogW3NkYV0gQXR0YWNoZWQgU0NTSSByZW1vdmFibGUgZGlzaw0KWyAgMTg0LjIwNzU1
Ml0gRVhUNC1mcyAoc2RhKTogbW91bnRlZCBmaWxlc3lzdGVtIHdpdGggb3JkZXJlZCBkYXRhIG1v
ZGUuIFF1b3RhIG1vZGU6IG5vbmUuDQoNCnJvb3RAaW14OG1xZXZrOn4jIGxzIC9zeXMvYnVzL3Bs
YXRmb3JtL2RldmljZXMvKnVzYiogLWQNCi9zeXMvYnVzL3BsYXRmb3JtL2RldmljZXMvMzJlNDAw
MDAudXNiDQovc3lzL2J1cy9wbGF0Zm9ybS9kZXZpY2VzLzMyZTQwMjAwLnVzYm1pc2MNCi9zeXMv
YnVzL3BsYXRmb3JtL2RldmljZXMvdXNicGh5bm9wMQ0KDQpTbyBiYXNpY2FsbHkgeW91IGFyZSBz
YXlpbmcgeW91ciBmaXJzdCBwb3J0IGNhbm5vdCB3b3JrIGV2ZW4gYm90aCBwZ2Nfb3RnMSBhbmQN
CnBnY19oc2lvbWl4IGFyZSBvbiBpZiB5b3UgZGlzYWJsZSAybmQgcG9ydD8gDQoNCkxpIEp1bg0K
