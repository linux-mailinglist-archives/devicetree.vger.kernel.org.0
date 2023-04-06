Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1CB9D6D942B
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 12:32:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237193AbjDFKcO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 06:32:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237231AbjDFKcL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 06:32:11 -0400
Received: from EUR02-AM0-obe.outbound.protection.outlook.com (mail-am0eur02on2068.outbound.protection.outlook.com [40.107.247.68])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2230D86AE
        for <devicetree@vger.kernel.org>; Thu,  6 Apr 2023 03:32:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D21XsAfjNkP6NYFE2HckqpPtj9AAKLXp+cLR0VVM8TUqsmlC4z3Q2IiT4mfrAHanAPqm9M4M+S6DrtssDb+uq1+J8STJSDaboq0bSBBWQmpUjnL4py8R8QfesWaRXFJRaas701OOk6eeagCWsjpCxcW7WwY+1Qens2qsl3jkV1Nlp+lPUKWCRVryzq5w3jxhrMfYtpiWrj2E1ZV6IFJsrJjkIbEZN0Bw4sgxJifUwqUnqmsj5bi/AfSJ1v4RpoZeeIONlaQgAOqZ/rMkAG/USc6vrBfMOeUtAOIfEWbLUoTwVd9YOu1GfUBIMqtIDqvy3poCJQm1+Db5c8/LX0/r1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jgHBfWanPZkt+c9wiByfId/wRP/Fan5Nmk+IK/0rPwI=;
 b=RRIsFjuvD7gCJxZ9+azuhwh31a4zrQ30hZDilWdTYrrb2gOYQp4AGvUMI39jET1BNzaY4EZgM6o44JZRi4lBY3NOlS2tLbaoLP3hEVi8GtFQfjxATM/efIn+NhpXHYXAmwz2pgvINXaAQjG54pxhFCUV6Is277zuep7lFFEbO8csVykaB+46OIZFkGLN23pzmW2iae3cutSHG5GzLS7jYr1krb6kwWZOIpMd/rbrQkx4cu3UWHENx9wBm/1zJu07/h8fZHewImwq45PuCTUv9/1fjB+uGMGtTyvvFZ1hk5K+oCJwBIMIMArhHH+02yVXzikoVtQayurZsfMvTKNnZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=chargebyte.com; dmarc=pass action=none
 header.from=chargebyte.com; dkim=pass header.d=chargebyte.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c4c.onmicrosoft.com;
 s=selector2-c4c-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jgHBfWanPZkt+c9wiByfId/wRP/Fan5Nmk+IK/0rPwI=;
 b=ojX4H39HCN52g7cvmxt9wlQd62dq8q9UPZbz64xLNqZuHQhzPOQhyLo2b36HCTYkbC+W1ZbiuwoRYZlmLKDjXz6MW+eh2aNG78ARx2U4ddkMwoWqdquW7CGzdCjyf6idD2ZVNyO5Ss62C942P2O5IjZiAkBsB3pvb4DvENAFoFU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=chargebyte.com;
Received: from DB9PR10MB5211.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:33f::5)
 by AS8PR10MB6363.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:56f::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.28; Thu, 6 Apr
 2023 10:31:54 +0000
Received: from DB9PR10MB5211.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::bb8d:725e:2ad6:ade7]) by DB9PR10MB5211.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::bb8d:725e:2ad6:ade7%9]) with mapi id 15.20.6277.026; Thu, 6 Apr 2023
 10:31:54 +0000
From:   Stefan Wahren <stefan.wahren@chargebyte.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Evgeniy Polyakov <zbr@ioremap.net>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        stefan.wahren@i2se.com,
        Stefan Wahren <stefan.wahren@chargebyte.com>
Subject: [PATCH V6 2/2] w1: ds2482: add i2c id for DS2484
Date:   Thu,  6 Apr 2023 12:31:37 +0200
Message-Id: <20230406103137.6092-3-stefan.wahren@chargebyte.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230406103137.6092-1-stefan.wahren@chargebyte.com>
References: <20230406103137.6092-1-stefan.wahren@chargebyte.com>
Content-Type: text/plain
X-ClientProxiedBy: FR2P281CA0107.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9c::10) To DB9PR10MB5211.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:10:33f::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB9PR10MB5211:EE_|AS8PR10MB6363:EE_
X-MS-Office365-Filtering-Correlation-Id: 0fc1e2dd-1918-429c-56ec-08db368a241b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Uog1zJ3rid1Khh7MKf+5clLqwiiYvTyMof0ehQGgkQUxl+DQcqKtBOVosV8b6pg7/NEqREjlZ2mmyFGrebYNw4FCqsChI5OS2YkO1MtgFFfCMZ9I7WPNef/mP7NvSouql65KJXacHuvhIbSNNAV2eZ+TB2tlq8EX2HxyX8TdO3eBEeMG3405Wm6BLIr57V7mUNArxNOtO+KKisnS5Mgltcw/QvpNq/jnf81i2zYcUO8WjhgknFFHPDgDOVs5VESGkm8KKq6CD7uAnGucFFRSAnrxCm7inIdlJa8fI2XHryOEgL98Ceq4kVqf+4vk9tv8C46FHMrVX9efn6A6ZTMnu8+j8Lb2ITBV9VZsFNSoclo6ezYl/Iq7K3JYPfGuyosJhEqVukWT+xlBI9VddFQLBGHBeqSg+MU14yuWmdIeQ4yHsV0+xSDlryjSDWavUcsJ7kzuaS+tThYjOgL6ae/7778a/V/Iq+EwD9HopzAOHV7YH5frvn5aW+W6l7csNsvbhv3Gsly9EYRaEM2n//VwsvPbGeUaFf0XQ/1GS5KDgaj8SUc+t3VoOaPaPpn2+Za5Pz4md+ZkN/jbBiKB0ZpILQOhrp0GX5jU96Ch+oAwJbk=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR10MB5211.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(136003)(396003)(376002)(346002)(366004)(39850400004)(451199021)(86362001)(2906002)(4744005)(44832011)(26005)(52116002)(41300700001)(5660300002)(478600001)(8936002)(6486002)(66556008)(36756003)(6666004)(4326008)(107886003)(966005)(66476007)(316002)(8676002)(110136005)(66946007)(38100700002)(1076003)(6512007)(6506007)(2616005)(186003)(38350700002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?J/4OGM1FsnMPa3ZVC1th+x4/FbZHM/kNufx5Nxe7wsW/OUzRztPrgBDJwMkI?=
 =?us-ascii?Q?7AwyQqA3mh4YsYKbJnMo2X2t1cVJT8KafcW4Mgz816A7oa7ZrvhdFcJv0p4D?=
 =?us-ascii?Q?X9JSErmcuHK9TKQcjNNKE/vKKPzftc9Tgja/qnLhOxcabSilXwGzf2AVdPKc?=
 =?us-ascii?Q?URQrVke9EBdn+WBqPBubKOPBTw9bRaIymCUHwvftHn/XLPi0WS7xGABEhWse?=
 =?us-ascii?Q?jRQMlWDnThz/FZPdLXtvrdZ3H0RXunn7TUO0467HPsSd54GRzwFYpC6FxXpQ?=
 =?us-ascii?Q?qQ4wF6U018YFHXTL29yxrRCanejEi4PLtMpCgeRg1Wybdrq9CRPMW5gykCyX?=
 =?us-ascii?Q?DUHQmoSYgwMeicRXNZarpiYQ6+FQBMrKNgB/shKZDKzznewIrQ1F/64AzjzV?=
 =?us-ascii?Q?3E7nsg9AOyB7QCxkWkovB4c2po1RgGhBuy7YJjm8aPf8FdYGioTDNaXlnlfq?=
 =?us-ascii?Q?rgVJszHrFFvCVckAU0PaXEkJuuVIrOxrgh54YTR72ChK3AD7eLiTbQCArzMv?=
 =?us-ascii?Q?NGqQdJmHsbGklOAKIlG0/Q18ojrhrdB1Su03yjsMYw8vYuR/L3nwPuqaXtt9?=
 =?us-ascii?Q?0oM5umBC98mHiAvawtav+jRMJKgG55BdxhHcykKuNurnMdBa3pZi5IL02K4p?=
 =?us-ascii?Q?cczF2peyLnJnCzOS/fOlq5hAk59efEq694VB8Lg2glHD/b9inDnnM+xpWCiN?=
 =?us-ascii?Q?c3qAf651JmiaShvDZBeQqn7DIXJPlrvUaMTNiSDhBkP93OdIArHkYvz/EuE3?=
 =?us-ascii?Q?dqOiMbIZHb8rYhuDax57NtR4uVcD5TPN+BFxDxfvuohgc4X5qXJe6U2zhlSD?=
 =?us-ascii?Q?6MjKKfHPZpvxtfMHZkKjULVqZTmng14uE3AuaZr01Eg4sH+MS/o9SifmquNz?=
 =?us-ascii?Q?tLweIymAD2a7k2YzQchKHruqXPjrPvwBgmkimbMK4WL/tNGzZoiZpZmx6c85?=
 =?us-ascii?Q?N4UK8UqqJOujTrcMK2rPt8FHivSvox0umAh7lIGfeFwD8H+ZHOIZsFANsPIb?=
 =?us-ascii?Q?fbsK1GzTGpYKGtsRWLN5TfULomLXbyL0AySA04UKaMfEgQwGscNEL+Nuv7DT?=
 =?us-ascii?Q?b1iF7P+qgl+lFYj7dBP7yLOi1/JeDVoeiiE91aL/5eYR4qmItYnX3Pj8ftpk?=
 =?us-ascii?Q?PjDdd4wmkhXS3/WnccPzprqC2cRpaI9RCfqjkocEjQRFSEUUeo2xwdsIhVD6?=
 =?us-ascii?Q?piki39fpCiodyMQjXhoDa3nl/15K0suU94EXCcNuOUfnB3Rd8LqwHAAFQrx/?=
 =?us-ascii?Q?JzR4+CiZny09/tB5Q5RGi4VGnduDcJLdQzlNG1axYzoWdVCOQBjuhiwsws5O?=
 =?us-ascii?Q?T/wEvOxxvzB2QwnFJdolsSpyhAJC6p4xUUgU8GBiU6czPwtbX1wVwGyokVh6?=
 =?us-ascii?Q?/CUl9yOnsthSLtt1H0wAgOqw1K2lMXiRjW4A9Jn06KaA89llZ4hHvtWMwhni?=
 =?us-ascii?Q?THM2yy00j3CY+55CPD00twanbLm8dU/mbNt9msYrBIxzzdxc1KqyoapQRIde?=
 =?us-ascii?Q?LyrimzwMli5JCe3wRxOKD8qtJcgfDSNJokK73JCipsBSMNU175lXRtmsJNCq?=
 =?us-ascii?Q?BphmVIdjAxe/Lzaitaxfg8VsPU0pw6pw3raLfxGjts20LdxmNIKYhNyKTDDi?=
 =?us-ascii?Q?Zg=3D=3D?=
X-OriginatorOrg: chargebyte.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fc1e2dd-1918-429c-56ec-08db368a241b
X-MS-Exchange-CrossTenant-AuthSource: DB9PR10MB5211.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2023 10:31:54.3910
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30547194-0d55-4a2f-900d-687893d3bdc0
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +pbGF3Cx6pg1hada7C+53wgQCT/jFA7jRk7L2se1loBD5fx8OC/UXRtQN1Sfd8VYy/5mDxOb9/5IqjvVys5WOZqAn7E8us+zFF/RoDlUwYA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR10MB6363
X-Spam-Status: No, score=-0.0 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The DS2484 is compatible to the DS2482-100, but also supports a
pin-controlled power-saving sleep mode.

Link: https://www.analog.com/media/en/technical-documentation/data-sheets/DS2484.pdf
Signed-off-by: Stefan Wahren <stefan.wahren@chargebyte.com>
---
 drivers/w1/masters/ds2482.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/w1/masters/ds2482.c b/drivers/w1/masters/ds2482.c
index 62c44616d8a9..6f6df686e9ad 100644
--- a/drivers/w1/masters/ds2482.c
+++ b/drivers/w1/masters/ds2482.c
@@ -545,6 +545,7 @@ static void ds2482_remove(struct i2c_client *client)
  */
 static const struct i2c_device_id ds2482_id[] = {
 	{ "ds2482", 0 },
+	{ "ds2484", 0 },
 	{ }
 };
 MODULE_DEVICE_TABLE(i2c, ds2482_id);
-- 
2.17.1

