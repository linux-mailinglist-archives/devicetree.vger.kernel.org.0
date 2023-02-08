Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 25D5E68EB59
	for <lists+devicetree@lfdr.de>; Wed,  8 Feb 2023 10:28:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231388AbjBHJ2K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Feb 2023 04:28:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231185AbjBHJ1q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Feb 2023 04:27:46 -0500
Received: from APC01-PSA-obe.outbound.protection.outlook.com (mail-psaapc01on2052.outbound.protection.outlook.com [40.107.255.52])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 733D04ED5
        for <devicetree@vger.kernel.org>; Wed,  8 Feb 2023 01:25:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=apgSrmbl2nkMDiobe8N5vwcW0rJ2X1MHISLR8+p482LxtklAxX3hnEv8p0O6e4N7QxHRlvPGSnXP3t9MzoD7BhKPAm1LPtdTb7QOlUGLBIeWN7EUwSmcf3L319PjAS1zp8a5+LcRyrneqmv4J9Zm1GxZYR2VQphe8Wgc4ABqX04cpc0o8/6m3DP31jo5L/5rXGa/hbVYqG4X3+W3uGO7eOeeYNdBmBXjk724AWaztPbBi05UyCuJjboTNheX6mAabBKpqUtSChXCRbwCLwcaXk/Sl2rxLG8EpPbEdKyWbZcPWTvEqidseP92FWQAETWPRAJOWiNNo3swxQRWgrOppw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zy/r5DnZbk1p+14qRf3nue/WftNM2s08YyXCbnm93+g=;
 b=GJXp578QGfYyIzKFrQ18Xwb4tCvf+HktF4MX9/ekt2ZIcrEin1dB/u/3n6Z4aXCmkfuf3Yflfe5QbxbFljNlkgyyxOc4SRakp2q9+kvQ/Nf1Fg0qkRjJNiSc8JfZxH9Z8xP59Ngn6IIMJOM+f1wrJnj2rXQDBWsCpoTD1kCF5uIa3FRK57hiUJ1mNL08qru3ilE8BoLZGU5pQEoJSgaunv35GrbV15PoLgref3bcPDmaoGjiZR1wncQMXTn3uLkaC0rih3vhjXLjjBQtwg6G8oaI7tTGa6U6vLrxyIc0F9z9NqYWzMEKHpzG+IK9pQoCT/CMI7VWZeBK4lzBY0dVcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=irondevice.com; dmarc=pass action=none
 header.from=irondevice.com; dkim=pass header.d=irondevice.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=irondevice.com;
Received: from SLXP216MB0077.KORP216.PROD.OUTLOOK.COM (2603:1096:100:7::23) by
 PS2P216MB0228.KORP216.PROD.OUTLOOK.COM (2603:1096:300:21::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6086.17; Wed, 8 Feb 2023 09:24:50 +0000
Received: from SLXP216MB0077.KORP216.PROD.OUTLOOK.COM
 ([fe80::3d9:7f82:fa73:e727]) by SLXP216MB0077.KORP216.PROD.OUTLOOK.COM
 ([fe80::3d9:7f82:fa73:e727%7]) with mapi id 15.20.6064.035; Wed, 8 Feb 2023
 09:24:50 +0000
From:   Kiseok Jo <kiseok.jo@irondevice.com>
To:     Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        Kiseok Jo <kiseok.jo@irondevice.com>
Subject: [PATCH v2 1/4] ASoC: SMA1303: Remove the I2C Retry property in devicetree
Date:   Wed,  8 Feb 2023 09:24:17 +0000
Message-Id: <20230208092420.5037-5-kiseok.jo@irondevice.com>
X-Mailer: git-send-email 2.20.1
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-ClientProxiedBy: SL2PR03CA0020.apcprd03.prod.outlook.com
 (2603:1096:100:55::32) To SLXP216MB0077.KORP216.PROD.OUTLOOK.COM
 (2603:1096:100:7::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SLXP216MB0077:EE_|PS2P216MB0228:EE_
X-MS-Office365-Filtering-Correlation-Id: 2bf5416e-5f87-47d4-7365-08db09b6540c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Edzs2Na4zpI9DSqT8ous8NY1S7SUuZPv3qS4ooVHdp4v7J8XmOlgszr+etBCWfhdBZ1GwL3rBICdKaU89jgpINaOR7I/gjTXq0/nuUSUdcgYZox23hWcu4i1FpsNmW9iqCgjxmPW42PkYxbUrUEqQmX7jbeTpsNPa941SrYBFwM0/AnE8ChxsvWcvBFRU534XQICizGc77Bqdz2A/CPv3vOlEspnonrX6JIY0uAxkmKb7zopQY7ViHl2UHufALkEjhFuUwZ6IJdIxWrV1FqGBsFbQgAaM3HHqlh+3BYcjCS1rniGN4+KbcxXVJhEFcVcAnNuNQmKkumfbnQnXflxYEeg5dJWGxjK/U1CGzQfI3JBlC3GtQIPzNeVVwqpFBiYO0Pc7OMoDi4e6MfoTJJCw4VbKpxCwbhAPMxPEF2Nj2oETY1fxOe8ajMRlesvJ8IDJo50ZV8NvzBpBydBxEBnjRsFnArN1xJNlId1RM1LDryWfrXiT2w0lSVjTUxy6tjiLfAGXr2XVy9VqE1DMzy4mXKaRiY6NDK7vRlPYvtEP3+7ikfNYiOrBQ7k9qnCOUf2j1CA9i7ory6t3wwmXnNtS9EkHwUiwH5H0GiiHm0+wx5eThZRS9ggqYORL2BwYYZOxroL1Jv2+KoriKYslm6nuHM6pM2Nz0pOLvxoEaIJ1B3HJipgxsT4B78i5Omt0HQP
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SLXP216MB0077.KORP216.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230025)(396003)(346002)(376002)(366004)(136003)(39840400004)(451199018)(2906002)(52116002)(8936002)(36756003)(44832011)(110136005)(5660300002)(6486002)(478600001)(316002)(2616005)(38100700002)(38350700002)(6506007)(4326008)(8676002)(66556008)(66476007)(66946007)(1076003)(107886003)(186003)(26005)(86362001)(6512007)(83380400001)(6666004)(41300700001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dW4wbqG0L9snt4r4vzVzf7t7S54jhlBXeePjCJQJnziz8I9Hvvg4/pe92nEN?=
 =?us-ascii?Q?Citv6YJV6AgzJLxMOKmtrCMKT9uqh06SCJJ5a5YemE+2GY3NEJa/EtZkUQhg?=
 =?us-ascii?Q?+a2gqcK9GHojo5zWmkr6TiKKUvy32re+BOpa4D5+h3qz3uDBoTeIzWogGOcv?=
 =?us-ascii?Q?iaTs0lo/61gcd0yzM88tcMplNHdGicxZpoZ7NMJrJUdy+u0Do5Ia4yc/ESQG?=
 =?us-ascii?Q?Om4NyWYlFVOz/aB+KdoCo5IINy1kNDBZ3DpPeRABkHH5GFkR8YVrTOz3sSUA?=
 =?us-ascii?Q?RheAhPcSk2QAzvhqQI5K2rNXrjqM/M8kmIS0Spsu9BQWnFbAS0E386YSExKc?=
 =?us-ascii?Q?41qABM0facfw1OhR/feI3R7V1D4TGqgzzmpJ3lnwSnI/JB6Ua+Z4LOeJ9Yvu?=
 =?us-ascii?Q?YAcL2MjzN8UI+xHlXrXF7knNkRdqpnLjQFIufzsHlmY5ZObdyf6EJYexoA+/?=
 =?us-ascii?Q?REqZgsrkz4DNlFXIhh/Sj5fImjDMJ5GMTlYaLEdbiLC8UKn0eKW40/nzJG9o?=
 =?us-ascii?Q?lyLm+Hjyi0Hou2mbMR1nbsl0b+qxcmISH10Coglhvrx+RGpelojamK99FSjM?=
 =?us-ascii?Q?Q7raYa6QREK4iNj4r1EOpELqjUXNXQwx5WnmtWL1QCmu0VBCVXmLhcvHXChS?=
 =?us-ascii?Q?4XooIFGon21RtwXhldfjZUDVdI9NncAqhcXrGNKzrpVfKumOawbZR9HUbhTb?=
 =?us-ascii?Q?OTAYbIiFPuw0I1EDF6c3UGnHYpbNGRyJ/ibp3cA75vfjOrR5sSaASrnlIpDR?=
 =?us-ascii?Q?rkG55gnwhKmPmCqMbCOiGj66LiumoiAmm5KHiM7uUxdDxsj/r90kJniE0YVe?=
 =?us-ascii?Q?DL2B52ooxUlcst4Uc2UbYxHiq+WMSJqLAk+aprabgotzVA4YCnSoSxBn8cKA?=
 =?us-ascii?Q?zQ41qMo9loiQnxRFWgRG2QJYxzSnTBqH+1kSf/fyhNADHqWhv2fUUZtyhtGK?=
 =?us-ascii?Q?xip504nHQ5vKvOAsLHname21sD4kXEq/BxqLQZoVcroC6xMGnX7j/zSLVUEY?=
 =?us-ascii?Q?QWqMNrvhxu38RgkSKU9qrx39BTN3iLCjFXe8JwRoYv6+OaNlDMWHWUDaggab?=
 =?us-ascii?Q?sa73SZm419sPU4hhWY2I0I6KB0QQWJYwMP70Efh+R5eWw6isa32+/iwhfG2w?=
 =?us-ascii?Q?SCvXbt3/sO/oBf2RiwibmcOUi66GSz7UdZNpquBqk171jNlx/7I6NbcSoFHE?=
 =?us-ascii?Q?fgSiDcLNlCENA08flM5td6Rmtz9fKUKjfINIZRPPqlKQQpL1hPu8IdFNL1+6?=
 =?us-ascii?Q?mqDufptOBXe5YQnBkBeM9Eij1mc3QFjgR+yOU2SnlQD+24EzuMwJxoHqea2R?=
 =?us-ascii?Q?UVNVmL23VP/z8TuIUvatfve5785d5nxHo1hvLAz0q/V76TemsrBwML//YIv+?=
 =?us-ascii?Q?NIqgc262OI7sNLDdTXWJkSVMH2vrAKYG89BaExy6ogg1qA7tO9MW2MxNctwZ?=
 =?us-ascii?Q?CbvoQSlOEgqtPhrYCuufxFAgmegIWEMZJoI5eQ3qkmFdG/FxzHbar0BoSlFV?=
 =?us-ascii?Q?L8HCQkTq7fifyh+05WcY8cNPUCmjYaVY444qi6kiOepvpa+rkPeTVjbQhUNQ?=
 =?us-ascii?Q?f65rdJf4AKLEmfxm8rBEkzWYl87GtVhgvlH95VtHA/sXFWaLS9dW3n+Z9BA6?=
 =?us-ascii?Q?3A=3D=3D?=
X-OriginatorOrg: irondevice.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2bf5416e-5f87-47d4-7365-08db09b6540c
X-MS-Exchange-CrossTenant-AuthSource: SLXP216MB0077.KORP216.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Feb 2023 09:24:50.3731
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b4849faa-3337-494e-a76a-cb25a3b3d7d1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ygbsjnoh9x6BJBq4A1fzeOudMlT9JbNrkLeQxg1fmET925GQscGXFv1Zx1qoyTIpdK+0SbJwW0Tg7CHZcu3x3GAGOZHTUPZHfvtvrAOsVB8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PS2P216MB0228
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It's necessary to set the value for each device, so remove that.

Signed-off-by: Kiseok Jo <kiseok.jo@irondevice.com>
---
 sound/soc/codecs/sma1303.c | 16 +---------------
 1 file changed, 1 insertion(+), 15 deletions(-)

diff --git a/sound/soc/codecs/sma1303.c b/sound/soc/codecs/sma1303.c
index fbedba574ff4..fdcc40f5fc61 100644
--- a/sound/soc/codecs/sma1303.c
+++ b/sound/soc/codecs/sma1303.c
@@ -1621,21 +1621,6 @@ static int sma1303_i2c_probe(struct i2c_client *client)
 	}
 
 	if (np) {
-		if (!of_property_read_u32(np, "i2c-retry", &value)) {
-			if (value > 50 || value <= 0) {
-				sma1303->retry_cnt = SMA1303_I2C_RETRY_COUNT;
-				dev_dbg(&client->dev, "%s : %s\n", __func__,
-					"i2c-retry out of range (up to 50)");
-			} else {
-				sma1303->retry_cnt = value;
-				dev_dbg(&client->dev, "%s : %s = %u\n",
-					__func__, "i2c-retry count", value);
-			}
-		} else {
-			dev_dbg(&client->dev, "%s : %s = %d\n", __func__,
-				"i2c-retry count", SMA1303_I2C_RETRY_COUNT);
-			sma1303->retry_cnt = SMA1303_I2C_RETRY_COUNT;
-		}
 		if (!of_property_read_u32(np, "tdm-slot-rx", &value)) {
 			dev_dbg(&client->dev,
 				"tdm slot rx is '%d' from DT\n", value);
@@ -1733,6 +1718,7 @@ static int sma1303_i2c_probe(struct i2c_client *client)
 	sma1303->last_ocp_val = 0x08;
 	sma1303->last_over_temp = 0xC0;
 	sma1303->tsdw_cnt = 0;
+	sma1303->retry_cnt = SMA1303_I2C_RETRY_COUNT;
 
 	sma1303->dev = &client->dev;
 	sma1303->kobj = &client->dev.kobj;
-- 
2.20.1

