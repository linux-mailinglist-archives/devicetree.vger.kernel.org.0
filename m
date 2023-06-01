Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CBE92719CC5
	for <lists+devicetree@lfdr.de>; Thu,  1 Jun 2023 14:57:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233277AbjFAM45 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jun 2023 08:56:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233244AbjFAM4w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jun 2023 08:56:52 -0400
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC1C519D
        for <devicetree@vger.kernel.org>; Thu,  1 Jun 2023 05:56:47 -0700 (PDT)
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
        by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 351AMR1m001514;
        Thu, 1 Jun 2023 14:56:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com; h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=JQ0kfx9VUWWYp2Ft7jhJJpojRruoIIXUVCJVyqkcl3w=;
 b=iyTeWPzelB4xvzqS0Mj3XisrB4s74iPUWvqEqm/RXN853fGlEOcqwXtNd523y9ZNWS9I
 K6S7APdseD6blX+7BwTW69LoHTIrzb3B/1CdmcXTrTR5HRSHZHG954nEWtr2rhR/bPm1
 NzbCnaVgUpU7xUVAJEIs+aU9xFDn17cQJU0+KYSTHnqoSaNEaI2QEWLkFZGM172N7KfC
 Yx0Q6dbY6aTwEmn4CRqya80B9ItASjeEVuE4KEP/ZtGXpyngs4x8IKiORUXUqp8eT4qp
 QynMy6y4GjkONCXbdY5voYQSnXZiGZOQsIjWMFRNSFFKmf225+Rw17kDB5l1Rp36ALXA HQ== 
Received: from eur02-am0-obe.outbound.protection.outlook.com (mail-am0eur02lp2235.outbound.protection.outlook.com [104.47.11.235])
        by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3qweqefyjv-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Thu, 01 Jun 2023 14:56:18 +0200
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z+GeA+qeAF0snGJPPD70e8VUl+mwBrGdjXnAH17CboDWZSTUF3rw91ipyJlXJQqy2g5d6CDZfbSWYUjgZ7u6Vpzw2mcUcV8bhegyNofhMrm6c1DYiQ4YF1PMnWNbbCEWtF/pqWXxV7teQaDhirmWTLKVW9CqoTl38tFLL/u3Wan9WBw5S2DbA+OLE2bT8U6PoN6x9YIY7KrAmYl4bdqqAAQovk6lrR2MobEd+jCZfAbJfdrEgVmOEPn9Qt8I3cTucPrss45oxdZkfL0h99DWP2oTN6ZzbcBlsTNWzrHmWg9rdExO7wXhs2svXPEGLg/1zA9GgayMYgOmIWG2AYaF6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JQ0kfx9VUWWYp2Ft7jhJJpojRruoIIXUVCJVyqkcl3w=;
 b=kO9Al7xsCzLTbnY7IKRs0fgFvYVgSj0Pk+uDaknuJ1PJ/eXgRM8RUiuY8k1jAo3Yib69ipxklHRGi7gBD3UpwnP9zVPTEla/WpmS5KeMtykbXfTBNex7FhyxyfMxGbOWvTbzSxaMKPjNztSFpZNLKC/GHeeczd5Hsg9X/s5HKMMTqqcMsHbcG8cuZZhTdZos/q7gzlevQxmBy+X+uqku5Guu1yj6Pw2ol6yaSFyuqVVmrpH1CoOI0YMFptMFLvhzcRLIVuDvNcbZg3TpQZUjOaP+5PdHgLgZrImWX3K8sBFz1UD11F/W+WhJxHy7nrBxO1TUVj/4MVBziOdBN+jU3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=st.com; dmarc=pass action=none header.from=st.com; dkim=pass
 header.d=st.com; arc=none
Received: from PAXPR10MB4718.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:158::12)
 by AM7PR10MB3158.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:106::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.22; Thu, 1 Jun
 2023 12:56:16 +0000
Received: from PAXPR10MB4718.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::624f:2b21:6c2d:b5bb]) by PAXPR10MB4718.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::624f:2b21:6c2d:b5bb%6]) with mapi id 15.20.6455.020; Thu, 1 Jun 2023
 12:56:16 +0000
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
Thread-Index: AQHZkuz842ysAt4Sc0yUqaQH1WPTlK911U/w
Date:   Thu, 1 Jun 2023 12:56:16 +0000
Message-ID: <PAXPR10MB4718D37242FF00D47DF0CEF1F1499@PAXPR10MB4718.EURPRD10.PROD.OUTLOOK.COM>
References: <20230518011246.438097-1-marex@denx.de>
 <PAXPR10MB471850924065C987981634C1F14B9@PAXPR10MB4718.EURPRD10.PROD.OUTLOOK.COM>
 <133c8b4a-8680-f613-807a-2d7931d0a186@denx.de>
In-Reply-To: <133c8b4a-8680-f613-807a-2d7931d0a186@denx.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_23add6c0-cfdb-4bb9-b90f-bf23b83aa6c0_Enabled=true;
 MSIP_Label_23add6c0-cfdb-4bb9-b90f-bf23b83aa6c0_SetDate=2023-06-01T12:56:14Z;
 MSIP_Label_23add6c0-cfdb-4bb9-b90f-bf23b83aa6c0_Method=Standard;
 MSIP_Label_23add6c0-cfdb-4bb9-b90f-bf23b83aa6c0_Name=23add6c0-cfdb-4bb9-b90f-bf23b83aa6c0;
 MSIP_Label_23add6c0-cfdb-4bb9-b90f-bf23b83aa6c0_SiteId=75e027c9-20d5-47d5-b82f-77d7cd041e8f;
 MSIP_Label_23add6c0-cfdb-4bb9-b90f-bf23b83aa6c0_ActionId=1051d88d-a910-4803-a975-0600bbf2fabc;
 MSIP_Label_23add6c0-cfdb-4bb9-b90f-bf23b83aa6c0_ContentBits=2
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAXPR10MB4718:EE_|AM7PR10MB3158:EE_
x-ms-office365-filtering-correlation-id: 6d18d6f1-d319-42df-62ca-08db629f9697
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EhskDccuBsiUd1H8j3LoruXRMmkZWSiPSGfBZJqx+X7Ooyq0asOVIg6iFwdDOSNeunmGe5wd5pyz4+5B/yj2QbG/lTlLl1tK2JZhorBcW6PTYfxyH/IXH/pyupjCGfIrzxm3HzBarr54/sJ+HlS0kxmg7h27gtLdm/SvECUnjrDOupKLM+AH9lQDMcJoJS1xr3S9wJABfcbpOG5l6gV+88yjbDPElCo6YLTNBeMgCjFad3S53YVroLs4zaYVSEC0cNTzkSN+1nrW4OGupE1j44qyZJETsnFWksOXUcwxJfUSvW8/0iB+YfL0BtfOIv6MLzoMuUOIwf0PKdpHZdRLJxdPu0ftUF8edAL3HDiWHsMFGehWVOM/DTQIztLSAu6L/9GH7DrJlm5O6z9jzZpas3WWSFfFL3fYBFh28K9nfoyfmkIaYxxalQ9GagxM23wu+w3CbbnAAalNNkR7Wu0Gnif2Nz5baGpsMzhITfXwhvrVinG4oGc9muek3UfpNyy76B3eDFzKjIoQwAl1GuMAMjmdq+I47t9TKNonBR/82YQDAGpQSA6eDPD5GPn0vnFwX5fDyXSSVa5onRSZlf6iV5isuh+S78I+60Vnm+A9Upo=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR10MB4718.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(39860400002)(346002)(396003)(366004)(376002)(136003)(451199021)(38070700005)(38100700002)(122000001)(55016003)(33656002)(86362001)(7696005)(26005)(9686003)(6506007)(55236004)(186003)(53546011)(15650500001)(8936002)(5660300002)(8676002)(2906002)(41300700001)(76116006)(71200400001)(66946007)(7416002)(316002)(52536014)(54906003)(110136005)(4326008)(66446008)(66476007)(64756008)(66556008)(478600001)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dFY4S1A1STBIYVpONTRWOEFVMWUreFZHRGg1VFYya2xReUF4NXkxc3lRTmZP?=
 =?utf-8?B?R3NWaTZTL1pxMnRaVzh4aHcrUHdCQkxCNU5MRTN2Mm9EZnpHQ2V5MDVYL0hJ?=
 =?utf-8?B?ZjBGenUvRTVPaHAxMm5XcUdMV09TYUMrdTZHR0FjVVJOcnZwLzdwWGJha2NF?=
 =?utf-8?B?ZFBEK2c0NHdDUkJsUG5RVm1DdEhIUEtwTVNpelRLcWloYk1BdHFobEQxNUFL?=
 =?utf-8?B?akx4YXFxdmdYbjZxVXdocVRrSTlXblUwU0IxNjlkQ3MxUTJKb1lhYUh0WS9V?=
 =?utf-8?B?UTlXWTVNRGluWEN0OGxzbGY1RHhpeGh4amE4OHMxZmZ1M2NyTDcwZ0JXWGds?=
 =?utf-8?B?aEdxemlaREtlMmFFcEtKamhJenFzUWx1dWVsMUtDRytPQlllMy8yaThMV3pV?=
 =?utf-8?B?NEdpU2tyNHhyR1RtVU5uK0pkWkxWSTA1TmhWWm5hb3U2WjU0YWlSbko5dkFM?=
 =?utf-8?B?QzJPTHlMaEpKVGFrN0hYc2E5OWI0RUpkeWhyYlRaRmYvcnN5STBtYkhBQi81?=
 =?utf-8?B?YmxYNmJ3M3ZZbGkwTXZJbFZDZWUyUFRhR3lacWljNXAvZXVLZDc1N1puMnpM?=
 =?utf-8?B?MWdtYmRVdnltZ3ZuWmRMNGV5U3BqY09tRGZpRnZmdGtlLzhWSU05OW4rWjN0?=
 =?utf-8?B?NFdHdEp2NUwwMUx1ODRxMTUvZnNaK0hXejF3Q0c1Z2FZbnFYT3NQQTFFazVa?=
 =?utf-8?B?elBreGVkN0NlQkNzc0lPOEViRXdlcTFWeUx2MGU1OUZFc005cHV5ZnhjUWpo?=
 =?utf-8?B?TFJnQ2ZnKzBBVzI0dVZObGlyeHNBR0ZZUGt6TzhMN0NXYmNTR3FDV2ZpRlRE?=
 =?utf-8?B?RmFIMlljdDJyRnVvWVF2RTM4RWY5YjNxZFRhbUNkMzJLK2FCNXZXSitPS3JD?=
 =?utf-8?B?Qi92NTVQM08xem9qeG82RHdDUnhJTVZTWEtyL0pSNGJmMVBEUkE5UUZPK0xy?=
 =?utf-8?B?QURVUmY3NGdJbXZ6YXZGYVJ1VkFZcnFXRG8yMk42U0JMMEhhQVc4cFhPNFF0?=
 =?utf-8?B?MTFoV0FQUVArRXhDRlE5dmI4dEhWeUJEYWsvUVR6aDBGMHgzT0c5d01uQTJP?=
 =?utf-8?B?cUhxLzhEUWJLUFVJMmdlM0pGZi9qRzgycXR4QmNuMmQwK0RIV0RiY3JMZUxz?=
 =?utf-8?B?WThRRVh3MmdhcWd3Y2k4L2hMSU1TUSs0T21zOFR6MlJUZ3BOdU14WHF5NFRM?=
 =?utf-8?B?WGIvNHVtSnE3RHpVK2JCZC85QnJIQWgwdHo1S3Uyc2oyVnI4enhpVHV5Ky9L?=
 =?utf-8?B?ZTArcXU0eTJiMnlGUkRLTzkySGlQcnJ6cjVmSTU4NGVIaFJnbmNaQWRmNncw?=
 =?utf-8?B?eThDcENjZ3g0SmhNNWY0WWoyWFJ4MURHZzRqaS96UDdLVlRFSlV1cWNuc2FV?=
 =?utf-8?B?OExkVjRrTVFOQVZtRXJMblp2c1puZ1daRjJOQytpbllwMVphdGN6cEZOWnhi?=
 =?utf-8?B?K0tQNTJpYzFMeUMycmNwY2VYQ2l2YTZwWllybDBodjdtU2ZwbXVxRzkwajhr?=
 =?utf-8?B?Wk5wN0dVcE1lWk9tdjVJM21MZXpqTzYyUHNDMzZybWZFWndNSllEeHY2M1RY?=
 =?utf-8?B?aEt3MHBQcjBtVnJiZmZoMGt3OWhHU3REcTZUSEJ2bUxCdTZWRUwxQXNJdU9Z?=
 =?utf-8?B?K05jcCtPR2kwZDNJby9JcFVwL1c0amdEQjlzZXp4MHdVYlZ6UG5zN2ZONXpD?=
 =?utf-8?B?dDF3TFNYNFNpa2J4RGhFZUZkdkZjcFRLN1drelowYlQ4N0k3Um0zcG5UWkpp?=
 =?utf-8?B?NTJURUpMZXpDUjFxamljYUNHVW5oWG82ME1Na2ZId0Z1YnlXSEVQTGprZSs4?=
 =?utf-8?B?RWREUHBiWmQvcjF6QnA0dWRRVlBaU21Zd0VTSFBzMVR4bllON0ZwQWxSaFdX?=
 =?utf-8?B?NHRCUVFoQ1VvcEJtcFdtLzM3NThnV3pIUXFja3NBdGEzUWM1bEpNWnJCbVg4?=
 =?utf-8?B?aHZXVW83Q0N4dWtlZjYwaGJ1UlZmKzVpODZFd3dFc1kxRUlia0JJYU0wWEN0?=
 =?utf-8?B?eVloRWlLRXVpOHpFYjVTZFdMR25tMSswSTl0VFZrZG1JUS8rQTZzbyt4S2dM?=
 =?utf-8?B?b3VpVWlURGphejMrcG44QWE2OUFWMmhhOG5ZOGlORzdDYU9nTnAybGp2WVk3?=
 =?utf-8?Q?U/CHvJK9DOiahU3gA4sM5vn/y?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: ST.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXPR10MB4718.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d18d6f1-d319-42df-62ca-08db629f9697
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2023 12:56:16.8346
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 75e027c9-20d5-47d5-b82f-77d7cd041e8f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mbdnEkS/VI8r+7pEK6gmZf4IR1TMA6GGluQQ0WU+ydm4bVDIf8y+d2VwjiwRxqXNcVAuEVjWYXyGER0gz0j2aw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR10MB3158
X-Proofpoint-GUID: d9Y-9nBdUMLI8GjIlz1SuYPyn_V4CzL_
X-Proofpoint-ORIG-GUID: d9Y-9nBdUMLI8GjIlz1SuYPyn_V4CzL_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-06-01_08,2023-05-31_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 phishscore=0
 impostorscore=0 bulkscore=0 mlxscore=0 priorityscore=1501
 lowpriorityscore=0 spamscore=0 mlxlogscore=999 clxscore=1015 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2306010115
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DQoNCg0KU1QgUmVzdHJpY3RlZA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZy
b206IE1hcmVrIFZhc3V0IDxtYXJleEBkZW54LmRlPg0KPiBTZW50OiBUdWVzZGF5LCBNYXkgMzAs
IDIwMjMgMTo1MSBQTQ0KPiBUbzogQXJuYXVkIFBPVUxJUVVFTiA8YXJuYXVkLnBvdWxpcXVlbkBz
dC5jb20+OyBsaW51eC1hcm0tDQo+IGtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnDQo+IENjOiBk
ZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgQ29ub3IgRG9vbGV5IDxjb25vcitkdEBrZXJuZWwu
b3JnPjsNCj4gS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraStkdEBsaW5h
cm8ub3JnPjsgUmljaGFyZCBDb2NocmFuDQo+IDxyaWNoYXJkY29jaHJhbkBnbWFpbC5jb20+OyBS
b2IgSGVycmluZyA8cm9iaCtkdEBrZXJuZWwub3JnPjsgTWF4aW1lDQo+IENvcXVlbGluIDxtY29x
dWVsaW4uc3RtMzJAZ21haWwuY29tPjsgbGludXgtc3RtMzJAc3QtbWQtDQo+IG1haWxtYW4uc3Rv
cm1yZXBseS5jb207IGtlcm5lbEBkaC1lbGVjdHJvbmljcy5jb20NCj4gU3ViamVjdDogUmU6IFtM
aW51eC1zdG0zMl0gW1BBVENIIDEvNV0gQVJNOiBkdHM6IHN0bTMyOiBBZGQgbWlzc2luZyBkZXRh
Y2gNCj4gbWFpbGJveCBmb3IgZW10cmlvbiBlbVNCQy1Bcmdvbg0KPiANCj4gT24gNS8zMC8yMyAx
MDo0MywgQXJuYXVkIFBPVUxJUVVFTiB3cm90ZToNCj4gPiBIZWxsbyBNYXJlaywNCj4gDQo+IEhp
LA0KPiANCj4gPiBTVCBSZXN0cmljdGVkDQo+ID4NCj4gPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdl
LS0tLS0NCj4gPj4gRnJvbTogTGludXgtc3RtMzIgPGxpbnV4LXN0bTMyLWJvdW5jZXNAc3QtbWQt
DQo+IG1haWxtYW4uc3Rvcm1yZXBseS5jb20+DQo+ID4+IE9uIEJlaGFsZiBPZiBNYXJlayBWYXN1
dA0KPiA+PiBTZW50OiBUaHVyc2RheSwgTWF5IDE4LCAyMDIzIDM6MTMgQU0NCj4gPj4gVG86IGxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZw0KPiA+PiBDYzogTWFyZWsgVmFzdXQg
PG1hcmV4QGRlbnguZGU+OyBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgQ29ub3INCj4gPj4g
RG9vbGV5IDxjb25vcitkdEBrZXJuZWwub3JnPjsgS3J6eXN6dG9mIEtvemxvd3NraQ0KPiA+PiA8
a3J6eXN6dG9mLmtvemxvd3NraStkdEBsaW5hcm8ub3JnPjsgUmljaGFyZCBDb2NocmFuDQo+ID4+
IDxyaWNoYXJkY29jaHJhbkBnbWFpbC5jb20+OyBSb2IgSGVycmluZyA8cm9iaCtkdEBrZXJuZWwu
b3JnPjsNCj4gTWF4aW1lDQo+ID4+IENvcXVlbGluIDxtY29xdWVsaW4uc3RtMzJAZ21haWwuY29t
PjsgbGludXgtc3RtMzJAc3QtbWQtDQo+ID4+IG1haWxtYW4uc3Rvcm1yZXBseS5jb207IGtlcm5l
bEBkaC1lbGVjdHJvbmljcy5jb20NCj4gPj4gU3ViamVjdDogW0xpbnV4LXN0bTMyXSBbUEFUQ0gg
MS81XSBBUk06IGR0czogc3RtMzI6IEFkZCBtaXNzaW5nDQo+ID4+IGRldGFjaCBtYWlsYm94IGZv
ciBlbXRyaW9uIGVtU0JDLUFyZ29uDQo+ID4+DQo+ID4+IEFkZCBtaXNzaW5nICJkZXRhY2giIG1h
aWxib3ggdG8gdGhpcyBib2FyZCB0byBwZXJtaXQgdGhlIENQVSB0bw0KPiA+PiBpbmZvcm0gdGhl
IHJlbW90ZSBwcm9jZXNzb3Igb24gYSBkZXRhY2guIFRoaXMgc2lnbmFsIGFsbG93cyB0aGUNCj4g
Pj4gcmVtb3RlIHByb2Nlc3NvciBmaXJtd2FyZSB0byBzdG9wIElQQyBjb21tdW5pY2F0aW9uIGFu
ZCB0bw0KPiA+PiByZWluaXRpYWxpemUgdGhlIHJlc291cmNlcyBmb3IgYSByZS1hdHRhY2guDQo+
ID4+DQo+ID4+IFdpdGhvdXQgdGhpcyBtYWlsYm94LCBkZXRhY2ggaXMgbm90IHBvc3NpYmxlIGFu
ZCBrZXJuZWwgbG9nIGNvbnRhaW5zDQo+ID4+IHRoZSBmb2xsb3dpbmcgd2FybmluZyB0bywgc28g
bWFrZSBzdXJlIGFsbCB0aGUgU1RNMzJNUDE1eHggcGxhdGZvcm0NCj4gPj4gRFRzIGFyZSBpbiBz
eW5jIHJlZ2FyZGluZyB0aGUgbWFpbGJveGVzIHRvIGZpeCB0aGUgZGV0YWNoIGlzc3VlIGFuZCB0
aGUNCj4gd2FybmluZzoNCj4gPj4gIg0KPiA+PiBzdG0zMi1ycHJvYyAxMDAwMDAwMC5tNDogbWJv
eF9yZXF1ZXN0X2NoYW5uZWxfYnluYW1lKCkgY291bGQgbm90DQo+ID4+IGxvY2F0ZSBjaGFubmVs
IG5hbWVkICJkZXRhY2giDQo+ID4+ICINCj4gPj4NCj4gPj4gRml4ZXM6IDYyNTdkZmMxYzQxMiAo
IkFSTTogZHRzOiBzdG0zMjogQWRkIGNvcHJvY2Vzc29yIGRldGFjaCBtYm94IG9uDQo+ID4+IHN0
bTMybXAxNXgtZGt4IGJvYXJkcyIpDQo+ID4+IFNpZ25lZC1vZmYtYnk6IE1hcmVrIFZhc3V0IDxt
YXJleEBkZW54LmRlPg0KPiA+PiAtLS0NCj4gPj4gQ2M6IEFsZXhhbmRyZSBUb3JndWUgPGFsZXhh
bmRyZS50b3JndWVAZm9zcy5zdC5jb20+DQo+ID4+IENjOiBDb25vciBEb29sZXkgPGNvbm9yK2R0
QGtlcm5lbC5vcmc+DQo+ID4+IENjOiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296
bG93c2tpK2R0QGxpbmFyby5vcmc+DQo+ID4+IENjOiBNYXhpbWUgQ29xdWVsaW4gPG1jb3F1ZWxp
bi5zdG0zMkBnbWFpbC5jb20+DQo+ID4+IENjOiBSaWNoYXJkIENvY2hyYW4gPHJpY2hhcmRjb2No
cmFuQGdtYWlsLmNvbT4NCj4gPj4gQ2M6IFJvYiBIZXJyaW5nIDxyb2JoK2R0QGtlcm5lbC5vcmc+
DQo+ID4+IENjOiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZw0KPiA+PiBDYzoga2VybmVsQGRo
LWVsZWN0cm9uaWNzLmNvbQ0KPiA+PiBDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnDQo+ID4+IENjOiBsaW51eC1zdG0zMkBzdC1tZC1tYWlsbWFuLnN0b3JtcmVwbHkuY29t
DQo+ID4+IC0tLQ0KPiA+PiAgIGFyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdjLWVtc3RhbXAt
YXJnb24uZHRzaSB8IDQgKystLQ0KPiA+PiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pDQo+ID4+DQo+ID4+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290
L2R0cy9zdG0zMm1wMTU3Yy1lbXN0YW1wLWFyZ29uLmR0c2kNCj4gPj4gYi9hcmNoL2FybS9ib290
L2R0cy9zdG0zMm1wMTU3Yy1lbXN0YW1wLWFyZ29uLmR0c2kNCj4gPj4gaW5kZXggYjAxNDcwYTlh
M2Q1My4uODIwNjFjOTE4NjMzOCAxMDA2NDQNCj4gPj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMv
c3RtMzJtcDE1N2MtZW1zdGFtcC1hcmdvbi5kdHNpDQo+ID4+ICsrKyBiL2FyY2gvYXJtL2Jvb3Qv
ZHRzL3N0bTMybXAxNTdjLWVtc3RhbXAtYXJnb24uZHRzaQ0KPiA+PiBAQCAtMzY2LDggKzM2Niw4
IEBAICZpd2RnMiB7DQo+ID4+ICAgJm00X3Jwcm9jIHsNCj4gPj4gICAJbWVtb3J5LXJlZ2lvbiA9
IDwmcmV0cmFtPiwgPCZtY3VyYW0+LCA8Jm1jdXJhbTI+LA0KPiA8JnZkZXYwdnJpbmcwPiwNCj4g
Pj4gICAJCQk8JnZkZXYwdnJpbmcxPiwgPCZ2ZGV2MGJ1ZmZlcj47DQo+ID4+IC0JbWJveGVzID0g
PCZpcGNjIDA+LCA8JmlwY2MgMT4sIDwmaXBjYyAyPjsNCj4gPj4gLQltYm94LW5hbWVzID0gInZx
MCIsICJ2cTEiLCAic2h1dGRvd24iOw0KPiA+PiArCW1ib3hlcyA9IDwmaXBjYyAwPiwgPCZpcGNj
IDE+LCA8JmlwY2MgMj4sIDwmaXBjYyAzPjsNCj4gPj4gKwltYm94LW5hbWVzID0gInZxMCIsICJ2
cTEiLCAic2h1dGRvd24iLCAiZGV0YWNoIjsNCj4gPg0KPiA+IFdoeSBkbyB5b3Ugd2FudCB0byBh
ZGQgdGhlIGRldGFjaCBtYWlsYm94Pw0KPiA+IEl0IGxvb2tzIHRvIG1lIGhlcmUgdGhhdCB5b3Ug
d2FudCB0byBjbGVhbiB0aGUgd2FybmluZyBtZXNzYWdlLCByaWdodD8NCj4gDQo+IFllcw0KPiAN
Cj4gPiBUaGUgZGV0YWNoIGlzIHVzZWQgaW4gYSBwYXJ0aWN1bGFyIHVzZWNhc2Ugd2hlcmUgdGhl
IG1haW4gcHJvY2Vzc29yIGlzDQo+ID4gc2h1dGRvd24gd2hpbGUgdGhlIGNvcHJvY2Vzc29yIGlz
IHN0aWxsIHJ1bm5pbmcuDQo+ID4gSSB3b3VsZCBwcmVmZXIgdG8gbm90IGVuYWJsZSBpdCBieSBk
ZWZhdWx0IGFzIGl0IG5lZWQgYSBzcGVjaWZpYw0KPiA+IGNvcHJvY2Vzc29yIEZpcm13YXJlLg0K
PiANCj4gV2h5IGlzIGl0IGVuYWJsZWQgYnkgZGVmYXVsdCBvbiBTVCBib2FyZHMgYW5kIGxlZnQg
b3V0IG9uIGFsbCBvdGhlciBib2FyZHMgPw0KDQpNYWlubHkgdG8gYmUgYWJsZSB0byB0ZXN0IHRo
ZSBmZWF0dXJlIG9uIHRoZSBLMiBib2FyZCAuIEFuZCBlbnN1cmUgdGhhdCB0aGUgZ2VuZXJpYw0K
SW1wbGVtZW50YXRpb24gcHJvcG9zZWQgd2FzIGNvbXBhdGlibGUuIFdlIGRvIG5vdCBwcm92aWRl
IGRlbW8gaW4gdGhlIFNUDQpEaXN0cmlidXRpb24uIFJlbW92ZSBpdCBjb3VsZCBiZSBhbiBvcHRp
b24sIGJ1dCB0aGlzIGNvdWxkIGlwYWN0IGxlZ2FjeSBzb21lIE00IGZpcm13YXJlLg0KIA0KPiAN
Cj4gU3VyZWx5IHRoZSBTVCBldmFsdWF0aW9uIGJvYXJkcyBjYW4gbG9hZCBhbmQgcnVuIGJvdGgg
dHlwZXMgb2YgZmlybXdhcmUsDQo+IG9uZXMgd2hpY2ggZG8gdXNlIHRoZSBkZXRhY2ggbWFpbGJv
eCBhbmQgb25lcyB3aGljaCBkbyBub3QgdXNlIHRoZSBkZXRhY2gNCj4gbWFpbGJveCAsIHJpZ2h0
ID8NCg0KWWVzLA0KDQo+IA0KPiBJIGFzc3VtZSB0aGF0IGlmIHRoZSBmaXJtd2FyZSBkb2VzIG5v
dCB1c2UgdGhlIGRldGFjaCBtYWlsYm94LCB0aGVuIHRoZQ0KPiBkZXRhY2ggbWFpbGJveCBpcyBq
dXN0IGlnbm9yZWQgYW5kIHVudXNlZCwgc28gdGhlcmUgaXMgbm8gcHJvYmxlbSB3aXRoDQo+IGhh
dmluZyBpdCBkZXNjcmliZWQgaW4gdGhlIERUIGluIGFueSBjYXNlID8NCg0KWWVzLCBUaGUgYWlt
IG9mIHRoZSBTVCBldmFsdWF0aW9uIGJvYXJkIGlzIHRvIHByb3ZpZGUgYSBEVCAgdG8gYSBzdXBw
b3J0DQpkaWZmZXJlbnQgZmlybXdhcmVzIGZvciBkZW1vIGFuZCB0ZXN0cy4gIEJ1dCBpdCBpcyBu
b3QgdGhlIGNhc2Ugb2YgYWxsIGJvYXJkcy4uLg0KSWYgeW91ciBib2FyZHMgcHJvdmlkZSBkZW1v
IHVzaW5nIHRoZSAiZGV0YWNoIiBpdCBpcyBqdXN0aWZpZWQuDQpJZiB5b3UganVzdCBhZGQgaXQg
YXMgYSB3b3JrYXJvdW5kIHRvIG1hc2sgdGhlIHdhcm5pbmdzLCB5b3UganVzdCBtYXNrIHRoZSBp
c3N1ZS4NCg0KPiANCj4gQW5kIGlmIHRoYXQncyB0aGUgY2FzZSwgdGhlbiBJIHdvdWxkIG11Y2gg
cmF0aGVyIHByZWZlciB0byBoYXZlIGFsbCB0aGUgYm9hcmRzDQo+IGRlc2NyaWJlIHRoZSBzYW1l
IHNldCBvZiBtYWlsYm94ZXMsIHNvIHRoZXkgZG9uJ3QgZGl2ZXJnZSAuIFdoYXQgZG8geW91DQo+
IHRoaW5rID8NCj4gDQoNCkkgd291bGQgYXZvaWQgdGhpcy4gIEl0IGlzIG9ubHkgYSBjb25maWd1
cmF0aW9uIGJ5IGRlZmF1bHQgZm9yIGN1cnJlbnQgZGVtby4NClRoZSBhbGxvY2F0aW9uIGRlcGVu
ZHMgb24gdGhlIGZpcm13YXJlIGxvYWRlZCBvbiBNNCwgc28gZGVwZW5kIG9uIHRoZSBwcm9qZWN0
Lg0KRm9yIGluc3RhbmNlLCBhIHdvcmsgaGFzIHN0YXJ0ZWQgaW4gT3BlbkFNUCBjb21tdW5pdHkg
dG8gaW1wbGVtZW50IHRoZSB2SXJ0aW8gU2VydmljZXMNCkZvciB0aGUgSVBDLiAgRWFjaCB2aXJ0
aW8gc2VydmljZXMgd291bGQgYmUgYXNzb2NpYXRlZCB0byBvbmUgb3Igc2V2ZXJhbCBtYWlsYm94
DQpDaGFubmVscy4gIEluIHRoaXMgY2FzZSB3ZSB3b3VsZCBuZWVkIHRvIGFyYml0cmF0ZSBhbGxv
Y2F0aW9ucy4NClRoZSByZXN1bHQgY291bGQgYmUgdGhhdCB3ZSBwcm9wb3NlIGEgdmlydGlvIGNo
YW5uZWwgZm9yIHJwbXNnICsgc29tZSBvdGhlciB2aXJ0aW8uDQpNb3JlIHRoYW4gdGhhdCB3ZSBw
cm9iYWJseSBtYW5hZ2UgdGhlIG1haWxib3hlcyBpbiBzdWIgbm9kZQ0KSGVyZSBpcyBhbiBSRkMg
b24gdGhlIHRvcGljIChodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzIwMjIwOTIwMjAyMjAx
LkdCMTA0MjE2NEBwMTRzLykNCg0KVGhhdCBzYWlkLCBmaXhpbmcgcnBtc2cgdmlycXVldWUgYW5k
IHRoZSBzaHV0ZG93biBtYWlsYm94ZXMgaW4gdGhlICBTb0MgZHRzaSwgc2VlbXMgcmVhc29uYWJs
ZSBhcyBpdA0KcHJvdmlkZXMgdGhlIGRlZmF1bHQgZXhwZWN0ZWQgaW1wbGVtZW50YXRpb24uDQpE
byB0aGUgc2FtZSBmb3IgdGhlIGRldGFjaCB0aGF0IGlzIG9wdGlvbmFsIGFuZCBtYWlubHkgdW51
c2VkLCBJJ20gbm90IGZhbi4NCkFkZGluZyB0aGUgZGV0YWNoIG1haWxib3ggaW4gdGhlIERUIHRv
IG1hc2sgYSB3YXJuaW5nIGlzc3VlLCBJJ20gcmF0aGVyIGFnYWluc3QgaXQNCg0KPiA+IFJhdGhl
ciB0aGFuIGFkZGluZyB1bnVzZWQgb3B0aW9uYWwgbWFpbGJveCwgSSB3aWxsIG1vcmUgaW4gZmF2
b3Igb2YNCj4gPiBoYXZpbmcgYSBtYm94X3JlcXVlc3RfY2hhbm5lbF9ieW5hbWVfb3B0aW9uYWwg
aGVscGVyIG9yIHNvbWV0aGluZw0KPiA+IHNpbWlsYXINCj4gDQo+IFNlZSBhYm92ZSwgSSB0aGlu
ayBpdCBpcyBiZXR0ZXIgdG8gaGF2ZSB0aGUgbWFpbGJveCBkZXNjcmliZWQgaW4gRFQgYWx3YXlz
IGFuZA0KPiBub3QgdXNlIGl0ICh0aGUgdXNlciBjYW4gYWx3YXlzIHJlbW92ZSBpdCksIHRoYW4g
dG8gbm90IGhhdmUgaXQgZGVzY3JpYmVkIG9uDQo+IHNvbWUgYm9hcmRzIGFuZCBoYXZlIGl0IGRl
c2NyaWJlZCBvbiBvdGhlciBib2FyZHMgKGluY29uc2lzdGVuY3kpLg0KDQpBZGRpbmcgaXQgaW4g
dGhlIERUICggYW5kIGVzcGVjaWFsbHkgaW4gdGhlIFNvYyBEVFNJKSBjYW4gYWxzbyBiZSBpbnRl
cnByZXRlZCBhcw0KIml0IGlzIGRlZmluZWQgc28geW91IG11c3QgdXNlIGl0Ii4gSSB3b3VsZCBl
eHBlY3QgdGhhdCB0aGUgQmluZGluZ3MgYWxyZWFkeSBwcm92aWRlIA0KdGhlIGluZm9ybWF0aW9u
IHRvIGhlbHAgdXNlciB0byBhZGQgaXQgb24gbmVlZC4NCg0KUmVnYXJkcywNCkFybmF1ZA0K
