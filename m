Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 79EAE68FB5E
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 00:43:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229843AbjBHXn4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Feb 2023 18:43:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229881AbjBHXnt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Feb 2023 18:43:49 -0500
Received: from APC01-SG2-obe.outbound.protection.outlook.com (mail-sgaapc01on2123.outbound.protection.outlook.com [40.107.215.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 546331C32D
        for <devicetree@vger.kernel.org>; Wed,  8 Feb 2023 15:43:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cI2uGOYBkKKuAFd6cewKPGmkZvoQ2nhQBuFf5F8CV8KEVjOD/YaEWwDdBct87rptzrJOq0QLbMqhkTQ+bPdqrtoWlSHjd0XF3rm378vcGfK9FJetL4VjIoI/LMnmT69q9FEbb0Edz7NmSwaIWvkNi0lg5deect1K0Rx8awXXV2J244iXA4eA0pMxfEKVMRtqdbtCJ45Fw5MzrAUGjoAd7QiFPrAHRjvc5otBJggXuOPlZVnts1IJW1KHgJtGiKW+YUheWeAzQZfwVgaYId0Zy4UrQ8qo5DYaNHbsvk3pNFxYVgTNuAJOc2xMccjv3l7/bALL86pfPhF1f0dvMg7/qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yfJgam8zSSh9+fNhIDmiwakUBsUnXPYcgaFdEcyT6kI=;
 b=nC3g8NcVEVYg4IEFn+8IXyCkcFVWzoUqAaJgegMIhNz6CUkDs+dOZFIMs9XOc24v7MSAjkeqaHFVkCH+YD4OqJA2sRYK2A5PgZ3XudFOwDVei+wshK/LDIF33zNcXi/2ZTRLO4mbPlOeZQIpmNTmzQfk+ddIwCfyf2sVUKDCdUWoac/OHyEMNP6sRnagss3CITY5b7EV5IKDRsANwGx7ZhJrd/4tEVeZHn40a99Uu01WFHoWluIA03HkYJ8tLtRqDAkuckjeQN6rmb6v9njV10BfKA427iCrtYwzYgmE0Hr449lYsXNs50DxFD54IMW85qNX+OIHo215LwlZgLiiiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yfJgam8zSSh9+fNhIDmiwakUBsUnXPYcgaFdEcyT6kI=;
 b=h08hwjROXjpHb30kBNcihvJUS/QxFcwRfyQ2msnOIUBb8IvPjnDpGjJ7sYrrFOaCvxEjYUez38BuigjxceBbm3KCi2yK/wpFB1lBSuprLO+K+6v4hvYoLWjNWbusBApwA05BPQz4O/dt48fbIxwRz4WVoxdshNvBWY+FRGZCpMQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com (2603:1096:604:194::10)
 by OSZPR01MB8451.jpnprd01.prod.outlook.com (2603:1096:604:16e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.17; Wed, 8 Feb
 2023 23:43:18 +0000
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::4b75:8d8e:d89a:7860]) by OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::4b75:8d8e:d89a:7860%9]) with mapi id 15.20.6086.018; Wed, 8 Feb 2023
 23:43:18 +0000
Message-ID: <871qmzd8q2.wl-kuninori.morimoto.gx@renesas.com>
From:   Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Herring <robh@kernel.org>, Mark Brown <broonie@kernel.org>,
        Linux-DT <devicetree@vger.kernel.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH 1/2] ASoC: dt-bindings: renesas,rsnd.yaml: tidyup reg/reg-name
In-Reply-To: <a743cc0d-7a6d-d5e2-2c7b-53baaeb87ba0@linaro.org>
References: <87r0v1t02h.wl-kuninori.morimoto.gx@renesas.com>
        <87pmalt01x.wl-kuninori.morimoto.gx@renesas.com>
        <a743cc0d-7a6d-d5e2-2c7b-53baaeb87ba0@linaro.org>
User-Agent: Wanderlust/2.15.9 Emacs/26.3 Mule/6.0
Content-Type: text/plain; charset=US-ASCII
Date:   Wed, 8 Feb 2023 23:43:17 +0000
X-ClientProxiedBy: TYWPR01CA0036.jpnprd01.prod.outlook.com
 (2603:1096:400:aa::23) To OS3PR01MB8426.jpnprd01.prod.outlook.com
 (2603:1096:604:194::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS3PR01MB8426:EE_|OSZPR01MB8451:EE_
X-MS-Office365-Filtering-Correlation-Id: 42e4faec-e493-4db4-74c3-08db0a2e4109
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hT+p/QV1aaSzOBvk2yhk8Kh3SWL/eZeyswig0/T49yo5TBYh6JP00dn8iGZlAwu+BNBRIKcH2s0+hHD1jwIxcvJNZrdaVTv+DIxQytxVxKNhg7zCWDuT3rozSH4htm/7uOwJbe+aBgFkZ5NrH7YQfWxZiseYR5x0uoy/fE3CtIWYjhBSJIYsCWzmNcvw0wmJB2XJ0qMZTkki8O7+G+Pj2zKpPxYv68zoOsgLMJtqY/MaKMvs6uIUEtVjzBNkGBYU7aB4MYZa+Yz0sgiNVWB55orFDHeoF30DEfP9mcWhDBXaZ6iuJZRk63VYozx+If+J82pdiWyDBxswFBUwIKAkeHP7uG3GmCE6DsyeFG5/xzZ865d3C9x2LaEuxiCTGF8QLGC8cRi0k1pJJE/UsNST/vKFWewgX8XiFh9YyPjFIOOsu/g+2+r5Y4wZKQWllggjNDylzFHaZelo0gO+8/4eyXwX+zpbW31BkC1veRTnhP5vrS+9bAf9UxmXyG48rouk83th3BlVvudCUeey3uLV++1Fp+NSZHixe43NDY79hoYZzZ3ew3v9SPql8JerPu6v6HK7qXQfM+uYvqtMEz3vxPorSgOqli0q8QZDBHQLmkipthlRCcreE9yjoVkO8XF/cpWIuvYTif8MybDdGGpmCIo12TVIotWNDlNAHBEIbZf0C8Ewwjb3uh+RWKGerbJ5WrkACkDv3sS71Tes+dmI8Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS3PR01MB8426.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39860400002)(136003)(376002)(346002)(366004)(396003)(451199018)(6506007)(8936002)(316002)(6512007)(26005)(186003)(2906002)(52116002)(5660300002)(54906003)(36756003)(4744005)(86362001)(6486002)(478600001)(66476007)(66556008)(66946007)(41300700001)(6916009)(4326008)(8676002)(38100700002)(38350700002)(2616005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?oiKIP+FtU3N3AXUXk9y6XZey3pQiEo5JIzpLhAc2xcB55kborxCodH+RA9oy?=
 =?us-ascii?Q?qPLW2rHB2Ql+GIM0R3kXmLU93Qb4rTwrjwxqWynTRHHdSZDgrJNtf+m/Loog?=
 =?us-ascii?Q?iCTKZc9n1kR6ZXfaH2cieKg9fF1GTPyg8MpGTt29DnIQCQJ/iWDQcecyXt5Z?=
 =?us-ascii?Q?GThpYJd52d7SJ5bHo1Y2EorXjM06tSt7/Z52gJcnTbRUwQQBDBk6wjoQTOen?=
 =?us-ascii?Q?uhzAAmW8lwfpKKENUqBQLN/D4vEqFbS0f7LTUOya83YiFfYS0OjBWHVRxvf4?=
 =?us-ascii?Q?pq5VPqQQY4Bd1E7NuvsMawpaKAk8ae3yjTaUSTE/tRA8iJOJ5G5o2TmH9yMA?=
 =?us-ascii?Q?4+MM2VT6JWDUrNA+jTuTDtfXnjsLSPQNErQbtyRzEuBNq3ciQqX+0JUbTsMf?=
 =?us-ascii?Q?352qa+j7/OVi9682L982MXCLP7FnMNq9CRHcsjl4N9RbvuNB7gNbIloB5zvI?=
 =?us-ascii?Q?f2Z6+QqehlAmEC4HpK2KXi6aIyPs5jE6kd8JQK1goFOpCfRyGdD3/u7IW7XS?=
 =?us-ascii?Q?r5FbfR7OvdF0JAOUDsrX4s9JE86di4O1M0ufsjta+gs9hwFw630hBOr2eHhK?=
 =?us-ascii?Q?3VlaR2cMddj9ymRBjtQ4T6xFAJCIgRfUnv/rdTG4ZurYvE3QwsN+8APfoIW9?=
 =?us-ascii?Q?Ov9KTUSZBaNz3py68R5WWnFocZDq61OV+2I/9M2rimAfE3ZSwLtZRuoPUQtz?=
 =?us-ascii?Q?P3SZnXWcUoF+6WLya7tleVtqgM6ikIVfczwSqTCy8ZyyDj6t5GTtMjZUsuzP?=
 =?us-ascii?Q?1KHRU9Yuit9zS4YG6dzJPYdR1LVxeW0Kc2B1nlQD/dDLFYVFWBhyuEPLoYsg?=
 =?us-ascii?Q?k1Yz8N34x6prhLk66H7gjRFJeCxuFd3rBrtr59/SatXdxAIy3FqP+z6akz52?=
 =?us-ascii?Q?4Auh3DhwAlXElMSGbkL+pJT7Y8Us9Ko/JeXdre88ElkHnIg1QrZXp3lIZ+BD?=
 =?us-ascii?Q?tv853LugGgTJ5PDMtQeabV4P2F+NwlIT1I2rsH0GLNYFUS/WPLIqXo3UN/aL?=
 =?us-ascii?Q?ut9+Xjb/vjNsbsq3Rcr6hxDbT9Ucpy2p/hoSyXwWPL6a/CF0ZvjO2Gt1Lvp4?=
 =?us-ascii?Q?JY/dIVznVNgGRQlhWE/2cnDg73qxE+roAi7TwuRTjRUct5Or8xn+bEoUEiGX?=
 =?us-ascii?Q?CqbjGQSPbxv35RNsG8uXXie+YPKr4bitl7Dy7H3N8XNN1PRHyEAtRnaE25Dr?=
 =?us-ascii?Q?MRSiaOXl7gNSGyifhk7rqsAp9HREm1/LyW6fhnfff85JFXWibFWNV5v/GwWS?=
 =?us-ascii?Q?rWDjAVRUNXQWQ6XHkTIJqCZ8ZAYiGWGTiJw+Xf9NgsPYYVp7QIZ26zM4MpjK?=
 =?us-ascii?Q?FIGml2W+5GA2sIf1ETwWiiywOikqSuA0FdINoLHOWcjM/Jp6nyQSks6QLFaX?=
 =?us-ascii?Q?YfQ3+G9AVgCAJPVPv3m/XI9z2h38uAkWRpQQRHBZ0bv8aJRvEF53uY6ZEqJI?=
 =?us-ascii?Q?Q5x0PZl3FY++/JPnBKfAClrt3e8qp1ixnTp9/DuD9uE/OzCVwODDAZOS71wh?=
 =?us-ascii?Q?4/mViNfPdb/9JKux/7/5gCxCoG9j2hmew7yYc9Lv5p6H7T0XYN915of0+pBj?=
 =?us-ascii?Q?jKwB1NktowaXNQ588Rfc2zKsZX1Jo45ibZdQB6l8ocHq0iVcsL/Y6dA6wTbA?=
 =?us-ascii?Q?K4B0Wu11RBLjVedNzJx7XGA=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 42e4faec-e493-4db4-74c3-08db0a2e4109
X-MS-Exchange-CrossTenant-AuthSource: OS3PR01MB8426.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Feb 2023 23:43:18.0843
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rvjVThhlWoiD2Z8Ce/TdHPJHRo3EDUyQ5HzPm5MpV72Kr5I5xTdcCAWbAhBPRcKdxDUNZ15GOimAj28UNNCpXgEBdYVqYMUj9OABeM6uS6HATl66FAGm67Cpz+C3Y/cD
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSZPR01MB8451
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Hi Krzysztof

Thank you for your feedback

> All your commits still have this blank line before.
> 
> > From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

OK, I will fix it.
But, I think top blank line will be ignored when applying the patch ?

Thank you for your help !!

Best regards
---
Kuninori Morimoto
