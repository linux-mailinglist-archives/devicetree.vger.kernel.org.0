Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 27F434766C3
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 00:51:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229828AbhLOXvV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 18:51:21 -0500
Received: from mail-gv0che01on2112.outbound.protection.outlook.com ([40.107.23.112]:10624
        "EHLO CHE01-GV0-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S229744AbhLOXvU (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 15 Dec 2021 18:51:20 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lFjiNszv1UGGLtjbFPaTHUs+tUnXv77BEht4K0c5vRtcivMKeEcOLx/Gof95ub/YHXBgP8lfpm+YufW84BVE6QWjYdx2uq/67aNMShwI7ycx0Pm8tiFT350mG9ubC0sFofy0CsveQ3cfxY+SHMpkU7OuV8TZqBl9MAXPlGIDXu1lfAD72ejfmP5Jp2OvvqUbA+kIwEK3+rxbeUdKkCylZtFa3kGMCsRaY86TU27f99GJjnsWqcnR6qxbLbyYChVEO9MDRL+G4gdpXfQ9x/r1am7bT38TwTt+QRgtDLCF+G/JZWzNgzqGK10xiCFeKqvCHzS5YIVWGwY6JBg4rsgf5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RYx+vZv/6/siuYCbj4LJx4tgKM3RJPWLZq6BuxEI9Q4=;
 b=JYZqfOl/W9owIJqlZ7WF/cWesJuqpJ5EaRNFCgSjfL0NJaPkf2EdV4r4q9GEiWWxVf01Nk37wMPnl/3gzj9bBmqmW08VC9ZyH4112Ig3QX537e9ZY9CWqynKYbGzlFZ0KZRAascPaipijfqk0mv1v7lhHXQRih1gDq7RtmOdBHtCkEWZcHo/qg0OOWlm3bqCMMzzHtBlql5VrLLCp79i0BEdN+IFQq3oZyhJHzpfbYSjWFir9n+Ut+9U/R9VreozQVnhT5qJtHlJHQv+eEnjyvg4zlb7LXpTjthqFMUteaiw9pEVIaESurNVAjI7wOUHHOfUGrFQxjMFjXfbtITmQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RYx+vZv/6/siuYCbj4LJx4tgKM3RJPWLZq6BuxEI9Q4=;
 b=FQwR2/RzDKeHC440S3xvvy1yFAPWU+qjn+T+/e1G7txnprQr9NfuNNggblzWow+H4wYGFVSD3Nwj0L/RxfZ+ef3kwo1EPDdt1PUdsFfbXvwJqwRRwS0jzu8/5rXmgcR+xBVFzYG8s983ReGbcba4vk2KzVi/QSfAjVlBTI529Ns=
Received: from ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:3b::9) by
 ZR0P278MB0027.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:1a::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4778.16; Wed, 15 Dec 2021 23:51:18 +0000
Received: from ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM
 ([fe80::2de2:ea03:cafb:56c1]) by ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM
 ([fe80::2de2:ea03:cafb:56c1%6]) with mapi id 15.20.4778.018; Wed, 15 Dec 2021
 23:51:18 +0000
From:   Marcel Ziswiler <marcel.ziswiler@toradex.com>
To:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
CC:     "robh@kernel.org" <robh@kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "yibin.gong@nxp.com" <yibin.gong@nxp.com>
Subject: Regulator naming
Thread-Topic: Regulator naming
Thread-Index: AQHX8g6nKb5A3B+OK0SA7ZImXCoQlQ==
Date:   Wed, 15 Dec 2021 23:51:18 +0000
Message-ID: <d5b24022a944f84eb035442e7d5c74fe8f5199be.camel@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=toradex.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: db1ff159-0355-4672-4017-08d9c025ca09
x-ms-traffictypediagnostic: ZR0P278MB0027:EE_
x-microsoft-antispam-prvs: <ZR0P278MB0027A4E83F24B95D11CCA3DCFB769@ZR0P278MB0027.CHEP278.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kcFBFP62RZm5dhcMHvCyC4kD+uLvvzmCBzi6BVWMc7gEnVt8gBjPeL3UurbunNW75EVNzJN0/WdAAsiT3Ii0IobvPn24Pycf7N7sJhK7V/0J8DT/P2yRJ1BSUPs4FOKoS9pYrnNEr17NFgMVyc2ZL7HEO2iuE9/T/+VjsYKuq82QCHgsRB27t+iNDAGrw+vg5nbVrH8pNSnUWEu/qroIYLSd+KfGnk+mdkR4ZSP4X4D7fVkpOuQFVFhS/hva/3YLcSJ43pJh1UAb5w/J5uAj2a+pKL0YEYpW4zyWEppA6lcm09+ceEJGIaQfkeE2mhb+UNldGMd7Jpo06WSfcsy3s1IY9JBxoRvC/OCRZ/divGdRTVSRPVRK3sp7YfTQbDwU1VL1e8Zi6LFQrT0aQmFMDSpdRCDw8J2WVTcfybgoRzsu/oMfeBxhmaAHAXpLc2xDSIGQh13EY6z6Q19HbOZy4HTo1cdqL1oXdg1BeSwiKeJe2yS4uWF+oURT1Px8Y1Fgm/qEHbXwV9H9TpVe5bcCOOYWBrt+3S5w8+CX2FdlIFt6zd2BKzg0Idb/AuZmeUMQ5DzHpRwk9QS+YCQflZ/Ogab2tTvuT79PMKYMNFOz9QBmGYzv4bKVRB80FYaXyl2SGQtbkmwE2HdUKv4mQu3WuKTMbgfChNUIE+ER5+HZRdu23aP2ahRR7Vt9KTMKpQs0twG74GD/OUlUd05G6FjaI03/vwQMeHg8IlH+xXksaG1G2wYnQtggyQuoPwE0EXv35zvNOTPuLjCJZBtLAAO1+C381Q9c4sKrML3eBnJvYzk=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(366004)(136003)(39850400004)(376002)(346002)(396003)(122000001)(36756003)(66556008)(64756008)(966005)(38070700005)(8936002)(66446008)(54906003)(6506007)(6916009)(508600001)(91956017)(4744005)(76116006)(66946007)(86362001)(316002)(3480700007)(186003)(2616005)(66476007)(2906002)(5660300002)(4326008)(44832011)(6486002)(6512007)(38100700002)(26005)(71200400001)(8676002)(7116003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dWdzRnlqWFptSWpFSXo4QXVqMnBsQm10QU1KYTBWRVJLL2g1WXRReTQrellY?=
 =?utf-8?B?dVhxNlJQbTdlRm5Na0FPYVFYNVFQMlduS0NWK01PTWVXejVXeTJMR2JVdXRr?=
 =?utf-8?B?QzdvWDZxczRlaXhsUjM5VUgxQzNmUEU5enY2NEdwU3pYYk0xbGFuaGhNS3po?=
 =?utf-8?B?NVQ0blFKbEhhZ2xra2NjSDNrdlUreVoySGtlZUh2WXc3Ni9PL2RHYy9MQXVE?=
 =?utf-8?B?OWUxRDVEaXVTWFFja2hSU1RGQnM3Q0VqQjN3bVR2b09aU2YwQ2N6ZngxUDVm?=
 =?utf-8?B?ZFFiYk1QMWRTdGNsYjNkNlF6ZjRTMEZKYjFlVk9xb3krOUxQcWVHRUhndmRW?=
 =?utf-8?B?Qll0VG9hQ1BnNEpWRlRxeHdDYXNHL2Z0am9hTTg2RjFGRS9CNU5oQktrdnN2?=
 =?utf-8?B?UmN6ZzhDcE92Q2c1VStyRzFsT29vOWJDZVYwRnZuV0ZGVzJNdEs5QzVuUVM5?=
 =?utf-8?B?blVZaEp3Ujk0bHpueTJnRlUzRnZ1SEZUZm8wZjhPOTJpa0cvSDBTL2FuazE5?=
 =?utf-8?B?dTdQUTVVZE1Bck1Qckw0UDZBYVE5bEx0NnNlVEx2cEg4RDZuQUVGMXFnUnVQ?=
 =?utf-8?B?OHVkZDBTZWZvdDVMdS9EL3hWcmNLSUtlTUlMNitVSHlMeUFPYzNrbXBUaEFJ?=
 =?utf-8?B?anBFREdFM3NFQzZtdEdrbUx0UDJwRUpoYTVjNTZOeC9rM1VYc1JWM25hUjc5?=
 =?utf-8?B?ZEdlVUx4ZVU1ZENMR1RKZVdUTmdoNi9wMFhzU0M3bGdxbmNuMU9NeE02a3p4?=
 =?utf-8?B?eGJPQ3ZWM1lDSm9QZEtUakpZK2F4eFhiUzMrSk94b1NYWDh3KytMcHVWaldN?=
 =?utf-8?B?T3dsOVcremcxb3pWeXJMWDc3VDdSMGZ0TCs1WCtwNEFvd2JKQms5SFFza0ph?=
 =?utf-8?B?cjF3RjZFK1RENjAzdkwrVTVBVmJMRmFiNTNnUUI0WkVxZDdUUUY2RUoxUytC?=
 =?utf-8?B?ZEczYWZQY3E3bUUxdkZKaTJTZy9SaDF2b0hEejdVZndyZEZqYzJJeWtLeEFF?=
 =?utf-8?B?aXBjUG80eGZHcTF6Q0RUa0t1MU9IWFN1SElJVkkvL1FLNGM4VWpKVDdOU2tK?=
 =?utf-8?B?MkdNeGRhWmg5dnNvTndiOE1NcDZqc3kzdGw3eTNHSk9FRkg5dXFHYUhteW42?=
 =?utf-8?B?cDZVVWtrYTVWNnFlTStMWkhjWXNvdVJ5bVljNHFFYzJwbWVQMTZpYVV5dENt?=
 =?utf-8?B?dVZwRE1SNldiSGtCakdyUXZjNEkwd2N2V0ZKejJpa2gzN0RrcjBqWmZLRVJX?=
 =?utf-8?B?bHRJY0ZxaGoxRnNSSE5SSk5sMjRwUUQrWEpUK0UxbmZHS1RKS1kva08wYXhL?=
 =?utf-8?B?MnVPc0xndnFzbHdKQmlLUFRUcTRKc0dQWklTN0tkblVXU1NxeVpsYXBKUFM2?=
 =?utf-8?B?dW5DTktJazMvSTh4RXl2UG44SmN0Ri9IeHN2bjlYT0FRdE04T2tSSGd1UXcw?=
 =?utf-8?B?RjY2dEc4Zi9sNnVuQjhQUnFabWF0UWZWNmFxNDBvVnlYVnFpcUtJWG9wVTZL?=
 =?utf-8?B?QUErZlJBWSt5WWxoZ3RLb2RsK1dlMFFCQkZrOUVacTdRUkZNanhpN3oyT21N?=
 =?utf-8?B?N3RWK3NuSHcxSXBERVAvOGVaRmdZOG42b08wNWthVFVNZFVYbWJNMGdRcjFv?=
 =?utf-8?B?dDN0Q0pUQ1I2R24zeCtvcUIwbHg0R2xnbTBvbkRTUWw5Q3V3Mi9nK3hVSFBS?=
 =?utf-8?B?SXdFQXdSSUlvWXRiRTJ2dUFSU0NLS09NMEpTcTg5a0tLTkdxdmM4VUVESkxU?=
 =?utf-8?B?cmk2cEIwQkZudFdNM2RJY1dyMkJOUForbG9XUFN5UlRjVGdqdkxzVTNobFBm?=
 =?utf-8?B?M29NUFc1VTNDUUlvK1BBVjNXUVEva2FZQzBUV3dVbFNzcWc4ZEl5ak00RlJ0?=
 =?utf-8?B?eVN1QnorL2NWdFVIQ2dERjZDQ3c0Nm5CbEo1Rno0cENKeERmZmROQ3dyTFNm?=
 =?utf-8?B?LzBqRkEvY01zZWhqcFBJa3RVTFF2anBoTE42ZEFoRW9NQ3pjRXJZelZCVmph?=
 =?utf-8?B?R2ZiTUNzQXdZZGd6emF5bGQ2ZTAwd3JLdERjQTBPL1pLOWt4ZkNJMnZNYUlX?=
 =?utf-8?B?eFlsMVhObW5xZEpPKzEra1JnZFZXeVJDMHArQVN2bGtGdkxxRGk0RW41UkNk?=
 =?utf-8?B?S0JBQ2hKNG00Vm5JdTNjOU5kMWM5SnNrSXNPckNYQ3YxakJtSjZhTk1SQURM?=
 =?utf-8?B?M2YrSVFpa1JUTE15LzAwY3BFOVFFcUl1a2o0K3hMMnE4Q2U1WURwM216MzZJ?=
 =?utf-8?Q?Flk12dCQnR37eNaPnlzSyTxIA5rUn7ZzYChtCzrtZY=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7B4B9B55EF8D954ABAF843738A240EB0@CHEP278.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: db1ff159-0355-4672-4017-08d9c025ca09
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2021 23:51:18.4985
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6Lvl5ady392vROfQnvrUYIa87TPSDn60Mlq3TistPU6+Aa+oQEVlCvsd6fJvBBDj270Nu0aOVZYQtiLqJX4zDsrMEimbNtRxT332sSXr4E4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZR0P278MB0027
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SGkgdGhlcmUNCg0KSSBhbSB0cnlpbmcgdG8gZ2V0IG15IGRldmljZSB0cmVlcyBwYXNzaW5nIHNj
aGVtYSB2YWxpZGF0aW9uIGNoZWNrcyBiZWZvcmUgc3VibWl0dGluZyBhbmQgc3R1bWJsZWQgb3Zl
ciBhIGZldw0KdGhpbmdzIGhlcmUgYW5kIHRoZXJlLiBPbmUgdGhpbmcgSSB3b3VsZCBsaWtlIHRv
IGlucXVpcmUgaXMgd2hldGhlciBJIHRydWx5IGNhbiBub3QgZnJlZWx5IG5hbWUgbXkgcmVndWxh
dG9ycw0KKHNlZSBbMV0gZXQuIGFsLikuIEkgbWVhbiwgSSBhbSB0b3RhbGx5IGZpbmUgd2l0aCB0
aGUgbm9kZSBuYW1lIGhhdmluZyB0byBhZGhlcmUgdG8gc29tZSBzcGVjaWFsIHNjaGVtZSwgYWZ0
ZXINCmFsbCB0aGUgZHJpdmVyIHdpbGwgbmVlZCB0byBzb21laG93IG1hcCB0aGVtLiBIb3dldmVy
LCBzbyBmYXIsIGFzIGZvciB0aGUgcmVndWxhdG9yLW5hbWUgcHJvcGVydHksIEkgYWx3YXlzDQp1
c2VkIHdoYXQgb3VyIGhhcmR3YXJlIGRlc2lnbmVycyB1c2VkIGluIHRoZWlyIHNjaGVtYXRpY3Mg
KGUuZy4gK1ZERF9TT0Mgb3IgUFdSXzFWOF9NT0NJKS4gU2hvdWxkIEkgcmVhbGx5IG5vDQpsb25n
ZXIgYmUgYWJsZSB0byBkbyB0aGF0Pw0KDQpbMV0NCmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHVi
L3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9yZWd1bGF0b3IvbnhwLHBjYTk0NTAtcmVndWxhdG9yLnlh
bWwjbjUxDQoNCkNoZWVycw0KDQpNYXJjZWwNCg==
