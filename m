Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 87CBF40AC72
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 13:34:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232030AbhINLgP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 07:36:15 -0400
Received: from mail-eopbgr20065.outbound.protection.outlook.com ([40.107.2.65]:19011
        "EHLO EUR02-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232024AbhINLgP (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Sep 2021 07:36:15 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P2s7+C0nvH1XMhsHAYCMg6vHEvnf9VKq4O6j2hgeQlmWT6eHwGxpuvygEDRxgDQD2pWWz4ZdnV2U7vbU/tOBYrX90WBhZuhBFHOCneicps08XAtMUrvB8xDSmRdZqX4imQJANZjUodSdckfZWlbvt3Kwp+BdiVXU4VycySzJmZREyGVP4PMIEquUegJ83CvCUo9/Wq4SI+M2WI82W7aldux4pTJleLRyvSPNxLAv2ndzXZ8Gik3EjqpTrQIUx0vxaBw0Blm1xqehjsmtAeHeKRn7PceTsyvFu1t1yEyj0l9RTcdJEWmho8q+o5o4tVOhbunDo79ylv/NXE4dZNTi5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=e+20ZLTVT5eY/D8Z2ZJBUTXetQYA05ke9NUdS7fDeLc=;
 b=guqmO9bCJPr3RZg6Jnqi+urNmd3DdCv2DKOpLx+DaaYa/bS5EXn/MEdUytr1CiTfZZLZvIZlT3Mw7vmGBjyx3bt4o+86G+sljn/SHe0M3VOySVKs97Gf9LgZDqRSbgj5qXEI9KYpz5oDBuEMHzRfuznK9G4dn+paRKG78/2CFwtg6WaeV4BMgJKHusnsoID8cYvuFZUXsPo13xtjkjSaxbtUhEMdWHTVVAs59DmSWHCt7Qqv1560TDgDSJyderzVSYz0DvV3ErwiYpdA55eyQTPUXalYZbOC0J8dbNj3K4AfbvYrH2YSsrzT6XPkRcpLhjdEI+epqgUJ8nnGdGSjEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e+20ZLTVT5eY/D8Z2ZJBUTXetQYA05ke9NUdS7fDeLc=;
 b=SaXcbL9OmXi58y98hvgCSNRib81tmrIYggB3wcL5AordSJVdiLYuMsICd5q5bfJ1BqpVSMo3Ze+6c5cZykMzxGZ27fzUZ8nUF/2rrpY9f2cmkh5ceQw7GRyzw/SPlnJ6coU5saAyYnCZdkiueOSAmkuBWzTPHu6zZsY373tgGWE=
Authentication-Results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
Received: from VI1PR0401MB2559.eurprd04.prod.outlook.com (2603:10a6:800:57::8)
 by VI1PR0401MB2638.eurprd04.prod.outlook.com (2603:10a6:800:56::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.18; Tue, 14 Sep
 2021 11:34:56 +0000
Received: from VI1PR0401MB2559.eurprd04.prod.outlook.com
 ([fe80::485a:4462:94c2:5edb]) by VI1PR0401MB2559.eurprd04.prod.outlook.com
 ([fe80::485a:4462:94c2:5edb%10]) with mapi id 15.20.4500.019; Tue, 14 Sep
 2021 11:34:56 +0000
Date:   Tue, 14 Sep 2021 14:34:54 +0300
From:   Abel Vesa <abel.vesa@nxp.com>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     shawnguo@kernel.org, robh+dt@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, p.zabel@pengutronix.de,
        kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v3 6/9] clk: imx: disable the pfd when set pfdv2 clock
 rate
Message-ID: <YUCI3r8tWm5Zar87@ryzen>
References: <20210914065208.3582128-1-ping.bai@nxp.com>
 <20210914065208.3582128-7-ping.bai@nxp.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210914065208.3582128-7-ping.bai@nxp.com>
X-ClientProxiedBy: VI1P18901CA0014.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:801::24) To VI1PR0401MB2559.eurprd04.prod.outlook.com
 (2603:10a6:800:57::8)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ryzen (188.25.164.198) by VI1P18901CA0014.EURP189.PROD.OUTLOOK.COM (2603:10a6:801::24) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14 via Frontend Transport; Tue, 14 Sep 2021 11:34:55 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 79c1552f-bc6e-4b7c-6972-08d97773ad1d
X-MS-TrafficTypeDiagnostic: VI1PR0401MB2638:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0401MB2638E2EE3E39F31983271484F6DA9@VI1PR0401MB2638.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Vz4SA/bcf3jKLEn1W30o3wLOiG9WVwdGQ0zi6SPSNk+dKiLa/YkJHpN4qOPdxYMWnUrWFGzRzrbhpvL6j390M/nqgZ4YCM3yKfsnlHewXpkswNWUULt2kzofsB+fy5S1Jb4DRHv8CMgScJMJqZO/vFq4gHpHHidtYHrIjsQM3GfvTSHQ0GVYim6OilRVBUPF8fwriSStXaehrKzr1fZK6mskgREjOzVEFN7czalN2N/V5ZzTPVszcCLHnHRbDE+lqyOvJ2vmZoC1T4wV5OUxYRVbYOgbC6Ur12Y0F6/PL3Li6UwEDw0rsrS0AAagF9mKIsbK03Jud9OlkoBVpeAiSAdai72uQx0VV0pzoGa5kIiZJra5G2pn8W51lKNkqnjkup6Lpdr9oAyY2CRLdSDXJpmq98B4xgd4XoIChquGdGWib+zM4JCvN3ydo6DvqufpsBJW2xbuFIPjqO4TTFwCdQxXskZvn+aWDov94JTZG911Y5v9i5gGO8MbPpuyxOaCr4h8AjeQ4q8gvSAfOpqGoI3Y24AOFWB66C1uaxaAtXyaEoTDZXdfNdRoIKqU6qf1JGhbUW7ZOn2unkqarGmYgkdNrMixBzOPbQTXCTnmusS6ccaWKssg0wCX1S2D1E7CWXxG1O9nrAQBJb93IMcmil9o4wL95vPX+HLBEpxb6NNSwuGQW7Jm07p5ctilrlqASYit1dnvk4MuBFzs5T6M9kITh1MkSoua6baiOKGd6OA=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR0401MB2559.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(366004)(346002)(136003)(376002)(39860400002)(66946007)(66476007)(66556008)(26005)(5660300002)(52116002)(6496006)(186003)(38350700002)(38100700002)(8936002)(6862004)(478600001)(86362001)(33716001)(53546011)(9686003)(55016002)(9576002)(956004)(83380400001)(2906002)(44832011)(316002)(8676002)(6636002)(4326008)(21314003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ud1TdBkKtQyBHTSAMaqYD+7WSG6Wp2vvKp9huDEw0TSaf8WscXh2SMEKVtd5?=
 =?us-ascii?Q?mgRV3j9BfznMkJ3Meg94TqKjgD5i+B/PMnfWNHPQoqkDkhFiZdHWeRo4Fyn6?=
 =?us-ascii?Q?u3raHf8iWYJ41bH5Qatfky1XJoVc57Z2Cx20m2ZoJaeJYzCaMOXBGUhBZ5YG?=
 =?us-ascii?Q?jIk5n88AJbKfdMALQOC2cePp3w1B0hbihlQrMRwQvTzIavtzSrEc0d9FNr4/?=
 =?us-ascii?Q?+73XQN76Q8RZn4hBlygvopRKQ1JpI3AGhUUd7do7UV1gylysROjJfGNS23iL?=
 =?us-ascii?Q?YHZAglsQw8MHZt3DMWucO1yw/yUqfBZelkfT6GHkBBHwJPFWqSc8mGdV1di2?=
 =?us-ascii?Q?Pg9Gyv9aUY40LgK9ef0bTmYPn3CupVq0nQx+5Pig1J7PR9TFu/y35XZtN/yt?=
 =?us-ascii?Q?OCec0f0tgNVYHhyg7t1+DnkPjr9Beu2NxU8kby3zdpw2KJ9XIDa+C7t1C0SD?=
 =?us-ascii?Q?tGJhdZtkMCGtba28X+GHbsjkLRGjCWldfyslY8fmjF0D0hkOSZwiyUqtBsk+?=
 =?us-ascii?Q?9AnniY8z6m8EsmH2IwkHvumi6C6R203eD+VIcu0+3My/s9HgdeVGFcPc+M3t?=
 =?us-ascii?Q?dT5m7QevGkPmR4k3s7EOC/KYWMeCUseWdkXnfh4giNxFTvjATTeAT3N++J3a?=
 =?us-ascii?Q?ATEPPzRvFzoeyFe7CXsNk/FGEmXg4NsBQGnzqB0cKoAy6ITbW4JVfAK7qe6c?=
 =?us-ascii?Q?A9yqfc8AmtYz84yBPS6N5T5zciR/Js0qCwTkxDWfkWH1hfnzb6fZQE+2W7vJ?=
 =?us-ascii?Q?JAdqhrnUTNSmdanxz/0XM/jTBdsRKBUgMjidRDeARu1RPGXaHbkaA5gXKo0l?=
 =?us-ascii?Q?hjAW6rYXzhG+eZGlzxf45dlf1OI5ENBZ76g1ceZiHjZ7T36af9DxatPvJYB6?=
 =?us-ascii?Q?UxCIl7oauSecvVibXApyL0MR6TAS2CGQ0jU1GUDBpDIHJVC+jiDcY5v6sMSt?=
 =?us-ascii?Q?ck3bP5ACdIEqW2bXnVvU+XBNmQVoykxtN2ytqnsPKOpiIucGxtvTvu0hYq6T?=
 =?us-ascii?Q?no+Hq1aYOCi2PTZ47jLNmVHesAMSofgL8Qo3R4aJsbWJQavo2IJdAjSVcyWG?=
 =?us-ascii?Q?9ASrZxDi+GE4pTgsHgEG/zxlWC9jMSiFbxUBOLAJWIU3fFGZyYFak9UBjSDU?=
 =?us-ascii?Q?QxyOs8WGY7ALdmqsUHomgjL4J0XMaOJEKD74mnQQcQQnP97ASHYSuznoODd3?=
 =?us-ascii?Q?MHHXxBbolDZ4cEAP4lah76P733ksSUyp3TOApLdb59ykii7jekSYWwqYvYiX?=
 =?us-ascii?Q?FP8Ppszj7ygU73iQDtxnag0VoZTq5I0n8Apag/upvgr1KQl20Cnnu2wMK/md?=
 =?us-ascii?Q?xNi+OUF4otTOWzpB/Hwma4NC?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79c1552f-bc6e-4b7c-6972-08d97773ad1d
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0401MB2559.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2021 11:34:56.0875
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A6ISzbVL7s36Io579jdozwtiG5a65RLAwTrcA4mJo70xe1K3DqbREvIqr4pQ3LaqoCeYNYFGAgT7ftwTDXmjyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2638
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21-09-14 14:52:05, Jacky Bai wrote:
> It is possible that a PFD is enabled in HW but not in SW. That
> means the enable count & prepare count of the PFD clock is '0',
> so the 'CLK_SET_RATE' flag can do nothing when the rate is changed
> while the PFD is hw enabled. In order to safely change the pfd
> rate, we can disable the PFD directly if it is hw enabled but not
> used by SW end user.
> 
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> ---
>   v3 changs: no
> ---
>  drivers/clk/imx/clk-pfdv2.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-pfdv2.c b/drivers/clk/imx/clk-pfdv2.c
> index 6b744c84278e..9cba83521988 100644
> --- a/drivers/clk/imx/clk-pfdv2.c
> +++ b/drivers/clk/imx/clk-pfdv2.c
> @@ -161,8 +161,17 @@ static int clk_pfdv2_set_rate(struct clk_hw *hw, unsigned long rate,
>  	if (!rate)
>  		return -EINVAL;
>  
> -	/* PFD can NOT change rate without gating */
> -	WARN_ON(clk_pfdv2_is_enabled(hw));
> +	/*
> +	 * PFD can NOT change rate without gating.
> +	 * as the PFDs may enabled in HW by default but no
> +	 * consumer used it, the enable count is '0', so the
> +	 * 'SET_RATE_GATE' can NOT help on blocking the set_rate
> +	 * ops especially for 'assigned-clock-xxx'. In order
> +	 * to simplify the case, just disable the PFD if it is
> +	 * enabled in HW but not in SW.
> +	 */
> +	if (clk_pfdv2_is_enabled(hw))
> +		clk_pfdv2_disable(hw);
>  
>  	tmp = tmp * 18 + rate / 2;
>  	do_div(tmp, rate);
> -- 
> 2.26.2
> 
