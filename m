Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5446F68CBC0
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 02:12:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230023AbjBGBMv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Feb 2023 20:12:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230010AbjBGBMu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Feb 2023 20:12:50 -0500
Received: from APC01-SG2-obe.outbound.protection.outlook.com (mail-sgaapc01on2132.outbound.protection.outlook.com [40.107.215.132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04C22F75D
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 17:12:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lHF2hjMZtzBgWV3H3jH/rUiVTUUDuDE4VY3ijJiG9ngUsDs6Bu10y9QWsxbBga7h63OdatPZxyF+Fx0sFvcqet+pqnj/5Su3pHsQcj28A+JfpEZb4UfmgdSMXkjUyDUIhSnxdDVxM43SQeZdQCr+bdZdYKGJJdpdMBZjngV0Sed5g51x4SGHvMnUxQlO5qIrwGtXXdX9RQJQfQNMqzjiHnOkMXeMwnyXl7QX3sCuNNYPjaq2+DqyNehY/1PhQDZIpqnUGKF0UGDGaAx0X0whJjE9yjsXqDXXgkzokStiLEA8yrfdEIVxkZ2kt4FPC1OzXvesvLk5tR3WDnT49rlSog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ySYBe3528IpIcNRs3YIDnFrrNmgKaVB7ZybouGRtmGw=;
 b=E/soT2SvvXK/EMXS90bxa7v3ZgX7k/4qTfpqZ1REeiimD4sNprGmrKAI262Rb9Cz+rRYZT7jIu8Vul8hC8Ini6sCdO5nHlcGCOyOOU+i4m5PS3hvfaZqPwQqqBUfhwF5DXb2Xhm4lGlMe5I1YgvZI+NK3CfPnRXjE1QstZB8l12EFc4GVdjjkcuAKtFQ0bd70q2sTViyMnW09KBm7O9sn3tIdRYLPPGL849jZvXfCKj2tKbCKjv/8M/l7GCGdtOEf7qXGOTMeEhfygq38lY449ly6nHilan0UnDSoygTn0Os0FmkXlcbr6RZy8ySTZgqB8JE0bX4yO75WPjqNYlHNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ySYBe3528IpIcNRs3YIDnFrrNmgKaVB7ZybouGRtmGw=;
 b=SMkIFTGlGpg9GQSIVhwHFhRGjIuxCBGQ6Sfzh8Bw4PzcyqqhunDL8V9dz00tCGfgtyHPnaO5Vth0/hH4QZve33DMGNuoMuQbzrOBYVV7DZrceir/ghlIRoWax4qgVDClDDNlGBfkbu/InIpzYN2BNl3fhj/xPJhXC3nDGzuXy1o=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com (2603:1096:604:194::10)
 by TYCPR01MB11511.jpnprd01.prod.outlook.com (2603:1096:400:379::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.35; Tue, 7 Feb
 2023 01:12:42 +0000
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::4b75:8d8e:d89a:7860]) by OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::4b75:8d8e:d89a:7860%9]) with mapi id 15.20.6064.035; Tue, 7 Feb 2023
 01:12:42 +0000
Message-ID: <87pmamuvlh.wl-kuninori.morimoto.gx@renesas.com>
From:   Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: [PATCH RFC 1/2] ASoC: dt-bindings: renesas,rsnd.yaml: tidyup reg/reg-name
User-Agent: Wanderlust/2.15.9 Emacs/26.3 Mule/6.0
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org
In-Reply-To: <87r0v2uvm7.wl-kuninori.morimoto.gx@renesas.com>
References: <87r0v2uvm7.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=US-ASCII
Date:   Tue, 7 Feb 2023 01:12:42 +0000
X-ClientProxiedBy: TYCP286CA0240.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:3c7::16) To OS3PR01MB8426.jpnprd01.prod.outlook.com
 (2603:1096:604:194::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS3PR01MB8426:EE_|TYCPR01MB11511:EE_
X-MS-Office365-Filtering-Correlation-Id: 6b87ee2a-eac7-431d-1702-08db08a869e4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8w7CWQiTE2uEFcbiV4COBP+o2UXiemvzdttj4pqw5B+iKoxlG8p+tRtGJfLtNStrUxX6EHPNsUM0rJ5Kk8quqluMzjvnabkamK31iqfjCgxZpkvHxP8TDrcEsCSZqKFusczMorJZOBk8AWQeoC+Ev9UrYgGPDnShIRGX/O28Ajw2+mMOM2+0emuHKCkEimPchpzcjh8GOaFaDQBX48gmspJ2C5k+O9uy9Sr14uRwhA27a5uuL+Xuc+Ol1MiBgqgT6gP6plKbTpZEajwgZPECfrXN2J2NRoIZnDRpyCrsPL0SR5YD9ouaspGvofdYZc3yhy0ur4qljY9YAG3RvEVLQEW8o/Sa80jI5CwHclO8X5RrJ2sDwW5YKO90n8s7IsO5nRCELXWh87iEoXpSCHBQltWn56ESPjVKbhB+2Wb8aINbaMW07LnD+NVlz4LS9MstAoJ3i8HH390Fd+KxYqSYHZAsxRc8Z9T3pQt0PwIncXi0gLtqzaosi+KSkQwPwH2XOVVNeK+8mpgBoXOSER+rosY1EqZnpcVBK3GRYHwZiap6Xlf11nQR3GPKt/AjlhepSbK7OYtIqweUz5qG+uS96cGrKfvQNEJdfKJHP4qcjT0J3sjcvEEfj0t02B4lXKS8R/Os6MMu/amZ3h8GAN31wwou5y1W9rRjqwnz84whrUiYgwwKNtGlH69yFDNvufpuPb1mFmh3eJfIrODsw6JXr2DIqqLnn1FRn0bPTuDOlJo=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS3PR01MB8426.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(366004)(396003)(346002)(39860400002)(376002)(136003)(451199018)(6512007)(26005)(186003)(478600001)(2906002)(52116002)(8676002)(66946007)(83380400001)(66556008)(110136005)(316002)(6506007)(66476007)(966005)(2616005)(6486002)(41300700001)(8936002)(5660300002)(38100700002)(38350700002)(86362001)(36756003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?yxgEGw3T8U1SRIn1V5NKhiz4RFIfecHLrYwjolFEENuwHOEYKBbeHaj420vY?=
 =?us-ascii?Q?L2bqsUlTRLspOuNyNiL57WjnamMlOztI+7Ofdo0be0relue7b8PIfrOXBiRb?=
 =?us-ascii?Q?5A3rMxW3VfwD/mN3WBlGik4JB8n0XtyCDdG1PuwbKHrli9XfZQ9OE/c1htaX?=
 =?us-ascii?Q?jXJyzB0n6pKe9muP+VjTfK+q4g6CSZ3L/brQNasEJllM2nwwee/bSed4Q3Cj?=
 =?us-ascii?Q?kwrCoxncmd4NfgRqZHcKrVBhQeefmyxTGCmchE9z1ugj3Tp24ucBYNLZ8y90?=
 =?us-ascii?Q?+1zCNnNn+ORywJ4gFtCBU8LvKUpckNOCDiNxfoOU45hNWW7wNhmpre412rkC?=
 =?us-ascii?Q?joGhgG3iDq3DbVwRscbTJznIPZu5jVaNUnUIEZlXENW+IsiYlfWW04O85b4g?=
 =?us-ascii?Q?dqZ2QLQBbTVMVdpf8q2PiTAm8hK1KuuZD6Ljve/RsYCwJnPKiW9X8SswEUnM?=
 =?us-ascii?Q?z5SPq2H9QuyG+YhbgTIkSHB+u3XaKAso0aiOKRQ3GFyizYdT4eQG9XIO5V42?=
 =?us-ascii?Q?0iZlr5/kqjI7QOQ4VtwjdAPzD7kDZ+AA2hUWBm411HvMp1E3+fOP47MOiLxm?=
 =?us-ascii?Q?3sEp+cWIUecDECfkNj+Gx4UF49Dm2Nu4mwPft2kVzUhJ+7go/aPUR1ErHsKa?=
 =?us-ascii?Q?QrR7J9wsi9RQcYnzTSuz8PFxtzl7Wzlvo3N75RXi/QebYvo/kAvGldvYjC1a?=
 =?us-ascii?Q?h6gVP3lMsdUkbdHgAGN4m3C+4V4ktuAKSY/NObdgG/7p3ZzkshLPVbTttPVQ?=
 =?us-ascii?Q?lcvZCfyMAePMkgqLtuC6Phu7hiRhhB+QCmftC+gW57LKXEBmLcEIQJdaQmtY?=
 =?us-ascii?Q?IYHRATBQgXHh+F/eSE7lO8K8IX3IdMglQatj5TSlO0AfEd8BRy/6u2oPCNqq?=
 =?us-ascii?Q?wZJAY8Ap9TJlskT4ylI7peU8dlj4rSHgnYMXuOStlVzgraIsXyR30wzgiV2A?=
 =?us-ascii?Q?kp77UxpYRhfeOjFwJE3UCpge1xPH9ZUAOWg3k8j0caG6qjaC4+w2UlcUelX1?=
 =?us-ascii?Q?Vlhgc/iWMJF1hhQFxkFLkDCvDkuW9y/1fFnLLMC2loK5rbY3IfyILc0UqxzD?=
 =?us-ascii?Q?qy/39G9P/KlNzym//91jZYQpkfngUX0hvGE5ahWeFr4DA16we/tUObiTxy0R?=
 =?us-ascii?Q?JVZ8CDmY0OK8/0xw0jHMXsG+alszgu8IXePDAdAvkooSmNmqXpcJ67+QVm6K?=
 =?us-ascii?Q?GktxAhGmibocK88SNjUiTXQMoMpJReUFVwcGrZcdU+XiXJbLqV+1NJK+NrhA?=
 =?us-ascii?Q?MWzMub3l6Ohm5iPWIwXrDrSEKwl5q7S343cPSCIbsbMkTLjXAfEAvx0iCOls?=
 =?us-ascii?Q?F3tte1owR7CYUYin9QE9ALZMqwOERO9ws4vhn2q5YdSsj0z5C3SaOj4/LFOC?=
 =?us-ascii?Q?vEF7cJm5kyc/YNRJY42H8mipxcv68Zc+fRos4yFLQ4sHvUupsOK8VrzH8iwF?=
 =?us-ascii?Q?2Ab3GNk5PxyPXI13uYt3J47eKLw+rqpIi691/woFyR6gbre8u212TgDLcMkI?=
 =?us-ascii?Q?HIZmcvyVrdVu9Zh6CsJxMP/H5ZaSMUpcmxrUeSP9/AXJRVf86l2VAWr7l7pz?=
 =?us-ascii?Q?j+kI1utNlkWY0bQH2rtsWiGMpMCb8zWjdwe6WvGQxBKc8EfpvQUQO/65OnU3?=
 =?us-ascii?Q?yg+UlNVAqfa9CIXBMkREmUA=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b87ee2a-eac7-431d-1702-08db08a869e4
X-MS-Exchange-CrossTenant-AuthSource: OS3PR01MB8426.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2023 01:12:42.8559
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5pK8re+Bnz29wATTKxzrf9D/AI4pcgLiHVT/hwoeJg/Ws6jMEX/sXZGz/ZUEfAVcKBD0cG1ancY5VwtNGC5lPtPITweLXmz9PdgQHA2mAz9/jaRbSQWQ2hk2EXnf7Wha
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB11511
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,RCVD_IN_VALIDITY_RPBL,SPF_HELO_PASS,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

Current reg/reg-name is using "maxItems", but the convention is to
use "minItems".
And the core DT schemas already have a constraint that
requires reg-names to have the same number of elements as reg.

This patch switch to use "minItems" on reg, and remove it from
reg-names.

Link: https://lore.kernel.org/r/46974ae7-5f7f-8fc1-4ea8-fe77b58f5bfb@linaro.org
Reported-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
---
 Documentation/devicetree/bindings/sound/renesas,rsnd.yaml | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
index d106de00c6b2..223f4859780f 100644
--- a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
+++ b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
@@ -298,9 +298,8 @@ allOf:
     then:
       properties:
         reg:
-          maxItems: 3
+          minItems: 3
         reg-names:
-          maxItems: 3
           items:
             enum:
               - scu
@@ -309,9 +308,8 @@ allOf:
     else:
       properties:
         reg:
-          maxItems: 5
+          minItems: 5
         reg-names:
-          maxItems: 5
           items:
             enum:
               - scu
-- 
2.25.1

