Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D1B06B6DF4
	for <lists+devicetree@lfdr.de>; Mon, 13 Mar 2023 04:27:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229591AbjCMD1R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Mar 2023 23:27:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229516AbjCMD1P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Mar 2023 23:27:15 -0400
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2078.outbound.protection.outlook.com [40.107.22.78])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5E082E0CC
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 20:27:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lD5fqajk+DVwSflKg5tj4VNfS+RfCvzgFjM2lJZDpi7VYOa6xXvIz8DNTBvKFrlz6U8Mc63dFG8Hwc5+AJuHRrMUjEez9IpDMTSaKd2q0gAbS35VBO9/MoIz0Q/9iWvwJSKi59TKWwqi8tALWyqZsrNHbah0NRtDu4dHXdc8Pn3GRFMv9fQn7tsPlEpZUYMn/lTbVCm8NJ2G7rXYgVXycZODpJtpDTFIA/5e1JgaKl6Y8zO3m71Dygu+yswbrGe0e1cj1NaTEWrj84FCCBGpQIJuxfqSPSGEVKW/NrELLjS/xB2J/v8HkngbU4UWa0aVm4DBLrpBNvzXzqljobWrsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6Qe/wfRJwz17y85O0Y8LA2DwK1hGH3d1cpTfYTuh92g=;
 b=Gps+AIIRhkO5WDIAHeJ/Lear1lOc2q7CyuNbFWeAlm61pnboAcT+w8me1cgzq/ff2Te+pGB8A5PetP4JIo1gni/l+oLtPx+7vb8WzzjdwKy+vasWLsF2UmzycV7UYdW76ykRhFVYZUSvw8WYxg7W+hmjTvvgJ2KuOkNpv799YdLE6ADVV6bRSW+CmFkWsqGR+KnoPDB/3t9UBpwAj+JyVbx790Wpbk6XZSuGfCxBTUPd+f+WtmKN+vxhe17ravDfNGMp+rnn8P6GRRskDkvmbej11JmnfoTr2xRdI0HYs1p82RxtNcTRe01190IC14x6haBaoy3kpRqidtkQ8opr8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6Qe/wfRJwz17y85O0Y8LA2DwK1hGH3d1cpTfYTuh92g=;
 b=OZWncyqIc3pHgSnk9dQvKzdSL1jo3nPlKt3is1ACexNBdni6ohdBTUdwQJ9z6Tilxv3ThUmzjmZkZDfULoFheJSvrwNm7dFBOG4sw1opgfdK9aHyMpiMPBZl3yJHOfc8dcWY3YNZ27hd0vYOJWTBtWHeJ/8Ej5KfsRGu0qsp9aQ=
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com (2603:10a6:5:39::26) by
 PA4PR04MB9269.eurprd04.prod.outlook.com (2603:10a6:102:2a4::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Mon, 13 Mar
 2023 03:27:08 +0000
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::5466:bfa2:3158:97c6]) by DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::5466:bfa2:3158:97c6%3]) with mapi id 15.20.6178.024; Mon, 13 Mar 2023
 03:27:08 +0000
From:   Xu Yang <xu.yang_2@nxp.com>
To:     Frank Li <frank.li@nxp.com>, "will@kernel.org" <will@kernel.org>,
        "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "festevam@gmail.com" <festevam@gmail.com>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        dl-linux-imx <linux-imx@nxp.com>
Subject: RE: [PATCH 1/3] drivers/perf: imx_ddr: Add support for NXP i.MX9 SoC
 DDRC PMU driver
Thread-Topic: [PATCH 1/3] drivers/perf: imx_ddr: Add support for NXP i.MX9 SoC
 DDRC PMU driver
Thread-Index: AQHZUzmSTZH8/rPzpUC0fhlj3SLmx670SxUAgAPFLlA=
Date:   Mon, 13 Mar 2023 03:27:08 +0000
Message-ID: <DB7PR04MB450570C6B515B2FA03FAF7588CB99@DB7PR04MB4505.eurprd04.prod.outlook.com>
References: <20230310101916.2825788-1-xu.yang_2@nxp.com>
 <PAWPR04MB9936E31704DDC7D6A838542488BA9@PAWPR04MB9936.eurprd04.prod.outlook.com>
In-Reply-To: <PAWPR04MB9936E31704DDC7D6A838542488BA9@PAWPR04MB9936.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB7PR04MB4505:EE_|PA4PR04MB9269:EE_
x-ms-office365-filtering-correlation-id: 1be0ab4d-b2d6-4f8a-e642-08db2372d3a3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TGVHzB5XE73WLmNOzU1YE/BSJaI7jw66W8qD2yLXRUsyyw0pVTh7pFJgtLBILYIcF1qd37eYHaqW2TCsrMLkP8HHmRsjcijNedjsL9xPx/nple/lwVMIPIEEmxIGpEytgoIY5XbWsKgDAI/LX+EsmJCuKKuDAJpS1N6RbjVjW7yLIJaWKtGor5RHJ4B8djzKQw4/hVkZATIl2RFAIi9LL0ECC9ChgP+n66DF1PBmHiKBaJgkwKmwy2q8Ga3FiEbWddvhRuQ2SvKHIc0Elnlbh0fj7hg2liBvxysIVgXXp8h0vX1f79mt3AA/aDr5SAcAR/MGzI8vWVBrUPdRXUuWrvID/nvc3JfJVLvguMM4ebr+SdVrmI7GNBObNopJAFXO1/meeiNyC6xAL1n5p5t4eDi3PGTK6e2+8GoVXvfaNk4hhO6/PBb2XXqrsF1uBFSijXodJNGUeRvGhW5niZgIMZKzblRmxhFH6tuSiZyTx1Pi8en9sbsRiWADQXPjOGxFTV3UthXCw660tWFm+xPr4ysyceqAGzuEWo0Fbv6CGCF4c20T4MWeH5e6BConkreQnTNiBkphmANBLpcq92mPBUsEPDOKD5i9gjncLaPadUdCFvTv0zTMpDNUwQvWjq28KJabnPEO0Tc25ueoa/8AyzHH9qhxU46kCBm/PxOp22cjnycl8k7USBxvimspXLPbm6jmGQUlhJkGgBB12XniXQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4505.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39860400002)(346002)(396003)(136003)(366004)(376002)(451199018)(30864003)(2906002)(83380400001)(7696005)(26005)(6506007)(9686003)(5660300002)(53546011)(55016003)(33656002)(52536014)(8936002)(186003)(71200400001)(8676002)(86362001)(41300700001)(38070700005)(4326008)(66446008)(66556008)(76116006)(64756008)(66946007)(66476007)(478600001)(122000001)(110136005)(38100700002)(316002)(54906003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?muqb8uObUYzI+X/CIp8Hx1CEqvmr6yvzm2kUJj8O65mXckRtheuWzL70KiXT?=
 =?us-ascii?Q?dxcDj2/P/AYy8JG4vDXiyLcmlaZ2XOBpx9f240XmsXCsAFYXgEJ0JZqdE/Ua?=
 =?us-ascii?Q?UtYO71WGupS1zBqvkJsL6Qli2K1/gBBkqm47cWxGJTd9KvWjTTjRHxNGsN6d?=
 =?us-ascii?Q?bwXSlUCFC7qfs6h7dPnAoWTdcjZU2MLSi79Q3aaxvaUhxd4LUw2KL5QPvb6H?=
 =?us-ascii?Q?jToLlBfKST+56WRWDl7QFRJd4d8YsQK16jADPTs4vtIkOUEcDRYoKXP81EqX?=
 =?us-ascii?Q?Yy7OnWg8RrJAdfpUSIpqXD2tFiTU1KY10+fKMN0BPwUyEq7P9a7myZ5bi0xQ?=
 =?us-ascii?Q?2g2Fh4bIZ6BASjC6hYz0zUoQAEfcCDiDw5vwq5oJbgf5Iz01aeKkfPw9Lz/z?=
 =?us-ascii?Q?4mFjX7jhs8t2ew4W3CFdJoOUkDJPOxpcMElaV44bhvLq7bODD0oI85+/3SkK?=
 =?us-ascii?Q?iJ4ZX0mLVxMmWfDxhDcNcGrywDPbwKP+vYegbXsu28KmmrORuOJGDTL6joX6?=
 =?us-ascii?Q?vmY7F3O29Lz+TNp4fVPAAXSWcWvdc6LsqEiFIjjQtzjVGV3r5Qz/hDhla0/D?=
 =?us-ascii?Q?7FQMy5hw0AUYsep+qp2YPtRCnExzzMibfjcPGWHRUtC28OGxNZ/71M3jy0ex?=
 =?us-ascii?Q?OS5+m6wvIa823/o+yV2zuUBpbIh2dPx+4CKHrJCCJTkAyS/cQ0Kvf5DioTxN?=
 =?us-ascii?Q?bPpnM2WcQK/VuRHs2TbxTI/5CgaU5LtYZaJ9RFRMWMZdoydQkzEYd8mg6JWm?=
 =?us-ascii?Q?QxbVyFILhz5hAgYDG5OquFEYrEcAoO3c3B/fwCSAvMlQ5+Qz5jTfT3ZQBdQu?=
 =?us-ascii?Q?VYPRnSlQ05SuSoBkIto4i358AzEFHe3MyJqXLWI5VjCEkukAbhmypZtt/811?=
 =?us-ascii?Q?6Mf/CKtTKYmhD5j4XgjSchpPgjbNIPCCKGJTfT3cj9HL4hJklcwMptzjU/eK?=
 =?us-ascii?Q?LOoReIVdcv88QE7vlli8iqhWnjhTGpdf2XEKuCoRB5uxTon0KtbbZqhmXkkr?=
 =?us-ascii?Q?r99dn4Fls+OnV2sGID2LzuhIMiwU+eCxZifxRBi8ViVo3oROWQIa04aYnJ7J?=
 =?us-ascii?Q?RVw1km89JEHnuHdguRSX9WafC5Y7QH63Wwpkcr2CnAFppqGIKCMWE/u7rdAd?=
 =?us-ascii?Q?wrU7RbQ8pEMnOlQaTYUHHQ6LyXLBegkA9hhsALV4W1wkknCsoDHvwW8Ky2oe?=
 =?us-ascii?Q?uBKgwto1gfonsuSo9qnYMh88PZwKl4FgaGLQKPWwCb1bGuisU3pWv2AshZW7?=
 =?us-ascii?Q?jDB2OlKW9LTrjZTBE4q/NaNqWMB7EsWFI/I+I5t8lZyEn3x+z3tCo74L1WqF?=
 =?us-ascii?Q?lZwFgr+P9gz7w9UxZEtyo1K+vPsodneBjruO1pPBsIHWQijhMiD+xRaGPwjK?=
 =?us-ascii?Q?S0298v/gyTEr4RYoVL5U0AKTQVhu2QJgyCoN1lFFy25TOP8BvrJbF65NNxIX?=
 =?us-ascii?Q?Syyq7dAdtynoXuSOoY858DbJpecijYCEZnX60dlmvKXujGqu1vxlR4UlZZ1h?=
 =?us-ascii?Q?Y5Su4hWaBJXvMk87n4NJc9y9+iNKOPhp5EUf4o7kcgHxEKtG4pu6y521Qk2I?=
 =?us-ascii?Q?gWSUntSGLlTceafUOVI=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4505.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1be0ab4d-b2d6-4f8a-e642-08db2372d3a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2023 03:27:08.6722
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BgNEBNjjvxZJcaKTMtGcJUq/3b0AB7qs1KS4IEckoIhdHXEKDvX1itZ2HJZCyzRmArqJxyvVRr1oVxUpTdBK9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB9269
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> -----Original Message-----
> From: Frank Li <frank.li@nxp.com>
> Sent: Saturday, March 11, 2023 1:50 AM
> To: Xu Yang <xu.yang_2@nxp.com>; will@kernel.org; mark.rutland@arm.com; r=
obh+dt@kernel.org;
> shawnguo@kernel.org; festevam@gmail.com
> Cc: devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org; dl-=
linux-imx <linux-imx@nxp.com>
> Subject: RE: [PATCH 1/3] drivers/perf: imx_ddr: Add support for NXP i.MX9=
 SoC DDRC PMU driver
>=20
> > +static u64 ddr_perf_read_counter(struct ddr_pmu *pmu, int counter)
> > +{
> > +	u32 val_lower, val_upper;
> > +	u64 val;
> > +
> > +	if (counter =3D=3D CYCLES_COUNTER) {
> > +		val_upper =3D readl_relaxed(pmu->base + PMC(counter) +
> > 0x4);
> > +		val_lower =3D readl_relaxed(pmu->base + PMC(counter));
> > +		val =3D val_upper;
> > +		val =3D (val << 32);
> > +		val |=3D val_lower;
>=20
> Read 64bit counter value need use below logic
>=20
> do{
> 	val_upper =3D readl_relaxed(pmu->base + PMC(counter) + 0x4);
> 	val_lower =3D readl_relaxed(pmu->base + PMC(counter));
> while( val_upper !=3D readl_relaxed(pmu->base + PMC(counter) + 0x4));
>=20
> assume upper is 0,  when cpu read lower register, upper may change to 1,
> so you will get wrong 64bit value.

Yes, agree with you. Will improve it in next version.

Thanks,
Xu Yang

>=20
> Frank
>=20
> > +	} else {
> > +		val =3D readl_relaxed(pmu->base + PMC(counter));
> > +	}
> > +
> > +	return val;
> > +}
> > +
> > +static void ddr_perf_counter_global_config(struct ddr_pmu *pmu, bool
> > enable)
> > +{
> > +	u32 ctrl;
> > +
> > +	ctrl =3D readl_relaxed(pmu->base + PMGC0);
> > +
> > +	if (enable) {
> > +		/*
> > +		 * The performance monitor must be reset before event
> > counting
> > +		 * sequences. The performance monitor can be reset by first
> > freezing
> > +		 * one or more counters and then clearing the freeze
> > condition to
> > +		 * allow the counters to count according to the settings in the
> > +		 * performance monitor registers. Counters can be frozen
> > individually
> > +		 * by setting PMLCAn[FC] bits, or simultaneously by setting
> > PMGC0[FAC].
> > +		 * Simply clearing these freeze bits will then allow the
> > performance
> > +		 * monitor to begin counting based on the register settings.
> > +		 */
> > +		ctrl |=3D PMGC0_FAC;
> > +		writel(ctrl, pmu->base + PMGC0);
> > +
> > +		/*
> > +		 * Freeze all counters disabled, interrupt enabled, and freeze
> > +		 * counters on condition enabled.
> > +		 */
> > +		ctrl &=3D ~PMGC0_FAC;
> > +		ctrl |=3D PMGC0_PMIE | PMGC0_FCECE;
> > +		writel(ctrl, pmu->base + PMGC0);
> > +	} else {
> > +		ctrl |=3D PMGC0_FAC;
> > +		ctrl &=3D ~(PMGC0_PMIE | PMGC0_FCECE);
> > +		writel(ctrl, pmu->base + PMGC0);
> > +	}
> > +}
> > +
> > +static void ddr_perf_counter_local_config(struct ddr_pmu *pmu, int con=
fig,
> > +				    int counter, bool enable)
> > +{
> > +	u32 ctrl_a;
> > +
> > +	ctrl_a =3D readl_relaxed(pmu->base + PMLCA(counter));
> > +
> > +	if (enable) {
> > +		ctrl_a |=3D PMLCA_FC;
> > +		writel(ctrl_a, pmu->base + PMLCA(counter));
> > +
> > +		ddr_perf_clear_counter(pmu, counter);
> > +
> > +		/* Freeze counter disabled, condition enabled, and program
> > event.*/
> > +		ctrl_a &=3D ~PMLCA_FC;
> > +		ctrl_a |=3D PMLCA_CE;
> > +		ctrl_a &=3D ~FIELD_PREP(PMLCA_EVENT, 0x7F);
> > +		ctrl_a |=3D FIELD_PREP(PMLCA_EVENT, (config & 0x000000FF));
> > +		writel(ctrl_a, pmu->base + PMLCA(counter));
> > +	} else {
> > +		/* Freeze counter. */
> > +		ctrl_a |=3D PMLCA_FC;
> > +		writel(ctrl_a, pmu->base + PMLCA(counter));
> > +	}
> > +}
> > +
> > +static void ddr_perf_monitor_config(struct ddr_pmu *pmu, int cfg, int =
cfg1,
> > int cfg2)
> > +{
> > +	u32 pmcfg1, pmcfg2;
> > +	int event, counter;
> > +
> > +	event =3D cfg & 0x000000FF;
> > +	counter =3D (cfg & 0x0000FF00) >> 8;
> > +
> > +	pmcfg1 =3D readl_relaxed(pmu->base + PMCFG1);
> > +
> > +	if (counter =3D=3D 2 && event =3D=3D 73)
> > +		pmcfg1 |=3D PMCFG1_RD_TRANS_FILT_EN;
> > +	else if (counter =3D=3D 2 && event !=3D 73)
> > +		pmcfg1 &=3D ~PMCFG1_RD_TRANS_FILT_EN;
> > +
> > +	if (counter =3D=3D 3 && event =3D=3D 73)
> > +		pmcfg1 |=3D PMCFG1_WR_TRANS_FILT_EN;
> > +	else if (counter =3D=3D 3 && event !=3D 73)
> > +		pmcfg1 &=3D ~PMCFG1_WR_TRANS_FILT_EN;
> > +
> > +	if (counter =3D=3D 4 && event =3D=3D 73)
> > +		pmcfg1 |=3D PMCFG1_RD_BT_FILT_EN;
> > +	else if (counter =3D=3D 4 && event !=3D 73)
> > +		pmcfg1 &=3D ~PMCFG1_RD_BT_FILT_EN;
> > +
> > +	pmcfg1 &=3D ~FIELD_PREP(PMCFG1_ID_MASK, 0x3FFFF);
> > +	pmcfg1 |=3D FIELD_PREP(PMCFG1_ID_MASK, cfg2);
> > +	writel(pmcfg1, pmu->base + PMCFG1);
> > +
> > +	pmcfg2 =3D readl_relaxed(pmu->base + PMCFG2);
> > +	pmcfg2 &=3D ~FIELD_PREP(PMCFG2_ID, 0x3FFFF);
> > +	pmcfg2 |=3D FIELD_PREP(PMCFG2_ID, cfg1);
> > +	writel(pmcfg2, pmu->base + PMCFG2);
> > +}
> > +
> > +static void ddr_perf_event_update(struct perf_event *event)
> > +{
> > +	struct ddr_pmu *pmu =3D to_ddr_pmu(event->pmu);
> > +	struct hw_perf_event *hwc =3D &event->hw;
> > +	int counter =3D hwc->idx;
> > +	u64 new_raw_count;
> > +
> > +	new_raw_count =3D ddr_perf_read_counter(pmu, counter);
> > +	local64_add(new_raw_count, &event->count);
> > +
> > +	/* clear counter's value every time */
> > +	ddr_perf_clear_counter(pmu, counter);
> > +}
> > +
> > +static int ddr_perf_event_init(struct perf_event *event)
> > +{
> > +	struct ddr_pmu *pmu =3D to_ddr_pmu(event->pmu);
> > +	struct hw_perf_event *hwc =3D &event->hw;
> > +	struct perf_event *sibling;
> > +
> > +	if (event->attr.type !=3D event->pmu->type)
> > +		return -ENOENT;
> > +
> > +	if (is_sampling_event(event) || event->attach_state &
> > PERF_ATTACH_TASK)
> > +		return -EOPNOTSUPP;
> > +
> > +	if (event->cpu < 0) {
> > +		dev_warn(pmu->dev, "Can't provide per-task data!\n");
> > +		return -EOPNOTSUPP;
> > +	}
> > +
> > +	/*
> > +	 * We must NOT create groups containing mixed PMUs, although
> > software
> > +	 * events are acceptable (for example to create a CCN group
> > +	 * periodically read when a hrtimer aka cpu-clock leader triggers).
> > +	 */
> > +	if (event->group_leader->pmu !=3D event->pmu &&
> > +			!is_software_event(event->group_leader))
> > +		return -EINVAL;
> > +
> > +	for_each_sibling_event(sibling, event->group_leader) {
> > +		if (sibling->pmu !=3D event->pmu &&
> > +				!is_software_event(sibling))
> > +			return -EINVAL;
> > +	}
> > +
> > +	event->cpu =3D pmu->cpu;
> > +	hwc->idx =3D -1;
> > +
> > +	return 0;
> > +}
> > +
> > +static void ddr_perf_event_start(struct perf_event *event, int flags)
> > +{
> > +	struct ddr_pmu *pmu =3D to_ddr_pmu(event->pmu);
> > +	struct hw_perf_event *hwc =3D &event->hw;
> > +	int counter =3D hwc->idx;
> > +
> > +	local64_set(&hwc->prev_count, 0);
> > +
> > +	ddr_perf_counter_local_config(pmu, event->attr.config, counter,
> > true);
> > +	hwc->state =3D 0;
> > +}
> > +
> > +static int ddr_perf_event_add(struct perf_event *event, int flags)
> > +{
> > +	struct ddr_pmu *pmu =3D to_ddr_pmu(event->pmu);
> > +	struct hw_perf_event *hwc =3D &event->hw;
> > +	int cfg =3D event->attr.config;
> > +	int cfg1 =3D event->attr.config1;
> > +	int cfg2 =3D event->attr.config2;
> > +	int counter;
> > +
> > +	counter =3D (cfg & 0x0000FF00) >> 8;
> > +
> > +	pmu->events[counter] =3D event;
> > +	pmu->active_events++;
> > +	hwc->idx =3D counter;
> > +	hwc->state |=3D PERF_HES_STOPPED;
> > +
> > +	if (flags & PERF_EF_START)
> > +		ddr_perf_event_start(event, flags);
> > +
> > +	/* read trans, write trans, read beat */
> > +	ddr_perf_monitor_config(pmu, cfg, cfg1, cfg2);
> > +
> > +	return 0;
> > +}
> > +
> > +static void ddr_perf_event_stop(struct perf_event *event, int flags)
> > +{
> > +	struct ddr_pmu *pmu =3D to_ddr_pmu(event->pmu);
> > +	struct hw_perf_event *hwc =3D &event->hw;
> > +	int counter =3D hwc->idx;
> > +
> > +	ddr_perf_counter_local_config(pmu, event->attr.config, counter,
> > false);
> > +	ddr_perf_event_update(event);
> > +
> > +	hwc->state |=3D PERF_HES_STOPPED;
> > +}
> > +
> > +static void ddr_perf_event_del(struct perf_event *event, int flags)
> > +{
> > +	struct ddr_pmu *pmu =3D to_ddr_pmu(event->pmu);
> > +	struct hw_perf_event *hwc =3D &event->hw;
> > +
> > +	ddr_perf_event_stop(event, PERF_EF_UPDATE);
> > +
> > +	pmu->active_events--;
> > +	hwc->idx =3D -1;
> > +}
> > +
> > +static void ddr_perf_pmu_enable(struct pmu *pmu)
> > +{
> > +	struct ddr_pmu *ddr_pmu =3D to_ddr_pmu(pmu);
> > +
> > +	ddr_perf_counter_global_config(ddr_pmu, true);
> > +}
> > +
> > +static void ddr_perf_pmu_disable(struct pmu *pmu)
> > +{
> > +	struct ddr_pmu *ddr_pmu =3D to_ddr_pmu(pmu);
> > +
> > +	ddr_perf_counter_global_config(ddr_pmu, false);
> > +}
> > +
> > +static void ddr_perf_init(struct ddr_pmu *pmu, void __iomem *base,
> > +			 struct device *dev)
> > +{
> > +	*pmu =3D (struct ddr_pmu) {
> > +		.pmu =3D (struct pmu) {
> > +			.module       =3D THIS_MODULE,
> > +			.capabilities =3D PERF_PMU_CAP_NO_EXCLUDE,
> > +			.task_ctx_nr  =3D perf_invalid_context,
> > +			.attr_groups  =3D attr_groups,
> > +			.event_init   =3D ddr_perf_event_init,
> > +			.add          =3D ddr_perf_event_add,
> > +			.del          =3D ddr_perf_event_del,
> > +			.start        =3D ddr_perf_event_start,
> > +			.stop         =3D ddr_perf_event_stop,
> > +			.read         =3D ddr_perf_event_update,
> > +			.pmu_enable   =3D ddr_perf_pmu_enable,
> > +			.pmu_disable  =3D ddr_perf_pmu_disable,
> > +		},
> > +		.base =3D base,
> > +		.dev =3D dev,
> > +	};
> > +}
> > +
> > +static irqreturn_t ddr_perf_irq_handler(int irq, void *p)
> > +{
> > +	struct ddr_pmu *pmu =3D (struct ddr_pmu *)p;
> > +	struct perf_event *event;
> > +	int i;
> > +
> > +	/*
> > +	 * Counters can generate an interrupt on an overflow when msb of a
> > +	 * counter changes from 0 to 1. For the interrupt to be signalled,
> > +	 * below condition mush be satisfied:
> > +	 * PMGC0[PMIE] =3D 1, PMGC0[FCECE] =3D 1, PMLCAn[CE] =3D 1
> > +	 * When an interrupt is signalled, PMGC0[FAC] is set by hardware and
> > +	 * all of the registers are frozen.
> > +	 * Software can clear the interrupt condition by resetting the
> > performance
> > +	 * monitor and clearing the most significant bit of the counter that
> > +	 * generate the overflow.
> > +	 */
> > +	for (i =3D 0; i < NUM_COUNTERS; i++) {
> > +		if (!pmu->events[i])
> > +			continue;
> > +
> > +		event =3D pmu->events[i];
> > +
> > +		ddr_perf_event_update(event);
> > +	}
> > +
> > +	ddr_perf_counter_global_config(pmu, true);
> > +
> > +	return IRQ_HANDLED;
> > +}
> > +
> > +static int ddr_perf_offline_cpu(unsigned int cpu, struct hlist_node *n=
ode)
> > +{
> > +	struct ddr_pmu *pmu =3D hlist_entry_safe(node, struct ddr_pmu,
> > node);
> > +	int target;
> > +
> > +	if (cpu !=3D pmu->cpu)
> > +		return 0;
> > +
> > +	target =3D cpumask_any_but(cpu_online_mask, cpu);
> > +	if (target >=3D nr_cpu_ids)
> > +		return 0;
> > +
> > +	perf_pmu_migrate_context(&pmu->pmu, cpu, target);
> > +	pmu->cpu =3D target;
> > +
> > +	WARN_ON(irq_set_affinity(pmu->irq, cpumask_of(pmu->cpu)));
> > +
> > +	return 0;
> > +}
> > +
> > +static int ddr_perf_probe(struct platform_device *pdev)
> > +{
> > +	struct ddr_pmu *pmu;
> > +	void __iomem *base;
> > +	int ret, irq;
> > +	char *name;
> > +
> > +	base =3D devm_platform_ioremap_resource(pdev, 0);
> > +	if (IS_ERR(base))
> > +		return PTR_ERR(base);
> > +
> > +	pmu =3D devm_kzalloc(&pdev->dev, sizeof(*pmu), GFP_KERNEL);
> > +	if (!pmu)
> > +		return -ENOMEM;
> > +
> > +	ddr_perf_init(pmu, base, &pdev->dev);
> > +
> > +	pmu->devtype_data =3D of_device_get_match_data(&pdev->dev);
> > +
> > +	platform_set_drvdata(pdev, pmu);
> > +
> > +	pmu->id =3D ida_simple_get(&ddr_ida, 0, 0, GFP_KERNEL);
> > +	name =3D devm_kasprintf(&pdev->dev, GFP_KERNEL,
> > DDR_PERF_DEV_NAME "%d", pmu->id);
> > +	if (!name) {
> > +		ret =3D -ENOMEM;
> > +		goto format_string_err;
> > +	}
> > +
> > +	pmu->cpu =3D raw_smp_processor_id();
> > +	ret =3D cpuhp_setup_state_multi(CPUHP_AP_ONLINE_DYN,
> > DDR_CPUHP_CB_NAME,
> > +				      NULL, ddr_perf_offline_cpu);
> > +	if (ret < 0) {
> > +		dev_err(&pdev->dev, "Failed to add callbacks for multi
> > state\n");
> > +		goto cpuhp_state_err;
> > +	}
> > +	pmu->cpuhp_state =3D ret;
> > +
> > +	/* Register the pmu instance for cpu hotplug */
> > +	ret =3D cpuhp_state_add_instance_nocalls(pmu->cpuhp_state, &pmu-
> > >node);
> > +	if (ret) {
> > +		dev_err(&pdev->dev, "Error %d registering hotplug\n", ret);
> > +		goto cpuhp_instance_err;
> > +	}
> > +
> > +	/* Request irq */
> > +	irq =3D platform_get_irq(pdev, 0);
> > +	if (irq < 0) {
> > +		dev_err(&pdev->dev, "Failed to get irq: %d", irq);
> > +		ret =3D irq;
> > +		goto ddr_perf_err;
> > +	}
> > +
> > +	ret =3D devm_request_irq(&pdev->dev, irq, ddr_perf_irq_handler,
> > +			       IRQF_NOBALANCING | IRQF_NO_THREAD,
> > +			       DDR_CPUHP_CB_NAME, pmu);
> > +	if (ret < 0) {
> > +		dev_err(&pdev->dev, "Request irq failed: %d", ret);
> > +		goto ddr_perf_err;
> > +	}
> > +
> > +	pmu->irq =3D irq;
> > +	ret =3D irq_set_affinity(pmu->irq, cpumask_of(pmu->cpu));
> > +	if (ret) {
> > +		dev_err(pmu->dev, "Failed to set interrupt affinity\n");
> > +		goto ddr_perf_err;
> > +	}
> > +
> > +	ret =3D perf_pmu_register(&pmu->pmu, name, -1);
> > +	if (ret)
> > +		goto ddr_perf_err;
> > +
> > +	return 0;
> > +
> > +ddr_perf_err:
> > +	cpuhp_state_remove_instance_nocalls(pmu->cpuhp_state, &pmu-
> > >node);
> > +cpuhp_instance_err:
> > +	cpuhp_remove_multi_state(pmu->cpuhp_state);
> > +cpuhp_state_err:
> > +format_string_err:
> > +	ida_simple_remove(&ddr_ida, pmu->id);
> > +	dev_warn(&pdev->dev, "i.MX9 DDR Perf PMU failed (%d),
> > disabled\n", ret);
> > +	return ret;
> > +}
> > +
> > +static int ddr_perf_remove(struct platform_device *pdev)
> > +{
> > +	struct ddr_pmu *pmu =3D platform_get_drvdata(pdev);
> > +
> > +	cpuhp_state_remove_instance_nocalls(pmu->cpuhp_state, &pmu-
> > >node);
> > +	cpuhp_remove_multi_state(pmu->cpuhp_state);
> > +
> > +	perf_pmu_unregister(&pmu->pmu);
> > +
> > +	ida_simple_remove(&ddr_ida, pmu->id);
> > +
> > +	return 0;
> > +}
> > +
> > +static struct platform_driver imx_ddr_pmu_driver =3D {
> > +	.driver         =3D {
> > +		.name                =3D "imx9-ddr-pmu",
> > +		.of_match_table      =3D imx_ddr_pmu_dt_ids,
> > +		.suppress_bind_attrs =3D true,
> > +	},
> > +	.probe          =3D ddr_perf_probe,
> > +	.remove         =3D ddr_perf_remove,
> > +};
> > +module_platform_driver(imx_ddr_pmu_driver);
> > +
> > +MODULE_AUTHOR("Xu Yang <xu.yang_2@nxp.com>");
> > +MODULE_LICENSE("GPL v2");
> > +MODULE_DESCRIPTION("DDRC PerfMon for i.MX9 SoCs");
> > --
> > 2.34.1

