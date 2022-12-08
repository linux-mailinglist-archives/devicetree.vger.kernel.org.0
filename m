Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 60348646C6C
	for <lists+devicetree@lfdr.de>; Thu,  8 Dec 2022 11:09:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229524AbiLHKJM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Dec 2022 05:09:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229521AbiLHKJL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Dec 2022 05:09:11 -0500
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-db3eur04on2046.outbound.protection.outlook.com [40.107.6.46])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A921410065
        for <devicetree@vger.kernel.org>; Thu,  8 Dec 2022 02:09:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d9oI8So9E0WPGb+MRC0FJjMplvzygLMwiD1Y3nzY2UDdphmljWXpw5v8XO37qZN2ZhB8rdLHf28NIUgLhzoKu/DphYiFQsnPsXffR41B9ySTJT8o0G4bL0bTUb7hSKn4asxUTDSC7Gk8dZkpOIUOwL9WdQNPfLwHJ99zI26bNW+6mJnOvT//ohwoRgdp1AWzCnBGfAy+GH+CRs9b4nwd0m3irEEbhT4qdpkZu86rA+PpNxzCAMt8O0fLgzDbwbrFqj/adLAvkffjEkhod/UegjYnC6j+GzgFfK45up57quj8eha3uB6gl05ZEj0YFFBnChM1rU8wEgUX9ZTwgBxcNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Uq0f4e68mjnVT4nu1kafsvtNg9JzzYZqucARHTIAGO0=;
 b=BEHi3zHf3xvyg5kER+QndNI1fnbTWaXilXwsi6b4g1ENVB1GGKQPb+vNee9lyNCEWO7yHMPclYWI1GaM1YSi3sJfYyVgF/s8cks1UhDAQyQ1scCymOHvicwoAeb+a/bsEbIJ4lsa5gYwwZbaTng5iua4HHhrNxjJL9d1xsgqsEUKzYOA186pK9Q0NA8EMZElrxaDn/w9juufjmyrRElPG877DatSFzPzb1enF0T2lqNzE4pFcUDx8hnxX6Ei73Gv9qm+Pj8xPxNiHsduotFDj+5y5mX31cq2tVlUP+0c/Ki5++AQ5roy/7lDpKajixUQNj+pzgGZP05N84VVMLl8eA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Uq0f4e68mjnVT4nu1kafsvtNg9JzzYZqucARHTIAGO0=;
 b=s9wkbMMWU731sYPDNXT3Ev21hHdE9wyz/aF8XrWBiee98HV7VxhmWNM30k5ElNkqr2tyRIqNb6h74agWvivJch9pLMLsoiV+k12p7+G6LHeCxdY+nXCKoFJu3vN4DOsRzr97EQQMzS81mbtsYoyAk9cEQ/tdijweR7DA/kRslv8=
Received: from DU0PR04MB9417.eurprd04.prod.outlook.com (2603:10a6:10:358::11)
 by AS8PR04MB8056.eurprd04.prod.outlook.com (2603:10a6:20b:288::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.8; Thu, 8 Dec
 2022 10:09:05 +0000
Received: from DU0PR04MB9417.eurprd04.prod.outlook.com
 ([fe80::e33c:46f9:ef88:8973]) by DU0PR04MB9417.eurprd04.prod.outlook.com
 ([fe80::e33c:46f9:ef88:8973%5]) with mapi id 15.20.5880.014; Thu, 8 Dec 2022
 10:09:05 +0000
From:   Peng Fan <peng.fan@nxp.com>
To:     Bough Chen <haibo.chen@nxp.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
CC:     "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: RE: [PATCH] arm64: dts: imx93-11x11-evk: correct clock and strobe pad
 setting
Thread-Topic: [PATCH] arm64: dts: imx93-11x11-evk: correct clock and strobe
 pad setting
Thread-Index: AQHZCuRpoPAOwUom7kuHpN1PsjibHq5jxDcQ
Date:   Thu, 8 Dec 2022 10:09:05 +0000
Message-ID: <DU0PR04MB94178E8A5D3DEBECA097BD3C881D9@DU0PR04MB9417.eurprd04.prod.outlook.com>
References: <20221208090658.3591981-1-haibo.chen@nxp.com>
In-Reply-To: <20221208090658.3591981-1-haibo.chen@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DU0PR04MB9417:EE_|AS8PR04MB8056:EE_
x-ms-office365-filtering-correlation-id: 9be6d85b-659c-4408-f5c7-08dad9043d3f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: c/vi3+IKtxkBQDAITvdLJ0aZtbMyy2CXKvSYhejhAXj7G0swdHNeKpw8mJYUUvw5Mc3AefLjXyLbxe5xkpEJrkQKgBt/TmbHvZULZkF3lCUaKXNyeRQRcYBplP++Ez9/i8JKGunqBuMSs57mqpy+bctYTivfx7++OzXMo99tvqkPUFCZb0cyXLweCd9GLS7RvplJRJunROGm8Z4TRtCYioKOnAw+IRYoTIBrhH/9MzFYp7mCJMO/8wepK8K2JK0s1jH5TyVIJG9G8tk/CmENDKDsoE8901AcOudx0dh9c9kuzxf8q9WEIUbO8/viGfgWno5a9DpsEbhgcROIrb0dGmXpGmpVF6M8nF1gi+byLbYgSGGoDXUYWKdrwpOn1cZkT9hDsPi5jp0/hq4B7/bNQqGdZ06wWlzVyiMHR8Q59y7O09xqic1N8QpL7UM2aiIi/zptdDTLFPQwWqxIoLWF19M4LZVx3IgtO2LQVjDqef5+mISKf2HWv694tD7cb8lZPkRRV2fpkkHAGbgLKPWDrVvVLPLdctOOtyg8mb2KI9gLWMz/3crCXpuSvGwIrdWkEvtOhERRK42LMCLHdvreWgnrHrY2Pm9W0rzNMIPg4070b7CmS24mUWrlHmZWeYbu1bT7v8sC6I+/qN7YUlNtY9akv85YeSS3Ztr1k0wzMRuSUIGYgnrmQWkCdFDKJXXhhMAtrrzwM0v/UAdB6nZKsg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR04MB9417.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(396003)(136003)(376002)(366004)(39860400002)(451199015)(478600001)(86362001)(7696005)(6506007)(33656002)(38070700005)(55016003)(83380400001)(38100700002)(66476007)(122000001)(186003)(8676002)(4326008)(52536014)(41300700001)(9686003)(66946007)(71200400001)(5660300002)(64756008)(8936002)(4744005)(110136005)(26005)(76116006)(44832011)(66556008)(66446008)(54906003)(2906002)(316002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LR1W+raviKeu8VxeNrKX61kq5qFzy9iQMTU7i5kv1Cfoyhx+3xVWOh+3a+ha?=
 =?us-ascii?Q?hg0mtKypvNsVDwopXRK7DBpVept2dby+bpSnUeP23FdCJsDkcnEx++bx6w6I?=
 =?us-ascii?Q?O+QFPSLRLbaH81DWGtrjKqkGYBSIB3lc0EuaAdMMuu8LHxxCd/F9pPT1oB+6?=
 =?us-ascii?Q?5QvPD1EhG/O2mCsymIVWtyMfHA7r08I7SuPGfIxxc7mcN+v125NzcpKOiN4N?=
 =?us-ascii?Q?zwn7JlMpcGFnK+BNslJT3cUYoCeT/v/kRzaF9fZ21OF4pqxSsh7VPwpGdvVV?=
 =?us-ascii?Q?XpW1ABqeWuS0TK8H9G1ORX6J10mxY+NjSyqNrpTTV3OKH70uveFvZMMGujn1?=
 =?us-ascii?Q?WTWxipJQGnWDj5SGP1vZbS3O4K45C/1qcMXh8wMFVS1xm1dwGSd+4WpFEEaR?=
 =?us-ascii?Q?ItV7NDjBJcpdPeoMk1wDDS3L9/cggzHwPY/05CscPwXDNW5xbyhppy2NhuBM?=
 =?us-ascii?Q?pruFk8fcaKlWTHvrscln0FEBqvXR3g+yPeOpSAA+fSumUTfRhOUpnaVDSGIt?=
 =?us-ascii?Q?2gZzcKOagUQQvcaMgCEaMYSsfXSykxJlOea9Ve8kYqo54N8Hg/xXk47J2N6T?=
 =?us-ascii?Q?VMMKWsLd+wfKvo8gRSL/STabaAvRJQMidT2v3hLhzEoMM0/+1l+StYw4xeVe?=
 =?us-ascii?Q?cF+J/xwGJh/sQEQTOqSoje/lM2C3FlmM95s067aT4L4vtbJERnIpoLh7heCt?=
 =?us-ascii?Q?Qcp0rdnJKnek6m/EGxsip7QNgQIlf5F754pS6LuWW0LD8PlRqIvRpZx0wRwq?=
 =?us-ascii?Q?nG5plAd7lF0HCJGUKZwp4bg7hcFxQNfo1xh9DkXhKmItk6BI9Nb7abvkuMbG?=
 =?us-ascii?Q?0TIPZDWB2soJZ8ZlXLPTIcxC1I6iXZujYIq0CyqNifdSsCKyMgcQ0WMCTxVs?=
 =?us-ascii?Q?tLnEDwmOP2qxgcsobXXw7dCFX4lfkzrMpaZR67txMdzSbgUp1ZWb/XXnM9nP?=
 =?us-ascii?Q?uQD533NQaxCxFsTROM/tp6C2nCX1SwW9mjWLSFKajUNBgFPIB5dL3jwIchOt?=
 =?us-ascii?Q?fyhlDFCunQBCmWii7S9nTGvCXiKu/3jgyIm168djJGkCMNg/p7evDJoab+XN?=
 =?us-ascii?Q?2gV5UlPw0rJ6AuhUPXr2ivaG2lJOcIZd182TkMj7v3KcImFntJAYX06tFkTL?=
 =?us-ascii?Q?Cql5ewyjFKciJGuEGmpt8ODBQZIBDuL2yW1kdyV1kFP4wOriTgG6LjDQlASk?=
 =?us-ascii?Q?vmJpZ/tonvZlMadeMzwlMVQ7GP4sHOhLQV9B3T5SFn7rkC56Vt4IdeISVIfO?=
 =?us-ascii?Q?XLMjvSWt6JoTscn6fw9OCyIsCK35YgQK/zqN/LTGkrkux/9LKmLYd8MvM0B4?=
 =?us-ascii?Q?EkvKq8jBBCjQ4xcuoaP1xZk6ucxbOSozJY1xdKoxDqZzZChXLlmMMiJUmlMO?=
 =?us-ascii?Q?ohFVhwBUZ9fGIYkrdAs8yaT5aEVvtHEtKkvLeULnUNY6pc4lsviuZ4kmghAH?=
 =?us-ascii?Q?C/V5epDkixuYtHItnx5vo8MJ4shHCJREezSGFrJ98w29Jo81upN2R/nFT/Is?=
 =?us-ascii?Q?ZqszANavWP8vB/X9+/wHEdN3PMNbkY1sahgVI77GzOjnp4PwJmsDLvfH3xME?=
 =?us-ascii?Q?wV5PWXVU7rX6D1WSRpE=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DU0PR04MB9417.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9be6d85b-659c-4408-f5c7-08dad9043d3f
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2022 10:09:05.6420
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y/PzymD/+MX5LTdnkqWXE+TttuB7BAv0RQrPq9b0dW00bewRSLXP2/I8Tu+aAEF6tdTpA47IymNPYeJKlILrQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8056
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> Subject: [PATCH] arm64: dts: imx93-11x11-evk: correct clock and strobe pa=
d
> setting
>=20
> From: Haibo Chen <haibo.chen@nxp.com>
>=20
> For clock and strobe pad of usdhc, need to config as pull down.
> Current pad config set these pad as both pull up and pull down, this is
> wrong, so fix it here.
> Find this issue when enable HS400ES mode on one Micron eMMC chip,
> CMD8 always meet CRC error in HS400ES/HS400 mode.
>=20
> Fixes: e37907bd8294 ("arm64: dts: freescale: add i.MX93 11x11 EVK basic
> support")
> Signed-off-by: Haibo Chen <haibo.chen@nxp.com>

Reviewed-by: Peng Fan <peng.fan@nxp.com>
