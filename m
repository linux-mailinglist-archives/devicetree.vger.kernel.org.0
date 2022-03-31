Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 905124ED540
	for <lists+devicetree@lfdr.de>; Thu, 31 Mar 2022 10:13:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231503AbiCaIO7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 04:14:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229924AbiCaIO6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 04:14:58 -0400
Received: from EUR03-DB5-obe.outbound.protection.outlook.com (mail-eopbgr40042.outbound.protection.outlook.com [40.107.4.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF3F61EDA3A
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 01:13:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jFLkK0Rihq9hXC5P2bS8I7UUy18BgxgunPbUzjJdhKxcJOJYnLWJXWX/sHmmUZZp/hQwwyud6XFAGdm9oQwyD5qKW1SCupmrZcTVvb14c+0iMMD+xp2dVd57rswzg3IMrqqoZjFcFwyO7PDzDrfhC55v2ZQmMCg4VPeXcw76rR7NUpp13pH7ttrMuDxvKIG7wF/l64hweK0uxOK+dx8Qo7RUm08l2eJDkfTRaaOrAiJFnWRiGuYnNslQKwakVInHdl0pszifUIeUwffwgoK7evVFRTGaV+lMqmWAbdpgwQqUxOgJatBgS12L1LIltQGe1u7/IBBBsFPBSP7DOxL5Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JjgfMt6KAIokckwOAGZYWcGzTjslvSA7fkEzME95pTM=;
 b=YK6ajLl0Jqj8CaFPoRTtbEE7Td9Y6h0SNjDD4bHBQ71TfvexpaVBlVslAuimdWgv7+oznoY7aX7+rXEorzy7W2AA5HFeEkwVTJ3U9gfjbC1Vm9HsRPrHlN+mc7LOpU/SGFrsffct+iNo2bR2HnSPdU9mN9aWU2a3gfUZQTtoD6FTTcuwCFkVJvv8HFc1gHtB+3qIJv0O9Wq4/8p0Du2Y5aF/PXn75fFBmAiGb8Dabi9S24ZfdEK7/OvRZFEPGItlPbHKo0nvcY1dmHKTRNriSLkpGDkSybKhefaa2ury6ZCJJ+HvbP5Dkr9Yq7UfC+KNsWXiWW9aVRuztXtABKKayw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JjgfMt6KAIokckwOAGZYWcGzTjslvSA7fkEzME95pTM=;
 b=r9GzyI5aY8JU4zAvks52P+bUskt/JTxHPQp6hw34HSlpLTF19gpYT7Pm2V+sRZtpG/80JdzQR570KxA0FBimd4FgxcpiMpRxRGH0qKxpHGvn5ea2tZtCspVgUwHSd/08EUrm+tjicYOlKGk9L1ZD5mkj3pWouTSr4kppO5K7t1U=
Received: from DU0PR04MB9417.eurprd04.prod.outlook.com (2603:10a6:10:358::11)
 by AM0PR04MB7154.eurprd04.prod.outlook.com (2603:10a6:208:19f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.16; Thu, 31 Mar
 2022 08:13:09 +0000
Received: from DU0PR04MB9417.eurprd04.prod.outlook.com
 ([fe80::389f:e6eb:a7a2:61b6]) by DU0PR04MB9417.eurprd04.prod.outlook.com
 ([fe80::389f:e6eb:a7a2:61b6%7]) with mapi id 15.20.5123.019; Thu, 31 Mar 2022
 08:13:09 +0000
From:   Peng Fan <peng.fan@nxp.com>
To:     Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>
CC:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>, Marek Vasut <marex@denx.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "patchwork-lst@pengutronix.de" <patchwork-lst@pengutronix.de>
Subject: RE: [PATCH v4 0/5] i.MX8MP GPC
Thread-Topic: [PATCH v4 0/5] i.MX8MP GPC
Thread-Index: AQHYRCNnRS/u7RMuJE6CR04/FUPm9azZJflA
Date:   Thu, 31 Mar 2022 08:13:09 +0000
Message-ID: <DU0PR04MB9417835E6D343983FF67372988E19@DU0PR04MB9417.eurprd04.prod.outlook.com>
References: <20220330104620.3600159-1-l.stach@pengutronix.de>
In-Reply-To: <20220330104620.3600159-1-l.stach@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a738315f-6e3a-4b16-0708-08da12ee4af2
x-ms-traffictypediagnostic: AM0PR04MB7154:EE_
x-microsoft-antispam-prvs: <AM0PR04MB71544AA8EC82C10CB2EE46B588E19@AM0PR04MB7154.eurprd04.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 32LuoImstZovgVpKoXu7El68CpnTCAdVDmXCvPeLhGtE9dIxBcKq543rKIdN/4uGPqnG8jDcfYdkUevYBarczuE10QgyFu3xQHEwq/dv2PvDm+vCav0WsrMpCYuyIKzbKqFArgNW+vfvnp+a0k5/c13+GfuiDJT2fa+kzB5cVk7qaOGQfO0psbJNsPyEzPDe5ZL1IrhqGGlhRJ/K9w1N2+JoBe/R1R0/M0mOO1YdVvliefkHT+87GD712+oi/ATdMD5/TyHlGbsUxSq9/bCm5syeSsoNiYRm7os72vmpOfyOVCuSnYGadwOSixfzpcjFDMwhXVFDi9x9JYwXifl2+rQ1y936kgBXE37npTVMoZN6tV8sZQyuH5cbi879Tsp+593AGZwh6HkYg6olXukij1Uh/1fNCAwMJ1yJk/yojOnfjh44pddHUFQC82tnjCeo3CDnPqwvX6Rl/3EeYCihErsbX6CeTChJqhfdGPgWpX2kb/h6TckO/huHkbLD9HgC5yscN5gurggYBB7NvRsH071HgBmzGXqecDHDeKv0T478KpbT8DKNuEjG85VCNxCK80qxGcNJrvg9+dAWM+EkrNYBHJGb1jq+Yeq4QcvAJaSMLQa8uliuLTy3kIIMUmztO3NYQQnoYH7WBZdNJvGUNCSdASD6rXKrTznlHcWPpQKIQ/OpctXvPI5JZ5VHfe7YBfcpa9I+kb7fFEmsZbD+5w==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR04MB9417.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(7416002)(55016003)(122000001)(83380400001)(52536014)(2906002)(38100700002)(26005)(186003)(8936002)(5660300002)(44832011)(86362001)(4326008)(66946007)(76116006)(8676002)(66556008)(66476007)(64756008)(66446008)(110136005)(38070700005)(33656002)(71200400001)(508600001)(9686003)(6506007)(7696005)(54906003)(316002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1qppy72wrfvgJKhLQ1KdoaMjt46fB5DxUnBX1jH4rIcad5JWLbbQUwiH9V2e?=
 =?us-ascii?Q?uDVDf5WzStl/0zQQn3Dc8Cv6MnEcWvg3kwvcglRAqYh7KvjJCgqBISFSRxmL?=
 =?us-ascii?Q?KdfVmcsOwS5kI/aUnHKzSw3QAGCr7FFAUjdCjzPA5F0jqU+6bS6kIwCfo9Uq?=
 =?us-ascii?Q?cb6L4DR5QwZEVFNK2pLLv8oN/bUKAKA1C0m/65cYHM67oV/GgVIibpb9K8m7?=
 =?us-ascii?Q?ShuP5JY6K/GNA6FovnkJibd7+dSCuycqrfVN2a6xajEa1r1SRk/9vCfqYCVw?=
 =?us-ascii?Q?2nUuwQYdgpjw75sV+a9ROqfaO1d+6FEfdUqMj81DmbUdMEZyfIH12B+yPd1G?=
 =?us-ascii?Q?/KfQ8q4PqXRUhSpq1G321LeLvTAyZ+XxDTzI45LN9H2CnyjAZLii9R4KDAMk?=
 =?us-ascii?Q?gEB+YS0gn5PYsV1gtPJQA4Cjxi0SOsWmh38YbCUJ+R4Y4I5ZFnzjCpGjwt4v?=
 =?us-ascii?Q?ZQeLlS6YVTGpF4JQ7tb2UVQlYfqTdbrY38HloLFak4Au304fAS+Rew3yjLEh?=
 =?us-ascii?Q?fbl7a71g/86bIgswCbwCm5foA1flbStO4BW8htajtTjWreTIjCMzmxkk4UgQ?=
 =?us-ascii?Q?Lujt9nYsinAb+vAEHkkh9f9YWIA0Jf96LcDjJMBLPDlR/mhxk3WiD0Y28sBb?=
 =?us-ascii?Q?tIq+AZkflnGixagvF38Ae/W/z+qkOXymT1giUAfJSlDMpCy1oxN3sWm3ludr?=
 =?us-ascii?Q?gEznJWm9RO3i6nfK+u2nuKpGmqEM+C7KDE9ccGQklqt0iMx0cLG3kxi6txnr?=
 =?us-ascii?Q?QiPrWpW8mFSeWiVRyNjOd97UFFoxYC5+erNl7GLOwLL+qTTNzUPCsoQ7AX04?=
 =?us-ascii?Q?i/tYO3VIaMIdNF4vZZHuj2agv6WnAkGnv+8B9qCtlVdxGZZcEAIoojREMiE6?=
 =?us-ascii?Q?wazD6WQxdA2Opgzf2iJBGefMqr8hyd4OgxzozcPahu7+iFklYO/fUdeZJTGl?=
 =?us-ascii?Q?VFA1wMa527MRcM5Fm+N8EqVWStsPVmfBQ8Sl6nG/CCTSXbTON/1Vzh4yg6MH?=
 =?us-ascii?Q?pOI6Dhfy4ed2Akf+5i3etDm6k/jBQ5MGjKamCfJjlOJILNJvjhASs312ziGU?=
 =?us-ascii?Q?jc+N8RZCbuf1uM79GOz3qv7ZAtNn+/JUSpF9IGA34oW2dFqh7k8tOwcJ/6X6?=
 =?us-ascii?Q?Fv2yrVgiW2wtxw77Z4Q7N0R8+szy9fkzP1jY9FZMuwn1GGo0qbSGUjE07RlM?=
 =?us-ascii?Q?Lt0E3U0/nNXV8G5gzszVz6eBbWYstif+P+z68HpMytbIg6+pWAsdiHTMMfff?=
 =?us-ascii?Q?o8Ubus9cSa/JW9DuGnLOWlN38M/K0SgKhp2xJGB00a+ZeQbUUz+/XgjI3gsN?=
 =?us-ascii?Q?nutEty0zG/JW/7TBhMgRbPUs8oR1Hn0abmzfMJkaWVQcSGEy77tlVKh4pKQV?=
 =?us-ascii?Q?uwxO+hOe2vnOJ7QRGgseXZzKCtKpxIvoKo73tLDFZ+XGQTaBfITjK4ZDdbFE?=
 =?us-ascii?Q?xGb6RyF78FTgJ04QdCfaYRqnFAwxlHN8eegyq50D5gs7X53ZyJlatMzE/nOQ?=
 =?us-ascii?Q?iNwpWDl5Hi2MoHUSsVtnzuJapdxbOT4Q8+iRVolda7EP00C4GJtBcGW9PE2o?=
 =?us-ascii?Q?64zU6dA3KkxtknylLbuFLdMpcSQkqa4IL3F9OZ9cuEfusx41GljoKudhxDsV?=
 =?us-ascii?Q?phgbUVjN8bdfQnEJhbMkkhEdchPygyU0J3rsIdnB3fbJA1JVfKMLwYakcRtO?=
 =?us-ascii?Q?u176BEDE04q8iPfzH+ROYveZbYwb9Z9iD01e2Hlq8f9DJ5kS?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DU0PR04MB9417.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a738315f-6e3a-4b16-0708-08da12ee4af2
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2022 08:13:09.4144
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dnYILdt2RPnof1aVFCMk5PbuLL+TdGQXpWMx6vx+JBQkZDOK8LU8VXOh7CmshdeL1XkrOb/Tl6cOA3oJSPEuPg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7154
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> Subject: [PATCH v4 0/5] i.MX8MP GPC
>=20
> Hi Shawn,
>=20
> This is mostly a resend with all the reviews, acks and testing tags appli=
ed. I
> dropped the HSIO blk-ctrl part from this series, as I noticed that this n=
eeds
> some rework to better fit the upcoming HDMI blk-ctrl. The GPC part is sti=
ll
> complete, so the MEDIA blk-ctrl series from Laurent can be applied on top=
 of
> this v4.
>=20
> Regards,
> Lucas

Tested-by: Peng Fan <peng.fan@nxp.com>

>=20
> Lucas Stach (5):
>   soc: imx: gpcv2: add PGC control register indirection
>   dt-bindings: power: add defines for i.MX8MP power domain
>   soc: imx: gpcv2: add support for i.MX8MP power domains
>   arm64: dts: imx8mp: add GPC node with GPU power domains
>   arm64: dts: imx8mp: add GPU nodes
>=20
>  .../bindings/power/fsl,imx-gpcv2.yaml         |   2 +
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi     |  72 +++
>  drivers/soc/imx/gpcv2.c                       | 430
> +++++++++++++++++-
>  include/dt-bindings/power/imx8mp-power.h      |  29 ++
>  4 files changed, 521 insertions(+), 12 deletions(-)  create mode 100644
> include/dt-bindings/power/imx8mp-power.h
>=20
> --
> 2.30.2

