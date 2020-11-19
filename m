Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DBA662B93D3
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 14:46:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727066AbgKSNoU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 08:44:20 -0500
Received: from mail-eopbgr80045.outbound.protection.outlook.com ([40.107.8.45]:10126
        "EHLO EUR04-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726949AbgKSNoT (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Nov 2020 08:44:19 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DEPiE92CTaIH2hKCtgrWXUyfs75LCCQEW6++tJGZLunyVXWIfSyURw4cSLpVt5hLpeCK2wB/kEWWtj95sr9OSydN7mOnmN5dOf3deVXpr5fXTBUiZU0863y696Kb7nKKuZ29fuQh0DxnhQLxVHaTpyZq4oSdqra92pnoaiRzl7SVIutATz/K66hJJEgYoVqZjqI7ZuNaXeSbOWg/hE4/tvrrkLt4xOap+nQKT7HVkOQXCNAxTaJfkXWXA48IRHpjPAd4LymMB5qArpglVU9TuCkmt9JZXUwgxgc8eGXSvlzs7YuZCLAWG7tb4CoW/ANJhfnl4x7wSxEUwQBtTKERbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YFz2gKVOMCD+dEbYvX7tmCKFz2wdsXgTq7btW7cO4DQ=;
 b=GCVdaI/de/NtIrm1sIp/77czVJJf/9PL4T+R333QPIKer0W1eHt8FLwtGDb6t1TuHyVSLE1lzpi4FZ/Vn9Pp/sSdBml84mdo/gExB9q1DzvYlS3zxeBojXAdGiUQao30ZDohScHnSlRY3IDCIDbSM7NOOrMSLX9BEULgeId2meIvj4A51aKIgizpoGVk6DyHg3TfkbXNdEI3jDlGesjcgOedGvJssRZPJQPg0SrpiYF+lc5t5Py8iQvwOFTNIzcXhleTbdX0UDrjuIFVExvf2YaUap78hLdjizzbldws6Git/W6iclwJmuvKljpsZuu8tMl8ZlPwXhu7MgnMnOxQww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YFz2gKVOMCD+dEbYvX7tmCKFz2wdsXgTq7btW7cO4DQ=;
 b=DKSecXjk4SGf7IYNZISseJ3B+9XoP7/trdbY7OTcNVEP3m4plxNHi3BAqdM7gIo+7vo6RsEFDi1xgV+rdGNkHjx5084jdD8rUSzRkJGZ7Dp9YjRndLSVUIebGtn78mTSka0uLKSd3+AShT4yxc6ND6gdslHnOVj7EPIlSSuhJ/U=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR0402MB3784.eurprd04.prod.outlook.com (2603:10a6:209:23::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.20; Thu, 19 Nov
 2020 13:44:15 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3cfc:a92e:75ad:ce4a]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3cfc:a92e:75ad:ce4a%3]) with mapi id 15.20.3564.029; Thu, 19 Nov 2020
 13:44:15 +0000
From:   Dong Aisheng <aisheng.dong@nxp.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     shawnguo@kernel.org, fabio.estevam@nxp.com, aisheng.dong@nxp.com,
        kernel@pengutronix.de, linux-imx@nxp.com, mirela.rabulea@nxp.com,
        jan.kiszka@siemens.com, dongas86@gmail.com
Subject: [PATCH v4 01/15] arm64: dts: imx8qxp: add fallback compatible string for scu pd
Date:   Thu, 19 Nov 2020 21:26:40 +0800
Message-Id: <20201119132654.1755-2-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20201119132654.1755-1-aisheng.dong@nxp.com>
References: <20201119132654.1755-1-aisheng.dong@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [119.31.174.66]
X-ClientProxiedBy: SG2PR04CA0164.apcprd04.prod.outlook.com (2603:1096:4::26)
 To AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from b29396-OptiPlex-7040.ap.freescale.net (119.31.174.66) by SG2PR04CA0164.apcprd04.prod.outlook.com (2603:1096:4::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.3589.20 via Frontend Transport; Thu, 19 Nov 2020 13:44:10 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 74abbcf9-2fb3-4987-0e92-08d88c913392
X-MS-TrafficTypeDiagnostic: AM6PR0402MB3784:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR0402MB37845BC19267EE0191155FB580E00@AM6PR0402MB3784.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3044;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: l1hUJ+kAa9ChFH3MXS4ZxhEMbTkVkQHJzYXjcsJZlBgGzQuMOHDvFR3vjmFaY1r2qmi0cGaTYpQK1l3AimvixmLtpsdpLjZ1xV75rzzbt1dvZ8Qgx3GEjj4kitlW9+puPsx9J5v6V347YZiMWYe497FIqLvqF6pj2WGOSCDh38QD59pxtoKp8ARI3eh/SptN/Bqy628Xqw+gh+fUVu0ow+2JN6sZ5RD03rubQUEJ96n5MivpMh1gtYv7Ce8g4Q/V0hxnC+8OhV9JwjPuTYJPigHHy9hfTPbRBlsHrEg3cNu01VSv1KAo7Sf9x0xF7s5vLN/mp4i53d3UkiSUYSRDpJktezxbW4iHnJBxnfo83VOqnxMzBEThGtt9dr4rO+62
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB4966.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(136003)(366004)(376002)(346002)(396003)(83380400001)(4744005)(186003)(66946007)(5660300002)(316002)(956004)(478600001)(6486002)(8676002)(66556008)(66476007)(6666004)(16526019)(2616005)(36756003)(6506007)(86362001)(1076003)(26005)(4326008)(52116002)(6512007)(8936002)(2906002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: JjhetjMKqQSr932TV4H/aJuEeb8f8RExUpyyfQ8dg0qY7coeBXy4dxmCasbSUudsy+z6YHl4fRsQ4ySSMkHhqOGQaWxU1jaLI9e65xLuGdTq0plbXOXzWQ5ntpReS6QnPDsD4Lyjfb9MiN3WB7xS781+1E/8dDAQPE7SniGf/OaBZLcBMZCElTaIRZj55xyVcnO3iweQWZzN3UGR1+nZEo5EZtJz7E8Ab2EniTtIhlJ38kGb+Dp1qSyB30uBa34eXEfD5V3Q8jyhCgOUiiVHI2P/nwwVk+XQxQ9F1cxat58MsNCSmtLpO1MGlcQcNUlDJ14sgbKcvYALu+OBVouchmgQXwAWx9ELlfRUHxhraKXQTp8a7NwqKU0VWJf0KdLc69uaQoEMb9EgwGaaIOXXjUbf5lmuO+8IAAEOX7LfL5jTb7XN7nbrvUThbe/bdihCF46Op6QtfSxj7tirUCr6ftX3ljrd+fepSLZj8ZsAdxw7m3jrj+db69cM8Cq6CXD1TTwRkM2DLwbWe0v1k++9ry6aY3LIaGpKzYpxWhauuAm9C7uJNrEumoAsonBy6HDX7tG7la9zLd8DHt19XkR8w2AEjbH+eYJzzqRRsaTxMaj+ZcZMTQ3dYL9DA4PBugHlm30aj/JepvZdVVBIFuHDog==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74abbcf9-2fb3-4987-0e92-08d88c913392
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB4966.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2020 13:44:15.0463
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZkFO0Qhm0yUop8xsNd+2RDJVbTQAGtJchmdP9Oy2ksdZHXZzCQHNfR/ibXT2v8U8/2K7mVoXpiVoc7ZpAsqGaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3784
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

According to binding doc, add the fallback compatible string for
scu pd.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: devicetree@vger.kernel.org
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <kernel@pengutronix.de>
Cc: Fabio Estevam <fabio.estevam@nxp.com>
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
ChangeLog:
 v2: new patch
---
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index e46faac1fe71..56da25b12950 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -176,7 +176,7 @@
 		};
 
 		pd: imx8qx-pd {
-			compatible = "fsl,imx8qxp-scu-pd";
+			compatible = "fsl,imx8qxp-scu-pd", "fsl,scu-pd";
 			#power-domain-cells = <1>;
 		};
 
-- 
2.23.0

