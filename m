Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3BA8E565797
	for <lists+devicetree@lfdr.de>; Mon,  4 Jul 2022 15:43:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234708AbiGDNnD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jul 2022 09:43:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234168AbiGDNnA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jul 2022 09:43:00 -0400
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-eopbgr60058.outbound.protection.outlook.com [40.107.6.58])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A13521AC
        for <devicetree@vger.kernel.org>; Mon,  4 Jul 2022 06:42:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AJh52wMVeVWM2SBQlNHY+mojHxBSMkEfEt4urPduimJsehtEKVHZTgC3O4REPArNNPFmGUvnZUsM9Yf43l/MP4NPgJbQCzHwRHhlkTfUQ2m6w12P8sBBNPAND8pFtyViv/vDYkDh95s0nKYGnIKHWDc6Xy3/Kll2VWBHNLFpz5zD/ObZEJDbvafs7hEm/MawREeIsxsBnnS5X3M+fEXNPT1I/zxaw9YcnWpZIkHRhvIliFhC8NuQABNOhkpg/kJ2ythsktLPLkU+pcVgKwKebGT/wqix99DZC9wE7KTkPlIwqhan3VygcJqbxxfPQUfSphD3/oQQVHbzDogmBH7Nvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4lwsuakEZGJEzp76XIVLoPtD1TJHBnJFKeA6aTHHmSE=;
 b=ZSbg2egjt1dfPO3CIugPzClBazoPesJj3nkQR+z9NCTzYljqRf7e+YFn4jyv+xbYlGOiRYwbz4WbM1K9kDXC3u5AFc/mWCfgcHH8++ND38qzq0Y6wi8k2BPPOhvIfIj9SGjZtLbVdhSNYpxt5APOBOe/DfFx/mlkn42Bw4MfZNeOeANMBh4ZzASn3sYF3QUUyl7gypoD7h4gifzMM1nnm+iG+eDBK8IVcgRqq1V7FWo+eSyzja7r2pIRJut7J1ltye5VZevZk4ZqpkAn4sK3bP4InUh6D97KbDOkxQvqBBzxjnVJV/w7as+rfxNPhFIj+9TQf2eEpxxBVHXCbff2iQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4lwsuakEZGJEzp76XIVLoPtD1TJHBnJFKeA6aTHHmSE=;
 b=aK9we2R1O+DrQWyCKyGh5i5QJKttyaxM9FwAaKWH52XXs5lvyyM2rdtZFgViyDgC+p1rqBrnv68d11C3Jmw4GICUDirfwFcN9Ux5wfFwoUppf5JXCMyzenGSnp+6cWRtvEN95WDOEhbVaEUv7/dJ4S3PdbRhoqOTiktGO78ggrM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from GV1PR04MB9055.eurprd04.prod.outlook.com (2603:10a6:150:1e::22)
 by VI1PR04MB5888.eurprd04.prod.outlook.com (2603:10a6:803:ec::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.19; Mon, 4 Jul
 2022 13:42:54 +0000
Received: from GV1PR04MB9055.eurprd04.prod.outlook.com
 ([fe80::4c14:c403:a8a4:b4e4]) by GV1PR04MB9055.eurprd04.prod.outlook.com
 ([fe80::4c14:c403:a8a4:b4e4%5]) with mapi id 15.20.5373.018; Mon, 4 Jul 2022
 13:42:53 +0000
From:   Ioana Ciornei <ioana.ciornei@nxp.com>
To:     davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
        pabeni@redhat.com
Cc:     robh+dt@kernel.org, linux@armlinux.org.uk,
        devicetree@vger.kernel.org, Ioana Ciornei <ioana.ciornei@nxp.com>
Subject: [PATCH v2 net-next 4/4] arch: arm64: dts: marvell: rename the sfp GPIO properties
Date:   Mon,  4 Jul 2022 16:42:13 +0300
Message-Id: <20220704134213.13100-5-ioana.ciornei@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220704134213.13100-1-ioana.ciornei@nxp.com>
References: <20220704134213.13100-1-ioana.ciornei@nxp.com>
Content-Type: text/plain
X-ClientProxiedBy: FR3P281CA0071.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4b::7) To GV1PR04MB9055.eurprd04.prod.outlook.com
 (2603:10a6:150:1e::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e47102ca-00b3-4bad-2119-08da5dc3181e
X-MS-TrafficTypeDiagnostic: VI1PR04MB5888:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2twjW2xsJxMGQcZ9SJ/W5Z3y90SOPDIVWsgItzaQThuyKP1oar5UHe1SngjNOzktQmSBDzBSG/dsm+Ymen2bYGRCrnQb0u3/TEglxFi1SDjIha2NSWiJS/gnEeqnh+PxbecNqNJOOIWBg4MWPduX8mGuX38IGPp4WYg4p5PdSccklanJt2VLwr03PFfDgKQzpldKMPMKUONgFXwMsLCjXBQnDXd6uiaz2RSZi4e5X6ulIW2zknc0ZWsuj6RR2YhZdzwYF+gX1OIcfDgenrp0H9PF6UAe1SeeSCAQLUPtlZSh8IFBNpPNL9JDx+eeyiIU52ebTZfm/j46tjLgDu5AYoUz5ceuLvnQgKbu5tY1Hos22PR6qeQHPDxjb0rGFlJYFd7meM2j0jzYEZgWrOI3b0LkNCI3x/xUuire/ZpmRixzxZmJ/mchZrKsrzD88GO5QrX4z/K3LnVaz8RRF6prkC63DRCdiCLbCgTNE5ITiCdLrQ0HghMPdaEyvqpJJmHS4cskPc5GqTblgtWiytvjS0RmpjABqiHxIZrIr1zQ62a7zMB1JrDB+uxgDoV51QC5Jar/FVeLo+RnBj/unFEf6SWmRLVBYrhVA+Ss/zrOMq1B15wOoaBAY/dTn9OgdfDReSdHPdRFDQp3EZg51Ut2Zrst6g/222M+++nBlg1zseghC/jaBiy2hz7WKHe5V1xvYhF+fKoyrqf4kae13LZ6rxrnQmntvc4belccxVpaDaCSsU8TNofJhy7CZMqlK0scNELtgC2jSFo33WR86iTP1x2MmZjUSKLRB10iyZYZ0hKlyLHdkog+mnzWT32HUajh
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GV1PR04MB9055.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(39860400002)(136003)(396003)(346002)(376002)(366004)(36756003)(316002)(38350700002)(4326008)(8676002)(66946007)(66476007)(44832011)(83380400001)(66556008)(38100700002)(41300700001)(478600001)(6512007)(8936002)(26005)(6666004)(6506007)(2616005)(1076003)(30864003)(5660300002)(86362001)(6486002)(2906002)(52116002)(186003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ucQF4ssPWlWIK/vZcBzEvrnr7hdpRiSqRJzI/Ip9nMOKGjwprWpU7Rh1J3mV?=
 =?us-ascii?Q?2Tg3PAnsBis5A5k8CkwXKQiPOUklLkK9pJGS1XKCf1o0hhpZCWwFbDMbRiQX?=
 =?us-ascii?Q?RvI84D/6pZT7sSgXcRickc8rNP4/3DSTbeL9BykZuURDQ/6TU1Ew0BYxcrWC?=
 =?us-ascii?Q?pqnmWDwG0McZdMwdYg1sDO3fmPHC292Z0e1pMR5ziIyW00cPLbGG7twIeiBr?=
 =?us-ascii?Q?qmJicwtthha011b7U+6ofZBeBxTVprwco1A999ryBCytN79XajEMCM+hWrDM?=
 =?us-ascii?Q?NYMze2qrT1Dh8cEngDoCyLB1HhCG4q/ImE/XdKUpXIlakw6bepU1lj7B3PAT?=
 =?us-ascii?Q?1NmfOEnrzsmt9DKIXwin6C0lLTC13do2zuiC5pNoAs8QDiWcRJpXrkJ/gVJg?=
 =?us-ascii?Q?m8aCjxKnSRKKO18yKZb04E+ttdg+aXco/k8RHWaHfik0crA6VeqGQ1Sdh28S?=
 =?us-ascii?Q?8xCrm8dLEakU7pZscFJ9CJFTySjdylxKOLqcHEYRPGJmCPh++xGnFG1rLXYX?=
 =?us-ascii?Q?vMEKySb/E9by7anYv7P9hE3v7lY3tUDKA1ftvGzWTcFNkfefh/9iu16ANUER?=
 =?us-ascii?Q?96y7y3cEs02MId0GQrw9T4AhWSUkvvxkZQkCi4SOID7JjB8qH3OX+b6mz5zg?=
 =?us-ascii?Q?pxnkbQW2BlD9p+snqYdbylgRnXU3Vgn/hjdCohujwAd3iF72fjOE+noN3QKu?=
 =?us-ascii?Q?sRUJcoLIyNV7EiG/gUjQi9iOEDQHg5m2QWHriy8j6t0Vp9uYkG60if+pHFf9?=
 =?us-ascii?Q?QjVt96xgqpUMtW2GefBb92g9V4u/RcprWQjAmGpqlClWPisNqeM35cikxL+9?=
 =?us-ascii?Q?VIMU3iQ+aq9+XQM16X0xGofYkwlkHOtF18ALHj76Ij+r6jDptmiRDtGHYrek?=
 =?us-ascii?Q?S/ynCormhxFUbSBW2Wg4Ep99bNaqPuS3gz3PYjY+ibOMt4+iZeg5jCrvl1uO?=
 =?us-ascii?Q?vkFwP4TZGg9O37ou5eBoCc+Q2K+f/c9IXhVhBjf4oBLM/+i7MffbXkzN5Sch?=
 =?us-ascii?Q?xMImN1C7CaKLb1IMV+t5qOMl1oJsZ1xmz+fh8p6e/H4M7RH6H69SSf+Yafxi?=
 =?us-ascii?Q?L38V5EScsnG5DV9GWuQMMHOcLgGnrbZdzlxFBCNNgFz5y+Ad8XOJgwin+5mJ?=
 =?us-ascii?Q?Ag6dObzn3HNC4G3qSvqRlfK7cYArggx51EGJftoRO4Gpg7L+NU7ySAscskQN?=
 =?us-ascii?Q?lCiQ9qMyf1r8t/H6BGMyZqV93gMwlydzW7NpSVooCm+B2Tb7VEWNYKzaOKJJ?=
 =?us-ascii?Q?F1WOQw0hYnxhqOrGAsC/TbFq1R248wWDoLfncfgLzzhZ8MRPqT3wJiB3mQVO?=
 =?us-ascii?Q?2bnWfTT/P+c+g66RKSysCuVbWP4dwqYKMI6Rb2s2X4wSQo8Tqr8OCd0EDucw?=
 =?us-ascii?Q?743MJz5hqnJn8cH9bzDOscLo294fdwHV/zufKBQzp+eLcKasm/ayXlgw13Zg?=
 =?us-ascii?Q?oVoX2cAFqSizv2yRwUlUFgegnnSQFZmngSXbqceA1xO37DzBJxw7478NJpCB?=
 =?us-ascii?Q?f6smYWSKSsVlOZ/3v0t3v1UK/Knjg/tKL5B+9JV5ruSsRS2HScevogADZf25?=
 =?us-ascii?Q?ZULfHs8qP7x7j4opik27NEl7w5VSKks99fYNnyeL?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e47102ca-00b3-4bad-2119-08da5dc3181e
X-MS-Exchange-CrossTenant-AuthSource: GV1PR04MB9055.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2022 13:42:53.2689
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aVU9bAOvHEBJf5J6zUGgc8JFoO2M43MTKxwQbm/Sc8IdFPssj1hvKA+7a2KqLT73aIPksnidaU9PuZmMHdh4uA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5888
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Rename the GPIO related sfp properties to include the preffered -gpios
suffix. Also, with this change the dtb_check will no longer complain
when trying to verify the DTS against the sff,sfp.yaml binding.

Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
---
Changes in v2:
 - new patch

 .../dts/marvell/armada-3720-turris-mox.dts    | 10 ++++----
 .../boot/dts/marvell/armada-3720-uDPU.dts     | 16 ++++++-------
 .../boot/dts/marvell/armada-7040-mochabin.dts | 16 ++++++-------
 .../marvell/armada-8040-clearfog-gt-8k.dts    |  4 ++--
 .../boot/dts/marvell/armada-8040-mcbin.dtsi   | 24 +++++++++----------
 .../dts/marvell/armada-8040-puzzle-m801.dts   | 16 ++++++-------
 arch/arm64/boot/dts/marvell/cn9130-crb.dtsi   |  6 ++---
 arch/arm64/boot/dts/marvell/cn9130-db.dtsi    |  8 +++----
 arch/arm64/boot/dts/marvell/cn9131-db.dtsi    |  8 +++----
 arch/arm64/boot/dts/marvell/cn9132-db.dtsi    |  8 +++----
 10 files changed, 58 insertions(+), 58 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts b/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts
index caf9c8529fca..cbf75ddd6857 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts
@@ -100,11 +100,11 @@
 	sfp: sfp {
 		compatible = "sff,sfp";
 		i2c-bus = <&i2c0>;
-		los-gpio = <&moxtet_sfp 0 GPIO_ACTIVE_HIGH>;
-		tx-fault-gpio = <&moxtet_sfp 1 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpio = <&moxtet_sfp 2 GPIO_ACTIVE_LOW>;
-		tx-disable-gpio = <&moxtet_sfp 4 GPIO_ACTIVE_HIGH>;
-		rate-select0-gpio = <&moxtet_sfp 5 GPIO_ACTIVE_HIGH>;
+		los-gpios = <&moxtet_sfp 0 GPIO_ACTIVE_HIGH>;
+		tx-fault-gpios = <&moxtet_sfp 1 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&moxtet_sfp 2 GPIO_ACTIVE_LOW>;
+		tx-disable-gpios = <&moxtet_sfp 4 GPIO_ACTIVE_HIGH>;
+		rate-select0-gpios = <&moxtet_sfp 5 GPIO_ACTIVE_HIGH>;
 		maximum-power-milliwatt = <3000>;
 
 		/* enabled by U-Boot if SFP module is present */
diff --git a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
index a35317d24d6c..b20c8e7d923b 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
@@ -65,20 +65,20 @@
 	sfp_eth0: sfp-eth0 {
 		compatible = "sff,sfp";
 		i2c-bus = <&i2c0>;
-		los-gpio = <&gpiosb 2 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpio = <&gpiosb 3 GPIO_ACTIVE_LOW>;
-		tx-disable-gpio = <&gpiosb 4 GPIO_ACTIVE_HIGH>;
-		tx-fault-gpio = <&gpiosb 5 GPIO_ACTIVE_HIGH>;
+		los-gpios = <&gpiosb 2 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&gpiosb 3 GPIO_ACTIVE_LOW>;
+		tx-disable-gpios = <&gpiosb 4 GPIO_ACTIVE_HIGH>;
+		tx-fault-gpios = <&gpiosb 5 GPIO_ACTIVE_HIGH>;
 		maximum-power-milliwatt = <3000>;
 	};
 
 	sfp_eth1: sfp-eth1 {
 		compatible = "sff,sfp";
 		i2c-bus = <&i2c1>;
-		los-gpio = <&gpiosb 7 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpio = <&gpiosb 8 GPIO_ACTIVE_LOW>;
-		tx-disable-gpio = <&gpiosb 9 GPIO_ACTIVE_HIGH>;
-		tx-fault-gpio = <&gpiosb 10 GPIO_ACTIVE_HIGH>;
+		los-gpios = <&gpiosb 7 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&gpiosb 8 GPIO_ACTIVE_LOW>;
+		tx-disable-gpios = <&gpiosb 9 GPIO_ACTIVE_HIGH>;
+		tx-fault-gpios = <&gpiosb 10 GPIO_ACTIVE_HIGH>;
 		maximum-power-milliwatt = <3000>;
 	};
 };
diff --git a/arch/arm64/boot/dts/marvell/armada-7040-mochabin.dts b/arch/arm64/boot/dts/marvell/armada-7040-mochabin.dts
index 39a8e5e99d79..5f6ed735e31a 100644
--- a/arch/arm64/boot/dts/marvell/armada-7040-mochabin.dts
+++ b/arch/arm64/boot/dts/marvell/armada-7040-mochabin.dts
@@ -34,20 +34,20 @@
 	sfp_eth0: sfp-eth0 {
 		compatible = "sff,sfp";
 		i2c-bus = <&cp0_i2c1>;
-		los-gpio = <&sfp_gpio 3 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpio = <&sfp_gpio 2 GPIO_ACTIVE_LOW>;
-		tx-disable-gpio = <&sfp_gpio 1 GPIO_ACTIVE_HIGH>;
-		tx-fault-gpio  = <&sfp_gpio 0 GPIO_ACTIVE_HIGH>;
+		los-gpios = <&sfp_gpio 3 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&sfp_gpio 2 GPIO_ACTIVE_LOW>;
+		tx-disable-gpios = <&sfp_gpio 1 GPIO_ACTIVE_HIGH>;
+		tx-fault-gpios  = <&sfp_gpio 0 GPIO_ACTIVE_HIGH>;
 	};
 
 	/* SFP 1G */
 	sfp_eth2: sfp-eth2 {
 		compatible = "sff,sfp";
 		i2c-bus = <&cp0_i2c0>;
-		los-gpio = <&sfp_gpio 7 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpio = <&sfp_gpio 6 GPIO_ACTIVE_LOW>;
-		tx-disable-gpio = <&sfp_gpio 5 GPIO_ACTIVE_HIGH>;
-		tx-fault-gpio  = <&sfp_gpio 4 GPIO_ACTIVE_HIGH>;
+		los-gpios = <&sfp_gpio 7 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&sfp_gpio 6 GPIO_ACTIVE_LOW>;
+		tx-disable-gpios = <&sfp_gpio 5 GPIO_ACTIVE_HIGH>;
+		tx-fault-gpios  = <&sfp_gpio 4 GPIO_ACTIVE_HIGH>;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
index 871f84b4a6ed..079c2745070a 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
@@ -64,8 +64,8 @@
 	sfp_cp0_eth0: sfp-cp0-eth0 {
 		compatible = "sff,sfp";
 		i2c-bus = <&cp0_i2c1>;
-		mod-def0-gpio = <&cp0_gpio2 17 GPIO_ACTIVE_LOW>;
-		tx-disable-gpio = <&cp1_gpio1 29 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&cp0_gpio2 17 GPIO_ACTIVE_LOW>;
+		tx-disable-gpios = <&cp1_gpio1 29 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&cp0_sfp_present_pins &cp1_sfp_tx_disable_pins>;
 		maximum-power-milliwatt = <2000>;
diff --git a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
index 779cf167c33e..33c179838e24 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
@@ -65,10 +65,10 @@
 		/* CON15,16 - CPM lane 4 */
 		compatible = "sff,sfp";
 		i2c-bus = <&sfpp0_i2c>;
-		los-gpio = <&cp1_gpio1 28 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpio = <&cp1_gpio1 27 GPIO_ACTIVE_LOW>;
-		tx-disable-gpio = <&cp1_gpio1 29 GPIO_ACTIVE_HIGH>;
-		tx-fault-gpio  = <&cp1_gpio1 26 GPIO_ACTIVE_HIGH>;
+		los-gpios = <&cp1_gpio1 28 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&cp1_gpio1 27 GPIO_ACTIVE_LOW>;
+		tx-disable-gpios = <&cp1_gpio1 29 GPIO_ACTIVE_HIGH>;
+		tx-fault-gpios  = <&cp1_gpio1 26 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&cp1_sfpp0_pins>;
 		maximum-power-milliwatt = <2000>;
@@ -78,10 +78,10 @@
 		/* CON17,18 - CPS lane 4 */
 		compatible = "sff,sfp";
 		i2c-bus = <&sfpp1_i2c>;
-		los-gpio = <&cp1_gpio1 8 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpio = <&cp1_gpio1 11 GPIO_ACTIVE_LOW>;
-		tx-disable-gpio = <&cp1_gpio1 10 GPIO_ACTIVE_HIGH>;
-		tx-fault-gpio = <&cp0_gpio2 30 GPIO_ACTIVE_HIGH>;
+		los-gpios = <&cp1_gpio1 8 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&cp1_gpio1 11 GPIO_ACTIVE_LOW>;
+		tx-disable-gpios = <&cp1_gpio1 10 GPIO_ACTIVE_HIGH>;
+		tx-fault-gpios = <&cp0_gpio2 30 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&cp1_sfpp1_pins &cp0_sfpp1_pins>;
 		maximum-power-milliwatt = <2000>;
@@ -91,10 +91,10 @@
 		/* CON13,14 - CPS lane 5 */
 		compatible = "sff,sfp";
 		i2c-bus = <&sfp_1g_i2c>;
-		los-gpio = <&cp0_gpio2 22 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpio = <&cp0_gpio2 21 GPIO_ACTIVE_LOW>;
-		tx-disable-gpio = <&cp1_gpio1 24 GPIO_ACTIVE_HIGH>;
-		tx-fault-gpio = <&cp0_gpio2 19 GPIO_ACTIVE_HIGH>;
+		los-gpios = <&cp0_gpio2 22 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&cp0_gpio2 21 GPIO_ACTIVE_LOW>;
+		tx-disable-gpios = <&cp1_gpio1 24 GPIO_ACTIVE_HIGH>;
+		tx-fault-gpios = <&cp0_gpio2 19 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&cp0_sfp_1g_pins &cp1_sfp_1g_pins>;
 		maximum-power-milliwatt = <2000>;
diff --git a/arch/arm64/boot/dts/marvell/armada-8040-puzzle-m801.dts b/arch/arm64/boot/dts/marvell/armada-8040-puzzle-m801.dts
index 74bed79e4f5e..72e9b0f671a9 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-puzzle-m801.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-puzzle-m801.dts
@@ -67,20 +67,20 @@
 	sfp_cp0_eth0: sfp-cp0-eth0 {
 		compatible = "sff,sfp";
 		i2c-bus = <&sfpplus0_i2c>;
-		los-gpio = <&sfpplus_gpio 11 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpio = <&sfpplus_gpio 10 GPIO_ACTIVE_LOW>;
-		tx-disable-gpio = <&sfpplus_gpio 9 GPIO_ACTIVE_HIGH>;
-		tx-fault-gpio  = <&sfpplus_gpio 8 GPIO_ACTIVE_HIGH>;
+		los-gpios = <&sfpplus_gpio 11 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&sfpplus_gpio 10 GPIO_ACTIVE_LOW>;
+		tx-disable-gpios = <&sfpplus_gpio 9 GPIO_ACTIVE_HIGH>;
+		tx-fault-gpios  = <&sfpplus_gpio 8 GPIO_ACTIVE_HIGH>;
 		maximum-power-milliwatt = <3000>;
 	};
 
 	sfp_cp1_eth0: sfp-cp1-eth0 {
 		compatible = "sff,sfp";
 		i2c-bus = <&sfpplus1_i2c>;
-		los-gpio = <&sfpplus_gpio 3 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpio = <&sfpplus_gpio 2 GPIO_ACTIVE_LOW>;
-		tx-disable-gpio = <&sfpplus_gpio 1 GPIO_ACTIVE_HIGH>;
-		tx-fault-gpio  = <&sfpplus_gpio 0 GPIO_ACTIVE_HIGH>;
+		los-gpios = <&sfpplus_gpio 3 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&sfpplus_gpio 2 GPIO_ACTIVE_LOW>;
+		tx-disable-gpios = <&sfpplus_gpio 1 GPIO_ACTIVE_HIGH>;
+		tx-fault-gpios  = <&sfpplus_gpio 0 GPIO_ACTIVE_HIGH>;
 		maximum-power-milliwatt = <3000>;
 	};
 
diff --git a/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi b/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi
index 1acd746284dc..8e4ec243fb8f 100644
--- a/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi
+++ b/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi
@@ -78,9 +78,9 @@
 		compatible = "sff,sfp";
 		i2c-bus = <&cp0_i2c1>;
 		mod-def0-gpios = <&expander0 3 GPIO_ACTIVE_LOW>;
-		los-gpio = <&expander0 15 GPIO_ACTIVE_HIGH>;
-		tx-disable-gpio = <&expander0 2 GPIO_ACTIVE_HIGH>;
-		tx-fault-gpio = <&cp0_gpio1 24 GPIO_ACTIVE_HIGH>;
+		los-gpios = <&expander0 15 GPIO_ACTIVE_HIGH>;
+		tx-disable-gpios = <&expander0 2 GPIO_ACTIVE_HIGH>;
+		tx-fault-gpios = <&cp0_gpio1 24 GPIO_ACTIVE_HIGH>;
 		maximum-power-milliwatt = <3000>;
 		status = "okay";
 	};
diff --git a/arch/arm64/boot/dts/marvell/cn9130-db.dtsi b/arch/arm64/boot/dts/marvell/cn9130-db.dtsi
index 7e20987253a3..85d7ce13e70a 100644
--- a/arch/arm64/boot/dts/marvell/cn9130-db.dtsi
+++ b/arch/arm64/boot/dts/marvell/cn9130-db.dtsi
@@ -90,10 +90,10 @@
 	cp0_sfp_eth0: sfp-eth@0 {
 		compatible = "sff,sfp";
 		i2c-bus = <&cp0_sfpp0_i2c>;
-		los-gpio = <&cp0_module_expander1 11 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpio = <&cp0_module_expander1 10 GPIO_ACTIVE_LOW>;
-		tx-disable-gpio = <&cp0_module_expander1 9 GPIO_ACTIVE_HIGH>;
-		tx-fault-gpio = <&cp0_module_expander1 8 GPIO_ACTIVE_HIGH>;
+		los-gpios = <&cp0_module_expander1 11 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&cp0_module_expander1 10 GPIO_ACTIVE_LOW>;
+		tx-disable-gpios = <&cp0_module_expander1 9 GPIO_ACTIVE_HIGH>;
+		tx-fault-gpios = <&cp0_module_expander1 8 GPIO_ACTIVE_HIGH>;
 		/*
 		 * SFP cages are unconnected on early PCBs because of an the I2C
 		 * lanes not being connected. Prevent the port for being
diff --git a/arch/arm64/boot/dts/marvell/cn9131-db.dtsi b/arch/arm64/boot/dts/marvell/cn9131-db.dtsi
index b7fc241a228c..ff8422fae31b 100644
--- a/arch/arm64/boot/dts/marvell/cn9131-db.dtsi
+++ b/arch/arm64/boot/dts/marvell/cn9131-db.dtsi
@@ -37,10 +37,10 @@
 	cp1_sfp_eth1: sfp-eth1 {
 		compatible = "sff,sfp";
 		i2c-bus = <&cp1_i2c0>;
-		los-gpio = <&cp1_gpio1 11 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpio = <&cp1_gpio1 10 GPIO_ACTIVE_LOW>;
-		tx-disable-gpio = <&cp1_gpio1 9 GPIO_ACTIVE_HIGH>;
-		tx-fault-gpio = <&cp1_gpio1 8 GPIO_ACTIVE_HIGH>;
+		los-gpios = <&cp1_gpio1 11 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&cp1_gpio1 10 GPIO_ACTIVE_LOW>;
+		tx-disable-gpios = <&cp1_gpio1 9 GPIO_ACTIVE_HIGH>;
+		tx-fault-gpios = <&cp1_gpio1 8 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&cp1_sfp_pins>;
 		/*
diff --git a/arch/arm64/boot/dts/marvell/cn9132-db.dtsi b/arch/arm64/boot/dts/marvell/cn9132-db.dtsi
index 3f1795fb4fe7..512a4fa2861e 100644
--- a/arch/arm64/boot/dts/marvell/cn9132-db.dtsi
+++ b/arch/arm64/boot/dts/marvell/cn9132-db.dtsi
@@ -57,10 +57,10 @@
 	cp2_sfp_eth0: sfp-eth0 {
 		compatible = "sff,sfp";
 		i2c-bus = <&cp2_sfpp0_i2c>;
-		los-gpio = <&cp2_module_expander1 11 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpio = <&cp2_module_expander1 10 GPIO_ACTIVE_LOW>;
-		tx-disable-gpio = <&cp2_module_expander1 9 GPIO_ACTIVE_HIGH>;
-		tx-fault-gpio = <&cp2_module_expander1 8 GPIO_ACTIVE_HIGH>;
+		los-gpios = <&cp2_module_expander1 11 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&cp2_module_expander1 10 GPIO_ACTIVE_LOW>;
+		tx-disable-gpios = <&cp2_module_expander1 9 GPIO_ACTIVE_HIGH>;
+		tx-fault-gpios = <&cp2_module_expander1 8 GPIO_ACTIVE_HIGH>;
 		/*
 		 * SFP cages are unconnected on early PCBs because of an the I2C
 		 * lanes not being connected. Prevent the port for being
-- 
2.17.1

