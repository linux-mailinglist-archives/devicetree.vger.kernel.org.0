Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C3726B7D21
	for <lists+devicetree@lfdr.de>; Mon, 13 Mar 2023 17:12:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230289AbjCMQMk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 12:12:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230209AbjCMQMi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 12:12:38 -0400
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-db3eur04hn2233.outbound.protection.outlook.com [52.100.17.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 705F474A76
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 09:12:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T7xV5Io7pBnAgP35FjW3L9tKCIkH6Y1KxJnYWFc56y4=;
 b=P+kErfakqJdpJtdS+Vy/SCfGTz/BFwIHshx2GRO1T34ra+sqR5IOFZl0HFGyJBpeWCyM4kfmjm7t4WbGeFRDjkQlwDso9Lk99oG1xIKtaCSf+cNBwOSJihsMoWt2DK6UZXxoa5UiLmPKdcSqKzFTo/aRSdyBfpkjNhC85c3sejzemBVk0ET0wlUa7VGnci7hTYfGjIeMWXgztGjEsTrhLBUdJDmVDL53rKBN6WbbzGKCYmtkvnt4EzSTjDlWUsUzfpethB9fN3G0gHR/9Z1QPy85MNaTWYGfwfUc2mPEDW722h7uAV9A+YIhhW+OJFcQz4eZMV+J+0cCJ2H8PHq4UA==
Received: from DUZPR01CA0251.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b5::23) by AM9PR03MB7527.eurprd03.prod.outlook.com
 (2603:10a6:20b:3df::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Mon, 13 Mar
 2023 16:12:29 +0000
Received: from DB8EUR05FT037.eop-eur05.prod.protection.outlook.com
 (2603:10a6:10:4b5:cafe::7e) by DUZPR01CA0251.outlook.office365.com
 (2603:10a6:10:4b5::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.25 via Frontend
 Transport; Mon, 13 Mar 2023 16:12:29 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 20.160.56.87)
 smtp.mailfrom=seco.com; dkim=pass (signature was verified)
 header.d=seco.com;dmarc=pass action=none header.from=seco.com;
Received-SPF: Pass (protection.outlook.com: domain of seco.com designates
 20.160.56.87 as permitted sender) receiver=protection.outlook.com;
 client-ip=20.160.56.87; helo=inpost-eu.tmcas.trendmicro.com; pr=C
Received: from inpost-eu.tmcas.trendmicro.com (20.160.56.87) by
 DB8EUR05FT037.mail.protection.outlook.com (10.233.239.194) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6199.11 via Frontend Transport; Mon, 13 Mar 2023 16:12:29 +0000
Received: from outmta (unknown [192.168.82.140])
        by inpost-eu.tmcas.trendmicro.com (Trend Micro CAS) with ESMTP id CB5B02008026F;
        Mon, 13 Mar 2023 16:12:28 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (unknown [104.47.14.52])
        by repre.tmcas.trendmicro.com (Trend Micro CAS) with ESMTPS id 559B620080075;
        Mon, 13 Mar 2023 16:03:36 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MQbq5zMF7zt/3ZihGgtQnkkSBeJ4e+EtlvTBS2KpG6Lum0+VFdje0+A3uvLyDB8zZ0hEk2MxifWhD/WJxfJfpSHJjGoQfxhmf/SJ8x6w3z/u+ZRncEls3oVlJbAB6qmtQHbFOzgAjCSQuAhML7Rl81PECK9iyTp1ZjEnMNIYYi3K2CGlc4gKqW8WluQtJDi/NlTIRtqtuRBEhfjvyD8Crrv3UcApuz5vrPvPNG2n8Fr0Qq1U7vCKgaBMsvIeS+OGAPeTagzTHByXCWA3TX+ujJYzxofzope3Hjua0g6zFOqcqOFHSmyP6VT02tfID73C7cRhihqV37HUSspMgfgfEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T7xV5Io7pBnAgP35FjW3L9tKCIkH6Y1KxJnYWFc56y4=;
 b=h50u103CuAwOBfVVEIqpyY4AxpTVYPkhQ7KHyEWx0PJnwWMHhgL6lifZL2YbfsLO3JVR5Rnf2Staho19jpBMjvy1t/KjacBkM9lFZC2eDoFogaHBBLmoeBsAN1K+3Ebz1K6I1RqHqFYvx3gu0xpKzsQzQc7k4Yh6h6V1g4rLP2cTZm/NXtJ6uDfuTWCe+tPXvzEWbMF/zMF9lJlVf7R6s224L2cdDRgYKbhxmjZHYlXUHf5qB8srhJaaXFKa1cHJyAWgnCvyb+7SBdsfcs6Lt2UR8uSU16wpZhsR72RPdiHX4UImHQtm9+tcbOxkjmUCPaVdAAGXqKgaftmStw0J/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=seco.com; dmarc=pass action=none header.from=seco.com;
 dkim=pass header.d=seco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T7xV5Io7pBnAgP35FjW3L9tKCIkH6Y1KxJnYWFc56y4=;
 b=P+kErfakqJdpJtdS+Vy/SCfGTz/BFwIHshx2GRO1T34ra+sqR5IOFZl0HFGyJBpeWCyM4kfmjm7t4WbGeFRDjkQlwDso9Lk99oG1xIKtaCSf+cNBwOSJihsMoWt2DK6UZXxoa5UiLmPKdcSqKzFTo/aRSdyBfpkjNhC85c3sejzemBVk0ET0wlUa7VGnci7hTYfGjIeMWXgztGjEsTrhLBUdJDmVDL53rKBN6WbbzGKCYmtkvnt4EzSTjDlWUsUzfpethB9fN3G0gHR/9Z1QPy85MNaTWYGfwfUc2mPEDW722h7uAV9A+YIhhW+OJFcQz4eZMV+J+0cCJ2H8PHq4UA==
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=seco.com;
Received: from DB9PR03MB8847.eurprd03.prod.outlook.com (2603:10a6:10:3dd::13)
 by AS8PR03MB7781.eurprd03.prod.outlook.com (2603:10a6:20b:405::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Mon, 13 Mar
 2023 16:12:20 +0000
Received: from DB9PR03MB8847.eurprd03.prod.outlook.com
 ([fe80::dbcf:1089:3242:614e]) by DB9PR03MB8847.eurprd03.prod.outlook.com
 ([fe80::dbcf:1089:3242:614e%4]) with mapi id 15.20.6178.024; Mon, 13 Mar 2023
 16:12:20 +0000
From:   Sean Anderson <sean.anderson@seco.com>
To:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-phy@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Camelia Alexandra Groza <camelia.groza@nxp.com>,
        Madalin Bucur <madalin.bucur@nxp.com>,
        Bagas Sanjaya <bagasdotme@gmail.com>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        linuxppc-dev@lists.ozlabs.org,
        Sean Anderson <sean.anderson@seco.com>,
        Li Yang <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v11 08/13] phy: lynx10g: Enable by default on Layerscape
Date:   Mon, 13 Mar 2023 12:11:32 -0400
Message-Id: <20230313161138.3598068-9-sean.anderson@seco.com>
X-Mailer: git-send-email 2.35.1.1320.gc452695387.dirty
In-Reply-To: <20230313161138.3598068-1-sean.anderson@seco.com>
References: <20230313161138.3598068-1-sean.anderson@seco.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BL1P221CA0013.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:208:2c5::11) To DB9PR03MB8847.eurprd03.prod.outlook.com
 (2603:10a6:10:3dd::13)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: DB9PR03MB8847:EE_|AS8PR03MB7781:EE_|DB8EUR05FT037:EE_|AM9PR03MB7527:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a9360e5-d70b-45ee-91d9-08db23ddbe5e
X-TrendMicro-CAS-OUT-LOOP-IDENTIFIER: 656f966764b7fb185830381c646b41a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: iEMkHTFuBTNmfTq7A6S0yWuJi8ufuJ7fimJsnR/feJmqp+EGochFggaen8nVyfONvcUUMCKQEEvysPkf5N1yFZJGeY7EvOgGTiFJtpyqxqWJOrtk07aOwtwgwoI4cdh26+eQbs9BlsScWh2JBk1vofwQyu05VjspxFGimSMRa1ei1NLSKs+GCQpRm9VV8d27pM5qJ9UnAciqif6yFbqzxUhjgtI4TNQWFiM/tO3PLc5uCMF7tE6JEx+F0fCMcJoLJ6LDZi8p7JBaAZ3GplGtBNFvUPIPlxwb8wv7kKEvcmpHb4cJRM2IbDZXFSa6JNCbHUDje8dfyXa57TMgPttjRiy0H7HcxvQ211kFQgKi/3QpXKT6nPNApj1E9KfQ7WUL4p0NvbI9Cnt+IqZpCZQPTVzsijipuvcaWO8EZKk9OOTEA5XyKYvv2AkJ//spjmKONEmRmYvB75Cr3sweEPK3c31RO4ux7eqe5lzghjT//CEzTEaiPBZidd3w8vel3e18WY0CsFeBbh53lNIr8MHirGZFT91AS8GBGbM46dCI6T0Xnc93Ik1lPD96dTlIaaKyt5W3Gb7MbnY+7vZf4Xopjhn+IwamMIot6zXGnN048CZ0/l2/2PySxDYyEtBoI5YWTMEOq6csPTYm7SIU27ZH3Wztl0PZD74cnmP64o79bf5Jq2jIHIvCdaYyh2WprUjEj79xRYSTYMDaq4zTCt6GnQ==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR03MB8847.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(366004)(39850400004)(346002)(396003)(376002)(136003)(451199018)(110136005)(41300700001)(54906003)(478600001)(8676002)(4326008)(66556008)(66476007)(66946007)(8936002)(36756003)(86362001)(38350700002)(38100700002)(26005)(6512007)(1076003)(6486002)(6666004)(186003)(52116002)(44832011)(5660300002)(7416002)(4744005)(2906002)(316002)(6506007)(2616005);DIR:OUT;SFP:1101;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR03MB7781
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB8EUR05FT037.eop-eur05.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 97d54712-b274-4e59-0686-08db23ddb8e3
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0RezL1xocJ83b6xt5Bc/xj/Efl7SnPUzn1WtKx66kkGKhwEzqukpc+ZRyCzo1UjT1now/LsfV9epU/NGTAznl/JabZoUIQuSBbw/8kJLdWxrX+9Tw+F+z6B/JBe3MCVfYMvojmI+4ILsTTh+mWjeUtI8uuiKXwyesjm/lYd6OjOtAnupWmPZb90VvKqbvp2AlozmdhZcHphyItwvzPNFQF8EjCQTubZ6LIPdeVAtpH8uOSrMdhD2TPLmeeSJeCAeQwa5KvvGp1jq5PqcKh5nTK8Vgy6bCYE3MOKrwz8PlW0P5QFzERngVaBJ4umN/OApAfryg4/lYMnSAxFrZsccU5BNrtlH+5V6VQoqfTFQsHQvgVFMH9CsXFlqxZuFEvTxCIZH1etIwLzo183HHS/+KZ1mclmKYQmsuJ2oFTceeGVMPbKl9b5HZ1Q1kUXrC1c5SKEcrcngcZUd7Zso4Uud4WDiYhWQiALzdIYECCwDqxmUcyH6AZ7rtHKoaeztMre3s/mKej6wGf94ftQbF0VTWbbf+P81VTN2Oe6DHT9pHIKpv1NrBwnDYzXb9FJa4CINUIVNdYWtLSVSYSRIe/Z9Cctr8nYrywQuHOZ81vQLp4YgH2TnGSsUmYnDYp3AcWjnaFpsCWIc2egvMG3H2fIvQvVXS+GA6lGrTVR9YKZ76B5FsKmLWL4RY4gz2sTkcp0Y0PUAiOSqEFFuTDJoqXnfo/biSUtzyT23PZYlHkWE2ndZkbxcKzhzhmN8xJr4ZxJE9WRafDUt32rthJPn3d24gg==
X-Forefront-Antispam-Report: CIP:20.160.56.87;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:inpost-eu.tmcas.trendmicro.com;PTR:inpost-eu.tmcas.trendmicro.com;CAT:NONE;SFS:(13230025)(346002)(376002)(136003)(39850400004)(396003)(5400799012)(451199018)(40470700004)(36840700001)(46966006)(40460700003)(54906003)(110136005)(41300700001)(478600001)(8936002)(8676002)(70206006)(4326008)(70586007)(34020700004)(36756003)(82310400005)(356005)(86362001)(40480700001)(36860700001)(82740400003)(7596003)(7636003)(6506007)(1076003)(6512007)(186003)(316002)(26005)(6666004)(7416002)(44832011)(4744005)(2906002)(6486002)(47076005)(336012)(2616005)(5660300002)(12100799021);DIR:OUT;SFP:1501;
X-OriginatorOrg: seco.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2023 16:12:29.0889
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a9360e5-d70b-45ee-91d9-08db23ddbe5e
X-MS-Exchange-CrossTenant-Id: bebe97c3-6438-442e-ade3-ff17aa50e733
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=bebe97c3-6438-442e-ade3-ff17aa50e733;Ip=[20.160.56.87];Helo=[inpost-eu.tmcas.trendmicro.com]
X-MS-Exchange-CrossTenant-AuthSource: DB8EUR05FT037.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR03MB7527
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The next few patches will break ethernet if the serdes is not enabled,
so enable the serdes driver by default on Layerscape.

Signed-off-by: Sean Anderson <sean.anderson@seco.com>
---

(no changes since v10)

Changes in v10:
- New

 drivers/phy/freescale/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/freescale/Kconfig b/drivers/phy/freescale/Kconfig
index 6bebe00f5889..b396162dc859 100644
--- a/drivers/phy/freescale/Kconfig
+++ b/drivers/phy/freescale/Kconfig
@@ -54,6 +54,7 @@ config PHY_FSL_LYNX_10G
 	depends on ARCH_LAYERSCAPE || PPC || COMPILE_TEST
 	select GENERIC_PHY
 	select REGMAP_MMIO
+	default y if ARCH_LAYERSCAPE
 	help
 	  This adds support for the Lynx "SerDes" devices found on various QorIQ
 	  SoCs. There may be up to four SerDes devices on each SoC, and each
-- 
2.35.1.1320.gc452695387.dirty

