Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BCAA076A6B4
	for <lists+devicetree@lfdr.de>; Tue,  1 Aug 2023 04:03:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229888AbjHACDI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 22:03:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232112AbjHACCn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 22:02:43 -0400
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2087.outbound.protection.outlook.com [40.107.21.87])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 506D7212A
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 19:02:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iO/SlB4VJRsEsNcq6FMu9aqcZJYuvNLF84yGr1XU0HYtByDCO6J3wGeG1MvZ/IWc38Tmo6UEkVohqQn22+9dQ7dUoHipzQeGVKq5K3mgurQlJdkgrTcPhTa/Wf1ma7m/44THuXJ5Z6uugG7yC8FWYzpuZR0hTBhqns5pSNP4ynQNGQpvuYyS+5dVSORvSYE9LlCQmdeeufa6vqxD6qKt0w+zl2CB8gNi2yXGTU5BwOhqtu0KbVrn6Rliuo6Mimu7wQb1gjE8SLGqUCVQYJ68OhWQEE+HuPT24byd7JF+C94zwmYqbwE6mj3h1Sy2NEGiEmG2O9QShi43jx+TcXo2Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=useo3/LMiQbv1VJ6j9V7r8w7xlLrcmWvLlz5JDE91a8=;
 b=HjtITUUn35RV+PTkVjXeW8PxffLKDGNozrN9PFUSDxT3ZenG0YcXAtPdIKyzC9bZzJiDN4defGijx8UqaoaiR6XI0X1zp/zKVXI855Y9Ri5xBlMumWcO60Z/Ai6A3HrKKCpheCEoM2ytF/6/dhfrcMteynI9lK9PhewpTlPMI7L9bwzOVJ7MF1UXOxCvW2+HdSLXMp2sRoAcVTB1xAe8PbfMT4hHT4DfKJdNwJCFym4WI25ng3lwDh9eMAMQDN2ugAFahdkWLPvZzlB3JXZLzryJk4C1NOoLiY37OztPVC+ocev9jySIh4zyk7TC1KvIgDbNFyUtxUgIxii6GtFjqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=useo3/LMiQbv1VJ6j9V7r8w7xlLrcmWvLlz5JDE91a8=;
 b=nWt/IrJz3lAy9ftG874zgbZ4apO8ITmreUO1qluMUB/Doq3iBjCfJzHXxkDfzJaenoOyzxybf+VFS4yred2WlI3nCkRyjncrbqrmV3QR2Y981Y0kQOF91f7PAc6gMIOUu4G1aLRu5wfN+oPmD+xLbrFdsni0zpFBMGc2VOj7xMo=
Received: from AS8PR04MB8642.eurprd04.prod.outlook.com (2603:10a6:20b:429::24)
 by DU2PR04MB8565.eurprd04.prod.outlook.com (2603:10a6:10:2d4::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.44; Tue, 1 Aug
 2023 02:02:28 +0000
Received: from AS8PR04MB8642.eurprd04.prod.outlook.com
 ([fe80::7c23:a6e2:2a2f:9568]) by AS8PR04MB8642.eurprd04.prod.outlook.com
 ([fe80::7c23:a6e2:2a2f:9568%7]) with mapi id 15.20.6609.042; Tue, 1 Aug 2023
 02:02:28 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>
CC:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH 1/1] arm64: dts: imx93: Fix anatop node size
Thread-Topic: [PATCH 1/1] arm64: dts: imx93: Fix anatop node size
Thread-Index: AQHZwS5cby306HD2Hk6jV4djy7u+o6/UtITw
Date:   Tue, 1 Aug 2023 02:02:28 +0000
Message-ID: <AS8PR04MB86426BEF2742DD61B47F778B870AA@AS8PR04MB8642.eurprd04.prod.outlook.com>
References: <20230728083435.118491-1-alexander.stein@ew.tq-group.com>
In-Reply-To: <20230728083435.118491-1-alexander.stein@ew.tq-group.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR04MB8642:EE_|DU2PR04MB8565:EE_
x-ms-office365-filtering-correlation-id: 6b6d8173-7f48-46e8-2e7a-08db92335bae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3NijSjntLU6RQD8Q0ViwbTbdHZoTj9EcoGC1tXb3HtTvHT39qivqcJVywTFE+mjsjPY1hZSqG/Z6MX5V3FYTuDBAXPE2cNTy02UU8N4dBQS9b5+qf/DP4medYSGy02f1C5O2lZDTm8xU3rk07mDoSsXEXetzt5byblfW7CVqk9kfYtwddQB8CU6kqqDGLFu01hQV1+DPU+IDOtyGMxZ7WKpB/O7FiUMcht8dzMZbZbikBeVlm3IF3Dc0f7X3WedqTkPSyzw8eBLdviZPPCSdH3PZ2dx7hzRe1vN2Ex9mjvafkHXFlL2YINtJN80nMt2/IjWnxf0EgHpzmCQoNJpy7gpfriIwY0EJabD6cr5yUzOou9awXX70tmXPCl8Ve+6+6xUrd8Q1vu/aBj965tysB6KN02auP4bovV0NUrILdXNFlleiA3/9PAwaLVj4cbKCfNIrcr2cNGss47oCNQLn3PQTTP03j0bEaWx/LY9NhQtO5lMvsonBAzwHGm4DhVc0os6yLlLcUFjEGNHW9EN7u+hSu7Eaxb9g4WnVOCkqeaTMzJvy/7ufgQjrnyPyUQ+OSh5hP9MmDRTm5o4+JXujZROM0TsX8hWj/n5b8TwUPWbmaWy9dRkGzLkR0AvmS0/r
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8642.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(39860400002)(376002)(136003)(366004)(346002)(451199021)(7416002)(38100700002)(33656002)(6506007)(5660300002)(76116006)(6636002)(4326008)(66946007)(55016003)(66556008)(71200400001)(64756008)(66446008)(66476007)(110136005)(52536014)(54906003)(9686003)(122000001)(478600001)(2906002)(8936002)(8676002)(38070700005)(41300700001)(7696005)(186003)(316002)(86362001)(26005)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ed/6AiWZqT77IOrYdkWbS5QqpukAhS0QVxVhJ/gHn7EY4XxWo+hpksVRE83f?=
 =?us-ascii?Q?XH/cDqCMq+73TzaDzRy7CbzCV1NzLyr+kM0eZYzUTe0CPfXpIvUXClsslTWG?=
 =?us-ascii?Q?pdLag4Fr5WUk/XRDejn9hJBxQUMMc+e49sIXLYfIxWbAHq1chKDY9V1CAG9p?=
 =?us-ascii?Q?Pdjn5cgqc9x1gf3NDrAd8I8GkAlk+XDxoIBIcZJnvJbJCZzBH8i3Pmpdc0E8?=
 =?us-ascii?Q?43kzg4k7erJC1s3rYIbOiO7PAZa+hpCEmmcdj6nnem/ZV28A/dRfyXGCjlI2?=
 =?us-ascii?Q?rI0qSIqkFIZlu362oNG0ZoAlMtK+l4KPUNnN2WCZ9kj7xKRsV3itEtlQrsFS?=
 =?us-ascii?Q?LRSAJiMOMPuzgqNV3d9/0yijWCm1OLS5bjmY5/UR2uTqKDlwWqfUoerfKQ1X?=
 =?us-ascii?Q?K5U7JU3+D/mR+BCgRWceNCtwnoHYDqmlXYL756d/TrzZDYv0oXifmkRtOGB3?=
 =?us-ascii?Q?KS+u0hI6LRGoXh62hNsv8bkk7mHYIB7Fm9r/GKEY8OaDCZZUKzee/8lKqjjt?=
 =?us-ascii?Q?6JD2U2NZfZ6BS7qO3LxRpCSqitZ2Ksu4TeUWyW62aGzOHqyVuz9IXBaxoqHv?=
 =?us-ascii?Q?PZ+Z69ClR89n244RLXSgXgzZN5lAev418uyGIgy34xfPIz3sGeiiVhPPVX71?=
 =?us-ascii?Q?lJn+fVWzQTv73yu2tXT1gsLml2jzvqPt6icGU12575CyMy8oRoTRA4IeO74Z?=
 =?us-ascii?Q?BT2JqpE7o2qy2k1NHVGuaq+y5FlA8P6vM3zD1LkxoXCFSq2vqlmeKVQheLQR?=
 =?us-ascii?Q?KSgGZq/mgXzJ/kmE6stO7HareSlCqBPbM/xQpXV9ZfDUw26PrXYrEc0DYN0O?=
 =?us-ascii?Q?1zyGM5BXDF+AduMAs/Xxw+z+xIxsYC997IARsFHRp9+qpZQwAD16xQspBxpM?=
 =?us-ascii?Q?1aePYpbU6bzmxIFhm5s8fdUMREpODAgcFZNuqmXg2d6aQbk/7c1fCBpHfoYp?=
 =?us-ascii?Q?2UMFITsn/ZGMG10o5I92VPonzEovosIRt0qYlRVrDrSBFKdVl+sFyBtsAc4D?=
 =?us-ascii?Q?6+rcUDUSxnya2BSEykOEd6N7wIy3RlDG9RJxJlzcgjaE52BENIuwn3LydgZC?=
 =?us-ascii?Q?YQl4ePwjDxfRWHiU0EFNSBOURl/HBj2EWllU1jKCBUkSGtwGe5q6h+WL6gbw?=
 =?us-ascii?Q?oFIXEolAMWPf5LyX3A0RVBP4wSnfpBP4OGBtu/2XuLHIXXPrMDXc8bmtZtYW?=
 =?us-ascii?Q?3/XxD289sG4CswxSmqQOTLkpboccZLZLT+bL5FXCrO1BaTe4YK8UbakoRYT5?=
 =?us-ascii?Q?+hSMPJV56cJxREi43VI9M8/jik8fNC7f6pVB6h7IMvDXo3T5oMHDnuu970cj?=
 =?us-ascii?Q?0izEb4dFvgpqChgHZPen3PtX33IyN6UIegmOZ2pOwdEbB41K+J7DUmtVGN19?=
 =?us-ascii?Q?RFQ88zuYOFh1PGlxtyCc5t/HxlE3PumFC+4IrgSnU6xOeBo/KM08ij24nA4k?=
 =?us-ascii?Q?XKSUzb55KXmppmkT9Wmc2SxT8aGWiuPGnkNqX5X4gMFWwiJLU76WGMjKSUjf?=
 =?us-ascii?Q?RaIlNitHy0YRFyo77dQ5FkMBpG130S65lqv/hscMPeqT/bcoLjX4etD2muHr?=
 =?us-ascii?Q?Vzz3js9dYKAdkWi5d3o=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8642.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b6d8173-7f48-46e8-2e7a-08db92335bae
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Aug 2023 02:02:28.1572
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U7F39UGbPmn8/wTUs9LGon6//222glnU3wTQg5ESmnizvGUTpL0i+yGxHxRoQOurDpX5ga+EgwCd/n/FELP/8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8565
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> Subject: [PATCH 1/1] arm64: dts: imx93: Fix anatop node size
>=20
> Although the memory map of i.MX93 reference manual rev. 2 claims that
> analog top has start address of 0x44480000 and end address of 0x4448ffff,
> this overlaps with TMU memory area starting at 0x44482000, as stated in
> section 73.6.1.
> As PLL configuration registers start at addresses up to 0x44481400, as us=
ed by
> clk-imx93, reduce the anatop size to 0x2000, so exclude the TMU area but
> keep all PLL registers inside.
>=20
> Fixes: ec8b5b5058ea ("arm64: dts: freescale: Add i.MX93 dtsi support")
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Yes, the anatop size should be changed. Found the same issue after rebase o=
ur downstream kernel to 6.5.0-rc1.

Reviewed-by: Jacky Bai <ping.bai@nxp.com>
BR
> ---
> Unfortunately TMU isn't listed in memory map, so it was a bit of guess wo=
rk.
>=20
> This fixes the probe failure of qoriq_thermal:
> qoriq_thermal 44482000.tmu: can't request region for resource [mem
> 0x44482000-0x44482fff] qoriq_thermal 44482000.tmu: Failed to get memory
> region
> qoriq_thermal: probe of 44482000.tmu failed with error -16
>=20
> /proc/iomem also shows it's claimed by anatop:
> > 44480000-4448ffff : 44450000.clock-controller anatop@44480000
>=20
>  arch/arm64/boot/dts/freescale/imx93.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi
> b/arch/arm64/boot/dts/freescale/imx93.dtsi
> index 4ec9df78f2050..6f85a05ee7e1a 100644
> --- a/arch/arm64/boot/dts/freescale/imx93.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
> @@ -379,7 +379,7 @@ mediamix: power-domain@44462400 {
>=20
>  			anatop: anatop@44480000 {
>  				compatible =3D "fsl,imx93-anatop", "syscon";
> -				reg =3D <0x44480000 0x10000>;
> +				reg =3D <0x44480000 0x2000>;
>  			};
>=20
>  			tmu: tmu@44482000 {
> --
> 2.34.1

