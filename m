Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BCCC1725B18
	for <lists+devicetree@lfdr.de>; Wed,  7 Jun 2023 11:54:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239693AbjFGJyA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jun 2023 05:54:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234384AbjFGJx7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Jun 2023 05:53:59 -0400
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 621A51715
        for <devicetree@vger.kernel.org>; Wed,  7 Jun 2023 02:53:57 -0700 (PDT)
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
        by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3577Pig0013505;
        Wed, 7 Jun 2023 11:53:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com; h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=nnkgZDlRBZOm2JqUt3Fnjz4xBDr6P5ZpTSYDch0XxEg=;
 b=vgKKA/VaMzl035Zclz6xxeG3iTQcttZdkP83a/tpHPWrw6x/tQ53jpxIC/Y5AmtZ9if3
 8t3F1PzdJk7LB997kwaeOxPmSnRjw+sjZqIcvXTP5KDP4Bsx4CMQUH3JuEkvSk7N1idB
 FCPVJZC7Uv3GIajg+MYeeIvFNuNSA2aPpbQyp2358R+ihqncUfOqzOTUqCjXaSSoKTVo
 4JBxhKCHQR/dXUDZKzAwUOlFJERvw4IV8Jpp384m9yqJdVtXojThBCsCMf3P60CwHeC9
 TA5bHcEoxk7uUiQIBfB0aYBEn6X1Gn2awVsiW45d4m5W3rb0XJBS4VXOTrtj8oUOmWxd kw== 
Received: from eur02-vi1-obe.outbound.protection.outlook.com (mail-vi1eur02lp2049.outbound.protection.outlook.com [104.47.11.49])
        by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3r2a7u50k7-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Wed, 07 Jun 2023 11:53:28 +0200
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fZ+4I83cwztldmApf16TEuLcU7mt/7jmCUEeRmEG6cTzRh9UqeNnpC4CSACKQ73rdxpeDLTh9I2C1Pa4y5RhH46LECycpyS25R6RDY3lACyWiubGDJuOXLWPDjTjqt3q6YguhvlwL34upA/5UFwK5fqH92YwYqQbISnvph1EPqjyaO8hdoshZIn25bFI0o22NARa2FQYQhBzTbIGG6qHo8ITZ1CiGZjyCYgshjwUhSZK6R4vt9Q6Yv0nSx3Z1mRGaxEPTwWZybYqcS7ayp/lojuB4rV8UDAJmnwyG7RVoAEGXYtcPCaTecxYBRjFPxc9A/Qspxmuwdop1QzIGDWGYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nnkgZDlRBZOm2JqUt3Fnjz4xBDr6P5ZpTSYDch0XxEg=;
 b=Y+1N6c5gksbCUUxClGUOCHD/j3CGgBehj4BcUdMAUY75F327pPUxUSziUDhnA1bjwi0r+x6O+tQvpKr+NXXU9j+owXP8jskEIFJOVUxhgE+Ja3FCW+PTmOAR06i350U1VQEkHKQBiyQ8ItZHleT/CxoKZ0niS237EiquMeDi938xqCuL6JOnqtPoKT26wn3XyVrhf7PRbXKM/w2Sa3U7Be9ewJK5vRJ6sHrcChFaWLWFKKSyWg2mzZSemvTz3NGfZr/XdJzsbl4mtv9GpV2s/+bUIK4arO3gChbeHotZ0ALyepXoNTH1lkjgNJSRLNK135ib6xRvwJ8g4gNMD15PXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=st.com; dmarc=pass action=none header.from=st.com; dkim=pass
 header.d=st.com; arc=none
Received: from PAXPR10MB4718.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:158::12)
 by PAVPR10MB7138.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:314::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Wed, 7 Jun
 2023 09:53:25 +0000
Received: from PAXPR10MB4718.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::624f:2b21:6c2d:b5bb]) by PAXPR10MB4718.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::624f:2b21:6c2d:b5bb%6]) with mapi id 15.20.6455.030; Wed, 7 Jun 2023
 09:53:25 +0000
From:   Arnaud POULIQUEN <arnaud.pouliquen@st.com>
To:     Marek Vasut <marex@denx.de>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        "linux-stm32@st-md-mailman.stormreply.com" 
        <linux-stm32@st-md-mailman.stormreply.com>,
        "kernel@dh-electronics.com" <kernel@dh-electronics.com>
Subject: RE: [Linux-stm32] [PATCH 1/5] ARM: dts: stm32: Add missing detach
 mailbox for emtrion emSBC-Argon
Thread-Topic: [Linux-stm32] [PATCH 1/5] ARM: dts: stm32: Add missing detach
 mailbox for emtrion emSBC-Argon
Thread-Index: AQHZkuz842ysAt4Sc0yUqaQH1WPTlK911U/wgAD6pYCAByfNcIAAGvgAgAD+oKA=
Date:   Wed, 7 Jun 2023 09:53:25 +0000
Message-ID: <PAXPR10MB4718E8CE58A881DAE3983A27F153A@PAXPR10MB4718.EURPRD10.PROD.OUTLOOK.COM>
References: <20230518011246.438097-1-marex@denx.de>
 <PAXPR10MB471850924065C987981634C1F14B9@PAXPR10MB4718.EURPRD10.PROD.OUTLOOK.COM>
 <133c8b4a-8680-f613-807a-2d7931d0a186@denx.de>
 <PAXPR10MB4718D37242FF00D47DF0CEF1F1499@PAXPR10MB4718.EURPRD10.PROD.OUTLOOK.COM>
 <81f4574d-38c2-21f2-b947-d13e5fc99c60@denx.de>
 <PAXPR10MB471825B145645894D626F070F152A@PAXPR10MB4718.EURPRD10.PROD.OUTLOOK.COM>
 <0d304968-74c8-47ce-f87a-127449f36f4b@denx.de>
In-Reply-To: <0d304968-74c8-47ce-f87a-127449f36f4b@denx.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_cf8c7287-838c-46dd-b281-b1140229e67a_Enabled=true;
 MSIP_Label_cf8c7287-838c-46dd-b281-b1140229e67a_SetDate=2023-06-07T09:04:31Z;
 MSIP_Label_cf8c7287-838c-46dd-b281-b1140229e67a_Method=Privileged;
 MSIP_Label_cf8c7287-838c-46dd-b281-b1140229e67a_Name=cf8c7287-838c-46dd-b281-b1140229e67a;
 MSIP_Label_cf8c7287-838c-46dd-b281-b1140229e67a_SiteId=75e027c9-20d5-47d5-b82f-77d7cd041e8f;
 MSIP_Label_cf8c7287-838c-46dd-b281-b1140229e67a_ActionId=6fd8ac40-ddf9-40dd-b167-f6c44297805a;
 MSIP_Label_cf8c7287-838c-46dd-b281-b1140229e67a_ContentBits=0
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAXPR10MB4718:EE_|PAVPR10MB7138:EE_
x-ms-office365-filtering-correlation-id: 65ce8bf8-eecc-43c7-e5a3-08db673d09bd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ilI2dSLXLmxhaoQqFJin8IXKfkhkKMcGmbmtGHarJ/9vdhV9GJY1CiEXB5KsHuL1bmtoRc1T7J913g/avXiFab7FrXAiNilO58JARnxr+3BEn8cqLTSekHXroYSETv4xjcW65NrC+TFWlJFpG9/smU/F+ybLzx1wLG6vz4bZtx/HNfbejJX+sLmxnW5jcK5JbV32HYoUoG+9pQaEwdgsFaObkb6YDFXsFjgnq6ugwUctDaU0b5VI3Gci2DnpDK4HNIBac5bFNcz90cF7D3oulwcI531XKRHocu4Vssi1iaddya0i9p+bd3dVFxPdvw+NPT7Aa8NtWxTThgrZIvpsrA75r8X6s3gTtAihmf1goG+U4xZWvAkidEAUEQ1z+oBGQ/pFX60o3SeOMNdrKplH4e8B14ntCZRY7eDCymxDcmq5halVaq+0I8vE0xwpBG2TJt/V7z2layNOLxeI14FH9xzGa1aHOPkyKWbZwO9wS4WJYGFpYzQQaym7c9vWOk72My1b+XeoQlUyreX7P9VFtDG3muVHzQZas00BQ2dEyVhQDy0QpyUfHcFE+qX3pGo5kS0Fi4xFO4l2sMTtiO5fr3+mui4GHhwaLm9dDzexauSC3K6gvqL7m08bSqyrkmtN
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR10MB4718.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(396003)(39860400002)(366004)(136003)(376002)(451199021)(2906002)(83380400001)(38070700005)(33656002)(86362001)(38100700002)(122000001)(55016003)(53546011)(7696005)(316002)(41300700001)(52536014)(5660300002)(110136005)(8676002)(54906003)(8936002)(478600001)(66946007)(66446008)(66476007)(71200400001)(4326008)(76116006)(66556008)(55236004)(6506007)(26005)(15650500001)(9686003)(186003)(7416002)(64756008);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T3MxRW0xVkVFOXUvUm9HRXE2MG1vTE9hZXlvUHozTWVzQ2g3dm82bmZXaTQz?=
 =?utf-8?B?Nmg3Z0dCYXMyeXhhWklLYUhXdFpkc3g3bmY4RUtySVpQTitMamdjbGNWRTZO?=
 =?utf-8?B?M3NraEVKZ2F5ZUo2NkJ5dmNOVlJJM2RPUXNZYlExQXRHLytmakp1cm1vMVJt?=
 =?utf-8?B?M1BwcWl4dXQ3YmJHT1JqaFptdHBITEg1SFZhS3lNM0NNWnU0OTlWWGtjcWty?=
 =?utf-8?B?KzlGUmVaZzdHM2dCSFA3dC8wZkh1QjM1OEpFSHlTSnlteGhMbC9icGp6ck05?=
 =?utf-8?B?TFVYYWJKZXNuOWhWaFdEdkdZT2NZcTdZZVZHVk5DVjdXa0Y3Q0piRFcvbVM3?=
 =?utf-8?B?OGJRbjVwSTdoQkwyR2FoNUxvTlFVcXB6VU9ZSVF5U0I4YUEweWtmQmd0cllF?=
 =?utf-8?B?Q1RobkZuQVBiLzZkUm5kY1FnNVVMYnpBTEpHdjB3Y2Y4dzR4OTBWZTZNZy9i?=
 =?utf-8?B?R0EraWFXRnh0amxvaUNXVHNla0orVXROcitGYThNOTdUQjEzRjQ1Z2p6VUNO?=
 =?utf-8?B?VjYzTlJ3SENLMGJYRWhsOTdyeVdQcHZjUm8zbTE1dXhjSTNDVXQzcHFaNlpy?=
 =?utf-8?B?eFI2V0tEUmZiM0wrU0h3RHRabk1uUTc3U2lEbmFOUzJKUXdTMldmbElRWGNx?=
 =?utf-8?B?U3hKYitnZytOb0g4aVlFSWc2TTJDM2xqN0ZEQ0FnaUhQL2lXSlpLK3JkSThj?=
 =?utf-8?B?a1FQRVdEaS9KYWp6N3kwNHowRGNBcjRyVVZMMTFnODI0TTA1OGxnbWJjNGZ6?=
 =?utf-8?B?YmVvc1lrUHBHOVljYjgzbC9MN2o2QUJJUUFLS1NhS0krSm8xYkdBZ0ZVLzlW?=
 =?utf-8?B?UU1NZWpsR0t0U3o4VUNxdmZlbytNeVIyWHlVbG5PeTcyMVVUcXFnbHd4dWVV?=
 =?utf-8?B?QXJiZ2RxR0dIckx5VzBEbTJUL2k5ZkZQand1SXZlbDc2em11U1FPS1pTRU1R?=
 =?utf-8?B?RjJVOU1IWWpLSDdrUG9xM0RnU09YUE1VZlNXbjE3Tk5Tcm5Rb0FFNFFQQU85?=
 =?utf-8?B?WmJmK0VqZHRndXpvYlkramN4WWpZdTRPQUIvR21jUklva21CMyt5YlVUM1pm?=
 =?utf-8?B?ai9CaTFIQXFUQVNrZDdaeUt2VkhjTk1GWlN5eDRaRGtaUGF1aEhzSkVYOEl0?=
 =?utf-8?B?YzFpanVBaFF1b1VxY1J1Q2d6NnpacTRZc3pHckZDTS85RTh5MTZxUHhkc0lx?=
 =?utf-8?B?b0VOOXlQWWhpdDNaNWtuRjZiVXNjaDZzMVFwVktFZktwajd2V1JRMVVuMU9F?=
 =?utf-8?B?OE5WR3lNTS8rLzdjK0xoYVlpeVVPRWdFc0J6S3VUelhqNy9ZYzdwWnhFN0NM?=
 =?utf-8?B?U2lxcDVpSERDOXpxL0RqVkF0aDBoWVlscm56YnFKNVhubE96SGE4YkVuWVB3?=
 =?utf-8?B?WWNPUWIxR2UwS1h4S1ZWTjJ6SnpJRU9tbXFUTG9CWFJSblRobFVLVC9hVFR6?=
 =?utf-8?B?eXpidFFGcERtZWdzL1J5WmFldXlFRHNKakhOdjc5Yys0VG5HOVZ2aWFBWWpQ?=
 =?utf-8?B?RjJsY0VxVTVtMnJuUFBjQjZ5amxsWFVJSlp1Ri96cVp6YUlZZmpUUnBCdHZy?=
 =?utf-8?B?NmtqczFyQStoM3ljdklrL0w2NkRHemxJcGxnR3NObUFoRG9aZ3kyT3VVb3RO?=
 =?utf-8?B?dkNhV3M4QUt2UW12ZWlxWEVXL1NLOXBFdU5LL1hIVUhhUGVyYlY5N3lKbmdo?=
 =?utf-8?B?WXg1cS9jVGRjNmdSQXhkU3hqSlQxekxaN3V6cFVZakFTMklIVzdjZlVBMTdI?=
 =?utf-8?B?MzVJMmlydEtFbXpNMjYxYUU2N1FwRUQrb2tqbmZseENBQjNLV0lQMXhmK0Rm?=
 =?utf-8?B?eDlQK0lDdmp0akkyK1ZFYkxPU1Z6QlMyeWs0ckhmdUVhTlQ2RmNNb2UzYmJu?=
 =?utf-8?B?T0RWRlhjMDljOVRBTmV2dHJpcTJ4QTdQZ2QwMStQTDFmaXQ0aHFhOWVKbm5F?=
 =?utf-8?B?R0QyOG9DeFpYeVFTamFES2NTb1JKVTczVXg4QlZrVHVvbExKU3IwZkZiSHlp?=
 =?utf-8?B?bmlyczNCVzBoSlVQMUl2b0NrVXg4VmlUMFdQSkdsamFid29RU05Yc3JldXE5?=
 =?utf-8?B?ZGVJZzZiOUNUeGtVYmVsNTFSaVFZbU5RTTlpb1ZMT09ocnpyOC8wUWR5c2h6?=
 =?utf-8?Q?UL9vWea4QActmWlTBdjWI3jzj?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: ST.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXPR10MB4718.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 65ce8bf8-eecc-43c7-e5a3-08db673d09bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2023 09:53:25.6966
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 75e027c9-20d5-47d5-b82f-77d7cd041e8f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: napYM6jgQX/BKG9dA/a2+N3fhx5fSQJcxhoIWw2ybauT/YOzFD+DRhO+xJz0B4bL+WXDLCDw7cZCKCFFnXdrZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR10MB7138
X-Proofpoint-GUID: V6QIhxVs1JrD7a0lhDRaSwLtXbwbwW6x
X-Proofpoint-ORIG-GUID: V6QIhxVs1JrD7a0lhDRaSwLtXbwbwW6x
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-06-07_06,2023-06-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxlogscore=999 mlxscore=0
 adultscore=0 impostorscore=0 priorityscore=1501 suspectscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2305260000 definitions=main-2306070079
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTWFyZWsgVmFzdXQgPG1h
cmV4QGRlbnguZGU+DQo+IFNlbnQ6IFR1ZXNkYXksIEp1bmUgNiwgMjAyMyA3OjI4IFBNDQo+IFRv
OiBBcm5hdWQgUE9VTElRVUVOIDxhcm5hdWQucG91bGlxdWVuQHN0LmNvbT47IGxpbnV4LWFybS0N
Cj4ga2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcNCj4gQ2M6IGRldmljZXRyZWVAdmdlci5rZXJu
ZWwub3JnOyBDb25vciBEb29sZXkgPGNvbm9yK2R0QGtlcm5lbC5vcmc+Ow0KPiBLcnp5c3p0b2Yg
S296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpK2R0QGxpbmFyby5vcmc+OyBSaWNoYXJkIENv
Y2hyYW4NCj4gPHJpY2hhcmRjb2NocmFuQGdtYWlsLmNvbT47IFJvYiBIZXJyaW5nIDxyb2JoK2R0
QGtlcm5lbC5vcmc+OyBNYXhpbWUNCj4gQ29xdWVsaW4gPG1jb3F1ZWxpbi5zdG0zMkBnbWFpbC5j
b20+OyBsaW51eC1zdG0zMkBzdC1tZC0NCj4gbWFpbG1hbi5zdG9ybXJlcGx5LmNvbTsga2VybmVs
QGRoLWVsZWN0cm9uaWNzLmNvbQ0KPiBTdWJqZWN0OiBSZTogW0xpbnV4LXN0bTMyXSBbUEFUQ0gg
MS81XSBBUk06IGR0czogc3RtMzI6IEFkZCBtaXNzaW5nIGRldGFjaA0KPiBtYWlsYm94IGZvciBl
bXRyaW9uIGVtU0JDLUFyZ29uDQo+IA0KPiBPbiA2LzYvMjMgMTg6MjEsIEFybmF1ZCBQT1VMSVFV
RU4gd3JvdGU6DQo+ID4gSGksDQo+IA0KPiBIaSwNCj4gDQo+ID4+Pj4gSSBhc3N1bWUgdGhhdCBp
ZiB0aGUgZmlybXdhcmUgZG9lcyBub3QgdXNlIHRoZSBkZXRhY2ggbWFpbGJveCwgdGhlbg0KPiA+
Pj4+IHRoZSBkZXRhY2ggbWFpbGJveCBpcyBqdXN0IGlnbm9yZWQgYW5kIHVudXNlZCwgc28gdGhl
cmUgaXMgbm8NCj4gPj4+PiBwcm9ibGVtIHdpdGggaGF2aW5nIGl0IGRlc2NyaWJlZCBpbiB0aGUg
RFQgaW4gYW55IGNhc2UgPw0KPiA+Pj4NCj4gPj4+IFllcywgVGhlIGFpbSBvZiB0aGUgU1QgZXZh
bHVhdGlvbiBib2FyZCBpcyB0byBwcm92aWRlIGEgRFQgIHRvIGENCj4gPj4+IHN1cHBvcnQgZGlm
ZmVyZW50IGZpcm13YXJlcyBmb3IgZGVtbyBhbmQgdGVzdHMuICBCdXQgaXQgaXMgbm90IHRoZQ0K
PiA+Pj4gY2FzZSBvZiBhbGwNCj4gPj4gYm9hcmRzLi4uDQo+ID4+PiBJZiB5b3VyIGJvYXJkcyBw
cm92aWRlIGRlbW8gdXNpbmcgdGhlICJkZXRhY2giIGl0IGlzIGp1c3RpZmllZC4NCj4gPj4+IElm
IHlvdSBqdXN0IGFkZCBpdCBhcyBhIHdvcmthcm91bmQgdG8gbWFzayB0aGUgd2FybmluZ3MsIHlv
dSBqdXN0DQo+ID4+PiBtYXNrIHRoZQ0KPiA+PiBpc3N1ZS4NCj4gPj4NCj4gPj4gVGhlbiBpdCBz
ZWVtcyB0aGVyZSBpcyBubyBpc3N1ZSB3aXRoIHRoZSBib2FyZHMgbW9kaWZpZWQgaGVyZSwNCj4g
Pj4gYmVjYXVzZSBhcyBmYXIgYXMgSSBjYW4gdGVsbCwgdGhvc2UgYXJlIGFsbCBnZW5lcmFsIHB1
cnBvc2UgU29NcyBhbmQNCj4gPj4gZXZhbHVhdGlvbiBib2FyZHMuIFdpdGggc3VjaCBzeXN0ZW1z
LCB5b3UgY2Fubm90IHByZWRpY3Qgd2hhdCB0aGUNCj4gPj4gdXNlciB3b3VsZCBsaWtlIHRvIHVz
ZSB0aG9zZSBmb3IsIHRoYXQgY291bGQgaW5jbHVkZSB3aGF0ZXZlciBTVCBkZW1vLg0KPiA+Pg0K
PiA+Pj4+IEFuZCBpZiB0aGF0J3MgdGhlIGNhc2UsIHRoZW4gSSB3b3VsZCBtdWNoIHJhdGhlciBw
cmVmZXIgdG8gaGF2ZSBhbGwNCj4gPj4+PiB0aGUgYm9hcmRzIGRlc2NyaWJlIHRoZSBzYW1lIHNl
dCBvZiBtYWlsYm94ZXMsIHNvIHRoZXkgZG9uJ3QNCj4gPj4+PiBkaXZlcmdlIC4gV2hhdCBkbyB5
b3UgdGhpbmsgPw0KPiA+Pj4+DQo+ID4+Pg0KPiA+Pj4gSSB3b3VsZCBhdm9pZCB0aGlzLiAgSXQg
aXMgb25seSBhIGNvbmZpZ3VyYXRpb24gYnkgZGVmYXVsdCBmb3IgY3VycmVudCBkZW1vLg0KPiA+
Pg0KPiA+PiBUaGF0IGN1cnJlbnQgZGVtbyBpcyByZXN0cmljdGVkIHRvIFNUIHByb2R1Y2VkIGJv
YXJkcyBvbmx5LCBvciBjYW4gaXQNCj4gPj4gYWxzbyBiZSBydW4gb24gZGV2ZWxvcG1lbnQga2l0
cyBtYW51ZmFjdHVyZWQgYnkgb3RoZXIgdmVuZG9ycyA/IEkNCj4gPj4gdGhpbmsgaXQgaXMgdGhl
IGxhdGVyLCBhbmQgSSBkb24ndCBzZWUgd2h5IHRob3NlIHNob3VsZCBiZSBrZXB0DQo+ID4+IG91
dC5bXQ0KPiA+DQo+ID4gU1QgRGVtb3MgYXJlIGJvYXJkcyBkZXBlbmRlbnQuDQo+IA0KPiBJIHdh
cyB1bmRlciB0aGUgaW1wcmVzc2lvbiB0aG9zZSBkZW1vcyBjYW4gYmUgYnVpbHQgZnJvbSB0aGlz
IEN1YmVNWCBzdHVmZg0KPiBmb3IgYW55IGJvYXJkLCBhbGwgeW91IG5lZWQgaXMgdGhlIEN1YmVN
WCBCU1AgPw0KPiANCj4gWy4uLl0NCj4gDQo+ID4+Pj4+IFJhdGhlciB0aGFuIGFkZGluZyB1bnVz
ZWQgb3B0aW9uYWwgbWFpbGJveCwgSSB3aWxsIG1vcmUgaW4gZmF2b3INCj4gPj4+Pj4gb2YgaGF2
aW5nIGEgbWJveF9yZXF1ZXN0X2NoYW5uZWxfYnluYW1lX29wdGlvbmFsIGhlbHBlciBvcg0KPiA+
Pj4+PiBzb21ldGhpbmcgc2ltaWxhcg0KPiA+Pj4+DQo+ID4+Pj4gU2VlIGFib3ZlLCBJIHRoaW5r
IGl0IGlzIGJldHRlciB0byBoYXZlIHRoZSBtYWlsYm94IGRlc2NyaWJlZCBpbiBEVA0KPiA+Pj4+
IGFsd2F5cyBhbmQgbm90IHVzZSBpdCAodGhlIHVzZXIgY2FuIGFsd2F5cyByZW1vdmUgaXQpLCB0
aGFuIHRvIG5vdA0KPiA+Pj4+IGhhdmUgaXQgZGVzY3JpYmVkIG9uIHNvbWUgYm9hcmRzIGFuZCBo
YXZlIGl0IGRlc2NyaWJlZCBvbiBvdGhlcg0KPiA+Pj4+IGJvYXJkcw0KPiA+PiAoaW5jb25zaXN0
ZW5jeSkuDQo+ID4+Pg0KPiA+Pj4gQWRkaW5nIGl0IGluIHRoZSBEVCAoIGFuZCBlc3BlY2lhbGx5
IGluIHRoZSBTb2MgRFRTSSkgY2FuIGFsc28gYmUNCj4gPj4+IGludGVycHJldGVkIGFzICJpdCBp
cyBkZWZpbmVkIHNvIHlvdSBtdXN0IHVzZSBpdCIuIEkgd291bGQgZXhwZWN0DQo+ID4+PiB0aGF0
IHRoZSBCaW5kaW5ncyBhbHJlYWR5IHByb3ZpZGUgdGhlIGluZm9ybWF0aW9uIHRvIGhlbHAgdXNl
ciB0byBhZGQgaXQNCj4gb24gbmVlZC4NCj4gPj4NCj4gPj4gV2h5IHNob3VsZCBldmVyeSBzaW5n
bGUgYm9hcmQgYWRkIGl0IHNlcGFyYXRlbHkgYW5kIGR1cGxpY2F0ZSB0aGUNCj4gPj4gc2FtZSBz
dHVmZiwgaWYgdGhleSBjYW4gYWxsIHN0YXJ0IHdpdGggaXQsIGFuZCBpZiBhbnlvbmUgbmVlZHMg
dG8NCj4gPj4gdHdlYWsgdGhlIG1haWxib3ggYWxsb2NhdGlvbiwgdGhlbiB0aGV5IGNhbiBkbyB0
aGF0IGluIHRoZSBib2FyZCBEVCA/DQo+ID4+IEkgcmVhbGx5IGRvbid0IGxpa2UgdGhlIGR1cGxp
Y2F0aW9uIHN1Z2dlc3Rpb24gaGVyZS4NCj4gPg0KPiA+IEkgd2FzIHNwZWFraW5nIGFib3V0ICJk
ZXRhY2ggbWFpbGJveC4gSGVyZSBpcyB3aGF0IEkgd291bGQgbGlrZSB0bw0KPiA+IHByb3Bvc2Ug
dG8geW91DQo+ID4NCj4gPiAxKSAgbW92ZSBhbGwgdGhlIG1haWxib3ggZGVjbGFyYXRpb24gaW4g
dGhlIERUU0kgZXhjZXB0ICJkZXRhY2giDQo+ID4gMikgZG9uJ3QgZGVjbGFyZSAiZGV0YWNoIiBp
biBib2FyZHMgRFRTICggZXhjZXB0IFNUIGJvYXJkIGZvciBsZWdhY3kNCj4gPiBjb21wbGlhbmNl
KQ0KPiA+IDMpIGFzIGEgbmV4dCBzdGVwIHdlIHdpbGwgaGF2ZSB0byBmaXggdGhlIHVuZXhwZWN0
ZWQgd2FybmluZyBvbiB0aGUNCj4gPiAgICAgImRldGFjaCIgbWFpbGJveC4NCj4gDQo+IFdoeSBu
b3QgbWFrZSB0aGUgbWFpbGJveCBhdmFpbGFibGUgYnkgZGVmYXVsdCBvbiBhbGwgYm9hcmRzID8N
Cg0KSXQgaGFzIGJlZW4gaW50cm9kdWNlZCBtYWlubHkgdG8gdGVzdCB0aGUgZGV0YWNoIGZlYXR1
cmUsDQpvbiBhIHNlY29uZCBwbGF0Zm9ybSB0byBoZWxwIHJlbW90ZXByb2MgbWFpbnRhaW5lcnMg
Zm9yIHRoZSByZXZpZXcNCnByb2Nlc3MuIEJ1dCB0aGUgZmVhdHVyZSBpcyBub3QgZnVsbHkgaW1w
bGVtZW50ZWQgb24gc3RtMzJtcDENCiggYXV0byByZWJvb3Qgb2YgdGh5ZSBNNCBvbiBjcmFzaCwg
YXBwcm9wcmlhdGUgcmVzb3VyY2UgdGFibGUgY2xlYW4tdXAsLi4uKQ0KSSB3b3VsZCBwcmVmZXIg
dG8gcmVtb3ZlIGl0IGluIFNUIGJvYXJkIERUIHRoYW4gYWRkIGl0IGluIHRoZSBEVFNJLg0KVGhh
dCBzYWlkIGFzIG1lbnRpb25lZCBmb3IgbGVnYWN5IHN1cHBvcnQsIGJldHRlciB0byBrZWVwIGZv
ciBTVCBib2FyZC4NCg0KPiANCj4gQXMgZmFyIGFzIEkgY2FuIHRlbGwsIGlmIHRoZSBzb2Z0d2Fy
ZSBpcyBub3QgdXNpbmcgdGhlIGRldGFjaCBtYWlsYm94LCB0aGVyZSBpcyBubw0KPiBkb3duc2lk
ZSwgaXQgd291bGQganVzdCBiZSB1bnVzZWQuIFVzZXIgY2FuIGFsd2F5cyByZW1vdmUgaXQgaW4g
dGhlaXIgRFQgaWYNCj4gcmVhbGx5IG5lZWRlZC4NCg0KVGhlIGludmVyc2UgaXQgdHJ1ZSwgVXNl
ciBjYW4gYWRkIGl0IGluIHRoZWlyIERUIGlmIHJlYWxseSBuZWVkLg0KDQo+IA0KPiBJIGJlbGll
dmUgb25jZSBjYW4gYnVpbGQgZGVtb3MgdXNpbmcgdGhlIGRldGFjaCBtYWlsYm94IGZvciBib2Fy
ZHMgd2l0aA0KPiBzdG0zMm1wMTV4eCBub3QgbWFudWZhY3R1cmVkIGJ5IFNULCBjb3JyZWN0ID9b
XSANCg0KRXZlcnl0aGluZyBjb3VsZCBiZSBwb3NzaWJsZS4uLg0KT25jZSBjYW4gd2FudCB0byBy
ZXBsYWNlIHRoZSBzaHV0ZG93biBtYWlsYm94IGJ5IHRoZSBkZXRhY2guIA0KT25jZSBjYW4gYWxz
byBidWlsZCBkZW1vIHVzaW5nIHRoZSBkZXRhY2ggbWFpbGJveCBjaGFubmVsIGZvciBhbm90aGVy
IHB1cnBvc2UuDQoNCkkgcXVpdGUgY29uZnVzZSB3aHkgeW91IGluc2lzdCB0byBkZWNsYXJlIHRo
aXMgZGV0YWNoIG1haWxib3ggaW4gdGhlIERUU0k/DQpJcyB0aGVyZSBhIHN0cm9uZyBjb25zdHJh
aW50IG9uIHlvdXIgc2lkZT8NCg0KUmVnYXJkcywNCkFybmF1ZA0KDQo+IA0KPiBbLi4uXQ0K
