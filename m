Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0B8D66371F2
	for <lists+devicetree@lfdr.de>; Thu, 24 Nov 2022 06:52:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229576AbiKXFwv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Nov 2022 00:52:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229597AbiKXFwo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Nov 2022 00:52:44 -0500
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65A562635
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 21:52:42 -0800 (PST)
X-UUID: 9e22ba4d051044a7a4b2569070575e4e-20221124
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
        h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=R+Jlv7KMbT0vt9jNDXzZEsthMrNMW63jVRa0g7+cpMU=;
        b=QgY4Svh7aemuFfZgpkAqx99hN5vMde/aFnJaj9DLvk4xoWv46koayf/kOKVM1EFoGQOnR3PZu6LoxOscvOjyVDbxjC3b8Ovw3BFZ/mVuXra3CW7MIvPYt+mLNu2YrrMtpNzRTrTHGRmoB5+F2PUDQvdqbuT2qGgB/pgM6HI6+Jo=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.14,REQID:ece834d9-f21d-4230-b76c-73849401c42b,IP:0,U
        RL:0,TC:0,Content:-5,EDM:0,RT:0,SF:-5,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
        N:release,TS:-10
X-CID-INFO: VERSION:1.1.14,REQID:ece834d9-f21d-4230-b76c-73849401c42b,IP:0,URL
        :0,TC:0,Content:-5,EDM:0,RT:0,SF:-5,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
        release,TS:-10
X-CID-META: VersionHash:dcaaed0,CLOUDID:035a1adc-6ad4-42ff-91f3-18e0272db660,B
        ulkID:2211241352386IBPLQCB,BulkQuantity:0,Recheck:0,SF:17|19|102,TC:nil,Co
        ntent:0,EDM:-3,IP:nil,URL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: 9e22ba4d051044a7a4b2569070575e4e-20221124
Received: from mtkmbs13n1.mediatek.inc [(172.21.101.193)] by mailgw01.mediatek.com
        (envelope-from <allen-kh.cheng@mediatek.com>)
        (Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
        with ESMTP id 269678354; Thu, 24 Nov 2022 13:52:35 +0800
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs13n2.mediatek.inc (172.21.101.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.792.15; Thu, 24 Nov 2022 13:52:34 +0800
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (172.21.101.239)
 by mtkmbs10n1.mediatek.com (172.21.101.34) with Microsoft SMTP Server id
 15.2.792.15 via Frontend Transport; Thu, 24 Nov 2022 13:52:34 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XlX8AVasHByPhpH5SArqWrJhvc2DUfd/4FJeI0N5pSs3mQ5lr8DiFk4jklSz5cxzoz1IS6GCUFq15lPX2fKeYCUpg+EhK0Z4YBawYRui0LD+uW8C/Xn9wsOw/pmBFD3TG1IKCAfHSycOlj8xIbuIocUp9X8d3c8CCy7TeqewEnqCLN4JIygTwWez/Segcog2QDV7Pkxf6Mzks9UKuJ6BcJg7xFsJkCXVOnb43YZjbXnLLybVZnNXyPLSB9yLv04dMKHanBypMMtPn+m8PKI8DePP7WbGQIybRc1siYjJ2cesCd6PhuqH5uVR+zlVekTznNtxiGadLixBMH3hZSZbzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R+Jlv7KMbT0vt9jNDXzZEsthMrNMW63jVRa0g7+cpMU=;
 b=W6I5+TKvXRfUe4fW4nPNgNzqVvb6PBwX3x718R4/nT9KUHTuIkGT9L09No75hIrggXTwBKXdUWXvJfaIVrwUbsUhNmpmcf1ZqeMTctuSHBMM4u+zLFl8VPcNJQuJVIK4/SHt7rcYlC5KsxawwVgg1vSwWzP4NKPzAXqPiL3R4L2P7a8XX0rbb12oQ6kut/RZw9X7WnL5e/qLx4qvMQlXng6bICkGn6PZmk3pMA6CWRF612zW6EtF86cuREx8bd8m2fPogvhDrPKF1jXUFdJ6zb6i634GBIvgSovRswmGfUDlb+k81nW7Wya+uaAK/En1c82RSp1uslQm2jl1RpkH5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R+Jlv7KMbT0vt9jNDXzZEsthMrNMW63jVRa0g7+cpMU=;
 b=kokv7BklX1PxSV8Pld4WhO7k/CLOtO1SyQyzYSSU8qY7W+K6XSYB1Xu73jG7xP9vCBx98MJ+Hb0RJNWF5WunzVJOzWclmaVg9hTj4RRa44P9eLOibPzltejFMB7gQF2zBNKrUnk47bSB+NdE3izKslGSyVzxpphADd+x7/XbwuU=
Received: from TYZPR03MB6919.apcprd03.prod.outlook.com (2603:1096:400:28c::9)
 by TYZPR03MB5422.apcprd03.prod.outlook.com (2603:1096:400:38::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.18; Thu, 24 Nov
 2022 05:52:33 +0000
Received: from TYZPR03MB6919.apcprd03.prod.outlook.com
 ([fe80::af56:be8f:f:85b2]) by TYZPR03MB6919.apcprd03.prod.outlook.com
 ([fe80::af56:be8f:f:85b2%7]) with mapi id 15.20.5857.017; Thu, 24 Nov 2022
 05:52:33 +0000
From:   =?utf-8?B?QWxsZW4tS0ggQ2hlbmcgKOeoi+WGoOWLsyk=?= 
        <Allen-KH.Cheng@mediatek.com>
To:     "tzungbi@google.com" <tzungbi@google.com>
CC:     "narmstrong@baylibre.com" <narmstrong@baylibre.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "jernej.skrabec@siol.net" <jernej.skrabec@siol.net>,
        "broonie@kernel.org" <broonie@kernel.org>,
        "a.hajda@samsung.com" <a.hajda@samsung.com>,
        "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
        "jonas@kwiboo.se" <jonas@kwiboo.se>,
        "cychiang@google.com" <cychiang@google.com>,
        "dgreid@google.com" <dgreid@google.com>,
        "hsinyi@chromium.org" <hsinyi@chromium.org>,
        "Laurent.pinchart@ideasonboard.com" 
        <Laurent.pinchart@ideasonboard.com>,
        "allen.chen@ite.com.tw" <allen.chen@ite.com.tw>,
        "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
        =?utf-8?B?SmlheGluIFl1ICjkv57lrrbpkasp?= <Jiaxin.Yu@mediatek.com>
Subject: Re: [PATCH 1/6] ASoC: hdmi-codec: add PCM trigger operator
Thread-Topic: [PATCH 1/6] ASoC: hdmi-codec: add PCM trigger operator
Thread-Index: AQHY/8Oywl8/s31fH0iQmmHOuVawAa5NklkA
Date:   Thu, 24 Nov 2022 05:52:33 +0000
Message-ID: <d051f427516fb7e5f7161e60d7e0033740a2aeb4.camel@mediatek.com>
References: <20191022114505.196852-1-tzungbi@google.com>
         <20191022193301.1.I3039014cf259de5e4d6315fc05dff111591a0901@changeid>
In-Reply-To: <20191022193301.1.I3039014cf259de5e4d6315fc05dff111591a0901@changeid>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6919:EE_|TYZPR03MB5422:EE_
x-ms-office365-filtering-correlation-id: 61943c97-c5a7-4f3e-9c9d-08dacde014cd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5ph+Qai2LVkCPoIIJAJ8y6/nbGUMLBW9YlmnDBjvzEnRwaQvqnvyVSk42NdIyeUrjdWBaQN9aZ3Mvkc4xSbWlvmKtvskDJduf/MGX/s/G4xWFD4FokvZLz787hcph0sA6a45UOHaMImGPEIDhtvdkbGyT0wULZTm9lBGPNxZYkrPlUYmx3kwEKtfh5wsEyZ7BRZcs58lweZh04xKekyVg1ynkxGk9TNxCgMUVambLCl7k8NUxVKMYBJCaA/dQp90lENHEezeTKVMYmZDpGUet1DIS7fqL8MxTO17TfOX4hJ8ciyvbeeWg7Xq66lTVa4WOG7dxYpjoyX3q+mMh4xbUrkBaphXrEaGPYZeUWMu4f+v/2+NgBHAlWGIsQ4i5rtEChSdXCFH+1u2CMaHgCqLqK5dHZ8l2Wy/qHmlQiM1mZsb9tLr5PK7UUzOomaAW7edxBz8fiW7Diuzem4ROn7Leh2H6RONySSszMKTWHixeZIHPA+827CFOm9zcJfMswkff40Xu6rt5EfHjYGryr7wMmK8i/SUUzxtNMhsKH3v0kesIPCae4klyszGCSdWILs+cAe0Sxel7Lg2trd9IxOtwZqzpI8C9ozLsiXc80aRUpSleCESEuJq5wZt1A71cHME6d5ICaklmjpxfzIbsrpNpsuqZdIijScgaswUfO/SYVG3WeBN97rWn0z5I+P1dY0eCXgQaLs8PnsWN4vlIOX9zg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6919.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(136003)(376002)(366004)(39860400002)(346002)(396003)(451199015)(38070700005)(36756003)(85182001)(86362001)(6486002)(71200400001)(6506007)(6916009)(54906003)(107886003)(478600001)(5660300002)(2906002)(26005)(8936002)(4001150100001)(7416002)(316002)(76116006)(8676002)(41300700001)(64756008)(4326008)(66946007)(66556008)(66446008)(66476007)(38100700002)(122000001)(186003)(6512007)(2616005)(83380400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aGlOZFgvdVV2TUtkSnM3b2tlSHRPVEdkY05GQVNoMWhVQ0dOUGtlbGtVTFN4?=
 =?utf-8?B?ZVBsd1dlZ0IzL1g0NWNnZy9rR29WdForMDJJaCtuYy9XZXdNWjNrcmpHSHBp?=
 =?utf-8?B?dHNEUEhSZ2dLdHFVWGVOMkRoT0tZM25XZjdMQnA1eFRhOWZROW82M2VXV1V1?=
 =?utf-8?B?Tzl0bVJhOFJrQ2RRS1JSdktMWWtZTFJhU2hHT2NOcmt1YSt0aU5mU3AzUHJB?=
 =?utf-8?B?ZW5LTVFsWjFrbCswK3ZyTUNNSGo2NzBFVlgybzNjQXFBNDE0MmFaYU9aR1hl?=
 =?utf-8?B?UWZXc2ZTcjQ4TExQeVBYd2UyR1VSK3lwU3l3ZVZHallKOWU3THQ3Y1ZSSlpP?=
 =?utf-8?B?RTFuWkFISjNCbTgvRXZzZWNYT3IxREFqOVZrcyt3R0xERVJIQzNNMldhcU9S?=
 =?utf-8?B?WEtFcDNlUStnV05sZTFKSnI2QjdQZTI1d3RlRlhlaFloWXZqRTBBaTR3dFhO?=
 =?utf-8?B?Qk5oWFIydHpMN1Y5Y2JsY3FNYkQ3VW5rNFRORGJuc1I4RVRldXN2c3JrQjFq?=
 =?utf-8?B?QjlFaTMrRXc0SnJHNm5UWGF5Z0tPYUcreVVMQWJKRXU2OVhHdDB0ZlRuZ0Yv?=
 =?utf-8?B?T1lScUVGckhkUnZnNkJVamNlODRqZTFhU2ZhSDJpR3N3MU13TE1mWWhJalh2?=
 =?utf-8?B?QkZtREVYWlM3R29HYlhwN0dibkFqd1JMODE2Y3h4bHFwRndkOWlzVGNRR1Bn?=
 =?utf-8?B?RkVId29nb1dmRi9oYW1vOXdrTi9nNjVnakcwTFBMUkFpeHZtK3ZGRDlneVdx?=
 =?utf-8?B?bzBKazVWUnF2Q2RGNnRmUkV6dWM3N1NCM05yNlFNb3I1ZGF6UHZhYWFtOVQw?=
 =?utf-8?B?cGZQMEVmNy9lTkU3azhQdFVNR2Iwc3BrVGZWOWZYcDJlUEp6ejUzOGtxOFBn?=
 =?utf-8?B?dURkNEhZVnR1UThzQVZKSGZxOW5hNUVJaERSYm53cTl3TWt0b3liLzdPK0dX?=
 =?utf-8?B?b21odmhwVnpoTGZ2TkZLRjhTSzQ4MStVQW1OTzNvdkFDdEJBT2JkanhJcXZs?=
 =?utf-8?B?RHBISXFLc21ZUTM0TThaZ014UXczL3U5Ykh6bDY1UUYwVlg4KzdqN3BFTzly?=
 =?utf-8?B?TEFLU1YwK1hnamRMbHZlL0lqQXNvTlpzb0kzSFhsTjdZVUhMSlEyKyswMHNr?=
 =?utf-8?B?QmJmQ2RhY0ZBZkUvSkNvR2VjdzNpUlR1bnY0Q3psK3dzclRoVlVHV2E3TE4w?=
 =?utf-8?B?WDF6Uzgrem81UTlEVlNVYWN4aVMrTTVQcGNISnpHT0tIVEJFd0NLbi94SHo3?=
 =?utf-8?B?TklnVGNqRHJWWVY0dWVncXZyWmZkbEo2Wng4Y0htK0RNOWdZQkpOczN2amdJ?=
 =?utf-8?B?WlF6aEhUdnlCa2tkekdNSmc1NzRBS2xNY1lVa3VqbW9IeE8wR1NId3ZpbEV2?=
 =?utf-8?B?bjhlWlYrbU1BdVFodzVmOGtZMlJFTUZFR21JOGRHL25VQ1VsY2VHaC91TmMr?=
 =?utf-8?B?NGk1QUx4M09iUnRKbXFNcU1OTzJKR2NOc2FWdkVaQTJWcVNmeThCSnFWdUVS?=
 =?utf-8?B?WFl4ajkyYjA0WDI5Zko5QUZXeUpLcEVQbDdXcGVidlVONVZQRnNXSHJIRDdv?=
 =?utf-8?B?dWpOdlpJQW1ncXgvMWZQdk4wTHpNN2ppbWt0ZXBuc0VFdU5VUHNnZ2pHZTc1?=
 =?utf-8?B?VURza0xWUGJrMkhFWUVnSmFCTmM0blhUd05MUFh4MzZraDJVSUhzTjROMStV?=
 =?utf-8?B?Q0NaMG5vOFJuc2hBcGhCYTJqUGdCdFRqL1FWclpveVFMQjFNbmdyYWxsVWxv?=
 =?utf-8?B?dklEdXR0aThFd3BOOHBuMkZJR2pFamVSWU1PZVhsQ0xKVWZNUjNyTHZiNmda?=
 =?utf-8?B?dENDNEt5WDhOeEozK04zQmZJZnhxZEZMVlhZWUhLbkRNcENOaGZkYXdSOGxM?=
 =?utf-8?B?RFZmK29aWW9jMldPeGMyanNIMVNJbExDdDljaUJhdTByN01EV0NlK25JbHhR?=
 =?utf-8?B?UytiQnZTcVBpcExWWVVwWFRwdXdKTkpyRnF3dXAra0phYkd6OERMU2U3d3hz?=
 =?utf-8?B?b1RzZXdHa2RGRG4yOWluUnBCMStOL3JhL1dYbExrSGRXc2s0U1hiUkl3NXFl?=
 =?utf-8?B?ZkJQeEVkVzU5S0UwTTZTd1FvbTB4ZDl1RGNxSXpRbHZoaHYrV1kwb2kxZTRT?=
 =?utf-8?B?MlF4YWJMT2p4cHNSWFkzQVBBOEV1NUtndkVib3J6dkpJUS9ET0M1bTcvZnI3?=
 =?utf-8?Q?YqGjGICSOBGwqalJk1aBwHE=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5C7554BB2449AD43B1FE4E8863F2F3EA@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6919.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61943c97-c5a7-4f3e-9c9d-08dacde014cd
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Nov 2022 05:52:33.1265
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zNYDu1izSLrN7PJIPdns98dLynL33+WzZGk8iXyMlPlUG/HGFPltMrBaH8zy5EKrNf/uwk6x0dnx8LKzTBKbimMrFu5lrzEPsmJu8pvTRfA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR03MB5422
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,
        SPF_PASS,UNPARSEABLE_RELAY autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SGkgVHp1bmctQmksDQoNCldlIHdvdWxkIHdhbnQgdG8gY29uZmlybSB3aXRoIHlvdSBhcyB3ZSB3
b3JrIG9uIHRoZSBoZG1pLWNvZGVjIGZvciB0aGUNCm10ODE4Ni4NCg0KRG8geW91IGhhdmUgYW55
IHBsYW4gdG8gY29udGludWUgd29ya2luZyBvbiB0aGlzIHNlcmllcz8gV2UgbWF5IHRha2UNCm92
ZXIgYXMgd2VsbC4NCg0KVGhhbmtzLA0KQWxsZW4NCg0KT24gVHVlLCAyMDE5LTEwLTIyIGF0IDE5
OjQ1ICswODAwLCBUenVuZy1CaSBTaGloIHdyb3RlOg0KPiBIRE1JIGNvZGVjIG1heSBiZSBhbHNv
IGludGVyZXN0ZWQgaW4gUENNIHRyaWdnZXJzLiAgQWRkIFBDTSB0cmlnZ2VyDQo+IG9wZXJhdG9y
Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVHp1bmctQmkgU2hpaCA8dHp1bmdiaUBnb29nbGUuY29t
Pg0KPiAtLS0NCj4gIGluY2x1ZGUvc291bmQvaGRtaS1jb2RlYy5oICAgIHwgMTMgKysrKysrKysr
KysrKw0KPiAgc291bmQvc29jL2NvZGVjcy9oZG1pLWNvZGVjLmMgfCAzMSArKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDQ0IGluc2VydGlvbnMoKykN
Cj4gDQo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL3NvdW5kL2hkbWktY29kZWMuaCBiL2luY2x1ZGUv
c291bmQvaGRtaS1jb2RlYy5oDQo+IGluZGV4IDgzYjE3NjgyZTAxYy4uOWRlNDYyZWYxNzBkIDEw
MDY0NA0KPiAtLS0gYS9pbmNsdWRlL3NvdW5kL2hkbWktY29kZWMuaA0KPiArKysgYi9pbmNsdWRl
L3NvdW5kL2hkbWktY29kZWMuaA0KPiBAQCAtNTAsNiArNTAsMTMgQEAgc3RydWN0IGhkbWlfY29k
ZWNfcGFyYW1zIHsNCj4gIHR5cGVkZWYgdm9pZCAoKmhkbWlfY29kZWNfcGx1Z2dlZF9jYikoc3Ry
dWN0IGRldmljZSAqZGV2LA0KPiAgCQkJCSAgICAgIGJvb2wgcGx1Z2dlZCk7DQo+ICANCj4gK2Vu
dW0gew0KPiArCUhETUlfQ09ERUNfVFJJR0dFUl9FVkVOVF9TVE9QLA0KPiArCUhETUlfQ09ERUNf
VFJJR0dFUl9FVkVOVF9TVEFSVCwNCj4gKwlIRE1JX0NPREVDX1RSSUdHRVJfRVZFTlRfU1VTUEVO
RCwNCj4gKwlIRE1JX0NPREVDX1RSSUdHRVJfRVZFTlRfUkVTVU1FLA0KPiArfTsNCj4gKw0KPiAg
c3RydWN0IGhkbWlfY29kZWNfcGRhdGE7DQo+ICBzdHJ1Y3QgaGRtaV9jb2RlY19vcHMgew0KPiAg
CS8qDQo+IEBAIC02Niw2ICs3MywxMiBAQCBzdHJ1Y3QgaGRtaV9jb2RlY19vcHMgew0KPiAgCQkJ
IHN0cnVjdCBoZG1pX2NvZGVjX2RhaWZtdCAqZm10LA0KPiAgCQkJIHN0cnVjdCBoZG1pX2NvZGVj
X3BhcmFtcyAqaHBhcm1zKTsNCj4gIA0KPiArCS8qDQo+ICsJICogUENNIHRyaWdnZXIgY2FsbGJh
Y2suDQo+ICsJICogT3B0aW9uYWwNCj4gKwkgKi8NCj4gKwlpbnQgKCp0cmlnZ2VyKShzdHJ1Y3Qg
ZGV2aWNlICpkZXYsIGludCBldmVudCk7DQo+ICsNCj4gIAkvKg0KPiAgCSAqIFNodXRzIGRvd24g
dGhlIGF1ZGlvIHN0cmVhbS4NCj4gIAkgKiBNYW5kYXRvcnkNCj4gZGlmZiAtLWdpdCBhL3NvdW5k
L3NvYy9jb2RlY3MvaGRtaS1jb2RlYy5jIGIvc291bmQvc29jL2NvZGVjcy9oZG1pLQ0KPiBjb2Rl
Yy5jDQo+IGluZGV4IGI1ZmQ4ZjA4NzI2ZS4uMWJhMmZhMjZiYTAzIDEwMDY0NA0KPiAtLS0gYS9z
b3VuZC9zb2MvY29kZWNzL2hkbWktY29kZWMuYw0KPiArKysgYi9zb3VuZC9zb2MvY29kZWNzL2hk
bWktY29kZWMuYw0KPiBAQCAtNTY1LDEyICs1NjUsNDIgQEAgc3RhdGljIGludCBoZG1pX2NvZGVj
X2RpZ2l0YWxfbXV0ZShzdHJ1Y3QNCj4gc25kX3NvY19kYWkgKmRhaSwgaW50IG11dGUpDQo+ICAJ
cmV0dXJuIDA7DQo+ICB9DQo+ICANCj4gK3N0YXRpYyBpbnQgaGRtaV9jb2RlY190cmlnZ2VyKHN0
cnVjdCBzbmRfcGNtX3N1YnN0cmVhbSAqc3Vic3RyZWFtLA0KPiBpbnQgY21kLA0KPiArCQkJICAg
ICAgc3RydWN0IHNuZF9zb2NfZGFpICpkYWkpDQo+ICt7DQo+ICsJc3RydWN0IGhkbWlfY29kZWNf
cHJpdiAqaGNwID0gc25kX3NvY19kYWlfZ2V0X2RydmRhdGEoZGFpKTsNCj4gKwlpbnQgZXZlbnQ7
DQo+ICsNCj4gKwlpZiAoIWhjcC0+aGNkLm9wcy0+dHJpZ2dlcikNCj4gKwkJcmV0dXJuIDA7DQo+
ICsNCj4gKwlzd2l0Y2ggKGNtZCkgew0KPiArCWNhc2UgU05EUlZfUENNX1RSSUdHRVJfU1RPUDoN
Cj4gKwkJZXZlbnQgPSBIRE1JX0NPREVDX1RSSUdHRVJfRVZFTlRfU1RPUDsNCj4gKwkJYnJlYWs7
DQo+ICsJY2FzZSBTTkRSVl9QQ01fVFJJR0dFUl9TVEFSVDoNCj4gKwkJZXZlbnQgPSBIRE1JX0NP
REVDX1RSSUdHRVJfRVZFTlRfU1RBUlQ7DQo+ICsJCWJyZWFrOw0KPiArCWNhc2UgU05EUlZfUENN
X1RSSUdHRVJfU1VTUEVORDoNCj4gKwkJZXZlbnQgPSBIRE1JX0NPREVDX1RSSUdHRVJfRVZFTlRf
U1VTUEVORDsNCj4gKwkJYnJlYWs7DQo+ICsJY2FzZSBTTkRSVl9QQ01fVFJJR0dFUl9SRVNVTUU6
DQo+ICsJCWV2ZW50ID0gSERNSV9DT0RFQ19UUklHR0VSX0VWRU5UX1JFU1VNRTsNCj4gKwkJYnJl
YWs7DQo+ICsJZGVmYXVsdDoNCj4gKwkJcmV0dXJuIC1FSU5WQUw7DQo+ICsJfQ0KPiArDQo+ICsJ
cmV0dXJuIGhjcC0+aGNkLm9wcy0+dHJpZ2dlcihkYWktPmRldi0+cGFyZW50LCBldmVudCk7DQo+
ICt9DQo+ICsNCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgc25kX3NvY19kYWlfb3BzIGhkbWlfY29k
ZWNfaTJzX2RhaV9vcHMgPSB7DQo+ICAJLnN0YXJ0dXAJPSBoZG1pX2NvZGVjX3N0YXJ0dXAsDQo+
ICAJLnNodXRkb3duCT0gaGRtaV9jb2RlY19zaHV0ZG93biwNCj4gIAkuaHdfcGFyYW1zCT0gaGRt
aV9jb2RlY19od19wYXJhbXMsDQo+ICAJLnNldF9mbXQJPSBoZG1pX2NvZGVjX2kyc19zZXRfZm10
LA0KPiAgCS5kaWdpdGFsX211dGUJPSBoZG1pX2NvZGVjX2RpZ2l0YWxfbXV0ZSwNCj4gKwkudHJp
Z2dlcgk9IGhkbWlfY29kZWNfdHJpZ2dlciwNCj4gIH07DQo+ICANCj4gIHN0YXRpYyBjb25zdCBz
dHJ1Y3Qgc25kX3NvY19kYWlfb3BzIGhkbWlfY29kZWNfc3BkaWZfZGFpX29wcyA9IHsNCj4gQEAg
LTU3OCw2ICs2MDgsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHNuZF9zb2NfZGFpX29wcw0KPiBo
ZG1pX2NvZGVjX3NwZGlmX2RhaV9vcHMgPSB7DQo+ICAJLnNodXRkb3duCT0gaGRtaV9jb2RlY19z
aHV0ZG93biwNCj4gIAkuaHdfcGFyYW1zCT0gaGRtaV9jb2RlY19od19wYXJhbXMsDQo+ICAJLmRp
Z2l0YWxfbXV0ZQk9IGhkbWlfY29kZWNfZGlnaXRhbF9tdXRlLA0KPiArCS50cmlnZ2VyCT0gaGRt
aV9jb2RlY190cmlnZ2VyLA0KPiAgfTsNCj4gIA0KPiAgI2RlZmluZSBIRE1JX1JBVEVTCShTTkRS
Vl9QQ01fUkFURV8zMjAwMCB8IFNORFJWX1BDTV9SQVRFXzQ0MTAwIHxcDQo=
