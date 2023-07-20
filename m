Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C66C375B8AB
	for <lists+devicetree@lfdr.de>; Thu, 20 Jul 2023 22:22:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230200AbjGTUWi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jul 2023 16:22:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229653AbjGTUWg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Jul 2023 16:22:36 -0400
Received: from mx0a-002e3701.pphosted.com (mx0a-002e3701.pphosted.com [148.163.147.86])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4FBD2729
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 13:22:34 -0700 (PDT)
Received: from pps.filterd (m0134422.ppops.net [127.0.0.1])
        by mx0b-002e3701.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 36KJ6DbN022078;
        Thu, 20 Jul 2023 20:22:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hpe.com; h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=pps0720;
 bh=lMrG7fDCLIboUKLaulPPD4JzB3iUNfMU52XdxAqDXdY=;
 b=gy4hIv49jC5tHPKKzx1O+3fUxw2ojjAQr70ySKkZB0ciLU0m/1cB15kP4Tz8s47dPoFH
 esxMcBKRiJ7/PEXjVxqJSDgtk3v7/4+lrR8UafOIPuwpDf+BfZfLfMJzftWQXTlL5Y2g
 VPJoMgPv3Gpv594A7UzsW9DWCs/mwOikuiECU3ABu4TmsTK/w9szHGMkc8y9y9Va/TdX
 JVvvSJ/6kMqA7G5zbxLWFpCI+wXKtkWeK21L/DQXuopc9oQj8RdTzEazpOH/AWP8oUw8
 1va/5iAa/IrC75H0waVkA+olxc+qVrFE97wX2tcj5lTD7DKGF3+YH3aLzWs5y5eG5aJn pA== 
Received: from p1lg14878.it.hpe.com (p1lg14878.it.hpe.com [16.230.97.204])
        by mx0b-002e3701.pphosted.com (PPS) with ESMTPS id 3ry1bmp0eq-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Thu, 20 Jul 2023 20:22:25 +0000
Received: from p1wg14925.americas.hpqcorp.net (unknown [10.119.18.114])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by p1lg14878.it.hpe.com (Postfix) with ESMTPS id 93DAED2CA;
        Thu, 20 Jul 2023 20:22:24 +0000 (UTC)
Received: from p1wg14927.americas.hpqcorp.net (10.119.18.117) by
 p1wg14925.americas.hpqcorp.net (10.119.18.114) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Thu, 20 Jul 2023 08:22:24 -1200
Received: from p1wg14920.americas.hpqcorp.net (16.230.19.123) by
 p1wg14927.americas.hpqcorp.net (10.119.18.117) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.42
 via Frontend Transport; Thu, 20 Jul 2023 08:22:24 -1200
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (192.58.206.38)
 by edge.it.hpe.com (16.230.19.123) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Thu, 20 Jul 2023 08:22:24 -1200
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gIFNl/Wo+Rfifoze0gv6PZ37lHXILBNOl2bdUkyKF7IjPqjt7/nbBLvguWY+WFmKojR2W3/6CZQZRBdcqSXySE/w9rL447ihWytlGf0aiwaQyeGrP3eYy0/rBlqpL0bU5kzNqRhNLo27OkaYeTqB2rH9jnx2ulcYDDO8zajbDXrGreQF8MGzsd3gLNqIc56zUdO2YD2UX6jZObOTqxs2hUCJranFlRpSCpVWLj7uJWlpceXZA7OT4UKVGgnWiI5fxNtlhizUZDae6t4SlmAQ2Mw2PmL/ZUPM1lsYzEqKsYo52YKflCdCkSgQfoyGj9cL+7uAePLIjH/iRXCiuegRrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lMrG7fDCLIboUKLaulPPD4JzB3iUNfMU52XdxAqDXdY=;
 b=AmmDwiGhClJpkK1BQfXnw3dv6YnT5ZmyqcffYWVahyZv0qqghl9sYoMAJs1tNQFe3bQDANjN+rsfGWIIJcH40Bz1DmTiLLoBrx8vkVNpVRtlNRpUsjQTRQlQmDhyyaio6zmpWg4eaGvHdCudF6YVmDh6/+JuHQM6MHTnI187buqkFpiFyqQ71O7oD03EzWn0bpdDNW0eg2MxQK87M8lY87ddciQfHqd2x2nTOuULdHogkAnUp42FOis5nYVdNnqVpiMYlsG///kzuu5j7PwleNvZtxhAbCLzxrtCMMViKrcFb+xqE9ZonRr4VwAnof8IlY/HmpFxI7kBXDY/HCHOsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hpe.com; dmarc=pass action=none header.from=hpe.com; dkim=pass
 header.d=hpe.com; arc=none
Received: from DM4PR84MB1927.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:8:4e::10) by
 DM4PR84MB1397.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:8:48::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6609.24; Thu, 20 Jul 2023 20:22:23 +0000
Received: from DM4PR84MB1927.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::20b7:769e:3974:f17e]) by DM4PR84MB1927.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::20b7:769e:3974:f17e%4]) with mapi id 15.20.6588.031; Thu, 20 Jul 2023
 20:22:23 +0000
From:   "Hawkins, Nick" <nick.hawkins@hpe.com>
To:     Rob Herring <robh+dt@kernel.org>
CC:     "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: Query about Implementing Device tree for Networking on HPE BMC
Thread-Topic: Query about Implementing Device tree for Networking on HPE BMC
Thread-Index: AQHZs22x0TIHqbQL5USX1uFaoQJjnK+/8cuAgALjTwA=
Date:   Thu, 20 Jul 2023 20:22:22 +0000
Message-ID: <BFCB4264-C714-4E98-AA8F-72F2D1BD085D@hpe.com>
References: <4D2BD944-7A50-4FB9-9156-A02C77E6338E@hpe.com>
 <CAL_Jsq+FhtGj4qyiQNA8+ykv+2DMxQHuT_joS1jVB17kDby_ig@mail.gmail.com>
In-Reply-To: <CAL_Jsq+FhtGj4qyiQNA8+ykv+2DMxQHuT_joS1jVB17kDby_ig@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/16.75.23071400
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR84MB1927:EE_|DM4PR84MB1397:EE_
x-ms-office365-filtering-correlation-id: e6dd7c0b-06e3-4b35-94d3-08db895f06ad
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: u0iBU1HzSsRNDfZrRC/vJhMz0uyVlJ++DcpcOoQKosCFlUHccJ8lmHKPzxdAH2rupuBjwGUtVifi3bP992Fwuv0kiaBFmILrMJj95Jy51PMskBQKXMrjFhj8JwRcX1fR52yXkO0ac8oc27d0Qtfzul9LW9M1GPnPQVzsYBf3u4Ergohhd6CcyvOhZyEKpI1EdvwcUhTsOTWUm0RGWnn3JCFlRB6l0hWlht6f5iLtpBcDaKvJ4hxEF8HYskrjNjWeGaqThmwG2J45hVP/jahqMe45a4r9/KGv9BIvAnDoINRP5CndyDAw9b7BT9G2/H0/lUpLh8QdGGPlVRaLpPafge0oRm0ORglt4KIC7aqaGNoeI4c4M6BdbAVQ+fjz7EGsRYyJeSNqvVoS7XPIXTrDWEPNaGXvGMhopo1KHxhXemIfsfN1bzMv/Nlol63yad+rkTfAlW4e7wydMC0ddqLxHxwc76Rw23zOLT5NceQy7ASPdSyt0x6ywZvbJfFQdowDrnpEAQQprjgTBnTU8CW1UuVFIwcHC6HcY/2fOykrD6GMF8nQ2LGrQsDERd53AZnhHqomUVOXJ+I0GgXJ/5IPyd8KgmiFhUka9+qFIENjzuffq9yN/eQqeo8l+yln00Uz5yDIY1A7fDe0X0wcM2DRrA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM4PR84MB1927.NAMPRD84.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(136003)(396003)(346002)(39860400002)(366004)(376002)(451199021)(86362001)(478600001)(38100700002)(186003)(41300700001)(71200400001)(33656002)(4744005)(54906003)(8936002)(8676002)(4326008)(316002)(2906002)(122000001)(6512007)(64756008)(66556008)(66946007)(66476007)(66446008)(6486002)(38070700005)(82960400001)(6506007)(2616005)(76116006)(36756003)(5660300002)(45980500001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MHI5NC9pMlhZWnJHb2R5UVFCSUJDT3dVajd5cnM1Q3NyNGczdzlYT1ZqeVRE?=
 =?utf-8?B?b0h4WnhNM3ZFSk5xRmF6SEdPaExWV3B0WkdwUy9pdk1vZFE2bm5Wam52OEU5?=
 =?utf-8?B?ZEpNWVJ3VUNRU09aeGlBT25TWjhVRkdqV3lpTTZ6Tm1ZSk5xZWZ2LzFJclZi?=
 =?utf-8?B?aHN4UGNZdlFsYUhkTjh2TEY5Z1RkSHlaZWhTOHdzSnZTdVY3N3lIRGZEVGpT?=
 =?utf-8?B?UGd0ZzcvZGVqM3UyaEFYcnc1RzR2UjZuMnlDeU5Ickc2REtqbW1PYkRUQmN1?=
 =?utf-8?B?emZpdHBQOWRhRjA3OWZobkZ1YkNSblFTYkFRcktiMkV6TjNzNHpMdWRzTTcw?=
 =?utf-8?B?UVpsS0dtekFtU2pZdDdUd3VRd2Z2TndsRWR4UnJWQTVYdmFGRFVTc0VRVXhJ?=
 =?utf-8?B?OC9RQVd6TWVGOTI5bWpsWENzVmVsdFFmMkVKUHBuZTFqUEgyb1RhL1JTSzZj?=
 =?utf-8?B?YUo4Nk9KdWpVMkxuRVhwOGlmbG9sL0I5N0FFdnZJQXprOUtWeDFjWFR1bzV2?=
 =?utf-8?B?Q2tzZFdGcmloT0krM0VyZndIOWEyL0FYOURaWE5la081Y0FER0RsMjEwazBL?=
 =?utf-8?B?UkM5ZFE1RG1qeVhyTVorUFRDQzE2OVZYYzN2ci9wbyt4VTNickF4MHJpTy9i?=
 =?utf-8?B?cmtZRGRFdWsxL0M4NU1sUkl3THlpVmIzTVdhUDhvNVhvaDNPbHY1RCtxV1ht?=
 =?utf-8?B?TE9tM0UyWjlzZWExWjFPUGc2WHdkTjVtQTkzNjg0U1Yxd01QUnZIK3RHZTZX?=
 =?utf-8?B?K3JtYnlrT0ZDOU5WMElnZTlzNWxqUUpIaHhYMnlhZ08rWHBXanVpclNuenRa?=
 =?utf-8?B?cWRBY3BpTzNJTCtVek4wVnZ0OVE0a0lPSHp3bVZYbFVpbW5GbWY3eitmNnZM?=
 =?utf-8?B?WURzbHZmbStTdDJtbSt5Y0ttS0M5OXU3NTBoSE4xYkxQUkVoQXZaS1B0N1FP?=
 =?utf-8?B?UWlGOW95L0p1WEFha3p5M05nNkw3a1I3WTdKTnQxWi8vekhUSG1ZSDg3SzRR?=
 =?utf-8?B?Y2dadFIxU3kyeUxsellWaVVFME5YMTFyU2xlTE1EVDZtVzVucmRiQllOVkx3?=
 =?utf-8?B?SmZGZGRxNk9WV1FKOG4xVmRINDZ1NnJxSWN1ZUlqTVpWMGtXaFJTM29kMG55?=
 =?utf-8?B?RnF0SjhndGpFS2oySnFrclNkdmo0dSszTWdaOGV4Z2hiNEVGY09QSyt6TEI4?=
 =?utf-8?B?OFpydGFTaDhFa0lnWlNtbVJjVXNETTErR0p5SDY4RXpoMU00cWNYcjJhajJQ?=
 =?utf-8?B?b2xjcGhBMFViZlRVV05JT0hQVFdPaE5HNVgrT2Z2b0NNRU1hVW5DbHVDYjRN?=
 =?utf-8?B?OUhuYmdDZ3RvSlBrQWgxK2czc1I1dElHY3JyeHYvc2NxRGM4cStKelJwU2sr?=
 =?utf-8?B?SzIzSjNhOHpmSXhhQ05jU0dZZW1kNHdKcUhPMkpzazM4NnlMRmczb2VkRUdM?=
 =?utf-8?B?QUN3TkhTUklNTE1EV1NQbUdKYTFlV1o5bXFORTh4M28zOFNBNlA1TGh2aHNi?=
 =?utf-8?B?dnZNdUFOVFI4YTFXcWttUUhCRTU5UloxbzBOdEJJbDVWWTZHYi9EVndxdHFR?=
 =?utf-8?B?TCtpWXoyd04vbUdGa1VhWXoydW9tRTllMGNmMU5JU3dPZ1hRbDl4WjFvV1Fy?=
 =?utf-8?B?aVhYcjRJMDdzTU92TXRlSi8vUkNxZkJPekR5aVhpME82b3lQNDcxTTJRRENa?=
 =?utf-8?B?S1hocTNTRFpSeVQyT1dHdDdHcTFuRm9qT3ZrcWlTU3ZCWWg0Z2E3ZWp0UXhr?=
 =?utf-8?B?cnlFN1IvMEUrSElHWUVxVWNmZGlIRm5leVlvZUMxK1Q5RFJycTNKaFNpUU9j?=
 =?utf-8?B?cElNSlhGcGtoa2xiVld0UHlPNVdtVmFHbEV2ZDhHOVNZckZ5K1VzZUpRTnBk?=
 =?utf-8?B?UkdEZGtuN0pkRGRJdkN2VkJPeENJcEJwNWhrNytXQWJlY0pTUnNuWGRXSXF1?=
 =?utf-8?B?RncvWTVEZEptWVVsNXBNOU1ZT1RoTzBObUFROFVVdjdZWW9lcnhMVGU3Wkd0?=
 =?utf-8?B?aGhzaXVGY1ZVTmU3UjJ5RGlCYWpHOGdNMndrTzFpcThHS3pacHNnam5CYTZh?=
 =?utf-8?B?ZDBmTmZ1SkxsaGw1RFBYNURNbExjcDljSjByTmE1QmpLeXlnZ25WSTAwenB1?=
 =?utf-8?B?VlZkbjFaQVovWGtQamxuZkxMTUlZNkJCUTljUVBqdDN2UU5Na2svV24ybGx5?=
 =?utf-8?B?Nnc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2C3CDE6192D84243B506FF195C9B2031@NAMPRD84.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR84MB1927.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: e6dd7c0b-06e3-4b35-94d3-08db895f06ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2023 20:22:22.9743
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: niwkW1sQ2pmJ9mwdE3ZP7xA4intLfQKi4UKdzMBhcEKrKTEqniAhDmWCjQgPzeP4/gn9acEszVcz+/ZuUdjtXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR84MB1397
X-OriginatorOrg: hpe.com
X-Proofpoint-ORIG-GUID: rpaRn-_f-oaL9TKH12_3GbLTvFJWfdlN
X-Proofpoint-GUID: rpaRn-_f-oaL9TKH12_3GbLTvFJWfdlN
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-20_10,2023-07-20_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 mlxscore=0 spamscore=0 lowpriorityscore=0
 priorityscore=1501 phishscore=0 adultscore=0 clxscore=1031 mlxlogscore=591
 bulkscore=0 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2306200000 definitions=main-2307200172
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SGkgUm9iLA0KDQo+IEFyZSBib3RoIHBoeXMgdXNhYmxlIG9uIGEgZ2l2ZW4gc3lzdGVtPyBJZiBu
b3QsIHRoZW4geW91IHNob3VsZG4ndA0KPiBuZWVkIHRvIGRlc2NyaWJlIGJvdGguIE90aGVyd2lz
ZSwgd2UgY291bGQgYWxsb3cgJ3BoeS1oYW5kbGUnIHRvIHRha2UNCj4gbW9yZSB0aGFuIDEgZW50
cnkgaWYgd2UgZG9uJ3QgYWxyZWFkeS4gVGhlbiB5b3UgY2FuIGRlZmluZSB3aGljaCBlbnRyeQ0K
PiBpcyB3aGljaCBpbnRlcmZhY2UuDQoNCkFmdGVyIHNvbWUgc2VhcmNoIEkgd2FzIGFibGUgdG8g
ZmluZCBwbGVudHkgb2YgZXhhbXBsZXMgb2YgbXVsdGlwbGUNCnBoeS1oYW5kbGVzIGluIHRoZSBz
YW1lIG5vZGUuIFVzaW5nIHRoYXQgSSBwcm9kdWNlZCB0aGUgZm9sbG93aW5nOg0KDQp1bWFjMDog
ZXRoZXJuZXRANDAwMCB7DQoJY29tcGF0aWJsZSA9ICJocGUsZ3hwLXVtYWMiOw0KCXJlZyA9IDww
eDQwMDAgMHg4MD47DQoJaW50ZXJydXB0cyA9IDwxMD47DQoJaW50ZXJydXB0LXBhcmVudCA9IDwm
dmljMD47DQoJbWFjLWFkZHJlc3MgPSBbMDAgMDAgMDAgMDAgMDAgMDBdOw0KCWV0aGVybmV0LXBv
cnRzIHsNCgkJI2FkZHJlc3MtY2VsbHMgPSA8MT47DQoJCSNzaXplLWNlbGxzID0gPDA+Ow0KCQlw
b3J0QDAgew0KCQkJcmVnID0gPDA+Ow0KCQkJcGh5LWhhbmRsZSA9IDwmaW50X3BoeTA+Ow0KCQl9
Ow0KCQlwb3J0QDEgew0KCQkJcmVnID0gPDE+Ow0KCQkJcGh5LWhhbmRsZSA9IDwmZXh0X3BoeTA+
Ow0KCQl9Ow0KCX07DQp9Ow0KDQpJIHBsYW4gdG8gc3VibWl0IHRoZSAueWFtbCBhbG9uZyB3aXRo
IHRoZSBkcml2ZXIgc29vbi4NCg0KVGhhbmsgeW91IGZvciB0aGUgYXNzaXN0YW5jZSwNCg0KLU5p
Y2sgSGF3a2lucw0KDQo=
