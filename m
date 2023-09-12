Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97F7179D507
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 17:36:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236248AbjILPgf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 11:36:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233996AbjILPgf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 11:36:35 -0400
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2053.outbound.protection.outlook.com [40.107.21.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6AD310DE
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 08:36:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZCePuoUEGpfLcX25CDYMgMazzePnF+nUBXkJl15KD2iyTNAGjypVq786aIlp1iTSXQPGguXeMPjIQtIrSCB8pTUzJOSMBVqwBho2O/AGTijFHaQ0nrah8kfHh94fNZZnohutvunjhCbGWLXKaSOC+v401DiW0B1UlbvD44K/HPWmNIqptQcx8LTUmBXeId2bRIOwtCQOvd5/uWbuvzkN5DlQfLsWhyESJjW85N0qujQuWXsW2Rzq3Tgd2XFS5hAEDkrrhYvqk2dXI3S3cRYRXjLf8/IovDgANq9R0TV5SfJfNCkTrdTwnTDlSeXqDbKu+ZBUt2DG/86yscESavRjJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hBHa/rhni+sNQ42Uz3Id9THCxEHzfhxEb/Cx212Mm+U=;
 b=k4OecIpVZcGuVoQS9vHRcqofwR/QmPXx4NKwTWMPVT+dloBZdjbvf4biLVDoqlZ7hqLNsLSa23yfhGHgAEEf+ycU2b7JoRj8ojAKstAgY5FiBO4hyTEp5gJO9DNW9a5OaATz4mMZ40gPEW166J1hmBJdj52p/7FLdZphj8DZ8e8VnTpJwzbP+pyAuEbzzkJKUa3VpfnZN8SjS1cMqiX9585Wsc6wz7PrBf7O+WzgpCP7RAGkWiyL7qtEEL1JtRi25hrGS/LgGAgO9EwBrX/d0xYOPr74x1lkyaQKna3Im9Q0+kL38aUiDkoqvU6ML+omGEGFK5NA9OvG6fUSPspLHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hBHa/rhni+sNQ42Uz3Id9THCxEHzfhxEb/Cx212Mm+U=;
 b=FZzbGCoDs44dcmWB5znKD5sKDATGU1BkbpyAlUBnyZ3DSZas0+8sDJgHYqVJKCXBA9q6//ADUTsZ7JVCwpB2q/rK2kKw+kyL9pULv1lFeiyg/ONvLlthEasTMGZUoNFONnBP2L+cPlczHtBcj7hNKtXzuGUDHgf0cUGzipltf7w=
Received: from DB9PR04MB9234.eurprd04.prod.outlook.com (2603:10a6:10:372::6)
 by DU2PR04MB9194.eurprd04.prod.outlook.com (2603:10a6:10:2f9::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.35; Tue, 12 Sep
 2023 15:36:28 +0000
Received: from DB9PR04MB9234.eurprd04.prod.outlook.com
 ([fe80::f669:3c24:23:1bc3]) by DB9PR04MB9234.eurprd04.prod.outlook.com
 ([fe80::f669:3c24:23:1bc3%3]) with mapi id 15.20.6768.029; Tue, 12 Sep 2023
 15:36:28 +0000
From:   Mirela Rabulea <mirela.rabulea@nxp.com>
To:     Fabio Estevam <festevam@gmail.com>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>
CC:     "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "conor+dt@kernel.org" <conor+dt@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        Fabio Estevam <festevam@denx.de>
Subject: RE: [PATCH v2 2/2] arm64: imx8qm-ss-img: Fix jpegenc compatible entry
Thread-Topic: [PATCH v2 2/2] arm64: imx8qm-ss-img: Fix jpegenc compatible
 entry
Thread-Index: AQHZ5Y7lna1OrzCE30W0mydlRueSqQ==
Date:   Tue, 12 Sep 2023 15:36:28 +0000
Message-ID: <DB9PR04MB9234FD059D94BDED8EE867418FF1A@DB9PR04MB9234.eurprd04.prod.outlook.com>
References: <20230908141238.642398-1-festevam@gmail.com>
 <20230908141238.642398-2-festevam@gmail.com>
In-Reply-To: <20230908141238.642398-2-festevam@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB9PR04MB9234:EE_|DU2PR04MB9194:EE_
x-ms-office365-filtering-correlation-id: c48e9d6b-fbed-4942-a9cb-08dbb3a607f9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qcscLnDLnGAo3NemyaaXTL+7C8luWPe+kl35J6kyBvY8Rj54Kb7H8sng7MyaOIbjAkU4oXyZUTEWctSNKzaOfB0wfEnqqC3O6TGt7dswuz+qFGf4Fkp7SGGg1R4vS2jpjXYlplV3jKpsvksZZ1YLH36x5jpyUjJ1UAOGGcMR2p4FQ2OORbxT53Ez8XQEQC2/X+rUpRZxQD05olGTZNiYYrbw/Ht6uN9P+V+DHWS2ChAduLPb7xft76aQJRlosR1k1U6eFE8+fVivWYQk5q838DmdmapT8clkEVkp97AkCrh0f9h0KddTvf/EnKBTLe29Es0WcL7gvLClA/DLKXTBr5JB2NCIfJzxP+/v4a+bnHGBWNN5mTGUqYo20CpfzEPbkkE0vTdAXaOgilQu+NGUAo5nVYk4E7iJE7Xq67JSPbd3Ko81Ht3O/9EM2/DJGxoNUcwQHNEUQFQNlksN3EVo3yXAhIlmrfHw8avh+CMoAT4MNUU0MKodU9l8EnmENBdYnTAkPv13umdu99IPs8oE+7iZIaWuk2EXbZTjT2csFYkKH6O7ODhXzDQl6RXigIbsdelSYzkgKnqpTG/G8sW60kkPBugnKcCL7T+UlARixrP1sb3h0cgam1PtAP6pe97Vrz62mLUSpecShczXv00H3Q==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR04MB9234.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(376002)(396003)(39860400002)(366004)(136003)(1800799009)(186009)(451199024)(53546011)(7696005)(6506007)(9686003)(83380400001)(122000001)(71200400001)(38100700002)(38070700005)(86362001)(33656002)(55016003)(26005)(66476007)(2906002)(66556008)(54906003)(66446008)(110136005)(76116006)(64756008)(316002)(66946007)(41300700001)(52536014)(44832011)(8676002)(4326008)(5660300002)(8936002)(478600001)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8ea8gEqFfDvdqqLHCiKUOdRB8G6AWeuGtZoCSxQ8trVCfsise7jmS5gKGseF?=
 =?us-ascii?Q?YS1ehm++dNGn7fceklv2k++iAhUuwGPHt2ES8EHzxHKOuTTcDOra2meOu8ry?=
 =?us-ascii?Q?uCIEStZoQzVRAM4GI52cs6eb+f81Fgw7AnCtV21XWP/s1lZ3fok3FDbIAaNP?=
 =?us-ascii?Q?+HyDavb+adR46X4UxhkaJnlwWkeZW3pKd2LGuEMjIa7BRCK2zYqZFKvMseEo?=
 =?us-ascii?Q?cKNpzxvEppa4mFRlQAIlsjcPBvPTtVE9AXj9y/F8oxoyB3YQiHBLJwrAwrur?=
 =?us-ascii?Q?xIx1jKfY9/IsEXNwskG8aYjeKOY/AvdEho4Tp3HR9WZJHR2KLObHnTB6c2L9?=
 =?us-ascii?Q?sOBZQAD3jLMXvA6c+JrBpygaEnXgRH52O7gGgf65cnNWTv8O9HfwBMvdJ0tA?=
 =?us-ascii?Q?ngeBPyMt7mfIDadS2cBCZTz2lQdRAogBEL21yviTDTAOJXAOxmhoqmrdQVDH?=
 =?us-ascii?Q?T76XFCIv6QY7X73WRA2U+Gy+s3H4P9nsEcLO+ShDinRibXqkaV73JXHgaguV?=
 =?us-ascii?Q?7YBcdu54BTNYKELbASNtwiF0IqrT9XFclB8L9CYrO6prHO5aD6r8JxJjSeMQ?=
 =?us-ascii?Q?IJwdNc+J0mZC3cFGVB+yzeN3lOKyw1YwlZcLyvm8XKgGdD56liHESVqM1Oc5?=
 =?us-ascii?Q?DlExiIL6Wc60AEWxBFxayX+9lSGK0yJHeG/JWjbe0NTHgzYP0un7QbuS3aa6?=
 =?us-ascii?Q?jV0kJ4AmVn2OpHeghMjH2RN48QD7pa+KisItOfvsfGx1qSFF4owSvDr+LOWo?=
 =?us-ascii?Q?2KOympvnAfz1AxLGfEh4OGPHdTQ/q6sVgtgBszyxq3AwdOkAIUK2Aed9FjTt?=
 =?us-ascii?Q?TQnHP4xHwAsUNjhr9JKV4tZhI3ZdGs/+ogE7u25WJ4f2JBFfQ1xiCWV01U0s?=
 =?us-ascii?Q?sS2alGiiiGpUfGptbm29zS9R7A65Gqa2rwlxODLXb1kiFyKVR/X5I9iyYX9I?=
 =?us-ascii?Q?F8xuGAEm1fQ/g3qlUlDShwjp1G7/eguxOwywyJ/S/i4QKR8uGKPJbUK7G9ci?=
 =?us-ascii?Q?A5YdPnLCDeX5yvGhhv9P/DbuA1/KIk9Zc8F5o6JfxfUAwWtSOLvB5M3kuDZx?=
 =?us-ascii?Q?LKIhUQ1Th9J8aoBv8fKIsdBq5iBW1YDgEKWbaKje2LF/TSooxg9PreSXkwBV?=
 =?us-ascii?Q?/Lnq7M1HK48mLOCNt+kExqBjScvhj7oZ0ZujJfvzBfVRoz+UwwpwHrVb/96H?=
 =?us-ascii?Q?vxAPst696lvXrlajBqrFDpnP9/DbXeFj0Hxprf311Km/vPm5Ff9xzDmeiCxE?=
 =?us-ascii?Q?JlouFKAY5RMZTOkvft4QJB8YXt4l75Ui0YmxjHdlzVcUhPnoRd9nrJq6jk8Y?=
 =?us-ascii?Q?vKY74pZ+P2t+LUSfICw/limt0rtRM6bX91yuF3laYKe+VmT4kHoj5WxwBxT3?=
 =?us-ascii?Q?mL2CYJNErSVP3jkVwNkYEEhSlnplgcZGr6Jbrn+xNNY2Zg4d1DrekBwQZoC8?=
 =?us-ascii?Q?bWRHCq5J2NjVq27gMUQCWYoC8AzWhsEWKb8YC42Zhr6d5Q49bcec6qoGBdcu?=
 =?us-ascii?Q?Km2lQuAzB0wm7+BJCUApS8CkzufgkCv+CrBGuJZA4s0GU3GSRz+vVhFrxie8?=
 =?us-ascii?Q?sUorosXJyrbomwtA5N96yF7Kz+6MhMKVA+dkyMO/?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB9PR04MB9234.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c48e9d6b-fbed-4942-a9cb-08dbb3a607f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2023 15:36:28.2363
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gqrELhoYqpuH3mojNfBXr78Bd8vTat3lZCm/ucG1OLYnfWHnkXKW4oALoK3vP76wXbgKud77dpf4ZFe5808C8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB9194
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> -----Original Message-----
> From: Fabio Estevam <festevam@gmail.com>
> Sent: Friday, September 8, 2023 5:13 PM
> To: shawnguo@kernel.org
> Cc: robh+dt@kernel.org; krzysztof.kozlowski+dt@linaro.org;
> conor+dt@kernel.org; Mirela Rabulea <mirela.rabulea@nxp.com>;
> devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org; Fabio
> Estevam <festevam@denx.de>
> Subject: [PATCH v2 2/2] arm64: imx8qm-ss-img: Fix jpegenc compatible
> entry
>=20
> Caution: This is an external email. Please take care when clicking links =
or
> opening attachments. When in doubt, report the message using the 'Report =
this
> email' button
>=20
>=20
> From: Fabio Estevam <festevam@denx.de>
>=20
> The first compatible entry for the jpegenc should be 'nxp,imx8qm-jpgenc'.
>=20
> Change it accordingly to fix the following schema warning:
>=20
> imx8qm-apalis-eval.dtb: jpegenc@58450000: compatible: 'oneOf' conditional
> failed, one must be fixed:
>         'nxp,imx8qm-jpgdec' is not one of ['nxp,imx8qxp-jpgdec', 'nxp,imx=
8qxp-
> jpgenc']
>         'nxp,imx8qm-jpgenc' was expected
>         'nxp,imx8qxp-jpgdec' was expected
>=20
> Fixes: 5bb279171afc ("arm64: dts: imx8: Add jpeg encoder/decoder nodes")
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Thanks for the patch!
Reviewed-by: Mirela Rabulea <mirela.rabulea@nxp.com>

> ---
> Changes since v1:
> - Improve the commit log.
>=20
>  arch/arm64/boot/dts/freescale/imx8qm-ss-img.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/imx8qm-ss-img.dtsi
> b/arch/arm64/boot/dts/freescale/imx8qm-ss-img.dtsi
> index 7764b4146e0a..2bbdacb1313f 100644
> --- a/arch/arm64/boot/dts/freescale/imx8qm-ss-img.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8qm-ss-img.dtsi
> @@ -8,5 +8,5 @@ &jpegdec {
>  };
>=20
>  &jpegenc {
> -       compatible =3D "nxp,imx8qm-jpgdec", "nxp,imx8qxp-jpgenc";
> +       compatible =3D "nxp,imx8qm-jpgenc", "nxp,imx8qxp-jpgenc";
>  };
> --
> 2.34.1

