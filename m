Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7A4C72B8F69
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 10:54:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726555AbgKSJwj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 04:52:39 -0500
Received: from mail-vi1eur05on2071.outbound.protection.outlook.com ([40.107.21.71]:23457
        "EHLO EUR05-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726511AbgKSJwi (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Nov 2020 04:52:38 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m1uwMi+nQrtmtLVt3qjFMTrB9jd237Zz+HFEAgWfOlauRihss527N1EuuPc1PbecX+NnMC+INKt7XHVlTMlXJIzOV1SsVxk1LEh0dqTci3/utfyTwgvZ44LcbNnXnmP9XkVeVGcoja+Q7wmJNXa9sCvWzqaSgnOiHSIYjtL3+v5tGccGNwTcVrSGEmtFKr9VfbzM4Fhc5Eb+mMIAy2Z9eHzL1UxgxNthti1qtQoajg3Xj79zHB5f9AoSNju1LMWoTZbvbYvy84hpH71WcssAc7998xvJBAebdv/ucVx+t1hSTmbGCV4cevxpzH6gsP5uwcY9eEgRD/KmQCJ4fIQBSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IKK8pk68M/fkrXvRuZOC/fpkFRXSeO/lVYC5bNXK4fY=;
 b=AxHSCTVWOYgICnHlaJyxGhADGNRpb5CLD3fwyJFvCumtTQWq73bhJl1WHu8bhaHwJw7IDiOiP/KND8guv4djoFe0APjl/6r//OFeKkXAhNYHE5jfpYDy/2sFjuppDsc+AHyciyOK41khcYGgGM/uH4fulzrwNrf/mdPd0q8g9rKRy818iQVOix74Es0aXUWoSxxwXfBSJxOoiR0NdbP4RRhfz1jpHXg64FWNa/WdWxMsXcUudw08A1iQ9rzat3E3MJbMfXXdhteH4SJUanWYYfbw3bKg2u/pRTCzKbw3/qUkT+zXr0IJ9F6BTMfwLCUqFgdHhJE1UecCFnxlhAV8UA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IKK8pk68M/fkrXvRuZOC/fpkFRXSeO/lVYC5bNXK4fY=;
 b=JwFIJH9HR/zRXwdJgYsg/oMvQ7NZGIoG4x6IMwdlV0euwqYkXDJaOE8Gw5JlClBT0++Idp6PGVmJIrZcgZ0c3KCxel7uWHtnkfacWbM1hc1b7QBKIxL3J7uTwF4yaRTxRRV8kIDv5GYy+KIErp+xXWiXbHsH/w1H5SQ51urIm14=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DBBPR04MB7900.eurprd04.prod.outlook.com (2603:10a6:10:1e8::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3564.25; Thu, 19 Nov
 2020 09:52:34 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::3c3a:58b9:a1cc:cbcc]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::3c3a:58b9:a1cc:cbcc%9]) with mapi id 15.20.3541.028; Thu, 19 Nov 2020
 09:52:34 +0000
From:   Joakim Zhang <qiangqing.zhang@nxp.com>
To:     shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com
Cc:     devicetree@vger.kernel.org, linux-imx@nxp.com, fugang.duan@nxp.com
Subject: =?UTF-8?q?=5BPATCH=200/5=5D=20arch=3A=20arm64=3A=20imx=EF=BC=9Apatches=20for=20FEC?=
Date:   Thu, 19 Nov 2020 17:52:44 +0800
Message-Id: <20201119095249.25911-1-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: SG2PR0601CA0016.apcprd06.prod.outlook.com (2603:1096:3::26)
 To DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR0601CA0016.apcprd06.prod.outlook.com (2603:1096:3::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.20 via Frontend Transport; Thu, 19 Nov 2020 09:52:32 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 5eb86110-7ba0-4f8b-819b-08d88c70d702
X-MS-TrafficTypeDiagnostic: DBBPR04MB7900:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DBBPR04MB7900AF43F81853135FD829A5E6E00@DBBPR04MB7900.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1265;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PwCBCUhDiVctmf0ciQtlRzf60KXA2cPswU/AXO7Sfu4JEmJbu/FNpjgOa8G1hSik+D0hWmY19Tj2gVxmQ4D9qvcY5kmce60+n5FpDHd/jss+oROgEJ/n9qz9NXXoswnkuLENZqE9ZHUmLbaSQon0C7A+BiCPKHWJ30m1UNs2DLkVvZftB5Px2jxUXB2OSSc38xDoxMwN1rkDoHEm8UKpPtsppfUrErSHrY9YQ6qvO8A+5/NNlT+tPy5Ddrr6zY6Kkg8VR7yniqo+47wQ72+3xNRVgzWr12eEIS15DDRsk4fQypLB3VJmU8UobsMMtdBLRj+bkLpq+t1crAMtdEeFAQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6795.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(396003)(366004)(136003)(346002)(39860400002)(52116002)(1076003)(956004)(6512007)(316002)(6486002)(6506007)(2616005)(8936002)(86362001)(83380400001)(16526019)(6666004)(26005)(4744005)(186003)(2906002)(66556008)(5660300002)(4326008)(66476007)(478600001)(66946007)(36756003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: xjH8zaS7nTgXVXZ/kL/25K8NSYuiBs6fspdlDiaNTyGtq37ovXsl6fekKHCbV0aVfMToH81kOF+7zhUSCzMR0tyVI7npXbjy/FN6ZY34rYU6j+4vNOcjqilYbarVdc///0B+1vXysGugJK/NSguQCoOPkP6OPyO1M98Mm9Inn7KnfW3efEAdXtIX7jFIN+GPgQaBPUXmHpVr05HmVqLrvBd7/LIVKYAmqGl3Vk/aWE5MrqKWA2ArTgs0zcTOb1lfL0wmmSn32gimAyg6h0aUirjRL7GRHcoLBZsJ+1FdlLFQdbEa1GgCS3DrMavaELVXwCH96lhPmbqip1fVm+zNAhnQuDWHnio+Qm+JH9cX6ru5aUSfoqjQkLqV8oQQ3aJ6n1sVvWoypdahmrd70Hx7s5C2HzdhSfUtrSeA2ptGPTKdlM2laS+OodKnFBNiG7OVPl0YXTtfDqgYpGmicncujnjm4DB5NtsZzOIKUvjl2GTcq0xTf3IKXHHlh6fq1brZci34T9y+fEi7QyiLJA6UXkgpHZFJzGa30hAlWiyaBn1hpPyHYzoto/LK3cdTJj35efjmQBdL19BrNoqN24Ao4/hfdnPaC18Hyglx+ae3PndEm6DTgnG00x1plV09/xpSuESVFqbj3FhoCGwBAUDxS5buTTMofeNIB0A/7soAot5inmz761eGqncvNZHZTpx1VObzwyWzDXrcsLr/DpyWiUdRVnCZRnJkKK+gYvythDOHYzZ5s26NdCQujUZrSUYtu/vNy45rDKHxkrvB8SpZPM2rM3798TYllbW81ARsphlzOvnNhwuytmadTJCtwiPZOROHITvnfcKC8YAIbxJ4prFlvMo5SEOZSrYa/svlqjWFRJO5NS+LaKvIt9TAkNY/5G43DSN52XgBOFnCXcUNGg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5eb86110-7ba0-4f8b-819b-08d88c70d702
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6795.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2020 09:52:34.7373
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3vviI9WAl4SqqbCtWpdwFWXz69KCVAfaRq7+xKeQszMvlLAVQSFcpcKTR7jLZlfiJce00c2BIfUVahABKB2Pkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7900
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some improve patches for i.MX FEC.

Joakim Zhang (5):
  arch: arm64: imx6ul/sx/qdl: add wakeup support via magic packet
  arch: arm64: imx8mm/n/p: correct assigned clocks for FEC
  arch: arm64: dts: imx8mq: assign clock parents for FEC
  arch: arm64: dts: imx8mq/m/n/p: add mac address for FEC
  arch: arm64: dts: imx8mq/m/n/p: add fsl,stop-mode property for FEC

 arch/arm/boot/dts/imx6qdl-sabreauto.dtsi  |  1 +
 arch/arm/boot/dts/imx6sx-sdb.dtsi         |  2 ++
 arch/arm/boot/dts/imx6ul.dtsi             |  2 ++
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 15 ++++++++++++---
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 15 ++++++++++++---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 15 ++++++++++++---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 17 +++++++++++++++++
 7 files changed, 58 insertions(+), 9 deletions(-)

-- 
2.17.1

