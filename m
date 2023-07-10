Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6087E74DF58
	for <lists+devicetree@lfdr.de>; Mon, 10 Jul 2023 22:33:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230335AbjGJUdV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jul 2023 16:33:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230303AbjGJUdU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jul 2023 16:33:20 -0400
Received: from mx0a-002e3701.pphosted.com (mx0a-002e3701.pphosted.com [148.163.147.86])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DAFA198
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 13:33:19 -0700 (PDT)
Received: from pps.filterd (m0134420.ppops.net [127.0.0.1])
        by mx0b-002e3701.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 36AK2X7k015074;
        Mon, 10 Jul 2023 20:33:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hpe.com; h=from : to : cc : subject
 : date : message-id : content-type : content-id :
 content-transfer-encoding : mime-version; s=pps0720;
 bh=5cepNOz6yOGc8HuKxkQ5Nh/H6UDF5xLEtPwfnrTAd+g=;
 b=P83z/OQ2ZGwsGNaejDGDigxGCBmF49i12aVmzZRTW7lWTug7PtTwD5XduvUPLOoJ+S1o
 n4UOrjbK3k2T4UXaBRPv8MHKKuNmft8RoW2AXwhywWSfxIu2vXRe93O0AzYTgjO3zw/t
 EEcOpwj7CnA3libSDcHd+NTmGKZFUAFxelCRUcSwnVfkMbD/wqwf++wWVqOtJxSbFanP
 ADm9dyHB004VM6lZGMi1/Rfr2p3SW8bf/mTzMR38vxewrVUrsAe2wNcnfiAud390H9dB
 VCgK7Ehxb6B2FdJ2wu7imV6+gim6nqx2jszcr007dC6Jj5QTDs5lfoZt22Um25eCV9Dy Ww== 
Received: from p1lg14880.it.hpe.com (p1lg14880.it.hpe.com [16.230.97.201])
        by mx0b-002e3701.pphosted.com (PPS) with ESMTPS id 3rrbmx6q3f-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Mon, 10 Jul 2023 20:33:09 +0000
Received: from p1wg14926.americas.hpqcorp.net (unknown [10.119.18.115])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by p1lg14880.it.hpe.com (Postfix) with ESMTPS id D651D800E86;
        Mon, 10 Jul 2023 20:33:08 +0000 (UTC)
Received: from p1wg14924.americas.hpqcorp.net (10.119.18.113) by
 p1wg14926.americas.hpqcorp.net (10.119.18.115) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Mon, 10 Jul 2023 08:32:51 -1200
Received: from P1WG14918.americas.hpqcorp.net (16.230.19.121) by
 p1wg14924.americas.hpqcorp.net (10.119.18.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.42
 via Frontend Transport; Mon, 10 Jul 2023 08:32:51 -1200
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (192.58.206.38)
 by edge.it.hpe.com (16.230.19.121) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Mon, 10 Jul 2023 20:32:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B0rWY+snic274Kxy0b0u9hwYx8naO5BM0YYsvTVe4AQf/l8abujSiKTSkN5ObeCrD9Bf9IC0V3zEl4wEEoMsrzd6tF2OTLy0TegM9pspZUNH1v/z2O9o1ePM+pLqD9O0osyWV5mT8n+jv+ZgLaIq3D3Df3uq9tk93R17hCmVpozgc24W4If0InGNcLNJdNfQerIHsx7+VsCHeRFRTOyZelV4SrgmRi5Af+klVl+74CuLI4CCduCeBRkhSuZb2JIhx64iWNNGv0kv7Y53uBTLqgoI7F5fU4W2UOf8ZmtGb2nWSHI7sT9uUEzWjj9hDo+P3S7k414zMWHHPWt5bw7hRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5cepNOz6yOGc8HuKxkQ5Nh/H6UDF5xLEtPwfnrTAd+g=;
 b=hWdtQFvjFCSYzCjaOH1JgWfIkEQjcFrU+envuPfYsakwMWCPiJf7Kkx1YAHoatdLonFDy942yPP6aU9psC9y9mLWkHFYlQHW7sCI8mQjKfaLtWk2RLIniynX2gfa4m98wo0BIjFRoAPDLcNRiJFTrw2khSUzKDPtpnoREpUmiFqvoALmemx9l9X/NyJYPUNGnRlIwXfNxK45Rjyvzo9yYOPJZtd7lg7g+e16BP9kdB5sjv5M2AObM9nc2HbLQOVs8VfWdS9RHng25xJNg6/oonWqjhD2Qb5xKTzWJI8DzevBHvau7+iGu710GOoQAw2XqOeHUhJeiYwEtZcOt5a16Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hpe.com; dmarc=pass action=none header.from=hpe.com; dkim=pass
 header.d=hpe.com; arc=none
Received: from DM4PR84MB1927.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:8:4e::10) by
 SJ0PR84MB1580.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:a03:432::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.26; Mon, 10 Jul
 2023 20:32:49 +0000
Received: from DM4PR84MB1927.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::1411:4ecd:1d0:5eab]) by DM4PR84MB1927.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::1411:4ecd:1d0:5eab%5]) with mapi id 15.20.6565.028; Mon, 10 Jul 2023
 20:32:48 +0000
From:   "Hawkins, Nick" <nick.hawkins@hpe.com>
To:     "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Query about Implementing Device tree for Networking on HPE BMC
Thread-Topic: Query about Implementing Device tree for Networking on HPE BMC
Thread-Index: AQHZs22x0TIHqbQL5USX1uFaoQJjnA==
Date:   Mon, 10 Jul 2023 20:32:48 +0000
Message-ID: <4D2BD944-7A50-4FB9-9156-A02C77E6338E@hpe.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/16.74.23061800
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR84MB1927:EE_|SJ0PR84MB1580:EE_
x-ms-office365-filtering-correlation-id: f3aa9d4b-9b74-47cb-aed8-08db8184d387
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: b0DUh1X6Oq+I7d+Qj7rNOW5l2pGpEgMlfNMROr0ydcJwnkS1kBYpJ6F8GWHzXLuuDXFJphjL9/q8TwNnQ8BFPOVjriQyg4JQTuXIFC4vgRqf2n/mVK6c+kuusKyZBXQtCy41s8BixTzOJ0iSgfsgZF8NuQFjLff7gL1Rm8nL2foa7soSe2OMxKRh0kn8OqQMxsmlkPQl0jEDUhN9IiN70HevoM4WaedwhpeI831SStzra1WzTCCzSzb6dsfRJIIDcn5NJhHj0mTwQ7/3kyUWZqA7f4kUCNCu/tlXpEuLKaRuoVCBR3FGXCZw16VdPkq25AJ09BJ0epo/rsTDUvKXEiY16GRJjrqPvAbtqmFcFTfdm1DTGM+NrnHzuWZ6EJiq1DEJCY0CUq666YPnAw8ISN6S9ydT7bmjOMMzhVu0P+Exha8dpzQdcy/tXaFNM8pQhZtQ8v/hxkMyT+RuoGmU4ufRF/M35UIhAvPBLpfiBIVtVXuqGAzfJ3NM6k3KWNV6pQLktKopTtmvOMPNgt5t7rv0DMWGCGrFr4MGDsMk1eX/2bYotXURabDgHclQu4X8yuBMOI2079jgYqs8sOQMFd+uqrXba5ZZtP/WMlPJCc2ng0zJBeWFvE70ZLEArOww90WgcGGPUow0WAIiO1L7/Q==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM4PR84MB1927.NAMPRD84.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(396003)(376002)(366004)(346002)(39860400002)(136003)(451199021)(38070700005)(38100700002)(86362001)(82960400001)(33656002)(36756003)(71200400001)(110136005)(76116006)(478600001)(6486002)(66946007)(91956017)(122000001)(186003)(6506007)(6512007)(316002)(2906002)(8936002)(66556008)(66446008)(66476007)(5660300002)(64756008)(8676002)(2616005)(83380400001)(4326008)(41300700001)(45980500001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OTZ5Mk5WcmRhNDlJWXA1endYdXlvcll3eTJ1OVVKTDJDOVJ6eHJ3RGJFMm5O?=
 =?utf-8?B?dWVZY1AzVGl4N2l0UVVHOC9TT1Z6aXpCTU1OZU5MWGtLZndiZkxLcVJlTjVB?=
 =?utf-8?B?SnF1dE9adHU0a2lvVm51ZW5tQW9hN3MwRFVDU1BrMGU0eTNOcFFyc0hRRVNK?=
 =?utf-8?B?dnA4U3d3bEZpWWlldFVDa1ZuYWtHekV2KzkyWmdobEdpQ1h5NmVXdDdYMUxn?=
 =?utf-8?B?cnpVR1p0WFN4Mml4bDJ0QS9PeFkvUW9JcU56Z0F4Sk0rU1NIY2UzZ3JLS1NK?=
 =?utf-8?B?Sk5wMmV1c0tFTUZDa1RENjgwYUh5YmtKMVJ4Z0JJcUY5VDcvZXhSTjdnandk?=
 =?utf-8?B?R1QyOG90anFXamkvY3RyTFplVE9XU2ZmSVN2UGZxblArWnJiSnlpdC9Ja2Yx?=
 =?utf-8?B?Qis0YXF3NWhqYll6Uk8zNGNtVG5VOGhJM0NDUmtZc2VPejZVakIxWDkzSDI0?=
 =?utf-8?B?NjNoSXFNUHpESE9RNnZKZDJ3OWVodTZ2QjFUQTdva2RjZGt4SFVoYU5pa2FE?=
 =?utf-8?B?SXhRZ3RjN0Q5WmNBbS9kaEpWNVFTbnl1a2lRbWVPL2xUQjR2K1gvZU9SL1Ux?=
 =?utf-8?B?ZVVtc2ZIUS9YWVBjN2ZHbHJFRlF0QjNIaDdWemFjYmdmeVJvejY4SkJtYlVn?=
 =?utf-8?B?ek5JUk5oNEMrZ1RmTnZZWDdLRnJLdG9ua1JTMnY0dG9ZTVl4SmR6WW9jMmhL?=
 =?utf-8?B?ODAzUVNNb0JNeGpvYVBoNVluVCtSSFZXWGRtS2kxVy90amx3V01JR3JyUFFK?=
 =?utf-8?B?aUxMekE2anp1czNtQmFVWCs4SlA2L0JiaW41anJ3TEI2VW9LTU9TcUpNOTdh?=
 =?utf-8?B?MVhkRFVzQlhqTkxzMEw4VWpncm1yN0NXQTJJL051SlZIRWVxRW9Yanc2ZE41?=
 =?utf-8?B?ZEt0TllBaUwzbVRQYWxnK2VVUjE0TUdseG9xdFFDb0x1Q1JMQ2N1SG0yNk9u?=
 =?utf-8?B?SjZRNjRkTER4aTVIYmIwN2wyNEE5MlRIOHI4NHM5MHNMWVNqZmtZOFA0eC9B?=
 =?utf-8?B?YjhSdHFSUTI1Z2xRTXlmci85bFl4UlVEdkVCcjNxRVpnZUtMV28zaTBmN0dQ?=
 =?utf-8?B?a1BjbWtmT2dWNGVNMk93U1lmdm0yNXBXWVhvbG9uYlFpdWNPUDhyemc2S3Vo?=
 =?utf-8?B?MUdrK1VhOTFVOFVtSWMrenJxTVhyTXpxVFExblRUOFpUOEd5Mkx2VGtCUXdW?=
 =?utf-8?B?L0pwbVhxYlFwa2FLMjdJQnhEaXh3S2M3VlhlaUFyMlVuS0ppNFJZcG1FVkUv?=
 =?utf-8?B?d3RQSkdXSXllNTE0eGZpS3BCekEwK3cwMC9PTDFLczhFNVlNTGhnQis4Zmdo?=
 =?utf-8?B?UG9rSkx4Snd2MGdydHZlcjQ2T3QxVndkUUszUjRpRzMxMFFiLzVKcjZtTnBO?=
 =?utf-8?B?Nnl2SUhNajhuZWhQNGpSU1hrWVI1MzFzeC9ZTFhoN0JuRlEvVnhoL29wUWRq?=
 =?utf-8?B?amZMaUI0RlRKTTdHZUZmenl2bzgzMG1ULy9JV2orSlNSb2NyVEZjbHlRclhW?=
 =?utf-8?B?cDNnVEYvcWVjVFFxYldDU2c0cG1JVVd0YzJISDc2eXRadTlhVjBsbnhFZEds?=
 =?utf-8?B?TU1kS3VsQlN4ZmhtQ2FSOXB1S2tHZ2hYVnEzc3JMaEZiYkxkODdZZDA5THI1?=
 =?utf-8?B?WVBzM0h2Y1ppM3JXZVd1TllsUk8xczdYQVFRM1UxMGJVR0xadUw4dmI4RGFo?=
 =?utf-8?B?ZkdPN2RkRXV1UmhtdUYzcXNRZFltTEZDekt6SUtKT3JWQWJ1K2xoUjJaZG45?=
 =?utf-8?B?SWNaOTkrSFdha0JzbTgzT1hGTW45Z0p2cHJ3UW0xZzZwOXF4cCs1K3F0akZv?=
 =?utf-8?B?WENReXVFUkV5dlEzTU5TdmV5WHZ2Qm55SGVBZDhEWUZBZU9oNUwwSjhYZzlm?=
 =?utf-8?B?a1lkV0oyeGcyeWdJeHR5QkVSVEorNTh2bWVUSkx5WHVYN3IrV0R1Mi9JeU5G?=
 =?utf-8?B?YXpsaUxYMHc1TDdhMzArb3ZwVldKVU9kNGlIM3FGbENUTE1PK1BGZy95TUUv?=
 =?utf-8?B?eXNJUGNpY25uRnpLUG1zcGVZMVYvQlhXdndQdVlxN0JCWUdaZVF0VC9GNlQ3?=
 =?utf-8?B?aTBCNzgwZHJpbFpXOFA1UGV1a1IzdjcveW1MZFVGa2g2WXVMSlZad2drdVpV?=
 =?utf-8?B?aU9vMmRDOHhrbE8xZXJBVHVFU0w4NHJ3RFBwMmNOdzhBTHRJOVkwbGlvNUR1?=
 =?utf-8?B?WHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2B299814D8DDCF4C84D84D470D4D89D7@NAMPRD84.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR84MB1927.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: f3aa9d4b-9b74-47cb-aed8-08db8184d387
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2023 20:32:48.7402
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fvV5bTeGfGSF7+cCf6HeL50p/2KM46OPK/zfZsAV4xT6+aKmhvu6Hb1it9q7pzGbOyWB8o7xm+0AAzWBKmpHBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR84MB1580
X-OriginatorOrg: hpe.com
X-Proofpoint-ORIG-GUID: JfzSNEp_1l42Gw0yHhA-KZ3YXTrcZCH4
X-Proofpoint-GUID: JfzSNEp_1l42Gw0yHhA-KZ3YXTrcZCH4
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-10_16,2023-07-06_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 clxscore=1031
 phishscore=0 spamscore=0 suspectscore=0 priorityscore=1501 mlxscore=0
 adultscore=0 mlxlogscore=672 malwarescore=0 lowpriorityscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2305260000 definitions=main-2307100187
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

R3JlZXRpbmdzIFJvYiBhbmQgS3J6eXN6dG9mLA0KDQpJIGFtIGF0dGVtcHRpbmcgdG8gZGVzY3Jp
YmUgdGhlIEhQRSBHWFAgQk1DcyBuZXR3b3JraW5nIGludGVyZmFjZXMgZm9yDQp0aGUgZGV2aWNl
IHRyZWUuDQoNCkhlcmUgYXJlIHRoZSBkZXRhaWxzOiBUaGUgR1hQIGNvbnRhaW5zIHR3byBFdGhl
cm5ldCBNQUNzIHRoYXQgY2FuIGJlDQpjb25uZWN0ZWQgZXh0ZXJuYWxseSB0byBzZXZlcmFsIHBo
eXNpY2FsIGRldmljZXMuIEZyb20gYW4gZXh0ZXJuYWwNCmludGVyZmFjZSBwZXJzcGVjdGl2ZSB0
aGUgQk1DIHByb3ZpZGVzIHR3byBTRVJERVMgaW50ZXJmYWNlIGNvbm5lY3Rpb25zDQpjYXBhYmxl
IG9mIGVpdGhlciBTR01JSSBvciAxMDAwQmFzZS1YIG9wZXJhdGlvbi4gVGhlIEJNQyBhbHNvIHBy
b3ZpZGVzDQphIFJNSUkgaW50ZXJmYWNlIGZvciBzaWRlYmFuZCBjb25uZWN0aW9ucyB0byBleHRl
cm5hbCBFdGhlcm5ldCBjb250cm9sbGVycy4NCg0KVGhlIHByaW1hcnkgTUFDICh1bWFjMCkgY2Fu
IGJlIG1hcHBlZCB0byBlaXRoZXIgU0dNSUkvMTAwMC1CYXNlWA0KU0VSREVTIGludGVyZmFjZS4g
IFRoZSBzZWNvbmRhcnkgTUFDICh1bWFjMSkgY2FuIGJlIG1hcHBlZCB0byBvbmx5DQp0aGUgc2Vj
b25kIFNHTUlJLzEwMDAtQmFzZSBYIFNlcmRlcyBpbnRlcmZhY2Ugb3IgaXQgY2FuIGJlIG1hcHBl
ZCBmb3INClJNSUkgc2lkZWJhbmQuDQoNClRoZSBNRElPKG1kaW8wKSBpbnRlcmZhY2UgZnJvbSB0
aGUgcHJpbWFyeSBNQUMgKHVtYWMwKSBpcyB1c2VkIGZvcg0KZXh0ZXJuYWwgUEhZIHN0YXR1cyBh
bmQgY29uZmlndXJhdGlvbi4gVGhlIE1ESU8obWRpbzEpIGludGVyZmFjZSBmcm9tDQp0aGUgc2Vj
b25kYXJ5IE1BQyAodW1hYzEpIGlzIHJvdXRlZCB0byB0aGUgU0dNSUkvMTAwQmFzZS1YIElQIGJs
b2Nrcw0Kb24gdGhlIHR3byBTRVJERVMgaW50ZXJmYWNlIGNvbm5lY3Rpb25zLg0KDQpJIGNhbm5v
dCBmaW5kIGFueSBleGFtcGxlcyBvZiBzb21ldGhpbmcgY3VycmVudGx5IGxpa2UgdGhpcyBpbiBs
aW51eCBhbmQNCkkgYW0gbG9va2luZyBmb3Igc3VnZ2VzdGlvbnMuDQoNCkJlbG93IGlzIHRoaXMg
cHJldmlvdXMgYXR0ZW1wdCB0aGF0IHdhcyB1c2VkIHRvIGRlc2NyaWJlIHRoaXMgYXJjaGl0ZWN0
dXJlOg0KDQptZGlvMDogbWRpb0A0MDgwIHsNCgljb21wYXRpYmxlID0gImhwZSxneHAtdW1hYy1t
ZGlvIjsNCglyZWcgPSA8MHg0MDgwIDB4MTA+Ow0KCSNhZGRyZXNzLWNlbGxzID0gPDE+Ow0KCSNz
aXplLWNlbGxzID0gPDA+Ow0KCWV4dF9waHkwOiBldGhlcm50LXBoeUAwIHsNCgkJY29tcGF0aWJs
ZSA9ICJtYXJ2ZWxsLDg4ZTE0MTUiLCJldGhlcm5ldC1waHktaWVlZTgwMi4zLWMyMiI7DQoJCXBo
eS1tb2RlID0gInNnbWlpIjsNCgkJcmVnID0gPDA+Ow0KCX07DQp9Ow0KDQptZGlvMTogbWRpb0A1
MDgwIHsNCgljb21wYXRpYmxlID0gImhwZSxneHAtdW1hYy1tZGlvIjsNCglyZWcgPSA8MHg1MDgw
IDB4MTA+Ow0KCSNhZGRyZXNzLWNlbGxzID0gPDE+Ow0KCSNzaXplLWNlbGxzID0gPDA+Ow0KCWlu
dF9waHkwOiBldGhlcm50LXBoeUAwIHsNCgkJY29tcGF0aWJsZSA9ICJldGhlcm5ldC1waHktaWVl
ZTgwMi4zLWMyMiI7DQoJCXBoeS1tb2RlID0gImdtaWkiOw0KICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICByZWcgPSA8MD47DQoJfTsNCg0KCWludF9waHkxOiBldGhlcm50LXBoeUAxIHsNCgkJ
Y29tcGF0aWJsZSA9ICJldGhlcm5ldC1waHktaWVlZTgwMi4zLWMyMiI7DQoJCXBoeS1tb2RlID0g
ImdtaWkiOw0KCQlyZWcgPSA8MT47DQoJfTsNCn07DQoNCnVtYWMwOiB1bWFjQDQwMDAgew0KCWNv
bXBhdGlibGUgPSAiaHBlLCBneHAtdW1hYyI7DQogCXJlZyA9IDwweDQwMDAgMHg4MD47DQoJaW50
ZXJydXB0cyA9IDwxMD47DQoJaW50ZXJydXB0LXBhcmVudCA9IDwmdmljMD47DQoJbWFjLWFkZHJl
c3MgPSBbOTQgMTggODIgMTYgMDQgZDhdOw0KCXBoeS1oYW5kbGUgPSA8JmV4dF9waHkwPjsNCglp
bnQtcGh5LWhhbmRsZSA9IDwmaW50X3BoeTA+Ow0KfTsNCg0KdW1hYzE6IHVtYWNANTAwMCB7DQoJ
Y29tcGF0aWJsZSA9ICJocGUsIGd4cC11bWFjIjsNCiAJdXNlLW5jc2k7DQoJcmVnID0gPDB4NTAw
MCAweDgwPjsNCglpbnRlcnJ1cHRzID0gPDExPjsNCglpbnRlcnJ1cHQtcGFyZW50ID0gPCZ2aWMw
PjsNCgltYWMtYWRkcmVzcyA9IFs5NCAxOCA4MiAxNiAwNCBkOV07DQoJcGh5LWhhbmRsZSA9IDwm
aW50X3BoeTE+Ow0KfTsNCg0KVGhhbmsgeW91IGZvciB5b3VyIGhlbHAuDQoNCi1OaWNrIEhhd2tp
bnMNCg0K
