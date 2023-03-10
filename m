Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D7DF6B4F72
	for <lists+devicetree@lfdr.de>; Fri, 10 Mar 2023 18:50:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230181AbjCJRun (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Mar 2023 12:50:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230245AbjCJRum (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Mar 2023 12:50:42 -0500
Received: from EUR02-VI1-obe.outbound.protection.outlook.com (mail-vi1eur02on2060.outbound.protection.outlook.com [40.107.241.60])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DD7812DDC8
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 09:50:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d/bCzHhP9kMyWE4o6KlB+RN+JgND+HDkAn3XIsVrNfaGI79qe9wi6BFygg5FbVnKzdqTIHLoQOvi4we+L1a+C6jlfPSSX6bQ4O2FpK6qOJahwXVei7UUHe6igmLv3L4heF5chrYpvXQIdrrzQTRFd8Q+DBtfUjsqMCYJHyRkH1jg6OdMBo2rWxqpa/dSKq47QTc6jCha9VI9dD0YNs7ZK18yggbv6s4F/DaEbtgg1zUglEpksgRnH294wAnW/+VPLne+BaGVADhPiODz80uRTIV0jWnIVD/ivGPrIR2PFvEdbki0SQtW6qLoQeoOUkPWVL34q1MhBsNdME++/70nfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LcAl13/mMZcbd8wu3X8ERVEcO+bpFkTS5OzrzXEGM3I=;
 b=fi+pgqijmLpbN3EWE4SM0duvGeYGbrI6ULElxKzPmFejZNA9A/vsh8A9fwT8AbcBLUvI8lK6uHYhYfoamGtTlEYEQS90fqZyexJ2MS+oHovVzsu5wzakIlLM6zjRENeqsn9MPnc/m0XseT13Bm4fAmOyWplkkfJ5uV4QqEGwJRx/3PlNsmKvs1SBoNzT6zHWEzDVp5eyFFLE8/3s2MPKirIbCivUvIwPKPtOaJkfEeFXZ5X9iOZe+KDJLrthQJ1aFkKEslfT1G071Kn3cuiqC8RiE5WzPdpiNg7Qf1ousJ3C3GS+JlYION+k0O4fvfM7cPJTo0Xl/zpEXG0rVbPHsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LcAl13/mMZcbd8wu3X8ERVEcO+bpFkTS5OzrzXEGM3I=;
 b=jqxMdA5/e/nfK/LLIcA1DmZZuF/Nbph60n+GwrGAYFCkNLX4OTwXD2PHAh+0HmJPUSgl9QEZRgcL2JdT00z/8jFowX+WUOwYrSAY1AI6bHv75xLeyNyTbNvZPTBGmJ5MlKdeSFISG4UrNJTtD5gRiaQkpTqfGqWpIEcp+to+Rn4=
Received: from PAWPR04MB9936.eurprd04.prod.outlook.com (2603:10a6:102:38b::21)
 by AS8PR04MB7717.eurprd04.prod.outlook.com (2603:10a6:20b:292::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.19; Fri, 10 Mar
 2023 17:50:14 +0000
Received: from PAWPR04MB9936.eurprd04.prod.outlook.com
 ([fe80::823c:dd46:b70a:884e]) by PAWPR04MB9936.eurprd04.prod.outlook.com
 ([fe80::823c:dd46:b70a:884e%8]) with mapi id 15.20.6178.019; Fri, 10 Mar 2023
 17:50:14 +0000
From:   Frank Li <frank.li@nxp.com>
To:     Xu Yang <xu.yang_2@nxp.com>, "will@kernel.org" <will@kernel.org>,
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
Thread-Index: AQHZUzmTNQvKyACuCUCLeBOhYrxDHK70SY8g
Date:   Fri, 10 Mar 2023 17:50:14 +0000
Message-ID: <PAWPR04MB9936E31704DDC7D6A838542488BA9@PAWPR04MB9936.eurprd04.prod.outlook.com>
References: <20230310101916.2825788-1-xu.yang_2@nxp.com>
In-Reply-To: <20230310101916.2825788-1-xu.yang_2@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAWPR04MB9936:EE_|AS8PR04MB7717:EE_
x-ms-office365-filtering-correlation-id: 86542a82-0a40-4cdb-b98f-08db218fe713
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /8EVlqR+VobJG3d7Klp+bQHA8Vwtfj5UaD2+i598B1+en487MhBP2DIIJepqbgJA1clYgDmvVz0LACP5fGkh30UkcWpPa6JvML4OWz8dIQcSfEKclw2ZyGQEF9DkI6VRvnV3+yjXHMYxsLvTW52g0ozdt6ueYaqyKs9q3KyXI2muVliecGdT7Qeu13FY0bKtFtSke4t9EVWwmMMRw2ayrm0xuTqCA91NvpFuC6xkQ/3OE/qk+ZKybRB98+4kP1xPgEWQWKpjJqDvKzUK2j/gHWJo7nLids0DZqumkfmBdmRh5WfTyepMgaUHWtL4wH6gvnYgUGq+qwuP2USdPZnUusFs4nXlqMMQOsmU9OsBoUNAckxiE3eslP+NwVEnLZ9tk482AT41MO8B7goaBAOi+ykT3xtEJAk4LprqJtO7fzbkSpN7H1LP/4a08EL6QB8heyQBHTIMq7Vp77VCZ+p3AADLbtSLKOT9cnKE+WhnajEs7tVubefEQFJ7arCWDgxDAyfTHJUQSOYgBDIMXQqYak0Z6VzKe2/C+LqwI4TkqGCI3EQINyePm28YVIZc/3cU1lR4wTu9sWhkhsVlnLB6cO61Zq2Qx+XSYWV++94ya209AnQaRTVQ8hRym+7tjPH6hZ+PPzntZ9ZzJ9YpVzRLVkxhDq8CMdIRmpfJh3ZL8hCAD+QIBIOzFjIbFQCjSiz3Euqlvq4KpWUmKNKtIeycwQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAWPR04MB9936.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(376002)(366004)(346002)(39860400002)(396003)(136003)(451199018)(54906003)(110136005)(316002)(33656002)(38070700005)(86362001)(122000001)(55236004)(6506007)(26005)(83380400001)(9686003)(186003)(5660300002)(7696005)(52536014)(478600001)(2906002)(41300700001)(71200400001)(55016003)(4326008)(8936002)(8676002)(44832011)(30864003)(64756008)(66476007)(66556008)(76116006)(66946007)(66446008)(38100700002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+z9y0SB3Z6gbEQm7B+ktgDCFycbvrm2U3ZYGbhMu60MNWz6bP2uNZa9W1MK+?=
 =?us-ascii?Q?iek1fo9FDhB2kZa50AtayllBS39N/+6YrGwEmJ6xrVHsS7xqjOkyUv+2LI25?=
 =?us-ascii?Q?34ZI8O3+BxE7Pmvx58scYhG1mGql/8xijaNIJGQ/Wrup3iICEAEYF1Ernlfk?=
 =?us-ascii?Q?ClDtLpLWYR47z+v0FHKlp5l+ihmI1wK8P5i20FGeUKcFuccD55I73+bFwRId?=
 =?us-ascii?Q?wuRjEkxaEfLqVvr5S8uq2FlKAB6pJZg4hTLRGNPKS/wtmnCW7Q1v4+M5gV1x?=
 =?us-ascii?Q?AFBzZ8uvl2Qs72d+pn6ivSyPFzX8YyrZDkGntLJG7J8KT1EajiNqn6pLVP2+?=
 =?us-ascii?Q?T8VLBISIQ8btYnnRUZ5T+/gZn+iKT2q9zjfQT2Hy4g+vMQSDZm6fPGAPCKtF?=
 =?us-ascii?Q?wq6kI1UL91E6SXlryppwIEn0NrRrWFB5qSG+VKU1rzS4i/7HVEqnrYs+Dcl9?=
 =?us-ascii?Q?Kra/6mnhXimk1FH9ZBszpkqHBufc/1XYnSkXUigMyIc4LqZEl2oR1CqlpBzc?=
 =?us-ascii?Q?xBug7OEplBCw+UVt19JDz6Ih/DJYwfZ4+HC6BvOBEZr7NgHt30UzDfqlK4UD?=
 =?us-ascii?Q?9h0i0hdegJdBldZx0yM/DGEmK2ywOleuO3sUHsalrnp+r4gALnBZJS1KSYx0?=
 =?us-ascii?Q?Ly/FkXUqgCTRC2zezdbfrMy1ws4ptw9dELEW5H3Dce9HC56NW508i1E4Z9EV?=
 =?us-ascii?Q?Vkmafghpm2oOa0f9jjCA8AHXzrkWAjHwDpqaPufQp9gJQWQz3EtNNnmPFTZw?=
 =?us-ascii?Q?CpGbSJdXqXcqFrdbKlvB8YBoidF2yC3Lex5w8b4VqLwbEydvqaHKlJ9COPYs?=
 =?us-ascii?Q?prdfrZD4J4vtqLasx7VyajvrHL0HSR1x+t/hdHVPbIEPU16+uJQHIMJrlJ1O?=
 =?us-ascii?Q?t4YziXOuFhJyYv7HFHuZNodGNJxqdhxtSdwGmJt6299d6JgQg5g8+7Vj42sg?=
 =?us-ascii?Q?Dd1RltexiIfL2suPifuN4jeR+ty9IO+kwcqLvwhN+PwMe072LkYsCPpFONiD?=
 =?us-ascii?Q?qjVQYC5mTiNQoPjy1KIfr0UdCvI2rZG/zSIdM/TdQ1oX70W2CJD0jYQ+ezWt?=
 =?us-ascii?Q?XiMKncywK06DclgXpQfl30CMMzL9AjQIvQHLjbW3x34jrzqCAEBFLOiVQHDs?=
 =?us-ascii?Q?8+4sszVFzoUerujG1MkadPVZKa5YIHNob4Ukck0eJkPXh0a2cTS0L38f7hDe?=
 =?us-ascii?Q?fI/Q49S6RJBD3803ifAzUfmymrJmMRm+EARL1P2bG7edzrFgO68Pt+WdUQ7e?=
 =?us-ascii?Q?qpEGTwre+i66JF/WhrCRKQy8pwcCVouUXs0rcGcw0RJGL0qQ37qj+b+LTG4Q?=
 =?us-ascii?Q?Mf2uhTVNhL5Q3KUROSubFtF7cCsFCSeAJnzQaTh5OmcCuigaN9vOgkZp1cwq?=
 =?us-ascii?Q?YvzJmDBi/Q2Iyvex+k1InfZCJw9MaR0Bd7zpLhwPH1NAtyGZy62CMkGXtdgK?=
 =?us-ascii?Q?9j5JSSUrqDqIvPukWEouybE5MWlxVWnDFuHPVRfIsPlQEwJvIyHA9rDL9wO3?=
 =?us-ascii?Q?v3jJHilXoUZa5wIQqUJsUflxJb84WbwmDTEL0N5vrHXzCwOeQEYdNCKzLx7c?=
 =?us-ascii?Q?bR/SSeFQkSMMaNYseAo=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAWPR04MB9936.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 86542a82-0a40-4cdb-b98f-08db218fe713
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2023 17:50:14.3302
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3i4hBBxmfrni8c0BPfDdbWhoy/RDtpG/BFs6AlIoJ4Ov30wwmwygiOpiWtgjjVOkRHUjyJ1GGikupfif1cTcSg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7717
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> +static u64 ddr_perf_read_counter(struct ddr_pmu *pmu, int counter)
> +{
> +	u32 val_lower, val_upper;
> +	u64 val;
> +
> +	if (counter =3D=3D CYCLES_COUNTER) {
> +		val_upper =3D readl_relaxed(pmu->base + PMC(counter) +
> 0x4);
> +		val_lower =3D readl_relaxed(pmu->base + PMC(counter));
> +		val =3D val_upper;
> +		val =3D (val << 32);
> +		val |=3D val_lower;

Read 64bit counter value need use below logic

do{
	val_upper =3D readl_relaxed(pmu->base + PMC(counter) + 0x4);
	val_lower =3D readl_relaxed(pmu->base + PMC(counter));
while( val_upper !=3D readl_relaxed(pmu->base + PMC(counter) + 0x4));

assume upper is 0,  when cpu read lower register, upper may change to 1,=20
so you will get wrong 64bit value.

Frank

> +	} else {
> +		val =3D readl_relaxed(pmu->base + PMC(counter));
> +	}
> +
> +	return val;
> +}
> +
> +static void ddr_perf_counter_global_config(struct ddr_pmu *pmu, bool
> enable)
> +{
> +	u32 ctrl;
> +
> +	ctrl =3D readl_relaxed(pmu->base + PMGC0);
> +
> +	if (enable) {
> +		/*
> +		 * The performance monitor must be reset before event
> counting
> +		 * sequences. The performance monitor can be reset by first
> freezing
> +		 * one or more counters and then clearing the freeze
> condition to
> +		 * allow the counters to count according to the settings in the
> +		 * performance monitor registers. Counters can be frozen
> individually
> +		 * by setting PMLCAn[FC] bits, or simultaneously by setting
> PMGC0[FAC].
> +		 * Simply clearing these freeze bits will then allow the
> performance
> +		 * monitor to begin counting based on the register settings.
> +		 */
> +		ctrl |=3D PMGC0_FAC;
> +		writel(ctrl, pmu->base + PMGC0);
> +
> +		/*
> +		 * Freeze all counters disabled, interrupt enabled, and freeze
> +		 * counters on condition enabled.
> +		 */
> +		ctrl &=3D ~PMGC0_FAC;
> +		ctrl |=3D PMGC0_PMIE | PMGC0_FCECE;
> +		writel(ctrl, pmu->base + PMGC0);
> +	} else {
> +		ctrl |=3D PMGC0_FAC;
> +		ctrl &=3D ~(PMGC0_PMIE | PMGC0_FCECE);
> +		writel(ctrl, pmu->base + PMGC0);
> +	}
> +}
> +
> +static void ddr_perf_counter_local_config(struct ddr_pmu *pmu, int confi=
g,
> +				    int counter, bool enable)
> +{
> +	u32 ctrl_a;
> +
> +	ctrl_a =3D readl_relaxed(pmu->base + PMLCA(counter));
> +
> +	if (enable) {
> +		ctrl_a |=3D PMLCA_FC;
> +		writel(ctrl_a, pmu->base + PMLCA(counter));
> +
> +		ddr_perf_clear_counter(pmu, counter);
> +
> +		/* Freeze counter disabled, condition enabled, and program
> event.*/
> +		ctrl_a &=3D ~PMLCA_FC;
> +		ctrl_a |=3D PMLCA_CE;
> +		ctrl_a &=3D ~FIELD_PREP(PMLCA_EVENT, 0x7F);
> +		ctrl_a |=3D FIELD_PREP(PMLCA_EVENT, (config & 0x000000FF));
> +		writel(ctrl_a, pmu->base + PMLCA(counter));
> +	} else {
> +		/* Freeze counter. */
> +		ctrl_a |=3D PMLCA_FC;
> +		writel(ctrl_a, pmu->base + PMLCA(counter));
> +	}
> +}
> +
> +static void ddr_perf_monitor_config(struct ddr_pmu *pmu, int cfg, int cf=
g1,
> int cfg2)
> +{
> +	u32 pmcfg1, pmcfg2;
> +	int event, counter;
> +
> +	event =3D cfg & 0x000000FF;
> +	counter =3D (cfg & 0x0000FF00) >> 8;
> +
> +	pmcfg1 =3D readl_relaxed(pmu->base + PMCFG1);
> +
> +	if (counter =3D=3D 2 && event =3D=3D 73)
> +		pmcfg1 |=3D PMCFG1_RD_TRANS_FILT_EN;
> +	else if (counter =3D=3D 2 && event !=3D 73)
> +		pmcfg1 &=3D ~PMCFG1_RD_TRANS_FILT_EN;
> +
> +	if (counter =3D=3D 3 && event =3D=3D 73)
> +		pmcfg1 |=3D PMCFG1_WR_TRANS_FILT_EN;
> +	else if (counter =3D=3D 3 && event !=3D 73)
> +		pmcfg1 &=3D ~PMCFG1_WR_TRANS_FILT_EN;
> +
> +	if (counter =3D=3D 4 && event =3D=3D 73)
> +		pmcfg1 |=3D PMCFG1_RD_BT_FILT_EN;
> +	else if (counter =3D=3D 4 && event !=3D 73)
> +		pmcfg1 &=3D ~PMCFG1_RD_BT_FILT_EN;
> +
> +	pmcfg1 &=3D ~FIELD_PREP(PMCFG1_ID_MASK, 0x3FFFF);
> +	pmcfg1 |=3D FIELD_PREP(PMCFG1_ID_MASK, cfg2);
> +	writel(pmcfg1, pmu->base + PMCFG1);
> +
> +	pmcfg2 =3D readl_relaxed(pmu->base + PMCFG2);
> +	pmcfg2 &=3D ~FIELD_PREP(PMCFG2_ID, 0x3FFFF);
> +	pmcfg2 |=3D FIELD_PREP(PMCFG2_ID, cfg1);
> +	writel(pmcfg2, pmu->base + PMCFG2);
> +}
> +
> +static void ddr_perf_event_update(struct perf_event *event)
> +{
> +	struct ddr_pmu *pmu =3D to_ddr_pmu(event->pmu);
> +	struct hw_perf_event *hwc =3D &event->hw;
> +	int counter =3D hwc->idx;
> +	u64 new_raw_count;
> +
> +	new_raw_count =3D ddr_perf_read_counter(pmu, counter);
> +	local64_add(new_raw_count, &event->count);
> +
> +	/* clear counter's value every time */
> +	ddr_perf_clear_counter(pmu, counter);
> +}
> +
> +static int ddr_perf_event_init(struct perf_event *event)
> +{
> +	struct ddr_pmu *pmu =3D to_ddr_pmu(event->pmu);
> +	struct hw_perf_event *hwc =3D &event->hw;
> +	struct perf_event *sibling;
> +
> +	if (event->attr.type !=3D event->pmu->type)
> +		return -ENOENT;
> +
> +	if (is_sampling_event(event) || event->attach_state &
> PERF_ATTACH_TASK)
> +		return -EOPNOTSUPP;
> +
> +	if (event->cpu < 0) {
> +		dev_warn(pmu->dev, "Can't provide per-task data!\n");
> +		return -EOPNOTSUPP;
> +	}
> +
> +	/*
> +	 * We must NOT create groups containing mixed PMUs, although
> software
> +	 * events are acceptable (for example to create a CCN group
> +	 * periodically read when a hrtimer aka cpu-clock leader triggers).
> +	 */
> +	if (event->group_leader->pmu !=3D event->pmu &&
> +			!is_software_event(event->group_leader))
> +		return -EINVAL;
> +
> +	for_each_sibling_event(sibling, event->group_leader) {
> +		if (sibling->pmu !=3D event->pmu &&
> +				!is_software_event(sibling))
> +			return -EINVAL;
> +	}
> +
> +	event->cpu =3D pmu->cpu;
> +	hwc->idx =3D -1;
> +
> +	return 0;
> +}
> +
> +static void ddr_perf_event_start(struct perf_event *event, int flags)
> +{
> +	struct ddr_pmu *pmu =3D to_ddr_pmu(event->pmu);
> +	struct hw_perf_event *hwc =3D &event->hw;
> +	int counter =3D hwc->idx;
> +
> +	local64_set(&hwc->prev_count, 0);
> +
> +	ddr_perf_counter_local_config(pmu, event->attr.config, counter,
> true);
> +	hwc->state =3D 0;
> +}
> +
> +static int ddr_perf_event_add(struct perf_event *event, int flags)
> +{
> +	struct ddr_pmu *pmu =3D to_ddr_pmu(event->pmu);
> +	struct hw_perf_event *hwc =3D &event->hw;
> +	int cfg =3D event->attr.config;
> +	int cfg1 =3D event->attr.config1;
> +	int cfg2 =3D event->attr.config2;
> +	int counter;
> +
> +	counter =3D (cfg & 0x0000FF00) >> 8;
> +
> +	pmu->events[counter] =3D event;
> +	pmu->active_events++;
> +	hwc->idx =3D counter;
> +	hwc->state |=3D PERF_HES_STOPPED;
> +
> +	if (flags & PERF_EF_START)
> +		ddr_perf_event_start(event, flags);
> +
> +	/* read trans, write trans, read beat */
> +	ddr_perf_monitor_config(pmu, cfg, cfg1, cfg2);
> +
> +	return 0;
> +}
> +
> +static void ddr_perf_event_stop(struct perf_event *event, int flags)
> +{
> +	struct ddr_pmu *pmu =3D to_ddr_pmu(event->pmu);
> +	struct hw_perf_event *hwc =3D &event->hw;
> +	int counter =3D hwc->idx;
> +
> +	ddr_perf_counter_local_config(pmu, event->attr.config, counter,
> false);
> +	ddr_perf_event_update(event);
> +
> +	hwc->state |=3D PERF_HES_STOPPED;
> +}
> +
> +static void ddr_perf_event_del(struct perf_event *event, int flags)
> +{
> +	struct ddr_pmu *pmu =3D to_ddr_pmu(event->pmu);
> +	struct hw_perf_event *hwc =3D &event->hw;
> +
> +	ddr_perf_event_stop(event, PERF_EF_UPDATE);
> +
> +	pmu->active_events--;
> +	hwc->idx =3D -1;
> +}
> +
> +static void ddr_perf_pmu_enable(struct pmu *pmu)
> +{
> +	struct ddr_pmu *ddr_pmu =3D to_ddr_pmu(pmu);
> +
> +	ddr_perf_counter_global_config(ddr_pmu, true);
> +}
> +
> +static void ddr_perf_pmu_disable(struct pmu *pmu)
> +{
> +	struct ddr_pmu *ddr_pmu =3D to_ddr_pmu(pmu);
> +
> +	ddr_perf_counter_global_config(ddr_pmu, false);
> +}
> +
> +static void ddr_perf_init(struct ddr_pmu *pmu, void __iomem *base,
> +			 struct device *dev)
> +{
> +	*pmu =3D (struct ddr_pmu) {
> +		.pmu =3D (struct pmu) {
> +			.module       =3D THIS_MODULE,
> +			.capabilities =3D PERF_PMU_CAP_NO_EXCLUDE,
> +			.task_ctx_nr  =3D perf_invalid_context,
> +			.attr_groups  =3D attr_groups,
> +			.event_init   =3D ddr_perf_event_init,
> +			.add          =3D ddr_perf_event_add,
> +			.del          =3D ddr_perf_event_del,
> +			.start        =3D ddr_perf_event_start,
> +			.stop         =3D ddr_perf_event_stop,
> +			.read         =3D ddr_perf_event_update,
> +			.pmu_enable   =3D ddr_perf_pmu_enable,
> +			.pmu_disable  =3D ddr_perf_pmu_disable,
> +		},
> +		.base =3D base,
> +		.dev =3D dev,
> +	};
> +}
> +
> +static irqreturn_t ddr_perf_irq_handler(int irq, void *p)
> +{
> +	struct ddr_pmu *pmu =3D (struct ddr_pmu *)p;
> +	struct perf_event *event;
> +	int i;
> +
> +	/*
> +	 * Counters can generate an interrupt on an overflow when msb of a
> +	 * counter changes from 0 to 1. For the interrupt to be signalled,
> +	 * below condition mush be satisfied:
> +	 * PMGC0[PMIE] =3D 1, PMGC0[FCECE] =3D 1, PMLCAn[CE] =3D 1
> +	 * When an interrupt is signalled, PMGC0[FAC] is set by hardware and
> +	 * all of the registers are frozen.
> +	 * Software can clear the interrupt condition by resetting the
> performance
> +	 * monitor and clearing the most significant bit of the counter that
> +	 * generate the overflow.
> +	 */
> +	for (i =3D 0; i < NUM_COUNTERS; i++) {
> +		if (!pmu->events[i])
> +			continue;
> +
> +		event =3D pmu->events[i];
> +
> +		ddr_perf_event_update(event);
> +	}
> +
> +	ddr_perf_counter_global_config(pmu, true);
> +
> +	return IRQ_HANDLED;
> +}
> +
> +static int ddr_perf_offline_cpu(unsigned int cpu, struct hlist_node *nod=
e)
> +{
> +	struct ddr_pmu *pmu =3D hlist_entry_safe(node, struct ddr_pmu,
> node);
> +	int target;
> +
> +	if (cpu !=3D pmu->cpu)
> +		return 0;
> +
> +	target =3D cpumask_any_but(cpu_online_mask, cpu);
> +	if (target >=3D nr_cpu_ids)
> +		return 0;
> +
> +	perf_pmu_migrate_context(&pmu->pmu, cpu, target);
> +	pmu->cpu =3D target;
> +
> +	WARN_ON(irq_set_affinity(pmu->irq, cpumask_of(pmu->cpu)));
> +
> +	return 0;
> +}
> +
> +static int ddr_perf_probe(struct platform_device *pdev)
> +{
> +	struct ddr_pmu *pmu;
> +	void __iomem *base;
> +	int ret, irq;
> +	char *name;
> +
> +	base =3D devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(base))
> +		return PTR_ERR(base);
> +
> +	pmu =3D devm_kzalloc(&pdev->dev, sizeof(*pmu), GFP_KERNEL);
> +	if (!pmu)
> +		return -ENOMEM;
> +
> +	ddr_perf_init(pmu, base, &pdev->dev);
> +
> +	pmu->devtype_data =3D of_device_get_match_data(&pdev->dev);
> +
> +	platform_set_drvdata(pdev, pmu);
> +
> +	pmu->id =3D ida_simple_get(&ddr_ida, 0, 0, GFP_KERNEL);
> +	name =3D devm_kasprintf(&pdev->dev, GFP_KERNEL,
> DDR_PERF_DEV_NAME "%d", pmu->id);
> +	if (!name) {
> +		ret =3D -ENOMEM;
> +		goto format_string_err;
> +	}
> +
> +	pmu->cpu =3D raw_smp_processor_id();
> +	ret =3D cpuhp_setup_state_multi(CPUHP_AP_ONLINE_DYN,
> DDR_CPUHP_CB_NAME,
> +				      NULL, ddr_perf_offline_cpu);
> +	if (ret < 0) {
> +		dev_err(&pdev->dev, "Failed to add callbacks for multi
> state\n");
> +		goto cpuhp_state_err;
> +	}
> +	pmu->cpuhp_state =3D ret;
> +
> +	/* Register the pmu instance for cpu hotplug */
> +	ret =3D cpuhp_state_add_instance_nocalls(pmu->cpuhp_state, &pmu-
> >node);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Error %d registering hotplug\n", ret);
> +		goto cpuhp_instance_err;
> +	}
> +
> +	/* Request irq */
> +	irq =3D platform_get_irq(pdev, 0);
> +	if (irq < 0) {
> +		dev_err(&pdev->dev, "Failed to get irq: %d", irq);
> +		ret =3D irq;
> +		goto ddr_perf_err;
> +	}
> +
> +	ret =3D devm_request_irq(&pdev->dev, irq, ddr_perf_irq_handler,
> +			       IRQF_NOBALANCING | IRQF_NO_THREAD,
> +			       DDR_CPUHP_CB_NAME, pmu);
> +	if (ret < 0) {
> +		dev_err(&pdev->dev, "Request irq failed: %d", ret);
> +		goto ddr_perf_err;
> +	}
> +
> +	pmu->irq =3D irq;
> +	ret =3D irq_set_affinity(pmu->irq, cpumask_of(pmu->cpu));
> +	if (ret) {
> +		dev_err(pmu->dev, "Failed to set interrupt affinity\n");
> +		goto ddr_perf_err;
> +	}
> +
> +	ret =3D perf_pmu_register(&pmu->pmu, name, -1);
> +	if (ret)
> +		goto ddr_perf_err;
> +
> +	return 0;
> +
> +ddr_perf_err:
> +	cpuhp_state_remove_instance_nocalls(pmu->cpuhp_state, &pmu-
> >node);
> +cpuhp_instance_err:
> +	cpuhp_remove_multi_state(pmu->cpuhp_state);
> +cpuhp_state_err:
> +format_string_err:
> +	ida_simple_remove(&ddr_ida, pmu->id);
> +	dev_warn(&pdev->dev, "i.MX9 DDR Perf PMU failed (%d),
> disabled\n", ret);
> +	return ret;
> +}
> +
> +static int ddr_perf_remove(struct platform_device *pdev)
> +{
> +	struct ddr_pmu *pmu =3D platform_get_drvdata(pdev);
> +
> +	cpuhp_state_remove_instance_nocalls(pmu->cpuhp_state, &pmu-
> >node);
> +	cpuhp_remove_multi_state(pmu->cpuhp_state);
> +
> +	perf_pmu_unregister(&pmu->pmu);
> +
> +	ida_simple_remove(&ddr_ida, pmu->id);
> +
> +	return 0;
> +}
> +
> +static struct platform_driver imx_ddr_pmu_driver =3D {
> +	.driver         =3D {
> +		.name                =3D "imx9-ddr-pmu",
> +		.of_match_table      =3D imx_ddr_pmu_dt_ids,
> +		.suppress_bind_attrs =3D true,
> +	},
> +	.probe          =3D ddr_perf_probe,
> +	.remove         =3D ddr_perf_remove,
> +};
> +module_platform_driver(imx_ddr_pmu_driver);
> +
> +MODULE_AUTHOR("Xu Yang <xu.yang_2@nxp.com>");
> +MODULE_LICENSE("GPL v2");
> +MODULE_DESCRIPTION("DDRC PerfMon for i.MX9 SoCs");
> --
> 2.34.1

