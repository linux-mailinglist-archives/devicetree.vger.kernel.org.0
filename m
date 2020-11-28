Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B224C2C753F
	for <lists+devicetree@lfdr.de>; Sat, 28 Nov 2020 23:24:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729741AbgK1VtZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Nov 2020 16:49:25 -0500
Received: from mail-eopbgr00062.outbound.protection.outlook.com ([40.107.0.62]:25830
        "EHLO EUR02-AM5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1729206AbgK1SKG (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 28 Nov 2020 13:10:06 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DnGz3FmgOKnFkL4CEmXuP+iNx5bYCD7137/KEXRL9HbBorNcmpo+EUcE3ittL7lN5mF0hcUEnSEoyZp8iyYfai/bFb17EN5lBZ3AsDAQbZx8GAtl4PldOcoQbGthEbGpKguqpAZ2It3Tb7Lkp7rhA52Ps1iu+JYNJNGaDMRzgd65KZkC0SD1RaBUNIjfyTbXHe6fjnGR3vdMC3LEOLd19oWnGhQPZqcb7ER9YMc5UiTRXwVi9p8Ee62k3aXdCpBxITD1Snl9ByB7gBdRl01BmtHebSYMOVvzdGtMj20pSpdvNuJRUtmVr5M9G4jsVkyDWZdI6xmEcfo2o6tarVXr/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dCRbRH6+xjOau+IP/jqYAhvPuiHBEgbM18PrNXO7Ksc=;
 b=DNeTkyhMjNdYt3O7lswxSoBZUYV/DqnRQvZi0ZChsOhxDFknGqSwn36/DYEd+kMoSSJy6tMlczmQt5NIvkiDQK0q5og0PD2PDYbqLC6G/xsk869iI0Lp0ietxD/IVnJUQa8GrD8jyE7qeevrXAhpJNjT5MrixpNT8/4ao+Ej1+oM2wGpS/11nUepducbwfI+84dBN8cz/PONf1lVkUPc+yd7Bs4wDKrzJ0z0HY5Y3fUkep8xhT0vCok/TfllTmH/rPJSKVl9PepDbsDEuCevMmKDpk4pJHosVnNUO3zL4d9htsHt2WXpvNVMkNQooe8Y7e8tRQ89dwdEpWISWMo/VA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dCRbRH6+xjOau+IP/jqYAhvPuiHBEgbM18PrNXO7Ksc=;
 b=sDwQXsa8i0maOUVZWjQXSG1U6wuK7fVvHkQrRwfVmiiBmMxVMkVMQxli31pFgIKlP5HquIKWELdzyDUrGXwuNm5ewizxbjzZou75NcVzpcH/ksZ5W0j5yNuKUs4h/VAx8mwyIXk6hnYSNlnSP4K3xuXFP/2TwZaq9wR1XlOlihg=
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB3PR0402MB3707.eurprd04.prod.outlook.com (2603:10a6:8:2::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.25; Sat, 28 Nov
 2020 05:32:30 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666%4]) with mapi id 15.20.3611.025; Sat, 28 Nov 2020
 05:32:30 +0000
From:   Joakim Zhang <qiangqing.zhang@nxp.com>
To:     "will@kernel.org" <will@kernel.org>,
        "john.garry@huawei.com" <john.garry@huawei.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        LnxRevLi <LnxRevLi@nxp.com>, Frank Li <frank.li@nxp.com>
Subject: Recall: [PATCH 2/2] perf/imx_ddr: Add system PMU identifier for
 userspace
Thread-Topic: [PATCH 2/2] perf/imx_ddr: Add system PMU identifier for
 userspace
Thread-Index: AQHWxUfdIzfNRNzgg02CngVsI1SYpw==
X-CallingTelephoneNumber: IPM.Note
X-VoiceMessageDuration: 35
X-FaxNumberOfPages: 0
Date:   Sat, 28 Nov 2020 05:32:30 +0000
Message-ID: <DB8PR04MB67953090AC42093736601119E6F70@DB8PR04MB6795.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b58a5dec-c8c9-4c72-b235-08d8935effd1
x-ms-traffictypediagnostic: DB3PR0402MB3707:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB370711071D4E9297C331465BE6F70@DB3PR0402MB3707.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qbg35QE1FLdV1SyQka0dMR/M+CX6OlqXqAicoyT3sgIJOr5EjPMU4x1WCFUhpuGQfc/4skrPq7IgKiSq5YkEmwd549WJN/P5ePu5gfZnDKlbXsnl8kr92b5eszE8db8FhZZn1q6+310rp1/gZvSi+73q9wluG+ywga5bNmLDFtW+jeBRHSjihOjrPVFs6ZCumS6oi5wWTlbq85vCa2mi9gf1O5ISSuDK2ZHD1FjUi25SrrbQl8hHEB1KQkyr4nxtLwZhun/a6qCRMSgdRC10UpdJeXymieHlVYk7xKv3QXY41exo/SvLNY0xusIJna9M
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6795.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(39860400002)(136003)(376002)(346002)(396003)(2906002)(8676002)(55016002)(71200400001)(5660300002)(83380400001)(9686003)(66946007)(54906003)(6506007)(76116006)(316002)(7696005)(64756008)(66476007)(110136005)(66556008)(66446008)(8936002)(26005)(86362001)(52536014)(33656002)(558084003)(186003)(478600001)(4326008);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?SqY0YOXCGLiOev2s1w/02c8JjqIk+lahpKRQwoVGWUC01NswziyExFddGVnK?=
 =?us-ascii?Q?uzFK/zyXWgAc4eWs4P2jOA+B0DhXwkW62HnY5TruQadabr+jHUltvNmoMBI5?=
 =?us-ascii?Q?opHXEujurphZYZlGxPXaCdCNuNdju1afRNX4X73WsEBucHwBytsjySmuAcky?=
 =?us-ascii?Q?aghb7bRD5T6ezsLPlW0zF01uWyVZK3Fy5irpNiuu/ALNTBbF3HVnJK8JEn4N?=
 =?us-ascii?Q?d7gDkerdNyXMHgGt796GplW3DJ+h2X4IE3r07nQZDtIpnBkk3oi+yBHmBQSt?=
 =?us-ascii?Q?5J+ehT/OR6TtmwIJZYjzfhoRo15nOwEWgcdjCh4Qqnx84CMlZZ6i7rCBDmY3?=
 =?us-ascii?Q?zElZq1WBCgTRfC6lJWTCLVkdbQ0Rz89u/cvK9CJKW6Ydt6SBJdJOYdK3upeS?=
 =?us-ascii?Q?8n/VtXV5gQ6M6A7VUlK6Es28/DAjEz/6YAR0sU6UtcVJtc1Psn2WVhb/QVIT?=
 =?us-ascii?Q?w1GIhKcsED+nYfczA3/HvqKaw4Zi7R4A+GspsWqpITI1HUYDM6+nb/g2t1l2?=
 =?us-ascii?Q?wA/twatwLemugzBMRTWZSzN1TRLq+nE3rYM5XJG5Ql22+ChWjZ0zdPqUmYy6?=
 =?us-ascii?Q?UeEs12z7yZyaG3jDANrA7FLk0dqmr5L1SoQAYmLlsmt1BdJqNYkz9aqKgA1L?=
 =?us-ascii?Q?/RFJ3UGCIA0w72/b2K5ME8WiQZbMTWypINQJvGTMGn0PKeidv/IK3grgGZR9?=
 =?us-ascii?Q?pWzVE4Frgb8GhAEh5C4+FADy5d/On52E5jB7npMCG4PsT7BrI/9kBvR+sw+g?=
 =?us-ascii?Q?S1bOuRUr8HqAY0NuQZNSve1su/L/bH1kLBsOUSi0r4NG7uStqQaxX0TJhxev?=
 =?us-ascii?Q?WAOr/cKXxsMoubYu9mO5C0VhfIF+ynE6xRNQcxM8v2YTna4vtjoiivFfmUC1?=
 =?us-ascii?Q?qZ2j3/eWvamXPVrMiClv9/0TV/xmTEUM/qGNAag63QiNgBQ6EUw/StREkG+n?=
 =?us-ascii?Q?TOwHRgYE9s8A0W1C7OAMvNYwYnybkaex75k9sYU1aA0=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6795.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b58a5dec-c8c9-4c72-b235-08d8935effd1
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Nov 2020 05:32:30.0399
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9PNn/JY2PsUPjIn7nCBOUxh4+8Fam+OIjh9cg4aQ0CJ8Q+K9lZ6JUzRqqMkfAluVAX0HOd4V4mdwrCej7ypO4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3707
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Joakim Zhang would like to recall the message, "[PATCH 2/2] perf/imx_ddr: A=
dd system PMU identifier for userspace".=
