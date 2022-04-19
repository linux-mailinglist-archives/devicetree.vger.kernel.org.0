Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB3D2507222
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 17:50:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231295AbiDSPx2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 11:53:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235771AbiDSPx0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 11:53:26 -0400
Received: from mx0b-00128a01.pphosted.com (mx0b-00128a01.pphosted.com [148.163.139.77])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77E5B1DA6D
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 08:50:43 -0700 (PDT)
Received: from pps.filterd (m0167091.ppops.net [127.0.0.1])
        by mx0b-00128a01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 23JFlrvB003676;
        Tue, 19 Apr 2022 11:50:39 -0400
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2172.outbound.protection.outlook.com [104.47.57.172])
        by mx0b-00128a01.pphosted.com (PPS) with ESMTPS id 3ffqj90xwr-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 19 Apr 2022 11:50:39 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FL2Fdlip6xkEfilrGThcOtHHqM0kUGHOWg9C86Q4heqZRLp8/oaqdY4vAiieGbBJuMi7O4Xij8/rappizC99ZAkBgS3W11GcIp5jAv3UtYFq2jqJf4p4uTdTOl0BgruCNQb58jQ8hRjD2cceiirOO5uApYaqjYeksxluHiQf5Oxk+JDJeeZCJ0HwVWhO8o0TAivwXa3Cdz9Gb1gAbo46nLRHRMspKIZV5NfwAuNYJyAYORWq3j9wl0s/wRqzbxKWzGrneTgIXVROyZyO3PxRGYBtlaUEV1xFjJVVx8c/KDhNHdIDp5JC+BH3yFIVCkR3JAMQbNXB2DttEnBK5v8JlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i8iG8MJr04hkyURhPTg0kMp4jDpcVlkpwY8g78eMGpg=;
 b=cyMFfNZJCFe7qyhnL2sCuWW4humVhpsYXwwj0xKQ8bswmlE9Ise0IDMsTGE4cyT0fp4ioWDWxK44tIksLe4igUcRoUjdkaDl1iZc2/gnxMqPLXIXXhsiOsLF3xtGcZLUmNQs2FJPdjToPqPpz+WxR/fueOvwOX4Z6ujgV4Eo4KzlTTrmBkiPrGtjxzDf3nozQH5DOHwifxVVR/cR+0r/Hn7o/Df4GeAiHnNDMb7YIYhO3oGqO9dbVq8IOQmDRJFFR2JTNSyWp2NtWe3hPxdjh1nvNfesXiZP3ddhM9TUbsqkJVEI1uYLb2f9BTkIlQBY2QoVplVDhV7w/bJRkwy/3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i8iG8MJr04hkyURhPTg0kMp4jDpcVlkpwY8g78eMGpg=;
 b=9ioXUI+fA0tIpc+lBHdnCQnVo4Y+ndMGEt9gYKPKQ5cU8o2aTqmCoP1EypZsNqtJKtmanN7BdRpfFW6MkhlKXXjayJTHOdpcxJEXaq5kG320KNEvEbgT5NMYNX5lKtBTAN8eV+47j0ZlYLmtY+ru+RKywxcVl2CRDF204XnNW5M=
Received: from PH0PR03MB6786.namprd03.prod.outlook.com (2603:10b6:510:122::7)
 by MWHPR03MB2832.namprd03.prod.outlook.com (2603:10b6:300:125::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.18; Tue, 19 Apr
 2022 15:50:37 +0000
Received: from PH0PR03MB6786.namprd03.prod.outlook.com
 ([fe80::a97e:a520:c3a6:d2ae]) by PH0PR03MB6786.namprd03.prod.outlook.com
 ([fe80::a97e:a520:c3a6:d2ae%9]) with mapi id 15.20.5186.013; Tue, 19 Apr 2022
 15:50:37 +0000
From:   "Sa, Nuno" <Nuno.Sa@analog.com>
To:     Frank Rowand <frowand.list@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
CC:     =?utf-8?B?TnVubyBTw6E=?= <noname.nuno@gmail.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
        Alan Tull <atull@kernel.org>
Subject: RE: [PATCH] of: overlay: do not break notify on NOTIFY_OK
Thread-Topic: [PATCH] of: overlay: do not break notify on NOTIFY_OK
Thread-Index: AQHYSE9MEr+Wu1Tj6k6GDju80HPvFazg6lAAgBZ5sICAAARhgIAACR6AgAAIMNA=
Date:   Tue, 19 Apr 2022 15:50:37 +0000
Message-ID: <PH0PR03MB6786E0D39BEE3463B3F3141599F29@PH0PR03MB6786.namprd03.prod.outlook.com>
References: <20220404074055.95618-1-nuno.sa@analog.com>
 <01e77fbd-5c26-6b15-be1f-f962aa4190c6@gmail.com>
 <9bde64d0c05a37e72fabbeb39d8d2fe099526917.camel@gmail.com>
 <654db7b8-1254-88e9-f668-b1b14abc3e3e@gmail.com>
 <CAL_JsqKjuOEdzB4SH6MB0bH58D5ys3RLhi=T8DhWQRuwMhbJOA@mail.gmail.com>
 <c3e31c55-01c2-5784-1e97-5af083c1a0c1@gmail.com>
In-Reply-To: <c3e31c55-01c2-5784-1e97-5af083c1a0c1@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: =?utf-8?B?UEcxbGRHRStQR0YwSUc1dFBTSmliMlI1TG5SNGRDSWdjRDBpWXpwY2RYTmxj?=
 =?utf-8?B?bk5jYm5OaFhHRndjR1JoZEdGY2NtOWhiV2x1WjF3d09XUTRORGxpTmkwek1t?=
 =?utf-8?B?UXpMVFJoTkRBdE9EVmxaUzAyWWpnMFltRXlPV1V6TldKY2JYTm5jMXh0YzJj?=
 =?utf-8?B?dE56STJPVFkwWmpFdFltWm1PQzB4TVdWakxUaGlaR1l0Wm1NM056YzBNakZt?=
 =?utf-8?B?WTJGbFhHRnRaUzEwWlhOMFhEY3lOamsyTkdZekxXSm1aamd0TVRGbFl5MDRZ?=
 =?utf-8?B?bVJtTFdaak56YzNOREl4Wm1OaFpXSnZaSGt1ZEhoMElpQnplajBpTVRVMU15?=
 =?utf-8?B?SWdkRDBpTVRNeU9UUTROVGN3TXpRME1EVXdNalV4SWlCb1BTSlNhR053UkhN?=
 =?utf-8?B?MFNtNXJibUY1T1ZkWk5ERnBhM2xvVFhvelpGVTlJaUJwWkQwaUlpQmliRDBp?=
 =?utf-8?B?TUNJZ1ltODlJakVpSUdOcFBTSmpRVUZCUVVWU1NGVXhVbE5TVlVaT1EyZFZR?=
 =?utf-8?B?VUZGYjBOQlFVSk1lbk5CTUVKV1ZGbEJVMmxTYW5CTEswdEpVSHBMU2tkUGEz?=
 =?utf-8?B?STBiMmN2VFVSQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCU0VG?=
 =?utf-8?B?QlFVRkVZVUZSUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJSVUZC?=
 =?utf-8?B?VVVGQ1FVRkJRVlpKUlhadlVVRkJRVUZCUVVGQlFVRkJRVUZCUVVvMFFVRkJR?=
 =?utf-8?B?bWhCUjFGQllWRkNaa0ZJVFVGYVVVSnFRVWhWUVdOblFteEJSamhCWTBGQ2VV?=
 =?utf-8?B?RkhPRUZoWjBKc1FVZE5RV1JCUW5wQlJqaEJXbWRDYUVGSGQwRmpkMEpzUVVZ?=
 =?utf-8?B?NFFWcG5RblpCU0UxQllWRkNNRUZIYTBGa1owSnNRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkZRVUZCUVVGQlFVRkJRV2RCUVVG?=
 =?utf-8?B?QlFVRnVaMEZCUVVkRlFWcEJRbkJCUmpoQlkzZENiRUZIVFVGa1VVSjVRVWRW?=
 =?utf-8?B?UVZoM1FuZEJTRWxCWW5kQ2NVRkhWVUZaZDBJd1FVaE5RVmgzUWpCQlIydEJX?=
 =?utf-8?B?bEZDZVVGRVJVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCVVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVOQlFVRkJRVUZEWlVGQlFVRlpVVUpyUVVkclFWaDNRbnBCUjFWQldY?=
 =?utf-8?B?ZENNVUZJU1VGYVVVSm1RVWhCUVdOblFuWkJSMjlCV2xGQ2FrRklVVUZqZDBK?=
 =?utf-8?B?bVFVaFJRV0ZSUW14QlNFbEJUV2RCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFrRkJRVUZCUVVGQlFVRkpRVUZCUVVGQlFUMDlJaTgrUEM5dFpYUmhQZz09?=
x-dg-rorf: true
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fce61a4a-6bef-40be-4bd7-08da221c5913
x-ms-traffictypediagnostic: MWHPR03MB2832:EE_
x-microsoft-antispam-prvs: <MWHPR03MB2832EF147FD603D3F31A096199F29@MWHPR03MB2832.namprd03.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +GZlICNRyW/GGDk5f5m18+H9bw+T4VCG8XuYYbjSE7QTfFFJiwxF+oKeLbDfgygwmddq4J0lE1oAM3JtK6Ksy0OysVhmMV8pgMFC65ajoxzb6idIk7kGPjp6PLPTimcqLbIxffEdPKL5ynDebV3gEL7vsFB2F+BI85LbtvVvwP2Q7bIz1XsKF300PnULHVHMJoqtNV7Ec+5afrMCh2tSlcK/bfdct8/O03J8OHFIQVX9F/a6zf0gLl3PpSeI4bUJ8mHWSzZUFurciuI+J9FHleM8YLR0NtDNs3IRMvAHxySUk2kRPb0VSM1yS0sVQJQWF58OBg1hhhp0NNTMatDcbtX8FZcJXCeQ6DwsjBY59T0ZcSC4Sy4ObcXvw7pFWlVsqWV16Tqh4QdN1AuqY4t4TE5pvCa29hGsQmmgeF1BdAauy4pXHKSveJGgnXZhvZ3pmFJywoiG+cDGybnBO/lugnevl5KtHmVGaMehKNdw55HIThlJhZQp6NLPzoO0w3hvAWBNvBGwIYEKzCgK5EGg81arNx/hiiG5aFb70mYv3CStjxkylnmS4wb+nViL+RDOFaKkfDsUq46jQ2OIgfxf+JW6QbZRT4oIwzyISdOP1dtR66mAYF8QuI/N6FjRCbq8Sf6Ogc5vO+qw7ZpSreopa1lP1WLEzpXlbje8Mu45l0d5y2Vn9xym0JeAKmLA7tY05rIZPU7daCcCC7KUNkVWUQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR03MB6786.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(4326008)(66946007)(76116006)(66556008)(55016003)(186003)(66476007)(66446008)(64756008)(54906003)(110136005)(83380400001)(9686003)(8676002)(71200400001)(53546011)(6506007)(2906002)(316002)(33656002)(86362001)(7696005)(508600001)(5660300002)(8936002)(38070700005)(38100700002)(122000001)(52536014);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ajBsMDh4bE5JaUhKdWxkRDlsSXI2d0thRW1rSWlHUzFYbzdDNE11QmZCVUNN?=
 =?utf-8?B?VGhNZktxeUt6eFBDUklXMzkxZVQ0ZG9RVDdxOEJIekUvOXl6L0dWUHgvTGoy?=
 =?utf-8?B?SGxEU2IyM3BFRDhIY0VQbGkrV1Y0a3ZOU1ZaUk0rYUp1WGVla2FuRGMwc2Nw?=
 =?utf-8?B?MG1vbGpxQTNLUEpDK3pkOERxNU10d1UyVWMzSWM0NGhybzEzK2lBR2VicVQr?=
 =?utf-8?B?Mmp6d2pabDhNeURLTmdWbG1KNlQrNllkVVdIQ0VLaHNZWWFDWGk2THplV0xq?=
 =?utf-8?B?TGhObkVxa3Z0L0J0Mk1zRU9UbWVmc01LdjhycHBDYWFPQzhZSlVZaGVxTSt4?=
 =?utf-8?B?Y2dMQlNReXNkVDdYU2xWakdwWVB5M3VxZGRKUlZ6QzNtdlhEUjUrei9OanI3?=
 =?utf-8?B?eUtuMk9PRWkzZlFHYVMva1F2ZDJ6RHJHeDdxNFlZNWhNM3ZoRkJlL3kyd0pL?=
 =?utf-8?B?SUtwTlArQnViczJ4MDBhWWdaYmRpQk1zWnNySlM0RGtpbnUxUWE5SWpuMzJH?=
 =?utf-8?B?ZUZqYWxLOThWaFcvdFU2RFcwSUtpVXRUQW9GNEdKQlhDcnlwd2lLMWlya3E1?=
 =?utf-8?B?ZU5rb3p4TGZLZmZMRk1qeG05aDJnVHhMK0FiL1BVU1gxa3crb1M2aVIvMlNi?=
 =?utf-8?B?Ky9ocWV4Mkp4V2o1anJGM1h1cVpuRnpTQ0MxbmxKalNIQ3lTOUtRVlVpNlBo?=
 =?utf-8?B?anBjSVZhekxPcjJkWDV6YzUrWnI0Mzg4VUN2YjB4ZmJrY3RvYzR1RVR5Y25O?=
 =?utf-8?B?UFFkSXFTNTBvWGEvTFh5V09UaGRhRWtQZlM4elNaSDRyekxaalEyNlB5bFd2?=
 =?utf-8?B?dGRIOXR0bU13NHRXWTRBQ0t2TWhzUVVjOGxTT2xXZEhRRkNIRWg5bFN3SWh0?=
 =?utf-8?B?dVZqRkVWT3F2OG1OOHIzUGxXL09udVoxR2xpZ0xRUTFSZ1JMbDdqbE1VMjlV?=
 =?utf-8?B?V0w1ZGEvRVJtaE5vVWVmOVIvcGNzYVRMRWdzRzNsZ1o5QlJ2ek1haGlJbllY?=
 =?utf-8?B?YUlMa2QzWXU1WE11ZWlPeFhJVkJuanJicmxKMjBKZkhxNUYrT1o4ZUp5azFD?=
 =?utf-8?B?Y3JjOXd0bmc4MHJJRFpqOEJPRWlBUlR6Y0lJWERZZHRQQWZqRlRmbE1NWHM5?=
 =?utf-8?B?aEtaMXdBdHB3ZmllU0JLWlJJdFpZZzZnbWdFT2g5OU55VE9rTHdtYm9lTGtQ?=
 =?utf-8?B?ZWlUbmZBdWIzcDVlNTJybGlLTUh6RTNjL3lPWUkxaThLa0ZSL3dta3RrcnRo?=
 =?utf-8?B?cHJXUXJRaFYzRTVPaXBhWGdDbStaZWNvWDVaRFllZUZPTXBpMmlWUUdmQkVS?=
 =?utf-8?B?UGlXSlB1VnFjOHZxcWdDTkpOUEJvVExwcjBIMzAvZTJCcy8vaWlGWW01eHYx?=
 =?utf-8?B?VmN0cTEzMXNKT05kc2xEUTlCR2k3Um84Vm9KZmJuQlJFei9BYjFBanRtZlVG?=
 =?utf-8?B?TitEV3RmQytVRVZtNEtxTlltTUJUMG9Na254VVhFSFNUTmwyaGFqbjlIWkR5?=
 =?utf-8?B?TVQ1VTRIa1JRMko0VHhkZ0lQSWtuVGp1M2pBdDYvSmNGQ3VINEd1aENPSkE5?=
 =?utf-8?B?Ukp2N2M2d05VaGJGZVlNNUg0MGVPeHgvajczRkcxN0gzZnBGK0xGTENqckhi?=
 =?utf-8?B?V3VxNklTL2hlRFdhMGtNSHA0LythdGZSZkxEeG4xa2FlU2NEYUpVUzcrZnJa?=
 =?utf-8?B?dy9TSHJnNmw5WU5ZRDhwRm9iQzFPdi92OC8zSUFLQ3U3a2JVVzl6WDFPMzdi?=
 =?utf-8?B?STk1SERSSDVabFhiZW8zTUx4eHVoTmtPK2JDUENKOURqaHhTV1FhTXZ4UlRP?=
 =?utf-8?B?eEFlR25jRXlHc1QwV21CSFhIVGE0ZGR4dTFBOXNFRGpYNWlnWXVOK3NidG9k?=
 =?utf-8?B?WWpGNExLazlRK2RZMDFUVFk0T2JQdGxWczFsQ1NjQUUrenE1dzVCNDMxYUFO?=
 =?utf-8?B?QTVVeW10eFlnQXhEY0tvUE1JbkgreUlBQ1hESFg0R3BYR1d4Mno5OVdxaXY0?=
 =?utf-8?B?M3FKZ0I1NTZRcFlYcVF1MFU4M3AxM3RNcUptamxvQlk5SG5SOG1GaDgxWTdx?=
 =?utf-8?B?VDE0WXdJTnc4dkJvNGk1N1g1T3lZT0RzYmEwU1FBYUhsRlN5OVJFR2ZLSmhZ?=
 =?utf-8?B?aHNzQjMrSWFUUW8za0JJVXhaWU5mSEhVSXY2NTRXTkNOczdyRlYyVVNZWGQ2?=
 =?utf-8?B?azk5dFZyTlhoQS9HeGRtRHpqNWtSK2FrOUxUK08xYUpQWXQyVUJXUmYwRExu?=
 =?utf-8?B?dGUyRHFVZDlrTEZxelRiNCs4Q3FLc1o3UGtiTkdCVDIzeDhWc2JJSUlybUVM?=
 =?utf-8?B?MTh5OEIzQkpZRkE1c1VkRGMxODBNSy9iZHhUYUFvYVlRSmx4NnFlWk5WZC9T?=
 =?utf-8?Q?yEDxIBRFe2Tmk4uJ4dQRUJPT17y2+5qRvK9G+BHEYQo4a?=
x-ms-exchange-antispam-messagedata-1: Fd/T2HZDz7JMDA==
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR03MB6786.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fce61a4a-6bef-40be-4bd7-08da221c5913
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Apr 2022 15:50:37.5055
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YxCsql00q7BnWsdkjmecj+/+flKWeBrNsscxZwpflpb4j9cRtfhLmGEygQiK0WMJeRg+KpfAi/XqqzSKXS6iqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR03MB2832
X-Proofpoint-ORIG-GUID: N3MmqQV7JgRetamuCkh2RXAZ1Rmp6Z0D
X-Proofpoint-GUID: N3MmqQV7JgRetamuCkh2RXAZ1Rmp6Z0D
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.858,Hydra:6.0.486,FMLib:17.11.64.514
 definitions=2022-04-19_05,2022-04-15_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 adultscore=0 bulkscore=0 clxscore=1011 impostorscore=0 priorityscore=1501
 mlxscore=0 spamscore=0 mlxlogscore=721 suspectscore=0 phishscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2204190090
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogRnJhbmsgUm93YW5kIDxm
cm93YW5kLmxpc3RAZ21haWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBBcHJpbCAxOSwgMjAyMiA1
OjIxIFBNDQo+IFRvOiBSb2IgSGVycmluZyA8cm9iaCtkdEBrZXJuZWwub3JnPg0KPiBDYzogTnVu
byBTw6EgPG5vbmFtZS5udW5vQGdtYWlsLmNvbT47IFNhLCBOdW5vDQo+IDxOdW5vLlNhQGFuYWxv
Zy5jb20+OyBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgUGFudGVsaXMNCj4gQW50b25pb3Ug
PHBhbnRlbGlzLmFudG9uaW91QGtvbnN1bGtvLmNvbT47IEFsYW4gVHVsbA0KPiA8YXR1bGxAa2Vy
bmVsLm9yZz47IEZyYW5rIFJvd2FuZCA8ZnJvd2FuZC5saXN0QGdtYWlsLmNvbT4NCj4gU3ViamVj
dDogUmU6IFtQQVRDSF0gb2Y6IG92ZXJsYXk6IGRvIG5vdCBicmVhayBub3RpZnkgb24gTk9USUZZ
X09LDQo+IA0KPiBbRXh0ZXJuYWxdDQo+IA0KPiBIaSBSb2IsIE51bm8sDQo+IA0KPiBPbiA0LzE5
LzIyIDA5OjQ4LCBSb2IgSGVycmluZyB3cm90ZToNCj4gPiBPbiBUdWUsIEFwciAxOSwgMjAyMiBh
dCA5OjMyIEFNIEZyYW5rIFJvd2FuZA0KPiA8ZnJvd2FuZC5saXN0QGdtYWlsLmNvbT4gd3JvdGU6
DQo+ID4+DQo+ID4+IEhpIFJvYiwgTnVubywNCj4gPj4NCj4gPj4gKGFkZGluZyBjYzogQWxhbikN
Cj4gPg0KPiA+IEFsYW4gaXMgbm90IGFjdGl2ZSBhbmQgQWx0ZXJhIGRvZXNuJ3QgZXhpc3QuDQo+
ID4NCj4gPj4gWW91IGp1c3QgYXBwbGllZCB0aGUgcGF0Y2ggYXQgdGhlIHJvb3Qgb2YgdGhpcyBl
bWFpbCB0aHJlYWQuDQo+ID4NCj4gPiBXZWxsLCBubyBvbmUgaGFkIGNvbW1lbnRlZCBmdXJ0aGVy
IGFmdGVyIDIgd2Vla3MgYW5kIHRoZSBwYXRjaA0KPiBsb29rZWQNCj4gPiBsaWtlIGEgbW92ZSBp
biB0aGUgcmlnaHQgZGlyZWN0aW9uIGFzLWlzLg0KPiANCj4gQWdyZWVkLg0KPiANCj4gPg0KPiA+
PiBQbGVhc2UgZWl0aGVyIHJldmVydCBpdCBhbmQgYWNjZXB0IHRoZSBhbHRlcm5hdGUgdGhhdCBO
dW5vDQo+ID4+IHN1Z2dlc3RzIGJlbG93LCBvciBpZiB5b3UgZG8gbm90IHdhbnQgdG8gZm9sbG93
IHRoYXQgcGF0aCwNCj4gPj4gdGhlbiBOdW5vIHBsZWFzZSBhZGQgYSBmb2xsb3cgb24gcGF0Y2gg
dGhhdCBkb2VzIHdoYXQgeW91IHN1Z2dlc3QNCj4gPj4gYmVsb3cuDQo+ID4NCj4gPiBPa2F5LCBE
cm9wcGVkIGFzIGl0J3Mgbm90IHB1c2hlZCBvdXQuDQo+IA0KPiBUaGFua3MuICBJIHRob3VnaHQg
dGhhdCBtaWdodCBiZSBwb3NzaWJsZS4uLg0KPiANCj4gTnVubywgY2FuIHlvdSBwbGVhc2UgY3Jl
YXRlIHRoZSBhbHRlcm5hdGUgcGF0Y2ggeW91IHN1Z2dlc3RlZD8gIEl0DQo+IGFsc28gZml4ZXMg
dGhlIGFkZGl0aW9uYWwgcHJvYmxlbSB0aGF0IHlvdSBub3RlZC4NCj4gDQo+DQoNClN1cmUsIEkg
d2lsbCBzZW5kIGEgdjIgdG9tb3Jyb3cuLi4NCiANCi0gTnVubyBTw6ENCg==
