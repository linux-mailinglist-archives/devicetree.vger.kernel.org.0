Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4D9E1978C2
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 14:03:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726857AbfHUMDE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 08:03:04 -0400
Received: from mail-mr2fra01hn0218.outbound.protection.outlook.com ([52.101.140.218]:64480
        "EHLO FRA01-MR2-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726762AbfHUMDE (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Aug 2019 08:03:04 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ce6Giwl4Hm2XsXMWnvFkEzrP3AI9tMPinyWZDqL4OzXoJ+2nURPrYOoUy8IMo+XPQ1ZvWjIRJiqBKGqrpOo9enWrHWx79HTH9XwSOutRrFXS3iOQOFy0MX+mpLQ6kS+lfG9j500EFtTf1Q0D+/9E7I6Bh+YsYz2JMnTMhzKbX9MxM/DWbMn6GSz+G8kyDthiPiJKkBs6kzeK+Ln7CPmfbHV++0vrFDvzhS08HV7Gm0aYiToHc4w1Ie4GOPbQZrXShMssdWSqjg5aVz3Q76Odn1WdPI9ECE7kapzTnX68UGx/vd3UZxWXuFuwW/spDwKRilrm4tBrMxZ9RGtxv0irBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M56NI7BLsHahIzx12/uk6EM5Kt0eYf6xIEHooe0Zp2M=;
 b=Gy+nHPFZQui+4rAEaH1WKoqIpQcyWSnyEZzF31i0VG70HmHdeGkQkXodYa2p9kD2rKwE40pHdI6iuBuU+VTys1y1CHjHOFdhvjYFpWwIA8F1H+nxq7Xt5dGLisTMo4Qs/nJt1Iy8n6MJVgEeBs0lh8++cSXUK9cjMGMJGA+aECZUx9P4fYNN+BQYz4OY8YRJmN2cNovv3zaJYFa1wPHYBKo/PkeiL3kby1wPXp+OcMl/PTIdUN6A5CmxMbBSEkr6Mhrq/fIIphJrxqrIuZuBLhl3bjY7FhPwvljnzZKUwRfnmLqFP/PfZj6iRV7qpcB42K0H7khmnWgROYH39xJ1vQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=etu.univ-amu.fr; dmarc=pass action=none
 header.from=etu.univ-amu.fr; dkim=pass header.d=etu.univ-amu.fr; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=AixMarseilleUniversite.onmicrosoft.com;
 s=selector2-AixMarseilleUniversite-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M56NI7BLsHahIzx12/uk6EM5Kt0eYf6xIEHooe0Zp2M=;
 b=c24Vk47GKB/5X6lBHhvHv3m7sBVz6vOrKwpdXEDzUOQQH2mJ6mwty/6ditujLvDHHQDLthkMkY0jrkw4iMctDM7h0GmxmybJBHGlqmVagDJgfl0LpQyCveZef31HxRUtUyJ9ZwIxeYG/QY3ESYsPkMTqogv/PWilLOQ8owyRtcM=
Received: from PR0P264MB0281.FRAP264.PROD.OUTLOOK.COM (52.133.66.20) by
 PR0P264MB0137.FRAP264.PROD.OUTLOOK.COM (52.133.66.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Wed, 21 Aug 2019 12:02:58 +0000
Received: from PR0P264MB0281.FRAP264.PROD.OUTLOOK.COM
 ([fe80::e13f:7998:f994:59fe]) by PR0P264MB0281.FRAP264.PROD.OUTLOOK.COM
 ([fe80::e13f:7998:f994:59fe%5]) with mapi id 15.20.2178.018; Wed, 21 Aug 2019
 12:02:58 +0000
From:   DEBANNE Priscille <priscille.debanne@etu.univ-amu.fr>
To:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: Priscille
Thread-Topic: Priscille
Thread-Index: AQHVWBXlB/lEnFR3x0KYcKJbXb3tRg==
Date:   Wed, 21 Aug 2019 11:45:14 +0000
Message-ID: <PR0P264MB0281698B7468B54DF81E0647E4AA0@PR0P264MB0281.FRAP264.PROD.OUTLOOK.COM>
Reply-To: "aymantax@hotmail.com" <aymantax@hotmail.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR02CA0050.eurprd02.prod.outlook.com
 (2603:10a6:208:d2::27) To PR0P264MB0281.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:4::20)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=priscille.debanne@etu.univ-amu.fr; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [41.203.73.114]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 50d5bc27-8225-47e9-f183-08d7262d07fa
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);SRVR:PR0P264MB0137;
x-ms-traffictypediagnostic: PR0P264MB0137:
x-microsoft-antispam-prvs: <PR0P264MB013743FCF3DE58A33FCE05AAE4AA0@PR0P264MB0137.FRAP264.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:1332;
x-forefront-prvs: 0136C1DDA4
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(346002)(396003)(376002)(39860400002)(366004)(136003)(189003)(199004)(66806009)(476003)(478600001)(71190400001)(43066004)(14454004)(99286004)(71200400001)(66556008)(1730700003)(81166006)(25786009)(6666004)(3480700005)(558084003)(2860700004)(8796002)(64756008)(66446008)(10916006)(8936002)(66476007)(9686003)(229853002)(14444005)(81156014)(5640700003)(6436002)(7116003)(66946007)(55016002)(386003)(186003)(5660300002)(6916009)(5003540100004)(53936002)(6246003)(62860400002)(66066001)(3846002)(6116002)(256004)(2906002)(6506007)(221733001)(2501003)(8676002)(52116002)(7696005)(86362001)(26005)(786003)(74316002)(316002)(7736002)(102836004)(2351001)(52536014)(305945005)(486006)(33656002)(5716007);DIR:OUT;SFP:1501;SCL:1;SRVR:PR0P264MB0137;H:PR0P264MB0281.FRAP264.PROD.OUTLOOK.COM;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:0;
received-spf: None (protection.outlook.com: etu.univ-amu.fr does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 9xK294A84ZXOkxgjmSEY0+g/1Xc/RBNCwB7T3gs0nBrIkj+IeQjF5t7JTpocLyI4LETgPMantfZUpzF/DcyRxCYNjLA9odtnfiE2mkl2ciPGxj7cEAQZ+zAcHNaKwrbJyn/H1iljZLv6C1BLCQ0XQrnADhKcUaLaSOSYm5Qvx2F5GIoeL+Zag5MB43sq5921P43EgjCdf0I4EyehuaCBSigGT9Xlz565Y5kwrtq4fTXD62ciViLmVGtVQpwvVNxqwULrDhtRa08I7yoRZykZA6JWsSIxg+kwfJt+gjB3vLkYM32pBcjf34ttJaU4noFxtbE34UVlTQN62kBV6GXIRdls7H2e8OE1SxdySxnIz2sJ2wEtQOjtiIFcOEhT67NkFQ8B2QaDjGSiInO74yV42NkqGrdEQch2A/K5qYxDpJ0=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <CA868BF0B5665748A4291220B3D98D4D@FRAP264.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: etu.univ-amu.fr
X-MS-Exchange-CrossTenant-Network-Message-Id: 50d5bc27-8225-47e9-f183-08d7262d07fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2019 11:45:14.6624
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a9f1c4f7-38f4-4d38-8a3c-4b6dbe981cea
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YvQ14CVV51bv9bmJ3yhLlTISio39TQkNIRgDvXjm+gl+e70gQR3NwMjonw5SL49ae5TcIV7k1wpWS2gj4nJj4TWOMwwr6R/OWGVOs1g4atdftWdBbC9RDZrcwaZdMboP
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR0P264MB0137
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Good Day,

We wish to make a trail order from your company, Kindly send me your price =
list or catalog asap.

Thanks.
Priscille
Sales Rep.
