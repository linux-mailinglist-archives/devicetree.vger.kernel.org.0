Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 01A096107DD
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 04:19:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235990AbiJ1CTZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 22:19:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235955AbiJ1CTX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 22:19:23 -0400
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (mail-am7eur03on2063.outbound.protection.outlook.com [40.107.105.63])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67625BA935
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 19:19:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hkOSbEb0fWwCafyMGUs9p9kjsTm75Pd7Y2m4swSWGGqPrciTQGindRtvOvoFOH8dkVUx8K5sOx50K1LzQXze4vqbMQgRAs/oY3eYXQYDDrakYKNzxEFak7NgeO4f09naYaLq3GPVPYHLVUa58XNZj6IqGQLBB5JmR/sLv3jAq/qoiUkhWTAWjAfOqSvLG9dpRD/Lr1v/27ZiG7dXK4O3P0OHUGwNrrbZNtrDTZzcDvFAJxhDAw1lmTTwHn0h8hR9pOxzdkoHRqhtcf+qJMiZZuAP0xo92BmC+CufNQ3XhTyjov9PNQCbAn1dhTmepyi+wtnLmaCTZoU46V83bSyvow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0VwkdM2p7G7EFNs5ilBDOyann3YF7cb2p7VS0jR/uEQ=;
 b=HxS4Cpr0JYRj4FYPe0+C/IpUdPzLsSKCH00Hw+0p2jtO8UwS/x+k3KJDc239k8sPCxQaIAcpJqTm11BNtO8DX68FG3isNIhP6LShGN5nsEE5fnsYNEvhHvtpfKvjt2yi+1I6B24bUaLR63om4laF9oEIC2sXwA8YAE4VA73NKYLiO4PoQ53QF9R85K3dT1GWEyQH6bJ/ydc+Dm8C61tLSWsnxYy9mVWiYMC5RXndIB9DHlXMYlY8eZ371xmPu75TidYdoFRGYsDOFGS1ulQMqlO/gZhc84OW9mXT3rByqQFxFgsZmMEVsEbGUinMJ+UFY03qxLRefE0n55k0vrPCrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0VwkdM2p7G7EFNs5ilBDOyann3YF7cb2p7VS0jR/uEQ=;
 b=kd4pIoYCH4aeIPeiaJbS/dZWK+USkZNi5sL7AxpX/qoa7FoZBWKHR5ag/b9bYg3bS9iDuYamXpmnk/1A2u+6aSTfELGtScAYUsWf46rC4OA4PZi5p/05qXUo8SHcIoq/CwHkPj5swzkQ8ylnGevvARY8B1UW7XyZShSVVcD1U6U=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com (2603:10a6:102:261::21)
 by AS8PR04MB8804.eurprd04.prod.outlook.com (2603:10a6:20b:42f::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.21; Fri, 28 Oct
 2022 02:19:20 +0000
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::cc4:c5c2:db97:1313]) by PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::cc4:c5c2:db97:1313%7]) with mapi id 15.20.5746.026; Fri, 28 Oct 2022
 02:19:20 +0000
From:   Li Jun <jun.li@nxp.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, jun.li@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, xu.yang_2@nxp.com
Subject: [PATCH] arm64: dts: imx8mm/n-evk: enable wakeup-source for usb phy
Date:   Fri, 28 Oct 2022 09:58:38 +0800
Message-Id: <1666922318-7062-1-git-send-email-jun.li@nxp.com>
X-Mailer: git-send-email 2.7.4
Content-Type: text/plain
X-ClientProxiedBy: SI2PR01CA0032.apcprd01.prod.exchangelabs.com
 (2603:1096:4:192::18) To PA4PR04MB9640.eurprd04.prod.outlook.com
 (2603:10a6:102:261::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9640:EE_|AS8PR04MB8804:EE_
X-MS-Office365-Filtering-Correlation-Id: 11ef2560-246d-46b1-b44b-08dab88ad239
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: j5BgApNPMDHIPU/3c/efsiBJHaB5eaEKOa7ny7lO6aYNSPZAM9cYw4uuOwmwvHhuCMy3Efjb+qe1DnumIest43fK8feF3cqD/TnfNX6b6OoAS/FpsOCs+Bd5Yz1KZjaUe+hy9TZA1l1n/7PpQIQLG9EsWR7WTKZlzTN4kmfESxIJc5dazjtck1OgeRMsfBW7LyIZPvP+M/gUJubs1JrryoEUSZCPrZ/iz+8rQ1a4YXidDCKsGBw7ih/TvxUE0BG+Q4j8KTOu8+ILSVb95e/XuhY5D+EnP2VIkVyCPYg7k6tiPVXpAMsAGv8PFvOtsW2JOOhMm6Ue0Swl7vol84TJT6Qc8DfJPnXgcQ5jmRVurwdQAvRlFA7HY99LFgQGb6y1332zcSJie1UZH/v3C6NjRmtY/zlSCQSvn9fAwGz97+lOFqM7UfKGwVUh46+vy8MlCEKETZGAbqdPmpA5WfPzcRUU4TjpNq8iOhN36W6/IqAcZsEgIVHSzLLRBI37utPhGiHDEdLmQq8UKRsxQgqAJeGPz1psyhIH7NjeVtIqCeSEmX+3H1ldbri0mkjRSwhcbZUYGbj15r5HxACeyu6XDSyXisQJCHwJhxcbadtbuHbebgQ6gO6Lyv7zUcrbfPe/4N3Z9pldZ+NZ+1CMoKx5y7xcsj47tB+0bSjqYqwcJT5HnNeJCloAgQVjQq18D8gTYgd4R7VLYn5wG48hMaY+VtMTaEUH9V7Pi1MYrqoa7UqwrW41vG3IVg3Wvs1YOiNkAMr/8UhwV+cIXMOn+g/8B5J1KuPwYz7uRcbCH5RqnvI=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9640.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(39860400002)(376002)(346002)(136003)(396003)(451199015)(26005)(478600001)(52116002)(6666004)(2616005)(186003)(2906002)(6512007)(6506007)(316002)(66556008)(66946007)(5660300002)(8676002)(6486002)(66476007)(8936002)(4326008)(41300700001)(86362001)(6916009)(36756003)(38350700002)(38100700002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gvMyrWGjaCK7iDQCT+K2/PoySAXU2RwR0If3gZJXU61HwlDsfXPQyKeLqWxs?=
 =?us-ascii?Q?7qVPfCKrMTiFOKP6rsRpj9UBvel73TV5kcCxqHjThhpo5tfKPOE8A2F3N4NJ?=
 =?us-ascii?Q?DlOdZ+FCBL+JCps1xtugET02jI0raobJ4zbd4HVDuQUYEBmykqKLxyMO/82d?=
 =?us-ascii?Q?XYC6v1QymqXSQl2Pg5hKIBe+fDBbM4pzioos+49RaC5I2xONFJesECHATdgE?=
 =?us-ascii?Q?Rcn4HaTsTW4RiXXC7yaZHTn+AANFzlNDlEemtO2kcvzdtigEi17HU8jlrFCd?=
 =?us-ascii?Q?3I8m1K3u/khlRWQqCsEvmVjITvGqIkZdJR5kTwJnTIdP7u4MzarNFRRbaQXe?=
 =?us-ascii?Q?UwB45xBkAjTX2wlSX1Yah3rhi/KPkLrBROcgQNG0uwqCJ1phzoH3neR3JcWv?=
 =?us-ascii?Q?zhPvpea+ZJpIHVc0RaP55RT629mSjpbOQ3l51ARJkyz6P/TwidHNTxdRf+sY?=
 =?us-ascii?Q?wbVrTbl4/HCRpGVCY0J/ZtOxEnBpTRY1bqqFzV2OzqFNUXB5DmvxXKQaTeJy?=
 =?us-ascii?Q?gZaaup6USU0TUhkD1lCgpPO6u10CCxLRteLCiHtGJ/WSE+Wn3mIf/CIDeFWA?=
 =?us-ascii?Q?SyRG/seQe/3cFjbaFhPqADoH6a5pxZyJBAcXpsmLXtLbNt0tjLXqUEamQH0i?=
 =?us-ascii?Q?r2/+1s1vPk2+fPiT6RxOpG/H2lCu5yAwPtKU1ZTJZMiN4hdn3kSclGvc0502?=
 =?us-ascii?Q?jOEkKymwL2wg8rT+pvA7dSlFG6oXx4OUIUgkGS3R4GThtXgz572wKGIbtsFp?=
 =?us-ascii?Q?7QOQRQUD/XMNQkX3Ph7rojnJUKNUQMln2MBSIehiJ6Mmn7d/8U12JMGNETE2?=
 =?us-ascii?Q?lImLFbf0UuqZIeqSipCo14a15oB/NMkScWrL08dUjlHnOXHcEC5G/lHQpYtt?=
 =?us-ascii?Q?vWzrJPZOyC6XIaxzYQl5BSxc3/4ZeXzZMmFOBElkNrtZUWruMZklZzG+QETx?=
 =?us-ascii?Q?QEqYNCYNBv26mYInsXikWFGpEwcGNNlQRMODvzVVQB6eRXGmP/eF0gJmMpZO?=
 =?us-ascii?Q?mjxiMR8ZWVVG+tEyjEc/k+QyclcS43wadv06yjOwoT2v5QkeB13Vw1/UO51g?=
 =?us-ascii?Q?HN5NeE+zIgoKGWlMzOmhDk165BNeWL1rF64qf0tnbVslYyyinQeBMXGFhjzS?=
 =?us-ascii?Q?fvINJq1PtrTHi1VaA1HvbGilBH7dTtFmGtMHrfrPuRKmVHuVfduKcouXhERL?=
 =?us-ascii?Q?yzElOL6DmeXUz6J2O90QPbsLK8o3c6n7gZhV5qUjiV/Oo7mJw+ZiBxsd2WIp?=
 =?us-ascii?Q?/wXCLqdCcvkOo9D7mdEiqXWdfumy+Rfh9Jqb796NsxxwBreAPBbURzqys4tY?=
 =?us-ascii?Q?7FDahj4f2KqwEj0jSS/7QmalBK3FPK5WhnnmkB+KzYkIKFf8IHqhV+tZP/xH?=
 =?us-ascii?Q?wR8ZaAdvXsi84jqRzSbrAhD7yciB1Fd3ufbSQkJkcmpsY1IfN8UpJ1MBGdGF?=
 =?us-ascii?Q?QxFmy2rpsL3WFxy1otzntcAWuAGJ6cH9Yf3Hw37GVAyZlmvgAgOUfJssV+EI?=
 =?us-ascii?Q?FyG4RVrhqosEajwEUvv/ueaA1xaPSs2jJUFy2uS1HaZGJZB2UN5JXA1s/w2d?=
 =?us-ascii?Q?gu0iFxMlnBq/ECl+v3s=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11ef2560-246d-46b1-b44b-08dab88ad239
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9640.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2022 02:19:20.1478
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FMZrWuVXTLjbOqCn+u50OGvVM3X7ozcDVFEHqBzM0rOnjYZiEMjGKBeZkVn9XL1R
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8804
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable usb phy to be wakeup source to support system wakeup
from usb.

Signed-off-by: Li Jun <jun.li@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi | 4 ++++
 arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
index 7d6317d95b13..6800d923aa7e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
@@ -399,6 +399,10 @@ &uart2 { /* console */
 	status = "okay";
 };
 
+&usbphynop1 {
+	wakeup-source;
+};
+
 &usbotg1 {
 	dr_mode = "otg";
 	hnp-disable;
diff --git a/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
index 261c36540079..8cb87c7a0f03 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
@@ -255,6 +255,10 @@ &uart3 {
 	status = "okay";
 };
 
+&usbphynop1 {
+	wakeup-source;
+};
+
 &usbotg1 {
 	dr_mode = "otg";
 	hnp-disable;
-- 
2.34.1

