Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0BA6F39422B
	for <lists+devicetree@lfdr.de>; Fri, 28 May 2021 13:48:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235848AbhE1LuZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 May 2021 07:50:25 -0400
Received: from mail-eopbgr70088.outbound.protection.outlook.com ([40.107.7.88]:8004
        "EHLO EUR04-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S233429AbhE1LuZ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 28 May 2021 07:50:25 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kipCDuTzhabWR2PlI2koUx6Bo5aNuqsD2xQ0rcWVC/pwlnEv0iinV/e9VJgUqRE9IOE/DTVJr0gV7oFLPARoGSoviSTkDomdOBF4sMm0Yr+ZmtFTMEadr87B/Sdir243t2W6REZpM+U7Ay7gbcA7ImW1EucKLz7c+YI1BKlekVAjXkFel9fFdx5lyPYIQZhp1zWetxTLEL+e2jv3pKfpwiAvg3Fi57IOdQqdYB9MOAkYTa0RrLTYj5fPa9dOcSNJCIX/LQDcxgMeZcyImS6sQVXS34MQAL8yFiFuuXyDBiin9781Y15DFbTaqIROoUNKlZfcxumTfvXpmoYwZqV5nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IViXTMaKbr76lA+VzWiH5tjX4Kzq4woCL/HTP/3fYOQ=;
 b=R3TSuQAcmye56wS1+nlk13qM4ahvltwMclr7mv1VPPVj9BHxzKpnYHmUJSiVM1yH0r42lOq4DJigLDT+qgY/h32RGA1qOnh2oLPbSo4dhilzSN8i39x3QpTjJIAkXyEeIf4k4ffChYSmCAkjcSqa47xCxHaBn0GqmZFDZtMl1VcT6h+UzfEJmIhbHvEDad+8BYo5hNacYicIsC/WDzsKsYteIBy37mOUYsq0tDcoMDWGT8U3YRdSQCpsc9Kt29uggVSu7+2LzxNrAm6GrzipgvVcWB+YiVLWW1LyXnU5Fhb2r5HlxYZITbaT7S5c0Sv7lD+i859S+UCtTxmMns/lLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IViXTMaKbr76lA+VzWiH5tjX4Kzq4woCL/HTP/3fYOQ=;
 b=b+kvQxJtVNw2OXfyKd43E2BjTEPFHI5BEY2xM8wunizGSCWGVweJ3ZaTLt4cGgMKKrr/dcJgAH8Ev54jgPe8RM96pXyAuRYW2eMklkKZKAR2Lw2I4654VLYGZdo8KkRROGly5X8WVtAK2VgkqzE43Lt1OcNItyZA6gK91OtRIhA=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from VI1PR04MB5935.eurprd04.prod.outlook.com (2603:10a6:803:e9::17)
 by VI1PR04MB4094.eurprd04.prod.outlook.com (2603:10a6:803:43::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.20; Fri, 28 May
 2021 11:48:48 +0000
Received: from VI1PR04MB5935.eurprd04.prod.outlook.com
 ([fe80::453c:f24d:af8e:f194]) by VI1PR04MB5935.eurprd04.prod.outlook.com
 ([fe80::453c:f24d:af8e:f194%7]) with mapi id 15.20.4173.024; Fri, 28 May 2021
 11:48:48 +0000
From:   Li Jun <jun.li@nxp.com>
To:     shawnguo@kernel.org
Cc:     festevam@gmail.com, linux-imx@nxp.com, jun.li@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] arm64: dts: imx8mn-evk: disable over current for usb
Date:   Fri, 28 May 2021 19:29:59 +0800
Message-Id: <1622201399-3862-2-git-send-email-jun.li@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1622201399-3862-1-git-send-email-jun.li@nxp.com>
References: <1622201399-3862-1-git-send-email-jun.li@nxp.com>
Content-Type: text/plain
X-Originating-IP: [119.31.174.66]
X-ClientProxiedBy: SG2PR0302CA0001.apcprd03.prod.outlook.com
 (2603:1096:3:2::11) To VI1PR04MB5935.eurprd04.prod.outlook.com
 (2603:10a6:803:e9::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by SG2PR0302CA0001.apcprd03.prod.outlook.com (2603:1096:3:2::11) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.4195.9 via Frontend Transport; Fri, 28 May 2021 11:48:46 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 726a0988-513f-4a4f-e218-08d921ce8e34
X-MS-TrafficTypeDiagnostic: VI1PR04MB4094:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR04MB4094EA6C5D8F84EEB11072C889229@VI1PR04MB4094.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:510;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cp+oieexs6ah1gwBwke5xkOGupUhA1dKYcCAwMd9D+DOTD5wb0va8hmYYHLhGZwbfRg79ZuOurrgzGD0HMdlkhLEcclhU8NjXYiNTBkIl8XMD7Li+hjvmduY8Oq9hG06Ncdl4w8iDKbUSKk2kuoNLshxVdtFQlbNNWWdBg7jTaKcF+lLBOYqofh5p26Kslwc/h2pFfg7vOm7tKBSnVABQ++b8ZMIPjzxLsAKZ6m24KAttGoM7VOry9S1LS1AkhECgyoChMWNORqBu+3ID4MxWQYdbGtI7L1EsIyCnq9/koi/XEyMKWhXQhO8MRojBsQnhbUZeAsjzpoL+Mo4Ujzq6Hd3l3aaFwYbEQ0kJ76B2HPIgXjjCUIu+b69jLyCIWyW9JDrOxUgG2xA7mjRylnJ1M/Vdl1s2KTXWpAPOUm4s+J8ljEcGanWe9sycVHLCdW6rI0anPwzlqgsLFge3aWl36AjG8zFCwEoN/TEO1zWZUvnJ7VAn2MHuGbCrGKLvDU+X60FFReUh2osPPMDgJpAJYogqwsbeKj6AMaPqbd109QgIYv23n0suPRzL+LmrdZ/qHpr3GDUlFjoqLck05KV6ZO1NQa1wNtKMaG82L6a3E03fYpuk3ZWMMqNB+DFrWzzVNRMTndoq+2NEc6CuOdUz9k9MB4kKLyKZJLPrQABgMWSUAGXz3ea+1xifhGki5bKav9TODVze3XWLbf/YXVk2g==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB5935.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(376002)(396003)(39850400004)(366004)(136003)(86362001)(316002)(8676002)(5660300002)(478600001)(6916009)(186003)(38350700002)(38100700002)(36756003)(26005)(6486002)(52116002)(66476007)(66556008)(6666004)(16526019)(6512007)(2906002)(66946007)(83380400001)(4326008)(6506007)(2616005)(8936002)(956004)(4744005)(69590400013)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?3rb6FxZU4fx1+G8j3kz1qspNTj88ZvFvf7mwtIrVsFDVXCrEMSQdiygvYcLn?=
 =?us-ascii?Q?lLliMmgs6LXbZWgLjJfmYJxdNYnLdnlk9Idnka0PWmpLBY7ixYQA/Ibub+aW?=
 =?us-ascii?Q?XOKlYtwNcAKCILOSPqF5PAE2PqlnwnAgbGZvGUOE5+0eW71bPcarU+qHoR5a?=
 =?us-ascii?Q?yT/EsfX7p/KYXKhpOsTsCyCaqR6FemB0sbFGXc/TyFn0nHkg4OuPtzoinuQ4?=
 =?us-ascii?Q?pN0/q9vcnWhDeJoGCCKYL+ntYfkL6pxfVMqrAJU661Qqyt5tmwYHcEZ8JacT?=
 =?us-ascii?Q?J639rQtIWl/rnhbosTxBvNQAOrkUjzAgeCWrthl5gFEjwRxi3PO+sMzyzZOe?=
 =?us-ascii?Q?vUIYJu8IPZ/2qFekF5JMA4+9k5tut0+QeRRJXhsvzMQKEm1uefcJxDk4J+jd?=
 =?us-ascii?Q?YeXLEvso7NNczbYREGyeyoR0lFFsYGDyeiNMzFVE8NiCgqQeZgP4WqXeozxX?=
 =?us-ascii?Q?2ldt0F2WCklxka0srkpqPrGGk/zXganZGB4wFcNRQhUnTxY5o5cxauxi9gJu?=
 =?us-ascii?Q?uMeR766a5UN8Gx8fuApkl+KjyQYFWHhvZsOGkDM6ZUZEcD41vrbMN92Zmu8c?=
 =?us-ascii?Q?Dlcb9hGgwyOxQFtfG4H/Ogs/8PoHwPOwB7XSP3+C/GwXadtQLdTEaA9bQ30B?=
 =?us-ascii?Q?FdcvBUfuChBodJoQn8KAgIQMF/+cquyMh6AZxQTXLrlnjPpNOOxipnXJdPAO?=
 =?us-ascii?Q?ekW9LWQ3CPtx/3LThqFk8WdfeGh/oyPVackwGd2IfLE7xGLeH4b79nf8eGjg?=
 =?us-ascii?Q?dbrvOgVozytJyaxNMIaqqcbp9CqBLi4Dk2Wtw/SsfjPNv0cHdYbXBmaZamII?=
 =?us-ascii?Q?8aIsZzIf1woFylduSb+jXNMk/MFKKaHEc6QjPvCfhFI9CFaELOVoQLRS06Vc?=
 =?us-ascii?Q?hpKxcmVgipg9Lwosd407SJwdTunv3DN0z059bZpz3CHxIBz1bwkJnjRy4hlt?=
 =?us-ascii?Q?uD+ZAFS84LXsyDlDSVksH/5yjMac268n/MwYfiIxJGC9YHW4A7JNdYTxhaaI?=
 =?us-ascii?Q?DgQxIgsam7bQOJttYJrjA/Om6VSFV3/+giHvkleDnv8uZHOHMptKy2cDUw6t?=
 =?us-ascii?Q?ZrshH7a9nhwqt09qtFithdQnTO5pD2Ch8NzjNQnTlFak5izpqA9cGQCpH0q0?=
 =?us-ascii?Q?Co2r233yeMOkRehK6NcH1DNqnk0XaaIbWS+gYRt6J7Xi3xCrKsx4C+c5Rr1s?=
 =?us-ascii?Q?nSgJEZ54BkYWP2cZGQh2HGJXZOJ3u4mOYmZwEaMe2Qo9jZy75ui5oTX0iYkA?=
 =?us-ascii?Q?yJqkMR4G1URg/94YM1r6JWxlqJ81ISjk21zS2Hee3uCdJbFnkz1n5jY/G1Pb?=
 =?us-ascii?Q?BCsUpwdyVBjGBI/ICqQgum/Q?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 726a0988-513f-4a4f-e218-08d921ce8e34
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5935.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2021 11:48:48.7143
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dvS+j325iPxr5RUV+nNQLmjhgfJhyjXHogf8mgLXQTmi9EAPSu4gKAwZ3CwU21jQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4094
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

imx8mn evk board usb port does not support over current detection,
so disable it.

Signed-off-by: Li Jun <jun.li@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
index a0dddba2e561..85e65f8719ea 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
@@ -193,6 +193,7 @@ &usbotg1 {
 	srp-disable;
 	adp-disable;
 	usb-role-switch;
+	disable-over-current;
 	samsung,picophy-pre-emp-curr-control = <3>;
 	samsung,picophy-dc-vol-level-adjust = <7>;
 	status = "okay";
-- 
2.25.1

