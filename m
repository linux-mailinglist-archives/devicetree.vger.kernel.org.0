Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B8AC12C755C
	for <lists+devicetree@lfdr.de>; Sat, 28 Nov 2020 23:24:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731143AbgK1VtX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Nov 2020 16:49:23 -0500
Received: from mail-eopbgr70085.outbound.protection.outlook.com ([40.107.7.85]:25058
        "EHLO EUR04-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726477AbgK1SIL (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 28 Nov 2020 13:08:11 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P4g1fqt4TdpkAA3zJaXb1MNn7nt5wmGZxrmTlv9EiOv/KOjwoaRD24/AyWXMol84gELbj2fHm437zDoXyqbjaV5UDGWWjjEHJgN8HuqBUlSoxfAxI0dvDoKICW/xiITV+AS1Ryb4MD/JC9wAstgp/hQfNQmhKYtLsFpY2zS3xpEeibigj6oa+OXqoPGF+sfyZst6HgclhdduZwg3Eger2uHo9eun5X1fslMdNYoIvXQujIQxsb6a+W/Yo/jCZT7XzvFtsKH/LUzIkdlurshYSL1iH1ZaXv2vlE82f+5sNPo/X0Hj0O3pwb8VGHP47MuKYqjN/UMBJPEnDua6xP1tfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZBqWtnykvBPStcnMFQ3xzpo1DteOOhGBaKraCjQ0APA=;
 b=irmUAuPFXkbkikR/k2gqwfh7hx9YEMIRP944MDsD7B0T+Cyca8amYKpps5zB5y3+mTZoxN+YlilS/YYVYX6MqoJ6D0CvorakgMVXkXFEv1UYxgiS60zkWaSOqLyeeP1Um9ycEFft/fgT7UjByazruy71PVrvU1RplZvnhvyUyRGt74gkFLkqFvikywDp9xBP8SCUFurwVCNk58tLTIUTjQeN+h2Fbmfl/IZKm/LmJG7t1GlTKTLt1XeMH2mUiogmz7FzJvYMhB2OuQ3HdyAsqIjyt612vj1qdjjQ+LR6z1zOhcuS3FXQyGiwx7Gtv3YZvarNqYvJsZwM0KohAl1/ZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZBqWtnykvBPStcnMFQ3xzpo1DteOOhGBaKraCjQ0APA=;
 b=cRiTIwzQ+U8LiUczxILHsJbbH8WXh19WBf9shNYgz3QuaIv3Izrp+HKJ5IGAJ9TPMisCD+A5KoNebQqjJhUFrgWeVyk4cxXKxqCHyd3kQN5Yo8/J4eKjuMAF4pmg7QqqKvVjxUzrn6Nls99Et7UCUu3BBz6tK5Ln//y41LX8lYw=
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB3PR0402MB3707.eurprd04.prod.outlook.com (2603:10a6:8:2::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.25; Sat, 28 Nov
 2020 05:32:16 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666%4]) with mapi id 15.20.3611.025; Sat, 28 Nov 2020
 05:32:16 +0000
From:   Joakim Zhang <qiangqing.zhang@nxp.com>
To:     "will@kernel.org" <will@kernel.org>,
        "john.garry@huawei.com" <john.garry@huawei.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        LnxRevLi <LnxRevLi@nxp.com>, Frank Li <frank.li@nxp.com>
Subject: Recall: [PATCH 1/2] bindings: perf: imx-ddr: add compatible string
Thread-Topic: [PATCH 1/2] bindings: perf: imx-ddr: add compatible string
Thread-Index: AQHWxUfUIU76EtDr4Ey4lHndUkW6og==
X-CallingTelephoneNumber: IPM.Note
X-VoiceMessageDuration: 35
X-FaxNumberOfPages: 0
Date:   Sat, 28 Nov 2020 05:32:15 +0000
Message-ID: <DB8PR04MB6795782A32F3A3554ADF2ECAE6F70@DB8PR04MB6795.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 07be33fa-9c6c-4bff-d38a-08d8935ef77b
x-ms-traffictypediagnostic: DB3PR0402MB3707:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3707699741B46287DB614AB6E6F70@DB3PR0402MB3707.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CtPZ7dPeNe5MZIrSAQaSl+5m919vCJB1IbejuupM1vbgjMpQssi9B/QpMXj4ID1WwedOQve66GJhBuJNH7nMLcU1jEvbDARSGH9Qp9xeTQJKgCkahqgSsO8zAtZVz4xhrFlHH8nUbSYVboDpN1SYH54iS0RHlZlbeVC+yh0nqYAVG09vDrTxS2z4RZIM6zrQ1y+PjDyKooVxGzFYipsmI5xsqqFdew6PfvGa1WA7UNU2nx0lLxcqRc/6+HKpl2eKPnev9fvxU50EiYhqz3+NXIozHixgsmRNLGawdkFhDcJT29+WkUbHwWj2Ggb6kvZmEvvmu5YBNnpkRs/LHwP+7g==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6795.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(39860400002)(136003)(376002)(346002)(396003)(2906002)(8676002)(55016002)(71200400001)(5660300002)(83380400001)(9686003)(66946007)(54906003)(6506007)(76116006)(316002)(7696005)(64756008)(66476007)(110136005)(66556008)(66446008)(8936002)(26005)(86362001)(52536014)(33656002)(558084003)(186003)(478600001)(4326008);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?oADTrJIkTKs3dDOvCXMnsSgpQKG2sgCKBVVzYzVgwlzFRCSaOVrXwH9MoPIl?=
 =?us-ascii?Q?PBj9nvaJXnA2L1DBVGIwNSVIEu5A1vT5LAI0qi2xmOG9f0ecJ1YwAjcd/oiO?=
 =?us-ascii?Q?tHWKC/yViOQNwekb6f6WMkpFiozuxYmBbBq6Z3EBlT9MvzQRIOVctnOzj7gk?=
 =?us-ascii?Q?oUD8P/vKw2nCTeVQYEHe5gu6r8zw8JmMvBhyXAQvhfFTcOeztxPAAZ4pec/5?=
 =?us-ascii?Q?Z9mtKvg6P8D/XlsdpnuJMTV/Y5Oks38JSc+XcIIUSinGxMMHjluaop+qgEOJ?=
 =?us-ascii?Q?31Cr6hKYSPN8r3SkeFG8I/fw+6h3dTx4goEdMEjFIpkIjreZdBNAXoBmh8yP?=
 =?us-ascii?Q?GHNUuRX9/POL1r1ep+o3tn+Rxhq2zxr0eXOCEjrBlXW76+1F7wmqpF9LSNmH?=
 =?us-ascii?Q?hEaad+zScec/dCZQ6qTjNkxlscJVJkLDvW0ANGRKLobp9tcykqBLhT6yF6Q4?=
 =?us-ascii?Q?3+vI3bJPb0uhQkHnlSOMOq4DYO0it97pmInliPhZxY3Vwv7YOfPCabgIN3Kh?=
 =?us-ascii?Q?/PYOB73XEsv7YfbW2JjL7PO0igU7GlrvSsgDXzaBJpXAvxZACA1Tu0bij8du?=
 =?us-ascii?Q?C5cPSrqsOWs/+VnlWyZVP5jftoT99MBQGRncSeZBVyk03bIZ/ODCAo7J5nRq?=
 =?us-ascii?Q?jIYieMlmQ2rq+cSIIdvSdw8F7m+FxrWeKL0zgYehJps2jJdBwqYPMqIkn790?=
 =?us-ascii?Q?aCJxcMRWCljtyuV4H7EUR8FutBTo4hEPTSQJzu1p/A/clVWHl4GveCIhrBN6?=
 =?us-ascii?Q?8VFQBbnWeB9USUQ1B/opryMDh2ffkkW+VEoLXCRumtFoI2yNf2YpjfKOhOO5?=
 =?us-ascii?Q?YZO7H4eBf9HdfzmzrgLeVtOT/0+O3uBhxQEjFFw1OWr0H2yY4QG8STaP1fQJ?=
 =?us-ascii?Q?2i0xdsjwYPA8YJ2OMSVQpDrBL2VvspqdnL3cCDHsJWgjVjJRN166T/GzCikL?=
 =?us-ascii?Q?Ua02WuSUenflwYHSB0Et3G3hJEtbpU2Eu7rcEqgu814=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6795.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07be33fa-9c6c-4bff-d38a-08d8935ef77b
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Nov 2020 05:32:15.9976
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +Ftk16OjgSg5NwjDl3SCNTIyBO0K5gOmQr6LJSQ2tftUl3BL/soxP/Av4KbsareyFlww+xQ/nHRLug0kPXPWKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3707
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Joakim Zhang would like to recall the message, "[PATCH 1/2] bindings: perf:=
 imx-ddr: add compatible string".=
