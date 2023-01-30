Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C89166803EB
	for <lists+devicetree@lfdr.de>; Mon, 30 Jan 2023 03:56:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235529AbjA3C4r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Jan 2023 21:56:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235239AbjA3C4q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 Jan 2023 21:56:46 -0500
Received: from EUR02-DB5-obe.outbound.protection.outlook.com (mail-db5eur02on2115.outbound.protection.outlook.com [40.107.249.115])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B27D1A95F
        for <devicetree@vger.kernel.org>; Sun, 29 Jan 2023 18:56:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hwMwQXXVnXpSBDvK4Jba4lHvyDoGrZf6l/kWAG8RIN4z7ytZUiTyu/Rvq+0J+3EJNDRpkON3aDlZvqiyWhxoSdx4J9HRjX/KCEdhvQPNfQbdOnajlmUErpfIH8uv2ygSzicMCIjvLdQyGv+OwMlC3pd551/y+VYKg79H2FnC+Z+XA8zwXTk9bOBAiYDyl/LDXY21W7y0Yy5pKZwvanRMy8Ixhw44U9nhdm+s7niO4Z6w8ingQrqXIaadwt8YvC6/PN5sEHFXEdkbeqx1LvUsUbaARWtmoze7lIKlau1n3mTq+lHhujeuwJsRIWmNCM01AaTvZ9wobsL0JVBZHwly6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7Epqzl8GQGyk29j09aCcoGfBNbEUV3Ny4N17TaOoh4A=;
 b=AKrvzu55qRWYYE4Fj4ZOJBi9z+hQrmwxo7b/diY8ze0hYD5oBUPWdB4hGORW9Y/DHUTulDFq8OagouBFDEd1wkSLL5IZH7tsTZpvSIxaCWheAVZG/1iHDwitUNTWjJoQrnzVDecpKUPa6DXl5uv/nmwKge0TcYqLzVAgck8uEV5HYMdjkmzfGSHOZgSbO0vwgbsik/Sy8dzLi50fWaqsztKESkeeB78a0lsb36VC13+sk5AjIANqNBau+2mLkFesy7ABFn0VxbLqK9i5NlmeCbSmwd8Uu3NM5JBzEEALlTOjQd2MURJz9yxywmqLaxfikpDxOLC3sT7Ki7BomiNQHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=kernel.org smtp.mailfrom=leica-geosystems.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=leica-geosystems.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7Epqzl8GQGyk29j09aCcoGfBNbEUV3Ny4N17TaOoh4A=;
 b=gvkPJmqL5RoBawmH4trz/9jJb7xkVC5736OonvdBOl06qtcO/YWqcODXzlBgZZMwi9YFnsMiireX1eUASwUGWRUc3pwH1v6XiAdNDcWMLJScJIBTJYrn2oFGGq/bzGHTTec15IBvtsz/tIsTTbCGy2ZQFfFMY7+JiaI7Kjk8NmI=
Received: from DUZPR01CA0190.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b6::8) by AM8PR06MB6916.eurprd06.prod.outlook.com
 (2603:10a6:20b:1c5::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.33; Mon, 30 Jan
 2023 02:56:43 +0000
Received: from DB5EUR02FT047.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:10:4b6:cafe::c) by DUZPR01CA0190.outlook.office365.com
 (2603:10a6:10:4b6::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.36 via Frontend
 Transport; Mon, 30 Jan 2023 02:56:42 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 DB5EUR02FT047.mail.protection.outlook.com (10.13.58.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6023.16 via Frontend Transport; Mon, 30 Jan 2023 02:56:42 +0000
From:   Johannes Schneider <johannes.schneider@leica-geosystems.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Li Yang <leoyang.li@nxp.com>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Richard Zhu <hongxing.zhu@nxp.com>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Johannes Schneider <johannes.schneider@leica-geosystems.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v10 2/2] dt-bindings: arm: fsl: Add i.MX8MM-EVKB
Date:   Mon, 30 Jan 2023 03:56:32 +0100
Message-Id: <20230130025632.4101943-3-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230130025632.4101943-1-johannes.schneider@leica-geosystems.com>
References: <20230130025632.4101943-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB5EUR02FT047:EE_|AM8PR06MB6916:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: e5f7dc17-6d1d-4cc5-9d98-08db026d9e0e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Rx0MrfMAEnSwEYFRFxbTkC7adOzM2ted7QCYpIRx7Nqq0c5BVYi2OXpM5BIUJ0vqcUDVM4Pu2Xi2bpREKMDwGe6QAEOhoy37Lxj+iub6FVD6A/up4KCjJrnXCfttCyJhlEt3ha+03aKBfNNsRal3AeuC7HA6tmh8jU/wfVertbVrLe9a7RvR+G3r/odw5vNRnImgGviWoQQYUbiwEhc0GJ1IB+c0MJ0yGvOi6DYusjnW4Dk1HlkQ54xrp8Jwy/sxWUZPwOD+aUDv+NK/QV4O7KcgSfJD2+dTSrI49bct3R+/u/daaEv0dKmoCjyDFDI9EnAN9aF2+L4kQdpRFBuxIkRfa1YYnZ+SOQpcCVOUEv8wMVzLYq5Oos9m2Tqh+ZsSEDUs+EsyKllQ8X2HjHbSmR0OKoObwTWIo9cyoISPx3Z+gBx3PrRjgwkBGg4Yad7QsH0A0vnuwZx39KK2h/BzFHyXi9ut7bCGScJIU3d+VQbf7f2kVdRMenMdLoSmveHgFS5Qm0UKE1r32Aco3IRUIgTbo4qL1yKDnEfaOtBnSIf0xkpRT+Sz5y6UOHaAvExzz07ehAZdgtpeziSbPwznFIxe1RZ0w29vLpWOectAP50igxFbae+PgF4h+mMEyOP8/wEOKZYJfwhymNx2YWFcKbjTfThiRv4iSkfim51K+4p6uk9dFILivH7DqRszUED66QdToKEuZMvx6OUTZrRUrQ==
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230025)(4636009)(346002)(376002)(39860400002)(136003)(396003)(451199018)(40470700004)(36840700001)(46966006)(2906002)(40480700001)(5660300002)(7416002)(44832011)(118246002)(36756003)(956004)(82740400003)(2616005)(186003)(26005)(6512007)(36860700001)(47076005)(336012)(6506007)(70586007)(86362001)(8676002)(4326008)(70206006)(110136005)(8936002)(316002)(54906003)(36736006)(41300700001)(40460700003)(6666004)(81166007)(1076003)(356005)(478600001)(9316004)(6486002)(82310400005);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2023 02:56:42.4193
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e5f7dc17-6d1d-4cc5-9d98-08db026d9e0e
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5EUR02FT047.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR06MB6916
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DT compatible strings for recent EVKs, that come with a different PMIC.

The most recent revision of the 'original' EVK CPU module is C2 and the most
recent revision of EVKB CPU2 module is A4.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index fbfc4f99c01e..bae1040afc14 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -818,6 +818,7 @@ properties:
               - emtrion,emcon-mx8mm-avari # emCON-MX8MM SoM on Avari Base
               - fsl,imx8mm-ddr4-evk       # i.MX8MM DDR4 EVK Board
               - fsl,imx8mm-evk            # i.MX8MM EVK Board
+              - fsl,imx8mm-evkb           # i.MX8MM EVKB Board
               - gateworks,imx8mm-gw7904
               - gw,imx8mm-gw71xx-0x       # i.MX8MM Gateworks Development Kit
               - gw,imx8mm-gw72xx-0x       # i.MX8MM Gateworks Development Kit
-- 
2.25.1

