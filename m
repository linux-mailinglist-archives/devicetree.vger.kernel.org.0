Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A23E13779BA
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 03:21:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230080AbhEJBWu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 9 May 2021 21:22:50 -0400
Received: from mail-eopbgr50069.outbound.protection.outlook.com ([40.107.5.69]:31923
        "EHLO EUR03-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S229941AbhEJBWt (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 9 May 2021 21:22:49 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lwhTuI0k7BqTpDu3RGuGp5EIp8ZYjlIhl7PigqG8BN/jXU2X1oriFKbSWZNE0G8ikU/i+HytqfAJwxwGkJeA1TjJdhH0KmlbBPUxihjhbCqfdUzhCBvbXLYCWmO1Ool/3A7YzFvDgTXrUIGBDF07fY2XjjstONayWpqXxL/avTmZyCMg0Vm8pLAsYJcVKEaWLdDThsHDCg+yVP+h6SOXOOlXm2Zt+nH8dJAbJcu1gb2J+7NxlkFcS6TC5XhQHtCSxr8Fqw3OVWuLFgCYWEw3bE/CtIuYcfmIRrjZYYrZ4PosyViAdlyC6P0RRYjmR2b8oruYrHCt9jqJ/6ssHPqMKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+JwGZjhoyLxUkGZ5W8SlioCzl8bVqsyn7MJmqtd2Lrs=;
 b=Y46KMiwMEsf0t0HMOj4oh7gFIitB6dizJ731wOA2+bFPk65OyN0tKzZ4gp1H4TShjXv64cMZGtIES+kfO0rUnwoZ+FSsOixrZTwkiAdrVNf+93BTvsiCOtkJB4iWhC2KgowEZezvO5IHZHdoVDeXzJPQGE2GURXY5gm9HrLJvULk7cD6Pml1TFIYoZ3z9RjivGBEJRWX4J05JU4ATpFCbVTf+Qvhv14Zl+edgRSlcXygvCM3o5zwLjzeemHXZhAHHRowMU5l14dBIgYLxkNp9+7rzQJbKc4ftxH+e3BWk5HtYedasWw94BU01KtRgqyH/xypc3WxBjPRDZidldFSLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+JwGZjhoyLxUkGZ5W8SlioCzl8bVqsyn7MJmqtd2Lrs=;
 b=JxnlB+nwyuO+8gV1fCmMl8ET7d1YhwhT9jUQyLGvWJGelx+YHoqXEPJDBC9vOgDsEzqvXrUBxjZh4WUix15TlM062NX8q3Q3GI6pvoTrFPK8+z17k3o97pFdSQOPxpGj/NFZNgnY949ia8+SDW/7CWhUofgFYNGq2jnyXP2A/Pw=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none
 header.from=oss.nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DBBPR04MB7593.eurprd04.prod.outlook.com (2603:10a6:10:20c::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4108.25; Mon, 10 May
 2021 01:21:41 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::45b9:c993:87ec:9a64]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::45b9:c993:87ec:9a64%8]) with mapi id 15.20.4108.031; Mon, 10 May 2021
 01:21:41 +0000
Subject: Re: [PATCH 3/4] mailbox: imx: add xSR/xCR register array
To:     kernel test robot <lkp@intel.com>, jassisinghbrar@gmail.com,
        robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
        o.rempel@pengutronix.de
Cc:     kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
        kernel@pengutronix.de, festevam@gmail.com, aisheng.dong@nxp.com,
        linux-imx@nxp.com, devicetree@vger.kernel.org
References: <20210507101926.25631-4-peng.fan@oss.nxp.com>
 <202105080008.OslMjdrl-lkp@intel.com>
From:   "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Message-ID: <a56ec818-9352-b88f-0fd4-756bb46b642b@oss.nxp.com>
Date:   Mon, 10 May 2021 09:21:30 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <202105080008.OslMjdrl-lkp@intel.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: SG2PR02CA0038.apcprd02.prod.outlook.com
 (2603:1096:3:18::26) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.193.102.190] (119.31.174.71) by SG2PR02CA0038.apcprd02.prod.outlook.com (2603:1096:3:18::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4108.25 via Frontend Transport; Mon, 10 May 2021 01:21:36 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 86497b2b-dc8f-4d5d-3f1a-08d91351f6fe
X-MS-TrafficTypeDiagnostic: DBBPR04MB7593:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DBBPR04MB759398EE7E33739404142771C9549@DBBPR04MB7593.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9cnU9OqKhI9HXZq6O2zhpTLb7WjnZeHVz1YcMnpqYf5sRTuYR5w8kPayPv6c77JGnFchBzZhkP+hO5I7LNnw4YX54/fSybzLvKK6GMh0ABqAZa3o/u/HQCfu0oVNq/EGCGjHe6jyPBgLDQAmNX8szprZXrHneZvD3gjtsCjDCZxSAnnTCb0ra9heH/Jk3blR6PqHdv8Q1DH6STIomaF4UqUq9Ku9HckVLvZmQ/EFblNmFItZfFPdRP+Wpx5NjEA5hDUP6tDdKxGgt0sf1hdCioz/gaQGXA7zdqtx6kcDeBqK/+B2UYpNSX1El3G067lYzpkthkGz4F5lCGPXNmdJ5pF2k3QSQ2u+RvP7IzGAeaToWrDj5QpkWAMsjzzcaAGm4xE5lAjeNEY116qb47kOWerY4meqsh8TCfHHg8KyVza8fcaRl3gIpduOF9Z/403RJ0U6dHtLzQ9UynUsTHfH+PhbTNAU6h6gh4Kc5Qs2NlV/C2FYt2ejhlD21D/Murr+e9LxGsnzZUwnF85uhNG/mox7DuL27CI9mmEQfPzf5HtPc7l4sGYMKmDoIO5GS4Y2m9Kl3fxoFKjmDfXtqkjiG6rJEwAyucGuAX74thVXm0WrVbS3QZeXDQSDhZWm9a1oNbm1UITMsYbytCUEHeM+0Le7Ewr3pjE3ykKrhTF98t9QOhCy2EFkFvMBIxvZbRwow3GLxqqLEkzjGpNZo7TiDYhRsccTfqb/DTfrohzSXqvgDm/BzGZzApb01KCfJ8s3Oned0qy10ajeC07C6uJOjBHh7313r1KWcojmbgw5FHQN+fVGG6oDODVnSElDjxFAZU/O3iaU0kB2VMURWgsJNA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB6PR0402MB2760.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(366004)(346002)(396003)(376002)(136003)(86362001)(52116002)(53546011)(31686004)(38350700002)(38100700002)(6666004)(966005)(8676002)(4326008)(6486002)(31696002)(26005)(8936002)(2906002)(7416002)(478600001)(30864003)(5660300002)(956004)(15650500001)(2616005)(66476007)(66946007)(66556008)(16576012)(186003)(16526019)(83380400001)(316002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?Windows-1252?Q?i5OBVOl44X4xP0xAnC1T8lOqVnCcnc8GQOdAm/hPeu0451zVBHvh6NO8?=
 =?Windows-1252?Q?6z9XF2XopSreV3MPcdSuLB6WzTCy05bM33vFqbpQtoh2eYF3mq2+QGIh?=
 =?Windows-1252?Q?LLuB3pjuxo5rE5cO09uD+nnCxrYvMnLjAt9iXezKk7V7po31P0tb7dnT?=
 =?Windows-1252?Q?RpE5qHGrYx1xA0AFsV3PeTNgw0hezi6Z0RDWgZURkMqXtqc5BXkizdmb?=
 =?Windows-1252?Q?GkJaDgRfWy4HHNxesDjVwpqMy4FKZZ4Bk9iGQLgSv9Egl4FCHoFdFi9r?=
 =?Windows-1252?Q?McwiM/Bvt2cbYWkAB3g8ca9ku8vgXOgvRMHoTPCfhVds8bdc6BIXBNJc?=
 =?Windows-1252?Q?nMjfgVD7e/7WW3IqgO08AGgxctcRSuc30wgmgwntvdm7U4EAPhoaLTLn?=
 =?Windows-1252?Q?jBr2djuh5aOCm4w2EGKcwOUfZeNuQpZ/QzkMBJK8rfrKHGQ35XeNpRBh?=
 =?Windows-1252?Q?beWaOJ/d1RmXNIHJASp6+8h/w32lmbD46L4ZCpgR8ZqWfEpN/KvG1dMh?=
 =?Windows-1252?Q?hPsYdiX6bLoHgCashdy71A75NBiKIwBTeRE6/iBM56B8T126RB4kjxH7?=
 =?Windows-1252?Q?u7NHUb1nlL99e92e2WLBfZCAOVrMUGw1UFpDvnzcaj87l7h/4abRnhMY?=
 =?Windows-1252?Q?6ITdfprCYBJqGj4ABxtQxsaa1zgDMP3NXROZ3BZjGlv2p95ttba5qJPQ?=
 =?Windows-1252?Q?Zc+xG+S1a9WB5G00Iz1WL81hXh54Sk7UqvWyhvdt91e3EPI60esvTzyD?=
 =?Windows-1252?Q?sRUeGGbyV4uQ/hKQGXpQG5yKo9yr+ao8m5XOSvkav6mQdIsayHjrFj9N?=
 =?Windows-1252?Q?23B6SOpoKt+DV1bKXpmyahx3ubri523qvUvQBH92LYPaIUNZFH5veHmy?=
 =?Windows-1252?Q?JN+yW6HareNmZHc6WGHzwcuHQUIe4Ay5LpblyFq96tOTqn7paEhFzEjI?=
 =?Windows-1252?Q?OAqWDx/SKOwom6xesLBbovzGg1nFyhrid8ZCTTftaqGwuEmeNmO4e6+V?=
 =?Windows-1252?Q?6gXT1ppGch3z+lGx4eAWnqt+9ITCWoLM3dyCA54FSkgNpzO989WP+uY9?=
 =?Windows-1252?Q?1gVi+yfrBve04oBumyk+GCD4aYyxJh6BUVNLLb1CYcLAozRCqAePBJPG?=
 =?Windows-1252?Q?r/jCd3LsyrMxUc1k9YkRNtT8H5OXgGiuCriP8kQa9pNKpDeYAWz8Sbx6?=
 =?Windows-1252?Q?NX26JPIIpMMpCs7Gf6XBXACTYffJFbcFAJNyXBs+UVeHsQI9nTbKfy2e?=
 =?Windows-1252?Q?A8ym56Y89tGfq3wEL1qvk0xxj3cQzqjC2Be2oIHxNiebETX6+/+ytnS1?=
 =?Windows-1252?Q?H8Qj6RByhW7t5Iage6+ci/xtRWFCMJVFxQiufag0pCVBtGiJKfMgSgfK?=
 =?Windows-1252?Q?Y6MqpDTR19giVML/yVCSnq8hg+LdW1naYqmdGxQFyhaLVhIb7pt0znLc?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 86497b2b-dc8f-4d5d-3f1a-08d91351f6fe
X-MS-Exchange-CrossTenant-AuthSource: DB6PR0402MB2760.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2021 01:21:40.9490
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TsoSVmkytnYx0/EPoEGb8xC/yVyu3paxISxRkg1XIbEVTsM3tinkmcAUkLFUJpC/BwMysKUVbQPFViITLmqDvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7593
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 2021/5/8 0:08, kernel test robot wrote:
> Hi "Peng,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on shawnguo/for-next]
> [also build test WARNING on robh/for-next v5.12 next-20210507]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Peng-Fan-OSS/mailbox-imx-add-i-MX8ULP-MU-support/20210507-174948
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git for-next
> config: powerpc-randconfig-r023-20210507 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a3a8a1a15b524d91b5308db68e9d293b34cd88dd)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install powerpc cross compiling tool for clang build
>          # apt-get install binutils-powerpc-linux-gnu
>          # https://github.com/0day-ci/linux/commit/356d43252930991aad1353a96361380a7f17f98c
>          git remote add linux-review https://github.com/0day-ci/linux
>          git fetch --no-tags linux-review Peng-Fan-OSS/mailbox-imx-add-i-MX8ULP-MU-support/20210507-174948
>          git checkout 356d43252930991aad1353a96361380a7f17f98c
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=powerpc
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>     __do_insb
>     ^
>     arch/powerpc/include/asm/io.h:556:56: note: expanded from macro '__do_insb'
>     #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
>                                            ~~~~~~~~~~~~~~~~~~~~~^
>     In file included from drivers/mailbox/imx-mailbox.c:8:
>     In file included from include/linux/interrupt.h:11:
>     In file included from include/linux/hardirq.h:10:
>     In file included from arch/powerpc/include/asm/hardirq.h:6:
>     In file included from include/linux/irq.h:20:
>     In file included from include/linux/io.h:13:
>     In file included from arch/powerpc/include/asm/io.h:619:
>     arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>     DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                     __do_##name al;

This should be common powerpc issue?

Regards,
Peng.

                                 \
>                     ^~~~~~~~~~~~~~
>     <scratch space>:186:1: note: expanded from here
>     __do_insw
>     ^
>     arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
>     #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
>                                            ~~~~~~~~~~~~~~~~~~~~~^
>     In file included from drivers/mailbox/imx-mailbox.c:8:
>     In file included from include/linux/interrupt.h:11:
>     In file included from include/linux/hardirq.h:10:
>     In file included from arch/powerpc/include/asm/hardirq.h:6:
>     In file included from include/linux/irq.h:20:
>     In file included from include/linux/io.h:13:
>     In file included from arch/powerpc/include/asm/io.h:619:
>     arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>     DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                     __do_##name al;                                 \
>                     ^~~~~~~~~~~~~~
>     <scratch space>:188:1: note: expanded from here
>     __do_insl
>     ^
>     arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
>     #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
>                                            ~~~~~~~~~~~~~~~~~~~~~^
>     In file included from drivers/mailbox/imx-mailbox.c:8:
>     In file included from include/linux/interrupt.h:11:
>     In file included from include/linux/hardirq.h:10:
>     In file included from arch/powerpc/include/asm/hardirq.h:6:
>     In file included from include/linux/irq.h:20:
>     In file included from include/linux/io.h:13:
>     In file included from arch/powerpc/include/asm/io.h:619:
>     arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>     DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                     __do_##name al;                                 \
>                     ^~~~~~~~~~~~~~
>     <scratch space>:190:1: note: expanded from here
>     __do_outsb
>     ^
>     arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
>     #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>                                             ~~~~~~~~~~~~~~~~~~~~~^
>     In file included from drivers/mailbox/imx-mailbox.c:8:
>     In file included from include/linux/interrupt.h:11:
>     In file included from include/linux/hardirq.h:10:
>     In file included from arch/powerpc/include/asm/hardirq.h:6:
>     In file included from include/linux/irq.h:20:
>     In file included from include/linux/io.h:13:
>     In file included from arch/powerpc/include/asm/io.h:619:
>     arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>     DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                     __do_##name al;                                 \
>                     ^~~~~~~~~~~~~~
>     <scratch space>:192:1: note: expanded from here
>     __do_outsw
>     ^
>     arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
>     #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>                                             ~~~~~~~~~~~~~~~~~~~~~^
>     In file included from drivers/mailbox/imx-mailbox.c:8:
>     In file included from include/linux/interrupt.h:11:
>     In file included from include/linux/hardirq.h:10:
>     In file included from arch/powerpc/include/asm/hardirq.h:6:
>     In file included from include/linux/irq.h:20:
>     In file included from include/linux/io.h:13:
>     In file included from arch/powerpc/include/asm/io.h:619:
>     arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>     DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                     __do_##name al;                                 \
>                     ^~~~~~~~~~~~~~
>     <scratch space>:194:1: note: expanded from here
>     __do_outsl
>     ^
>     arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
>     #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>                                             ~~~~~~~~~~~~~~~~~~~~~^
>>> drivers/mailbox/imx-mailbox.c:278:2: warning: variable 'val' is used uninitialized whenever switch default is taken [-Wsometimes-uninitialized]
>             default:
>             ^~~~~~~
>     drivers/mailbox/imx-mailbox.c:282:7: note: uninitialized use occurs here
>             if (!val)
>                  ^~~
>     drivers/mailbox/imx-mailbox.c:257:9: note: initialize the variable 'val' to silence this warning
>             u32 val, ctrl;
>                    ^
>                     = 0
>     drivers/mailbox/imx-mailbox.c:608:2: error: member reference base type 'int' is not a structure or union
>             .xRR    = 0x10
>             ^~~~
>     drivers/mailbox/imx-mailbox.c:609:2: error: member reference base type 'int' is not a structure or union
>             .xSR    = {0x20, 0x20, 0x20, 0x20},
>             ^~~~
>     drivers/mailbox/imx-mailbox.c:609:9: error: expected expression
>             .xSR    = {0x20, 0x20, 0x20, 0x20},
>                       ^
>     13 warnings and 3 errors generated.
> 
> 
> vim +/val +278 drivers/mailbox/imx-mailbox.c
> 
> 2bb7005696e224 Oleksij Rempel 2018-08-03  251
> 2bb7005696e224 Oleksij Rempel 2018-08-03  252  static irqreturn_t imx_mu_isr(int irq, void *p)
> 2bb7005696e224 Oleksij Rempel 2018-08-03  253  {
> 2bb7005696e224 Oleksij Rempel 2018-08-03  254  	struct mbox_chan *chan = p;
> 2bb7005696e224 Oleksij Rempel 2018-08-03  255  	struct imx_mu_priv *priv = to_imx_mu_priv(chan->mbox);
> 2bb7005696e224 Oleksij Rempel 2018-08-03  256  	struct imx_mu_con_priv *cp = chan->con_priv;
> 63b383575c388f Peng Fan       2020-03-19  257  	u32 val, ctrl;
> 2bb7005696e224 Oleksij Rempel 2018-08-03  258
> 2bb7005696e224 Oleksij Rempel 2018-08-03  259  	switch (cp->type) {
> 2bb7005696e224 Oleksij Rempel 2018-08-03  260  	case IMX_MU_TYPE_TX:
> 356d4325293099 Peng Fan       2021-05-07  261  		ctrl = imx_mu_read(priv, priv->dcfg->xCR[IMX_MU_TCR]);
> 356d4325293099 Peng Fan       2021-05-07  262  		val = imx_mu_read(priv, priv->dcfg->xSR[IMX_MU_TSR]);
> 2bb7005696e224 Oleksij Rempel 2018-08-03  263  		val &= IMX_MU_xSR_TEn(cp->idx) &
> 2bb7005696e224 Oleksij Rempel 2018-08-03  264  			(ctrl & IMX_MU_xCR_TIEn(cp->idx));
> 2bb7005696e224 Oleksij Rempel 2018-08-03  265  		break;
> 2bb7005696e224 Oleksij Rempel 2018-08-03  266  	case IMX_MU_TYPE_RX:
> 356d4325293099 Peng Fan       2021-05-07  267  		ctrl = imx_mu_read(priv, priv->dcfg->xCR[IMX_MU_RCR]);
> 356d4325293099 Peng Fan       2021-05-07  268  		val = imx_mu_read(priv, priv->dcfg->xSR[IMX_MU_RSR]);
> 2bb7005696e224 Oleksij Rempel 2018-08-03  269  		val &= IMX_MU_xSR_RFn(cp->idx) &
> 2bb7005696e224 Oleksij Rempel 2018-08-03  270  			(ctrl & IMX_MU_xCR_RIEn(cp->idx));
> 2bb7005696e224 Oleksij Rempel 2018-08-03  271  		break;
> 2bb7005696e224 Oleksij Rempel 2018-08-03  272  	case IMX_MU_TYPE_RXDB:
> 356d4325293099 Peng Fan       2021-05-07  273  		ctrl = imx_mu_read(priv, priv->dcfg->xCR[IMX_MU_GCR]);
> 356d4325293099 Peng Fan       2021-05-07  274  		val = imx_mu_read(priv, priv->dcfg->xSR[IMX_MU_GSR]);
> 2bb7005696e224 Oleksij Rempel 2018-08-03  275  		val &= IMX_MU_xSR_GIPn(cp->idx) &
> 2bb7005696e224 Oleksij Rempel 2018-08-03  276  			(ctrl & IMX_MU_xCR_GIEn(cp->idx));
> 2bb7005696e224 Oleksij Rempel 2018-08-03  277  		break;
> 2bb7005696e224 Oleksij Rempel 2018-08-03 @278  	default:
> 2bb7005696e224 Oleksij Rempel 2018-08-03  279  		break;
> 2bb7005696e224 Oleksij Rempel 2018-08-03  280  	}
> 2bb7005696e224 Oleksij Rempel 2018-08-03  281
> 2bb7005696e224 Oleksij Rempel 2018-08-03  282  	if (!val)
> 2bb7005696e224 Oleksij Rempel 2018-08-03  283  		return IRQ_NONE;
> 2bb7005696e224 Oleksij Rempel 2018-08-03  284
> 2bb7005696e224 Oleksij Rempel 2018-08-03  285  	if (val == IMX_MU_xSR_TEn(cp->idx)) {
> 356d4325293099 Peng Fan       2021-05-07  286  		imx_mu_xcr_rmw(priv, IMX_MU_TCR, 0, IMX_MU_xCR_TIEn(cp->idx));
> 2bb7005696e224 Oleksij Rempel 2018-08-03  287  		mbox_chan_txdone(chan, 0);
> 2bb7005696e224 Oleksij Rempel 2018-08-03  288  	} else if (val == IMX_MU_xSR_RFn(cp->idx)) {
> 63b383575c388f Peng Fan       2020-03-19  289  		priv->dcfg->rx(priv, cp);
> 2bb7005696e224 Oleksij Rempel 2018-08-03  290  	} else if (val == IMX_MU_xSR_GIPn(cp->idx)) {
> 356d4325293099 Peng Fan       2021-05-07  291  		imx_mu_write(priv, IMX_MU_xSR_GIPn(cp->idx), priv->dcfg->xSR[IMX_MU_GSR]);
> 2bb7005696e224 Oleksij Rempel 2018-08-03  292  		mbox_chan_received_data(chan, NULL);
> 2bb7005696e224 Oleksij Rempel 2018-08-03  293  	} else {
> 2bb7005696e224 Oleksij Rempel 2018-08-03  294  		dev_warn_ratelimited(priv->dev, "Not handled interrupt\n");
> 2bb7005696e224 Oleksij Rempel 2018-08-03  295  		return IRQ_NONE;
> 2bb7005696e224 Oleksij Rempel 2018-08-03  296  	}
> 2bb7005696e224 Oleksij Rempel 2018-08-03  297
> 2bb7005696e224 Oleksij Rempel 2018-08-03  298  	return IRQ_HANDLED;
> 2bb7005696e224 Oleksij Rempel 2018-08-03  299  }
> 2bb7005696e224 Oleksij Rempel 2018-08-03  300
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 
