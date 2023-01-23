Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B18867756F
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 08:13:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230129AbjAWHNd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 02:13:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229441AbjAWHNc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 02:13:32 -0500
Received: from EUR02-AM0-obe.outbound.protection.outlook.com (mail-am0eur02on2111.outbound.protection.outlook.com [40.107.247.111])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E925C10267
        for <devicetree@vger.kernel.org>; Sun, 22 Jan 2023 23:13:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M4KRnnPjRjPbBywHnTi0sDsq6HvclLwzzAzQbsEsRGq2SocWsw4OjkMt2+sq4fW6516Rdq4tci2zFXN1rpOYRQ9Bp81LWT6WIbhVrn71qjesuJecleQrOEDXzlzp03WdvpiCgzriMcpwrjYZzrG1HIrPm99zcoAszFgdzcw8d/ncB/bQeZp+W+znr/hqoY0347mT/RujFgVJ1wNj7yQ6mZ740W/lQBqhoVFSZTJs/PfjfWRMsWXtmNb6Zgz856e68iebPJzPat2sJCeeawLU3iCHSijhUS65ctzuw+AUsBsmx8Hi6Sp9zDJM9k1/D1oplhJMbz89jf4b/JFcfcX8eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MzEjx6HXiiiByTGb+YrBMwbE4kZ6bxKNhkAbX63B484=;
 b=Pw02hQZSXXiUlgtwCsreHYt2+8fD0qPnYsVGMj4W18Ij4gRBcWK5coiWVng9Fpp8OzIKnCBkDNFP3STTM9lKlFas9g3MFnUSOKg5S8JfVOvz+JGQre+OJG0Hgzv9eAc2+FLPNRldfFbsdINX3DLp1H80RBpVWP4uftl0+enmJk7yg174oGg72KUwJQrL2WKlIO7kHIehygs1A/+O6zLShSx+Q1wSwt0BTFcUZpdZqkd1hL6ww8EECHFPQqjUboFaPWb8J/YNOtkYXhFbRs58XH1RcQlpC3HuaOcdjidjWkQg2Mipkz3avCOP7ejh/RZrxoAq+EG+fg6CPYvLHLGFnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=kernel.org smtp.mailfrom=leica-geosystems.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=leica-geosystems.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MzEjx6HXiiiByTGb+YrBMwbE4kZ6bxKNhkAbX63B484=;
 b=e5lWkDMaBZxfVChkjsAXwZvE4SyWTCMWVuXrsJ76tKysw03/MBR2vfuEKtqVpsmi28krsqadrmM8BNeYqgTy6VG2JsIQsxvThEqc+sMBnE9gcJm9QC9JiV6eUA7XGjqyfSh+TL9BQ/HBGVuVd7p/m9Td4Hz0E1xNqd7egj+c4tc=
Received: from AS9PR05CA0111.eurprd05.prod.outlook.com (2603:10a6:20b:498::32)
 by AM6PR06MB4552.eurprd06.prod.outlook.com (2603:10a6:20b:66::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.12; Mon, 23 Jan
 2023 07:13:27 +0000
Received: from AM0EUR02FT021.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:20b:498:cafe::39) by AS9PR05CA0111.outlook.office365.com
 (2603:10a6:20b:498::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33 via Frontend
 Transport; Mon, 23 Jan 2023 07:13:27 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 AM0EUR02FT021.mail.protection.outlook.com (10.13.54.67) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6023.16 via Frontend Transport; Mon, 23 Jan 2023 07:13:26 +0000
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
        Johannes Schneider <johannes.schneider@leica-geosystems.com>
Subject: [PATCH v8 0/3] pmic on imx8mm
Date:   Mon, 23 Jan 2023 08:13:09 +0100
Message-Id: <20230123071312.3297210-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0EUR02FT021:EE_|AM6PR06MB4552:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 3f8fcca8-24a8-477e-063e-08dafd11527c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HQFZ03hIWAKo1toNuow6+eqbrbPdfub9BSJ11tLyFH8fNWgZOciOREFuwj9HDM71LO/CEAAJHQ4XYHpJaQ+rIEFdwGwL6LuO7XabeJ9gTwSpO7p6uXbNd30l8Zzw4HXJl9cUm+ldu/MXEqDYE8BtRae1mg7CfDfCsyr6zclWn+Fy+76sRD+8p6BMbh6w5kjlCToFtU+fId6+aDO/JHFREgx4M0KtVCgrF385APfx9At3IYuL2We/uHrPWfkxd+BY4LY564UzOVkEKaKQVxjgM7x8SiA7DOAnHaBJ2lbFtQ51yvPK5ljP03CgUlbb3Mwb3+T35jRelt3zOorX2VxCP1GqkfeW+GJ/li7+9M0iUYbNLy3ND7sKOZn7LKHF+zzuMqefhaKMTNujGjQ1/KNTXX27/u9JH1ul4vP4qGZx+gNWHfjiVrIP7w7LuPqup4CGE49hMkkO+kzU1vgE5utFVI0OMPcgW+Nn3HdrFb3gXdoDwXRlXV68hpor63M3Q7WLVI3HPLKDDSRlCt9YzfNSdgzuMWYMr59frmaU3xBZRtYSk9sQS/BN26Y++5vZlWki8MtTFDfmOwHpx65ddeVX8IGNGSxRtPMjiixmdkhaIflRmAk1scTLiHg6vxtWfP3+BULu/3pCDJUBRVKhWkgW59p2Tfp3TeTnAULxPI0kd43b3LPcnGohBbRTpcNnJP/c5XrK6iEev4o81CtxLXVHh784rFcyPZfgezJbGU9S4yA=
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(346002)(376002)(396003)(136003)(39860400002)(451199015)(40470700004)(36840700001)(46966006)(316002)(6506007)(36756003)(110136005)(6666004)(54906003)(81166007)(41300700001)(2616005)(956004)(356005)(82740400003)(1076003)(83380400001)(36736006)(107886003)(36860700001)(336012)(6512007)(2906002)(40480700001)(186003)(26005)(118246002)(47076005)(70206006)(70586007)(4326008)(8676002)(7416002)(44832011)(86362001)(5660300002)(8936002)(40460700003)(82310400005)(478600001)(6486002)(9316004)(32563001);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2023 07:13:26.3196
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f8fcca8-24a8-477e-063e-08dafd11527c
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: AM0EUR02FT021.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR06MB4552
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

current(?) imx8mm EVKs come with a different PMIC: used to be
"rohm,bd71847", which is now replaced by "nxp,pca9450a" on the LPDDR4
variant at least the register settings etc where "backported" from
current u-boot sources for the EVK

Note: not sure if the changes should go in the ddr4-evk.dts or elsewhere;
what about backwards compatibility? = users/holders of the EVKs with the bd71847 IC?

changes with V8:
	rewording of commit messages, to reference "EVKB" instead of "rev-b"

changes with V7:
	add missing "acked-by" tag
	(finally) add missing makefile entry for imx8mm-evbk.dtb

changes with V6:
	move A53 cpu-supply nodes back into imx8mm-evk.dtsi
	rewording of commit messages
	fix syntax error during compile

changes with V5:
	split of bindings into separate commit
	rewording of commit messages

changes with V4:
	deduplicate rohm-pmic into one dtsi 

changes with V3:
	split changes into multiple commits
	removed unused header

changes with V2:
	reshuffle common nodes into the imx8mm-evk.dtsi, and only keeping the pmic related parts separate

Johannes Schneider (1):
  arm64: dts: imx8mm: set PCA9450a as PMIC

 .../boot/dts/freescale/imx8mm-ddr4-evk.dts    | 124 ++++++++++++++++++
 1 file changed, 124 insertions(+)

-- 
2.25.1

