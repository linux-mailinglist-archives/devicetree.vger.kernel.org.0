Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D6774B8410
	for <lists+devicetree@lfdr.de>; Wed, 16 Feb 2022 10:26:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231936AbiBPJUk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Feb 2022 04:20:40 -0500
Received: from gmail-smtp-in.l.google.com ([23.128.96.19]:42746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232037AbiBPJUj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Feb 2022 04:20:39 -0500
Received: from APC01-SG2-obe.outbound.protection.outlook.com (mail-sgaapc01on2062c.outbound.protection.outlook.com [IPv6:2a01:111:f400:feab::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3BE823D5E8
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 01:20:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=akUFlD5/PqPkVNkNXiB9q8g+KYAoyaV/YBSHDNIsBvKGADBJwBKmPX19LTUVAKXQhX3h0SUAqOAvcNU3fIhKGHAfSkvlI9i65Hi/4GQ0Z6wvOseOvVoiAH90BHF1A81KdKxXJsVRWRbHExJ3hr/5D2pz3jeI0c9k7ap7T2esjstDWBjLbfmWcXamPVxpo5/BAsdHq9F+E0peODuwhY1q7bMvY6l6fq0csmAT/CJKR7ROxfm351zI+JwjZ/sCSIoJ7ntY9zfLJlESVnEtVeihPjBzL6RrEO+bJaaDX3qZwIrV3WmgMVfr5n54dRZOUVBstw+OLSATk1R2eXvoJH681A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=USj5X5+XK1GgQdHAeM7+JC1yAplPS5PyQVLoUewzBhY=;
 b=SRFylyUsPeMrsdnuD4q+LZpBynTSu1f6YdqbsZsi/fJIEWrUqhvynG91lQCECIJT0Uo3Y5puZ/7VP5nKRhpIj2QzH+3ob9XPhTmsNuog2InaIgT4YtMhaLyGPRWWigJxMDLen1F3KdrI6FQ5bz4YQCeqxM1RoQOubT7YDtFxsj8PkYQaTA60WlFgm/dIsPtsbmt7e41Fm8pCBqqudmZMaGEfyBNg0DXNMqXJqvitYfOplpCwj35WSB+TqlnpG0i+FinZS2uUDf4sv/CFdHr5IV8Ppg1jN/x7g08u9iXG/0nwJmYEhZFT6oNC+md9RB25jQkncMyIcnxkz1cZxFGR+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nuvoton.com; dmarc=pass action=none header.from=nuvoton.com;
 dkim=pass header.d=nuvoton.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nuvoton.onmicrosoft.com; s=selector2-nuvoton-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=USj5X5+XK1GgQdHAeM7+JC1yAplPS5PyQVLoUewzBhY=;
 b=AKgx3BxX02Sxw7wLtv0cR6S+L5tk1z9rUM0HUxGvmM/Oee1SEEOYgcqi4tPfbBL6OxizrUvEtDtDxCfgJ1cPtexup66IvGL66XdxosDTJttl17Y1poFGyuicGmA3vVVzqzK5zMWOOS3tXi94ij0sd3zooLajMphPM7rqY/Gvkc0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nuvoton.com;
Received: from HK0PR03MB3937.apcprd03.prod.outlook.com (2603:1096:203:97::12)
 by SG2PR03MB6295.apcprd03.prod.outlook.com (2603:1096:4:176::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.8; Wed, 16 Feb
 2022 09:20:19 +0000
Received: from HK0PR03MB3937.apcprd03.prod.outlook.com
 ([fe80::a564:9d5e:a0d6:1ef]) by HK0PR03MB3937.apcprd03.prod.outlook.com
 ([fe80::a564:9d5e:a0d6:1ef%6]) with mapi id 15.20.4995.013; Wed, 16 Feb 2022
 09:20:19 +0000
From:   CFLi0@nuvoton.com
To:     devicetree@vger.kernel.org
Subject: 
Date:   Wed, 16 Feb 2022 17:20:12 +0800
Message-Id: <20220216092012.21881-1-CFLi0@nuvoton.com>
X-Mailer: git-send-email 2.17.1
Content-Type: text/plain
X-ClientProxiedBy: HK2PR06CA0003.apcprd06.prod.outlook.com
 (2603:1096:202:2e::15) To HK0PR03MB3937.apcprd03.prod.outlook.com
 (2603:1096:203:97::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9b2b62a3-6fac-4e7b-0df4-08d9f12d8ccf
X-MS-TrafficTypeDiagnostic: SG2PR03MB6295:EE_
X-Microsoft-Antispam-PRVS: <SG2PR03MB6295BDA55DD33CE6B37AA888F2359@SG2PR03MB6295.apcprd03.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
X-MS-Oob-TLC-OOBClassifiers: OLM:1728;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2+qWgsF3/VO2PtiITUxumCX2SuEXph1srCL34FsCWRMelL5vPgszjMlE4h27JT+x1JWqEfVRnx1lFDncgz4rMr707iYbYChINLCOwiHma95rpXNQonFj3hEaNjo8UJeGEkCG7335ISDHubhFxxSCcTR1fFasietMJcptKVTZgRoA4g9x7A0ErZeqOw8dZy1jHVq3mvMzsCLgRSSgyXygNGt8teAJQVCjPGpt3A5JKEooCyyyclG+nOdKf3sZvtEhDZcklAu2zkN9xyfQ3Cblt/OASvLYDRe96vAlVfB6wj/Rt4MH8hwh3gtN/74UXZPJgwWrddEENffsegdcllVoX7e6fZmCe4hQaFoA3wnKyrdRoU9L/iA4IQqBfgP4KnBkmpXa569faNtmDgR2KVGjYahMwk/89zpb/cG+O7ShOD+XJxjSUCeTGX7u0EexRN7SqFy7VNLSaWnrAldDtp5uxT1Z97Gz2DvDZ1ukO1zjTCF18ZpuDyTLIdu4cO88GI3OXA3ajh1vlkNAj8WtohbYZVuZCSvwkNcM9ITP+ehc8tsvqjPrrz9qGllMZpxnx1mV7iHAe5y63PBZNZy6YMWJjZGuccYeTiDk83iRk3wMHCs16VquqjKJr5wNJHVGkFquwUZMhoRkX1as/7M+t9DNMu+jk/KwRQv3mu0QUI5U+8cyH9H57TGkx82zfrJgsI13lWWTXeKlRpuam4DhUJnxDQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HK0PR03MB3937.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(6486002)(52116002)(5660300002)(4744005)(6512007)(6666004)(9686003)(8936002)(86362001)(6506007)(508600001)(2906002)(83380400001)(26005)(186003)(1076003)(5406001)(2616005)(38350700002)(38100700002)(66556008)(66946007)(66476007)(6916009)(316002)(36756003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PMa/Y/jp9lW9xGVbYXOHmdBcPUR+tZD7H3w+4htT0/0En6Nu7Kq8j6BQqDip?=
 =?us-ascii?Q?+pie2ZsNpylTPpfyzAK2VaQfdwx1airsxhfTCPtDk+py+PILeH8XlH1Qoq4x?=
 =?us-ascii?Q?MVMYBMAvnzcrAdYnLsFrFZXrsvmYTW+rhrMucww1gje7JA8oLrP+MpUUHNzT?=
 =?us-ascii?Q?v0mxwHJPpOSPJt7RMijruBLtTXylJX5I2MUjUNZDuePlQLDIKgXfxQe+Jpnl?=
 =?us-ascii?Q?VIzWZsWYZ744zNnHB7IKBReYs2x4d2e4jICZ5u/UgeCb+xdMezLWe/OqnqEj?=
 =?us-ascii?Q?KYaahzHkfo0HKClytJw5XtnSxZZgNaaMn/mHp4Q56E9U+xPofJYv605GGNNV?=
 =?us-ascii?Q?E5cpekmGVWpyHbCgIxJRab3679KMrHlnQDiDmWiEfXZfa7+6VpZB6qtvPIsP?=
 =?us-ascii?Q?8Pxn6lkSm4UiJ5ClMkaeZajcMMYuodud/lCRHlECrLCdP23qQwOnJQ7NBa1G?=
 =?us-ascii?Q?jc46K7D60cqgmy3PNwFl4q1Vik2pc9ZSlenJ1j0f9xydp3mTPW7RMipR/hgq?=
 =?us-ascii?Q?k7Ix0IYMVJkGtawjHkOgN470uKVLuUKIkmHkuNTodfNqNAhnlR9waHjiVq2x?=
 =?us-ascii?Q?XWyXpWYj4+H9gr8B9RqYEyMRU0JY0oFBhn/NWy/Un2IjeJOIobljLm2bZTA7?=
 =?us-ascii?Q?8YXgWW8KnFAKitCngvMQUFkJ6T0rTQWwqpd25QfA+arY9LPkpbHGmvc+j80F?=
 =?us-ascii?Q?jjeU7zyTNLGU4pakGtYAI5JKSDYJBt83iOT9bMKKuq2VjfUxumb8U6jKByx+?=
 =?us-ascii?Q?xDz4V0RiVKEEXVK/B/Id8rS4nOcnMruOeAGgnQRzb4iYHZQCrubdlt8GGf4u?=
 =?us-ascii?Q?VyHMYxmGMQT9SE7DlNI9IwIwjTMsJtW+Wmn9tkyb5kZ7uwuf9SVYDklcfN3b?=
 =?us-ascii?Q?BPnxE41ERoFeONB7lpjoJlErKlVSSDwODlx7LovDLtvoJ5wnYCiiK8pD6A0J?=
 =?us-ascii?Q?CvpOp2OPUE6PsgT8H5x4PlbW3ymoi2D6jaElN3UGjFwNr1dUAARLhndghjJY?=
 =?us-ascii?Q?MfDW9pWyYPMd+PXsm2NXpDoIUwj7x5LaZNBrXZXUKEbh/GT56eN4K5DQC+36?=
 =?us-ascii?Q?X5WqGLJpaIPpyKzAqfdix0o/IGpzsi3grCR6gyyonahZxlc2UqNFmscX8DCe?=
 =?us-ascii?Q?3dhXOVakvo6YFHlNT1b4uxgLgnlAywA0j5/0ofMhb5liInPlbiH6OO5w+0lA?=
 =?us-ascii?Q?2jxNwh+/bYArT4Ys9oc5jQObvyE18wAWUtQdFfp7sUaNAyJ1wr+Opcd9tEsV?=
 =?us-ascii?Q?+yASmlxWYlr87ut/ZGwdLXVkrF3jEDDtxIThFx4ZOxfn+GYlr5tpftZxaa5n?=
 =?us-ascii?Q?hyay8Htqg1r4kfGRlrzwaqF4XeQknP1gKHh4tNuf0uabMjrEuPwkaQz1eQhc?=
 =?us-ascii?Q?wfCFc9ufs9U8c/6hR3jJGajw6RrSnbWhOeEed7jNJdjtqtdW19qsH9vFGbuo?=
 =?us-ascii?Q?dFIV1XDMCbCws/HjBcguHkxHyIB60vPVEYfkROWWiye1lpWxpvufgmnsfIBu?=
 =?us-ascii?Q?InMaCWxl3DGUXkRM5BKLij85zZIz6i8wZ6bTSXDkFwVfYWkN7fokLx2bLCLH?=
 =?us-ascii?Q?PocsSZVkZVtT98Jl86qjFJhzK3a+33Z0855ud4RiM27LrGffnyuosqGCGUyc?=
 =?us-ascii?Q?//ZPcgnN58+TjsY9fFiYK1w=3D?=
X-OriginatorOrg: nuvoton.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b2b62a3-6fac-4e7b-0df4-08d9f12d8ccf
X-MS-Exchange-CrossTenant-AuthSource: HK0PR03MB3937.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2022 09:20:18.9712
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a3f24931-d403-4b4a-94f1-7d83ac638e07
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6EbbhwGLl646kIkxmzNyEK3LPsCgFvJmZXYVTG9K56TsHFbCdspfUAS+OPZ/tfY0D/gMbmDZvixLnbsuuwkMTA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2PR03MB6295
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

subscribe linux-devicetree

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
