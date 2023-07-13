Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB7C67523AB
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 15:25:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235302AbjGMNZ3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jul 2023 09:25:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235297AbjGMNZQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jul 2023 09:25:16 -0400
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on20617.outbound.protection.outlook.com [IPv6:2a01:111:f400:7e1b::617])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 928502D51
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 06:24:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K/gbrmIZPleUfsDtDK/Sf56pArKBweN0AYG9i4e0wkyAHE0UPDnDZZF55jlq1aONuvxK+dqbVcZOG8+M8pRSRdnY3N/oML54TDOEu07xZwmM6zXkeke5tZF+vmJlId/Ozv0qrYQgAAZrWiVHNEkPF1hO8bEiEgQsBuWlpZN8jXuB7gVeloopjwK4J9RXPy0Qo+exP3HQ2uLUW+X/ndwMCRxl1W3PkgO6Gh58QgXQT93AaBOXMLeW2R1LSPFUeWnBeB/NwmB4AgidLS4psEU4PjGGI95s53kyKFsFOkultdoluZOokAAUygGg5RogWIyWwi1qB8lS+adX4Qv62IbIDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JHCqMD7wiqBbbC3yrvWqxKK1Jq06hBjc/hyUKNEBFgE=;
 b=WF2nqKHO3E+1uRNK5R28taSYxdiskr7YBTYhlPf716uiUZVlj014iYqYXk1HCnC2HJPDg+OtqoIhvoYrIU8a4tTtU/br7LC/xLsRHlzFuyvXz/BlyirJlgAvpfXtx7rWccDCPZl1G8Tw8GESd7ieXAIwf6dGSc8rKl/K37lSo2b7jFoQvYGlFtfzC3VIMQ9Ub/mIK9mfBAoneNfYeDzS13YU7XVhODGqnLVy05YuArfkmXqtG1qxDskBp7lZAAZ6+H9aYqybjJD63x/3C0kFaO+SWjXAq0dGGXYVJuFGLVBKrW3CG98MY0vAKjMUuXVMTGb/cV0d/AvpfQHxgT1gJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=variscite.com; dmarc=pass action=none
 header.from=variscite.com; dkim=pass header.d=variscite.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=variscite.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JHCqMD7wiqBbbC3yrvWqxKK1Jq06hBjc/hyUKNEBFgE=;
 b=fnQg+FbED5RPdM3JVXEWEJHbz/k5vZ51AGx76zIDgRhqObpZfyK6RreNv2IA5W3UdCp3DQ2TyotvcY71FXjxfxk0AiPEyrR7aq+H4p/f6NEQuYiJgLNfOISuV+d3Yq+9hnZpNzhVMSHjxJylmDLUgjkRcIDdRvoAWn2ID0v7eJ4fk94hQUmtntzxPN41mHm+CGr6TbxRJyG9Kphxgk/7PMFfK6lj5gPQHi82hWzTRoopoQj7oZEv1ITj7DQGqo/nzTGcI7oYwUD/vTSNQs+hbvTmbMLw1KWOiOfh5dsgzeOpgFA5pK2hGPFOci3peNEIgmG91H1sX0l5KqxRcO4C8Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=variscite.com;
Received: from AS2PR08MB8808.eurprd08.prod.outlook.com (2603:10a6:20b:5f4::14)
 by PAWPR08MB9661.eurprd08.prod.outlook.com (2603:10a6:102:2ec::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.24; Thu, 13 Jul
 2023 13:23:57 +0000
Received: from AS2PR08MB8808.eurprd08.prod.outlook.com
 ([fe80::88d8:ddec:561b:c061]) by AS2PR08MB8808.eurprd08.prod.outlook.com
 ([fe80::88d8:ddec:561b:c061%6]) with mapi id 15.20.6588.024; Thu, 13 Jul 2023
 13:23:57 +0000
Message-ID: <6e9346b2-e241-a5c5-c74d-36ff98d20258@variscite.com>
Date:   Thu, 13 Jul 2023 08:23:51 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: [PATCH] dt-bindings: add device tree bindings for mxl-8611x PHY
Content-Language: en-US
From:   Nate Drude <nate.d@variscite.com>
To:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Cc:     Eran Matityahu <eran.m@variscite.com>
References: <322ede0d-7cc5-6878-4aed-af4c120b4de9@variscite.com>
In-Reply-To: <322ede0d-7cc5-6878-4aed-af4c120b4de9@variscite.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH2PR12CA0018.namprd12.prod.outlook.com
 (2603:10b6:610:57::28) To AS2PR08MB8808.eurprd08.prod.outlook.com
 (2603:10a6:20b:5f4::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS2PR08MB8808:EE_|PAWPR08MB9661:EE_
X-MS-Office365-Filtering-Correlation-Id: 9d51d514-6bd1-4445-93f5-08db83a469d5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: o9FMSaRK+I/njR/ZP7SPzWI+9tFBkWqZA1/m9nAnwqWLSVgvkPJo4otz60gbHE1swBOkVQK5ZRvba13hGng4BSSTWuuMCbPDFie2YlAZwtLYKVJ8Ig51mVIkPQK6vZm5KbWlL/lqCmqnXdLtAJfSdlkbchiQF7NLcz12+pKiBjPVT2NZYcdbQ9BenUlzpvbXGHv/zCQWHiqFFQElIOZYqRugErJDca2BVb/U3R8PZKBBAYKN+kUUvesNjDPF16N4OETaVPlnm+eyxBy9jxonUJENC/B+rPN3ppSk2JmL2PqxenG4ORdxf+rX355C2RLSmRjfeZLs+jXQPVoMVoC9TwBb0J1y2Pwmse+x5qlI7D2qrSsQMZNrT5FGtkQYRgdwHeFjKqtJFDw2WBYopIcVedH/ZzdRBAMjfGYN7xlh8m6h7ZfPORdXPll9MYzdwpODFDnA0/qu9rigGlZKXfmipVKCWr08gwMPrUzFuC6alpaxRuXY8nwXqRBz6GjSErj+RlsLsc7OjeCxXb59G4CqiuX/JJEkBDOZpoAvMfFe+X/uUagxpb60eN/koBcjMpQ33Ke16+tNxFU2hyH4eBgRnLlPWjwyAxlbdc12ERRNmWmRKff/ZrhjeefgJyEznHFDg9uXXnt29G7zb0CkJHJCsA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS2PR08MB8808.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(136003)(376002)(346002)(396003)(366004)(39840400004)(451199021)(38100700002)(6506007)(31686004)(186003)(6512007)(6486002)(26005)(6666004)(107886003)(2906002)(41300700001)(478600001)(36756003)(31696002)(316002)(2616005)(86362001)(66476007)(66556008)(66946007)(5660300002)(4326008)(6916009)(8936002)(83380400001)(8676002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OGgzYm4zNEpVRHh6QmFkZ2xKR1huVEJwUUdTNWF3UUNPZFh2NytoZS85SUFK?=
 =?utf-8?B?eUhIL3lMaHc5MkNTOWlCTWU0Yk9GRy9MdVlENGVWQ21xUmg5SE8xcHBCQU1t?=
 =?utf-8?B?QlY1MlF6dzBsUjlyWkJYb3JvWDQzQWMyRmVJdjVzZFFDN21Jc1FkZ1RkczE4?=
 =?utf-8?B?TjAzZlZOQXY1NEhpYitheEJtc0Fla1RxR2RPRnJRdVZXaFlxZi9QemRPelZl?=
 =?utf-8?B?Nk9pVzFGK2FoTVJqbEJ5a0o2SWNwSDRrdDhaQTJkWUlBRlorOWlmYkpGbEVO?=
 =?utf-8?B?V2NKbWR2RjdYS3FxcVZ4TFlLeTBDRHNWaHFqYlFiL1hFQVd3Rkx0NDQ0S2R3?=
 =?utf-8?B?eUxCYW9Wc2JjNHZGZGhSVytsMm5reEk2V1RnTk43SGhXUnhpTnNheGdEaUgr?=
 =?utf-8?B?QlNZTXI0cmo0cFhNQXVnRVFZWmlxK0k5UTlaVUVYQXY3WnlCaFBsckFEYkY3?=
 =?utf-8?B?bUh2OFQ2aW1EVmhIRVFxMjZFR0xCcktVc3orNFUvVzZjU1JGKzYyR3IwVzho?=
 =?utf-8?B?Y3hoNjBZUzgwYndubEpYQjZRRHpldWZERXZnL2FrQktaUHRQaVRZTHFlMXZF?=
 =?utf-8?B?Vy93Smk3aGIrcitzQThuMG5vNjlQaG00Q21nVGkyTTFFak9QMGsxM2s1ZmY4?=
 =?utf-8?B?RnhjdHFhcjhqc290WlltVklyYkRGTnJoNmJWZEkwcXpTSWVIcm5YNU1FK05i?=
 =?utf-8?B?dk9FbC9QU0hCY2owc3BBOEZxeWRueDlPajh5Wmt6b2E2Q0x1UVJHQkYzcUNZ?=
 =?utf-8?B?dy8xSWE4MXh0VkpMR0lPRnU0dTRBME1KcmdFb2MvVlRIMTJPeTV1S01nYUFp?=
 =?utf-8?B?UEROUU03aEdaU1J5ajdWT1ZORUh1UEpWRE51Ymx6Zm1TUW0yUjFJMTByMUZL?=
 =?utf-8?B?MU5vSGNBOTNDVys0WEtOdFJNR09DVzR6RDJBODJ2eGtYVUtaTmhQRjQ5dEd4?=
 =?utf-8?B?b0lYY0U3cE5tVFZUeGdOSjdzNU8wbjBhOW1MQjJ1aENLY3c0NXlYM21pQUJr?=
 =?utf-8?B?N1cyVGVGRm56V3A1VnRHajJRTi9ZNEc0MzVCK2VkeE1ucFVBSGc2K3BXYnpo?=
 =?utf-8?B?elo5SU1zc1VQaTN5UnptOE9rdi9iUUJpNXlZcVh4TjU5SStVMEZsZW1XTW1V?=
 =?utf-8?B?blJ2YVBCYjE1a1U0bTh5dUJVSmlrV0xNRzNhc3A1aVp1U3ZKTGNkWDBIamU2?=
 =?utf-8?B?UFlaeGxFSGhHUnczUGZiTWFMcVYwZ0dwd05pMWxHNHAvaTg5d21aWW9xbHdi?=
 =?utf-8?B?MGxLbUNPTDVaeHd0MGpRUUdEN0FEajk3N3BsOUVaT0VWVGlOSHN3NmtkOEdI?=
 =?utf-8?B?NmtDNi9nbTV0YktEdUh1YlA4U3lQUURxQUtDcS9OTWlCUTZTTXZKL0x0VEY5?=
 =?utf-8?B?dlh2SFc5WUR1NTJHMDFiRHFwajVuT3dvTnYrYVVpdWwvWlJNaVZiNitrejJS?=
 =?utf-8?B?R2ZuWENDWFMwVElUWDllSmIydmw0SnhGeHI2d1JvTFdNRXhQVllvdlNKYjJY?=
 =?utf-8?B?VTZRSXFhczRuRkQ0eEJjUFJ1b0d0V1ZXZndlTEVtaUhyZ256dHc1MlFUQXY1?=
 =?utf-8?B?UEl6d2RCWmozZG1mbnliaGFCVldHdWMwdGNpZnBWb3Era2VudnVlSGtYcG5J?=
 =?utf-8?B?Nk1MKzRvRFU3Y0dCeTVFTGdnQllXZFVxMkdwYXduZk5oTWpPMEp3ZkFPcTV2?=
 =?utf-8?B?eStkeHpNTXplRVZPbmNFVnhSUytBVTk0amtodXNSR1pFc1M2SEFadlhwNlVR?=
 =?utf-8?B?dTdZSnFWb3d1L0R0MU9Qek5HcndybU5pSzlnd0ZWUEhyamtlRlc3YTJjaEJs?=
 =?utf-8?B?VGRBRk1ZV1IzRnp1cDA4SVV2TUl3UitlUTRBSnpZcVpHOHNIMlBraG5rWVpr?=
 =?utf-8?B?UFY1S0ptcVJYeUFuRjByenJTcDhOdzEyd21XZXhNT1d3L2VxU1Y4d2lHZmM5?=
 =?utf-8?B?dzJ0bFI3bkJEQjUxekpySU1oVk1MMzNyS1ZPWFduMkZ0VWZCL0tuY0w4TWRy?=
 =?utf-8?B?VXF2ZTI4TE1zaFhjdVpVZi9obnl5OWJ4THY4OERSR1B5Mk5HV2VackpoNG9I?=
 =?utf-8?B?YkJtVWhzNjFIWGx3Yk5sR3lTeVVHWStyb0FjZ01JbSt2M3dMUlA5Tklyblp6?=
 =?utf-8?Q?SZ03zMiTw/uyEwXGmTf5DaLWs?=
X-OriginatorOrg: variscite.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d51d514-6bd1-4445-93f5-08db83a469d5
X-MS-Exchange-CrossTenant-AuthSource: AS2PR08MB8808.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2023 13:23:57.8592
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 399ae6ac-38f4-4ef0-94a8-440b0ad581de
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TByQKxI/IKQCdneoOiWydw7rrVgDOyJho+Qqpis/AMK1ptcct5ypcmuqVCYrtugN7/eZNs3xV4RBDNfsH0nngQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR08MB9661
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The MXL8611X driver has custom bindings for configuring the LEDs
and RGMII internal delays. This patch adds the documentation and
defines necessary to configure it from the device tree.

Signed-off-by: Nate Drude <nate.d@variscite.com>
---
  .../net/phy/mxl-8611x.txt                     | 37 +++++++++++++++++++
  include/dt-bindings/net/mxl-8611x.h           | 27 ++++++++++++++
  2 files changed, 64 insertions(+)
  create mode 100644 doc/device-tree-bindings/net/phy/mxl-8611x.txt
  create mode 100644 include/dt-bindings/net/mxl-8611x.h

diff --git a/doc/device-tree-bindings/net/phy/mxl-8611x.txt 
b/doc/device-tree-bindings/net/phy/mxl-8611x.txt
new file mode 100644
index 00000000000..462fdf61666
--- /dev/null
+++ b/doc/device-tree-bindings/net/phy/mxl-8611x.txt
@@ -0,0 +1,37 @@
+* MaxLinear MXL8611x PHY Device Tree binding
+
+Required properties:
+- reg: PHY address
+
+Optional properties:
+- mxl-8611x,ledN_cfg: Register configuration for COM_EXT_LED0_CFG,
+	COM_EXT_LED1_CFG, and COM_EXT_LED2_CFG
+- mxl-8611x,rx-internal-delay-ps: RGMII RX Clock Delay used only when 
PHY operates
+	in RGMII mode with internal delay (phy-mode is 'rgmii-id' or
+	'rgmii-rxid') in pico-seconds.
+- mxl-8611x,tx-internal-delay-ps-100m: RGMII TX Clock Delay used only 
when PHY operates
+	in 10/100M RGMII mode with internal delay (phy-mode is 'rgmii-id' or
+	'rgmii-txid') in pico-seconds.
+- mxl-8611x,tx-internal-delay-ps-1g: RGMII TX Clock Delay used only 
when PHY operates
+	in 1G RGMII mode with internal delay (phy-mode is 'rgmii-id' or
+	'rgmii-txid') in pico-seconds.
+
+Example:
+
+	ethernet-phy@0 {
+		reg = <0>;
+
+		mxl-8611x,led0_cfg = <(
+			MXL8611X_LEDX_CFG_LINK_UP_RX_ACT_ON |
+			MXL8611X_LEDX_CFG_LINK_UP_TX_ACT_ON |
+			MXL8611X_LEDX_CFG_TRAFFIC_ACT_BLINK_IND
+		)>;
+		mxl-8611x,led1_cfg = <(
+			MXL8611X_LEDX_CFG_LINK_UP_10MB_ON |
+			MXL8611X_LEDX_CFG_LINK_UP_100MB_ON |
+			MXL8611X_LEDX_CFG_LINK_UP_1GB_ON
+		)>;
+		mxl-8611x,rx-internal-delay-ps = <0>;
+		mxl-8611x,tx-internal-delay-ps-100m = <2250>;
+		mxl-8611x,tx-internal-delay-ps-1g = <150>;
+	};
diff --git a/include/dt-bindings/net/mxl-8611x.h 
b/include/dt-bindings/net/mxl-8611x.h
new file mode 100644
index 00000000000..cb0ec0f8bd0
--- /dev/null
+++ b/include/dt-bindings/net/mxl-8611x.h
@@ -0,0 +1,27 @@
+/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
+/*
+ * Device Tree constants for MaxLinear MXL8611x PHYs
+ *
+ * Copyright 2023 Variscite Ltd.
+ * Copyright 2023 MaxLinear Inc.
+ */
+
+#ifndef _DT_BINDINGS_MXL_8611X_H
+#define _DT_BINDINGS_MXL_8611X_H
+
+#define MXL8611X_LEDX_CFG_TRAFFIC_ACT_BLINK_IND		(1 << 13)
+#define MXL8611X_LEDX_CFG_LINK_UP_FULL_DUPLEX_ON	(1 << 12)
+#define MXL8611X_LEDX_CFG_LINK_UP_HALF_DUPLEX_ON	(1 << 11)
+#define MXL8611X_LEDX_CFG_LINK_UP_TX_ACT_ON		(1 << 10)
+#define MXL8611X_LEDX_CFG_LINK_UP_RX_ACT_ON		(1 << 9)
+#define MXL8611X_LEDX_CFG_LINK_UP_TX_ON			(1 << 8)
+#define MXL8611X_LEDX_CFG_LINK_UP_RX_ON			(1 << 7)
+#define MXL8611X_LEDX_CFG_LINK_UP_1GB_ON		(1 << 6)
+#define MXL8611X_LEDX_CFG_LINK_UP_100MB_ON		(1 << 5)
+#define MXL8611X_LEDX_CFG_LINK_UP_10MB_ON		(1 << 4)
+#define MXL8611X_LEDX_CFG_LINK_UP_COLLISION		(1 << 3)
+#define MXL8611X_LEDX_CFG_LINK_UP_1GB_BLINK		(1 << 2)
+#define MXL8611X_LEDX_CFG_LINK_UP_100MB_BLINK		(1 << 1)
+#define MXL8611X_LEDX_CFG_LINK_UP_10MB_BLINK		(1 << 0)
+
+#endif
-- 
2.40.1

