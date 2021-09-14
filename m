Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4FB8E40AC71
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 13:34:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232022AbhINLfT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 07:35:19 -0400
Received: from mail-eopbgr20058.outbound.protection.outlook.com ([40.107.2.58]:20897
        "EHLO EUR02-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S231941AbhINLfR (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Sep 2021 07:35:17 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d5vzzABHnVhoddpPsavN6wKvhb1wlXDVMaMRDcOqSti1jFD6izCBsNEiFI4gk2I3GEKbzGwzeZDx3NrCtITix/VM9udsirYBsjFE8qR1DUXeZ6BhsmnWw+XE65mPv3wM5+8tk3kqNutor4Iz/A+cfmNk5yZkJOEbnasOJaLO2SzWxg1Quu6z8DQLTwmYmOvxweX5ZBAlllelbgWyDERkBGpta75Cu4Jp0ao+BUe4IodZ4eOFI0qCb/SP/Dc4SllRiHFD1RObTV+efyAa3Xecmjv/84HWLyUKmuurCjmELv3o8zDxZ0Wim5hFhpPmzyHj0yKsycYcVYttIPiSN5CREg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=MEy5d3TvmvQUB8Yg8/XrbNdPYwC0vxUzWEmfuvAC9o8=;
 b=OgWsQVyuQmzlEjTXoAJJ6nuqEfxdXHmC37m/aqJ+iUMm/1vkI19ZuRb+4Xqtu/KthU7nK+xhkbY9aTw5BCqfcTvaQXSmNMqKojYgb65zCdDrpzNWHknbidazpASGQ+Wh66bD2K5D1d2VLZbsNbrh9uDraVRyKxGWYOfi7/Nlx07pYBQs+UP0IxYkQela98KWUPMPuBs4VtQm71dBNpSuO4fRJBlaCN5EgIvOFMmFpYLkYQwqwDWEhCRU9QO/hfbDCyr0neNtUQ8CdVXyMLxLLpnVGUpbW2oSN912mFtgQkdCRtOMfTRA44HXUrigELFBOyII+PTeIJmeHiBTECc02g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MEy5d3TvmvQUB8Yg8/XrbNdPYwC0vxUzWEmfuvAC9o8=;
 b=p3S1Empy95OhsGc4/NlJ7FE6CAZvsfCAX0hErjcGR5YBlfYM7RuPH0RN+j37HDuqiNIYOcTvYrnnr7gVUHtYSUKqbGjK7JwUmZSi2BWwAoZgiUsDAgh9Xm1B84Wxs5eIo7ArcmSPzoyYuT3Qk0QhXe1F80Cl3X5/iljqcWv7dgw=
Authentication-Results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
Received: from VI1PR0401MB2559.eurprd04.prod.outlook.com (2603:10a6:800:57::8)
 by VI1PR0401MB2638.eurprd04.prod.outlook.com (2603:10a6:800:56::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.18; Tue, 14 Sep
 2021 11:33:56 +0000
Received: from VI1PR0401MB2559.eurprd04.prod.outlook.com
 ([fe80::485a:4462:94c2:5edb]) by VI1PR0401MB2559.eurprd04.prod.outlook.com
 ([fe80::485a:4462:94c2:5edb%10]) with mapi id 15.20.4500.019; Tue, 14 Sep
 2021 11:33:56 +0000
Date:   Tue, 14 Sep 2021 14:33:54 +0300
From:   Abel Vesa <abel.vesa@nxp.com>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     shawnguo@kernel.org, robh+dt@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, p.zabel@pengutronix.de,
        kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v3 5/9] clk: imx: Add 'CLK_SET_RATE_NO_REPARENT' for
 composite-7ulp
Message-ID: <YUCIov2kUf+RsSk8@ryzen>
References: <20210914065208.3582128-1-ping.bai@nxp.com>
 <20210914065208.3582128-6-ping.bai@nxp.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210914065208.3582128-6-ping.bai@nxp.com>
X-ClientProxiedBy: VI1P194CA0022.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:800:be::32) To VI1PR0401MB2559.eurprd04.prod.outlook.com
 (2603:10a6:800:57::8)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ryzen (188.25.164.198) by VI1P194CA0022.EURP194.PROD.OUTLOOK.COM (2603:10a6:800:be::32) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14 via Frontend Transport; Tue, 14 Sep 2021 11:33:56 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d8a38f0c-e0c0-474c-d553-08d9777389bd
X-MS-TrafficTypeDiagnostic: VI1PR0401MB2638:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0401MB2638FE33F79131D75FD2C1FCF6DA9@VI1PR0401MB2638.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3383;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LMxD6a4WhWTcVkD1mjIyIaBn1APantSBRXRm7xdMwde0fljVr2VwBvanbA7aQc/9+LyX3w60lHCgO+xmaxWNiP8+XwedV2ua2cgbW9wjWrIEd4zZ9nMvMQxrcAu3jpNFGo+AOMO+qKJFMIjqxZQh+qE9Vt5VcdG4iLvNHKd6KcGEtDDgnKPAyDgqaP56+N7SJyplVquxgK+cbYeIvxeaCkBr8nr8emfJ4sdbyuePCWXhk44MZXfFbbgMepVPt94ulUnenNy8t64e5ioaohcGP4rDu2zlXDNqkgI8vvGssX4wA6eFaYCKfjOgl1UXAbs1p4pda7a7YqCrr3ZjQ6U3JuRwfQARUmzob9ZnY41HYg27Z2VBrwgPdXStz1FKZPzLFDVUq8okvu2Gva2UppHff0A8inc5fGrdcmQD6dLDyGsmYN0IUt9Z9dkoA5dYrKyv0HM/4jnkch3wjdbjfPji7NYHlUN/KK5FufUjEFhTmt4pk5/oO/g1ueOmWNIja5SCEiC7oQ++Y3d8eU47mDDfGIt4bwcvZOTT+UR3Fnkg2RT674Z44hATEUV17Sgx/eZfqZ53UoGV5l8KUrcSG+BGZURr3Fd+X00pqwytGZ5LO2DpQ9c7eEN1z9AbEp/gQaIUSzELmBJ+Wo+EbpnqO+CRTBEeC7ETE9DxaOfcROwxxbCMZVt6mgJnITEdd3kybyp7VjDmJ7Lm1454173+YmZg4/llPcW1UxFHRK1aYPhJvis=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR0401MB2559.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(366004)(346002)(136003)(376002)(39860400002)(66946007)(66476007)(66556008)(26005)(5660300002)(52116002)(6496006)(186003)(38350700002)(38100700002)(8936002)(6862004)(478600001)(86362001)(33716001)(53546011)(9686003)(55016002)(9576002)(956004)(83380400001)(2906002)(44832011)(316002)(8676002)(6636002)(4326008)(67856001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?OiEDHxTTZm+iaYtHK8QtEDOChjgDm6O3pRqhd3bs3zZOSvEB6k6TQ3jzffn2?=
 =?us-ascii?Q?C4G5r+YpCeJWaDt8Z2U3uei6PCUywm1Qez/IzedzmEVLqTPPrsW49C5nVDVi?=
 =?us-ascii?Q?kPx8JDEDYYWddxbSwWtfViFb0z8WDnmXxGCY0DYzsLZ6SWVd+xrTPCmKvhvh?=
 =?us-ascii?Q?MusDCwGC1Y2aGpf8uZYykGPoXz8X7yMD4gykI0f+0UPeLPjux/AoN/0LgviU?=
 =?us-ascii?Q?E1uGgLmO0tuW9FNqEzudPcBqjTSugDBeiYyInUhjclVMXjD9+8wx2JwZiCd7?=
 =?us-ascii?Q?V1kw2MZ+h0yV5R8slKudiYQ1wzMqUFd9qC2kGDYe+Ak7eAVBz2DXVaoeuvKm?=
 =?us-ascii?Q?iFLPkvw9Gtwi42AUov8PS7DdUHl+7aAsuPJZKvJk71ESEM9C85rfhApAgNx4?=
 =?us-ascii?Q?wn4V9VAtJ0+QTkeWhXmQBL6A/fpHiM1V3/A/UVdSDIUS27p7gxr4UgRG/O7w?=
 =?us-ascii?Q?2jI0zALFoUpKL+uRLoATSSgwqK5INzlLxAbNmBFePodK94pTB1Vz8pG7QbU6?=
 =?us-ascii?Q?W8zCDWk8A5i/Q+sW+uj3RS4dd0b32cY3oB2Uopenx21W+BVSn9OcdbyaVy3W?=
 =?us-ascii?Q?uagI6G9iNSUhn10G/Um2aUZx/rnN1mTPOLTfzG90SpGEKp9QBjAvsmVjLDIj?=
 =?us-ascii?Q?twSgbEbig+NTL1Uf/e8ZNa5UWWlaJdRkFJPjOlSrZYBUmDn7K80D7HWQhDzL?=
 =?us-ascii?Q?HBs4v6epBVmFvMG/90LI72Of2ADCCj1Vg2/zAblaNoZ84Wq8oisqh+4n/E1c?=
 =?us-ascii?Q?RWdWhwvHqcnUA631gj3ek2bL81YNiRnsi7dn9MhPpSfqljg+B3io1bee0VPd?=
 =?us-ascii?Q?JVqZHYXlhNHwZMcxCxxqjMQRQKjmBE3fPoYsMzT+yeUldGY56FzMjX8SpHmL?=
 =?us-ascii?Q?F6fv0Gjvs+FrnxycTp4dSaAbsTo9AyhhCDK5WhcASky/6l577UbajMsxSo0J?=
 =?us-ascii?Q?oqPLonboUkfOMtUUd9B2zNeR3WTiYVK+BEYDKRN/UgL4mROxH7qNImuoGqLB?=
 =?us-ascii?Q?5fID7NK/3iDFUH8Zmfz+KzvwiUPBuEpu6S1E1PzjBL6j8IKLeH/PJULi53YH?=
 =?us-ascii?Q?axCIxIBUzcwRxKoK5nM7BQ5CRKYWGI7QnB7GUcSkp7q+fTvwVP7nsA0/BOC+?=
 =?us-ascii?Q?lvU+/q0WApOxnk+G2L/d9vsQR6oi2wYvLPJ89ufZJNWB2OljQOGYK2u6xLb6?=
 =?us-ascii?Q?NhcbEaP1GzwjFQznaWKu0jp/bA1mIvAeyiR1jzmvDbK/LJXo9fbH1L+4PshE?=
 =?us-ascii?Q?83tJoUj5wSNRYvhlVlFTzCRwXiWh/rl9Wb/95Ffn2y7U9wavrMtcx6+ENIIr?=
 =?us-ascii?Q?n0ScA6M95762HLGUKgU4WNnM?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8a38f0c-e0c0-474c-d553-08d9777389bd
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0401MB2559.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2021 11:33:56.6749
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zdjORGVq73mGe67dhLnQRy4+iKSncMKkd1+gIeBBga0APxlcAaAPK3nXnFVjN41r9cNMg+NH41gNlvvk+Zxc8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2638
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21-09-14 14:52:04, Jacky Bai wrote:
> For the imx_composite-7ulp clock type, The clock parent should
> be changed explicitly by end user of this clock, if the the
> 'CLK_SET_RATE_NO_REPARENT' flag is not set, when user want to
> set a clock frequency that can NOT get from HW accurately, then
> the clock's parent will be switch to another clock parent sometimes.
> This is NOT what we expected and introduced some additional debug
> effort, so add the 'CLK_SET_RATE_NO_REPARENT' to avoid such unexpected
> result.
> 
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> ---
>   v3 changs: no
> ---
>  drivers/clk/imx/clk-composite-7ulp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/imx/clk-composite-7ulp.c b/drivers/clk/imx/clk-composite-7ulp.c
> index 92908ee4509d..9ce8c630ee32 100644
> --- a/drivers/clk/imx/clk-composite-7ulp.c
> +++ b/drivers/clk/imx/clk-composite-7ulp.c
> @@ -131,7 +131,7 @@ static struct clk_hw *imx_ulp_clk_hw_composite(const char *name,
>  				       mux_hw, &clk_mux_ops, fd_hw,
>  				       &clk_fractional_divider_ops, gate_hw,
>  				       has_swrst ? &pcc_gate_ops : &clk_gate_ops, CLK_SET_RATE_GATE |
> -				       CLK_SET_PARENT_GATE);
> +				       CLK_SET_PARENT_GATE | CLK_SET_RATE_NO_REPARENT);
>  	if (IS_ERR(hw)) {
>  		kfree(mux);
>  		kfree(fd);
> -- 
> 2.26.2
> 
