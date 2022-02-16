Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B8154B862E
	for <lists+devicetree@lfdr.de>; Wed, 16 Feb 2022 11:51:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230346AbiBPKvs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Feb 2022 05:51:48 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:40562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230324AbiBPKvs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Feb 2022 05:51:48 -0500
Received: from APC01-HK2-obe.outbound.protection.outlook.com (mail-eopbgr1300043.outbound.protection.outlook.com [40.107.130.43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D13C2BE3
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 02:51:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lj8BFrVPu8/vkGQv565Wxr5GaVXGz5zCeH3g808ag29ZmPfxn1wk3jlA3GMtxzG5+91w/EBHre1BEdiq6VaBWAHs8YTZFkxw2LenniBpUg10q+c/BBK8GXtgkaGZPKXe93tCAB+FwbHzNGVlrzz6vE+a/4nlKbbUSSNro3UAaw2AtpY/GycoDLM3J28fCxxEbbDFIXZi9lCJUZI43usHZSNGWgzNiESb4aXOds03tzTOzmu2+uYZRiCVcure+eLfzOG+WlcCzfLRwLD0+vUVDpkus3av5GvoaCwzDnvwKbIU4tUhUXfbm9ZDLXUJK2BLVqbNiM9PdIXkKPBq6vcxBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BEyo9zenBLycEDfxQKxPGKkoUPnRpfL0Xn7QT/4E5lE=;
 b=eI2ZYY02R2vmo+heP5ebXYEn4+icbqjhxLmb3Cm8myUNK4ZwlOVenKCO/XZPmbMfCDqm43bZ59gxohBuRGE83FEEyDvzSRBONleJXJwsVCfUl83BgBAtT/F0QTYKkzI1b3N2bdg2EXIaAjZugem6WMYLET5eE5hW8KSwCXxe3hJ7tOFT8JIUdmMTljLKjdWImoILgJ4ElhtMtwEPyUV7RsntpCb7xND/Ok997AllvJt6TKJMVPER33BugH12p56L9Ji18wCyN1nnWQyOTJRQEfA98fv3v4qDlVDsSn0TByO2JQ+FaqLQtixAyrf+7tkYaYH/P+avjkoVVm+/GPAVMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nuvoton.com; dmarc=pass action=none header.from=nuvoton.com;
 dkim=pass header.d=nuvoton.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nuvoton.onmicrosoft.com; s=selector2-nuvoton-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BEyo9zenBLycEDfxQKxPGKkoUPnRpfL0Xn7QT/4E5lE=;
 b=mzNzhu8qv4DskGuvgMxbm8F+qc3KQ/ZVkV4nAcdqqGByOISdqpPKMeE4oQcpPkJRzzEUfIsWDI455yQjiPswygB36BEGel2UsnDTL3KtOyppLfr7c6v6ytNEke62SgTWKMrxotHqfbGXsSaxNr+QOaoj0BULOu3zxMS5OEHLE8Q=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nuvoton.com;
Received: from HK0PR03MB3937.apcprd03.prod.outlook.com (2603:1096:203:97::12)
 by TYZPR03MB6021.apcprd03.prod.outlook.com (2603:1096:400:128::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.14; Wed, 16 Feb
 2022 10:51:31 +0000
Received: from HK0PR03MB3937.apcprd03.prod.outlook.com
 ([fe80::a564:9d5e:a0d6:1ef]) by HK0PR03MB3937.apcprd03.prod.outlook.com
 ([fe80::a564:9d5e:a0d6:1ef%6]) with mapi id 15.20.4995.013; Wed, 16 Feb 2022
 10:51:31 +0000
From:   CFLi0@nuvoton.com
To:     devicetree@vger.kernel.org
Subject: 
Date:   Wed, 16 Feb 2022 18:51:25 +0800
Message-Id: <20220216105125.22726-1-CFLi0@nuvoton.com>
X-Mailer: git-send-email 2.17.1
Content-Type: text/plain
X-ClientProxiedBy: HK2PR03CA0044.apcprd03.prod.outlook.com
 (2603:1096:202:17::14) To HK0PR03MB3937.apcprd03.prod.outlook.com
 (2603:1096:203:97::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9b4b2eab-c3e3-4dc0-1d29-08d9f13a4aa7
X-MS-TrafficTypeDiagnostic: TYZPR03MB6021:EE_
X-Microsoft-Antispam-PRVS: <TYZPR03MB6021574E2AF18178D6F71A6DF2359@TYZPR03MB6021.apcprd03.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
X-MS-Oob-TLC-OOBClassifiers: OLM:1728;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kOzhm8I1THRXTg23KAUMBHP6uIl5Nh6DHxmcb9vHxSIY8pYz44c6fHuUoLBN/PlYFinRTlm4rYRCmeWdxv4vMsCgCsVyXboPhl2O1tHYox9sZCHhE1+EkeTnAz3V6ybJzkei1tJLwYOpC+Ot8ELmH38X3O+gmM8d27GZeyn6bttosZ3mAg0pMj+j0xV/gQNr9EVAXGfFXz73pog0H49OZ331/n9UiF5rnrpzUTw73n8+iFuzB6jaTo3ATRZwFdpmKf7+1NofNylhG9OrcMdaEsGtMMT9MFTIroEMqCShLpbQyXoZQ5TtVT4oTFhUB6YKL8Zc6wU2QKmSFCXwKS6Qn9ig0+CpgSmkjVhtIYwmBNp2UuM09D5QTfvzImk4Kdrvx3Dc9fD8aXdrvS74nhwJiFuziyXIRrd4AkhKbFtWZ98w1cAzQYM1vlqO4547ftceJEq4ECdoz+6zpipWXqKISeOOChptXsE3WLJcWohlb5D/hf5HEWDPcpF5DuNc2d77eLRn/mVg1dZ2rJInKTndoIZAPOcJdnzuCdE3Kc3AJyElmRvYraDuh8LikKOkYI92Xx//LJZv4UeqN1Hw27cmhDv6LBrz4dkTUeSeD+QbYl8XmIz3JjMQm8RTU+3lFUtL779a/P6c5SZqctfonu6t0MLN/M8vCUAavJlAg7myMOq5SZNAUdf1eLSwfVV7MOdqRPeWGXmwKtiJ8cZGWb+WvyJow7gYAFJ6/8YHn4UlzZ7n26ZRIgXVqsCqB9ELblfL
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HK0PR03MB3937.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(4744005)(316002)(83380400001)(36756003)(5660300002)(26005)(2616005)(2906002)(1076003)(186003)(6506007)(6916009)(6512007)(8936002)(86362001)(5406001)(9686003)(52116002)(6666004)(66476007)(38350700002)(38100700002)(508600001)(66946007)(6486002)(66556008);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cMyetJO8v3eIH6napULUHxi1YLrC+d+78DpA4/1rlvXiSuwQr7Biqf1uNB8Z?=
 =?us-ascii?Q?v7M6Vjo6NwImRAKsBbGvPlD/di4vhZfZ2bVpVaXhAyFMuCP1mDEqjboqWov6?=
 =?us-ascii?Q?bNn2Cd/UhsaNWGPiE+9GLt/VRb0v/Czi9jp4Xtl3zwqshl5vZcZNATMh9kXw?=
 =?us-ascii?Q?hzTcmW6No20xmJz0tVabuRGDcRLrbYgJrSpWv7YPYLgR1nJzyNj6wW8sgGSM?=
 =?us-ascii?Q?9r9HgvvPiWrum6GUxad9pgvhnX7RWhiG792dHvRXzXJNoGDFExYhKM+cDGB1?=
 =?us-ascii?Q?4/RD7nkyUWLx3Q+18+naUarG1EGLjfD87CfBaa1bXRTa0ranuC2WzQPNkfRH?=
 =?us-ascii?Q?bp6MGr6luQPlP4tkxNwYufZB//VYFpTaKIVul0/igBK6u+gMQ2sNXzsp9uki?=
 =?us-ascii?Q?bSg6A/DhbFs6fOqqPFSer0kZduugxru7YSQ/kKY5wHZbPLmUwjoe+eW/slOb?=
 =?us-ascii?Q?0JPxQZCj2p7DcJHfOX68LxVF87Kx92MgxFFIb++3W+g3HWkfG9b5mV74DcKn?=
 =?us-ascii?Q?O8sOzT8BgUMObzEhWoU5GV9E1HUqXniQ2uZXFntENIGOnG8ohBdJtHpFeyVv?=
 =?us-ascii?Q?QIC/IdCkk7icIVZUgWPu2SjxFuWsCFdg/LMUjybyKh24hBS9QhlU9HBCj3pd?=
 =?us-ascii?Q?lu0VJ391l+4xwvh7eTODymFJxx2bhBKYSwavPmYE+8z7T4+Q/Qf+xhOdHFjb?=
 =?us-ascii?Q?YBLwWwZ47rb6JDzFWvwuHm6IKf/Mp/g6xaEHjEGxSRe0vyafKq8r6IcyljNL?=
 =?us-ascii?Q?QSZq+N5QcNWWpkmWbhcY+woFAj5Owx5sg2vSz69Awu1tgM5h6yiUISd6Wi64?=
 =?us-ascii?Q?O9iIRuP2mgSvc2SsuJcnQa1JEvO+ZIc7WsdZLZq1tSjDQJ7eJ2Vi1XVnuZRe?=
 =?us-ascii?Q?mp4MUUxOSgJgdDcjykALusXgy8CFlQrqn+AGYVU/1N3dmZJh8luqc5xbVapy?=
 =?us-ascii?Q?ebHgUjhG+AFt75U223fq42HS6WdJKPIJKP00+yIGqYHX0N4yP0qpm3jS9bRp?=
 =?us-ascii?Q?PY2jXWQmPbDLFa6RzntV2e6SrFbTjSljrG/G8uDx1VnFewee769voOGW4w82?=
 =?us-ascii?Q?IUxyVHXZW1bu3hXCjqFT/lEQ+ydGckJ3G2jFxReHONuCB71L8AKj9OSoSB07?=
 =?us-ascii?Q?II0KA/R5WM774PrKIjIOAq8NzZlSmGRiNM34t4vsQlCqnPl1njFQTFlP7ocB?=
 =?us-ascii?Q?AmrjtOF3ztWOFI4/N/PcjKYibtPjRIhj3SIGbY2LFoNcuL2AhQDiOzI4DRwv?=
 =?us-ascii?Q?V/0UKOxnhYKJnyram3TqCNHrpiRbaYg+UkyUxIZrldPClX0L8rj7370opmRH?=
 =?us-ascii?Q?BzKAf8qXK6lrwhEMyHAw+7z0wTuTnkTxO23O7xss0f1FvoNoyjV3wpX6hkJw?=
 =?us-ascii?Q?hVbj2bl9J2D/pLRcWdgXFCjEVJnGMmBgbGCg1xdaTpfIkpP3bxGHUuZs6jwp?=
 =?us-ascii?Q?jyzLMw+zljWwAELizG5WVLvsFgDU1O5Tquhh2LfxbwDg6OVUu4ATOs7swUII?=
 =?us-ascii?Q?kpgi8gZZa0hBxR/iFEe6FXyXtaZuDIGD3QoYzoiT9aF/01yJ1q5vsqo1fezf?=
 =?us-ascii?Q?WH241bhFffz35ck8xXv+sE9rWwztzqNhaPqPeNaDJJa7Fxnb0sXMwAxvjWMj?=
 =?us-ascii?Q?nlEa4FTGDs+kEyojcjFvxWY=3D?=
X-OriginatorOrg: nuvoton.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b4b2eab-c3e3-4dc0-1d29-08d9f13a4aa7
X-MS-Exchange-CrossTenant-AuthSource: HK0PR03MB3937.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2022 10:51:31.4373
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a3f24931-d403-4b4a-94f1-7d83ac638e07
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X5Eo1CrbCNRFftLQHAZke6xpY7cDxjXl6Pg1oGNmh2VTcBbsDjWqc3Lesd67Zmr34xRm2BLxSBJsjW9bAR8tcw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR03MB6021
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

subscribe devicetree

________________________________
________________________________
 The privileged confidential information contained in this email is intende=
d for use only by the addressees as indicated by the original sender of thi=
s email. If you are not the addressee indicated in this email or are not re=
sponsible for delivery of the email to such a person, please kindly reply t=
o the sender indicating this fact and delete all copies of it from your com=
puter and network server immediately. Your cooperation is highly appreciate=
d. It is advised that any unauthorized use of confidential information of N=
uvoton is strictly prohibited; and any information in this email irrelevant=
 to the official business of Nuvoton shall be deemed as neither given nor e=
ndorsed by Nuvoton.
