Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E6B46D9424
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 12:32:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237173AbjDFKcA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 06:32:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237091AbjDFKb6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 06:31:58 -0400
Received: from EUR02-AM0-obe.outbound.protection.outlook.com (mail-am0eur02on2068.outbound.protection.outlook.com [40.107.247.68])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A16F6EAB
        for <devicetree@vger.kernel.org>; Thu,  6 Apr 2023 03:31:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iWuuob5O/EWWJ+0HBojgWi+jtSlLGGffkspCq/ZYt8aOkaoZkuc1SRWG1gfyANWtGOOZdinq8uxB1D3dUTqQysTv9otTGsZsBUULtePHeTZGG8mMxRHgU5L8xDlBKpcpz+hMZAzUXf3ozxpyr6fHQjg+/g4kbR1HcFINbhgITAMV7NT4AfUN+yOA0mndaDrHpLjUPFj4Qao0YzkweUxsekyT1VdM5hHIrte4XgwgEdvnu5YFC9NslPyA1riwuiTnV9iFW68WWTOzbZ7w9AuiZDTk0/3qG3aQdvrh31/BDbrD24hgWHpYCCN+HsDjitP6aBEEl0hb5UqT6G50X9E9qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JNp3Cymul+t1GZo+P8caCHus2jKC6xJHYn7ltHaCQ84=;
 b=U1g4SNE/nrrrG0xy0bFU3Ofo17WBZFOMMbgn43jmDZ22ZAeMu8yJX6gfBK2t3SyCG3wxWlzx7VAcjdiWuY84igf+6U1mTYk8G72JmD6bwVTBNwUR3m32cNz/PORLaM1VJcFwb0XeANrbzYYT8Q/b1BtyhgUwe2H71WJZaqUfIBke8Ph+ylnw+6KRwjU9vQGADaUrj3djaetwtGZAJlmeLIFk0iZy0BdSuyNCwSehkFmlK/yOXYgYNMzK/ZGdfZffleUlzcu4yibZ3BeaC9r0mSvKV53ypOh2YN1/LF8EonU/UW6EsgU6VOsexiAIq8yp41ypNR0Rkh8Xv5DqlXNbgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=chargebyte.com; dmarc=pass action=none
 header.from=chargebyte.com; dkim=pass header.d=chargebyte.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c4c.onmicrosoft.com;
 s=selector2-c4c-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JNp3Cymul+t1GZo+P8caCHus2jKC6xJHYn7ltHaCQ84=;
 b=GA5u1QuKowyj86go5nxK0hw32wwNNH8OXWmL0MFFP3FEIyQy5LIufMBRCgBTEJeBKl3k2ZIXcX7mHxjsPs74G1KkPDSadL9UKwRX94wWXODDmSsdGlhSKhcag3gz/04G1srFakixk5DsyRn3GVturHJ1a4U7RYG2LybZMh2m1Ps=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=chargebyte.com;
Received: from DB9PR10MB5211.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:33f::5)
 by AS8PR10MB6363.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:56f::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.28; Thu, 6 Apr
 2023 10:31:53 +0000
Received: from DB9PR10MB5211.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::bb8d:725e:2ad6:ade7]) by DB9PR10MB5211.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::bb8d:725e:2ad6:ade7%9]) with mapi id 15.20.6277.026; Thu, 6 Apr 2023
 10:31:53 +0000
From:   Stefan Wahren <stefan.wahren@chargebyte.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Evgeniy Polyakov <zbr@ioremap.net>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        stefan.wahren@i2se.com,
        Stefan Wahren <stefan.wahren@chargebyte.com>
Subject: [PATCH V6 0/2] ARM: dts: imx6ull: Add chargebyte Tarragon support
Date:   Thu,  6 Apr 2023 12:31:35 +0200
Message-Id: <20230406103137.6092-1-stefan.wahren@chargebyte.com>
X-Mailer: git-send-email 2.17.1
Content-Type: text/plain
X-ClientProxiedBy: FR2P281CA0107.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9c::10) To DB9PR10MB5211.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:10:33f::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB9PR10MB5211:EE_|AS8PR10MB6363:EE_
X-MS-Office365-Filtering-Correlation-Id: 74ede175-9221-4162-ffe1-08db368a2346
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: B8c2ooRkLlecQD9+cpeifcsZPs1iZgTLrkjkuP5IDcwbb9OsJScxKhLerOAHYMDdFlr3N/gLlTeS8cm27h7JO1Gem6tLc/f3tGjm+GZtjuh5p2dtgruHwpdkh8isyywXoGgGbyhRfDhIx8vtuxNsKl1mxKetBmPMwguUkQBYDBjt9fuVfDdktw2bT/36lXMVerH4ZRE9FNKyASmU4n8ehL2kKUZVhxPOIx/Mv3sEcKgy+0WcgUZkCFXSbhCrPxnQhUYBV7ap/jLaK31hefmCAPq9JSSRtTdc66AjG3T1ekDPbJAwPznul62rWPps763xFvYEyH/OXE1/SmSljF0joclPVjigg4kuMhrQeo1wDn6l5JE1Uu3uwnoJE7wTIYAH4wCtpH30iDmvWqVqfSNRGr/ICBhH5QV6WwLp2GFJsCacJ+AU9MBYTVCWI31djKvAQ8bk9QKqggVnwySHuQ/8zconbTqBpRLo71M50towQun9GX1VmJ7UzPdXltwLQtYlzd+hwVkcV1imUo9dkvlBrTV9k/zjkuJg4IiDAPAOkGO6y8cMZICVSuq6vDIeWBXnNgOiRvTrHUT9NrH/jfr6waulcUX44YiG6JYpyWMCsY0zw+/UjqWwGjn+O3Uh0KwU
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR10MB5211.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(136003)(396003)(376002)(346002)(366004)(39850400004)(451199021)(86362001)(2906002)(44832011)(26005)(83380400001)(52116002)(41300700001)(5660300002)(478600001)(8936002)(6486002)(66556008)(36756003)(6666004)(4326008)(107886003)(966005)(66476007)(316002)(8676002)(110136005)(66946007)(38100700002)(1076003)(6512007)(6506007)(2616005)(186003)(38350700002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NRrn+YKUTGUP7NxkRC0ONoLQvTwejeUAYtkFo0eHxs42ZY07Hwmy0g32WBcc?=
 =?us-ascii?Q?ayaNSOGbjgL4vm7ui4R5pf9Y/YyMgTUWVJhOemOL2WOBxKkfWc7/dZ0l1Dc0?=
 =?us-ascii?Q?z4ENluTmClUxwmGWbm1KYUpAcsmhoYeQZ8ncqL/WwY/fxQAOIPwZmqnB6Apa?=
 =?us-ascii?Q?jYQQ10O5emtbm1Ow7+7BsKSwoZK1DUXvjryzR6PFvvexAhNt80V6FaNeRapp?=
 =?us-ascii?Q?KtL1hA6q7HE4yCBUTcp2x4+1cLQljLxldMGHTdbMWiLHVA74d0+SRLrAZvBU?=
 =?us-ascii?Q?Vkx0AreVWgOizEM16/i33c1un40ewKQlfQ3bCVDlQLLvze/KEzwxvajNjN5u?=
 =?us-ascii?Q?q8YNOhQtBisuEyyK+5ezBfBPYdenihetuCpAGxk9/w5m6uhqwW2KWaA32HnF?=
 =?us-ascii?Q?f/Ojrq9cuUwTKbtYSCNBLw6k4+VZdI6f2RSpKa6xx1LOTk5te3Do8kX/Cp3C?=
 =?us-ascii?Q?yhRVENeqlQcwQlktmkdSS3flvRu4A4ljr5bXPKVTEcGgrXSZimKzXdYUT6ij?=
 =?us-ascii?Q?7AwfCnArG0aufIzS+v4kb4YgmEFjRinhiL1sWM1dO09rqgoC+P+79sd4TRfw?=
 =?us-ascii?Q?VrulzFup5zOi09045gyT1AHyXnllW2HUzr/mDuiuDs1muarw9f6cJMDxg4tQ?=
 =?us-ascii?Q?5lDAaB6+7TdP/qLpIsgNGV1PuAx8qhGpdeol/XSfqLJ9FisUNZFciPSAsIXM?=
 =?us-ascii?Q?xWOWwgJGAw8D8vfjyea6kgMnEYC7qjgHFb8zUvztzWEJ+sOGisuknbuBG/oF?=
 =?us-ascii?Q?Rq6QZbGPP/33LZJFWO7r/QPBZJF33HXkdJiXpz2iRSToxu0HGyaWtHC/OK3H?=
 =?us-ascii?Q?6NCygh6pmD0kRNoNvQD+Jfs/nVISh5MxC7gopASy+SN6YCiVasMyhT7i0xhT?=
 =?us-ascii?Q?7u9sJjIjH8AxuJfogSxFCNwNPcOdvdZeaT7cgX9zE/KYOUKfO8cpVKPxUzyP?=
 =?us-ascii?Q?BfHqDggGD1Sw+/RaWRrShqCfY0SsAzLjWqYQzQjZVdqe6na8GfP10bWTJxMl?=
 =?us-ascii?Q?8WEZP0zdFhmpZplbY4nktm6EutXbWjSMXeFph/AViITCcUnjONzWgsvp6zSO?=
 =?us-ascii?Q?8hpZMmKSzgkKGqCgfShtbXWxTu3RI2y29GFcyrpG20UNvPn4l6yyFyu8DMTI?=
 =?us-ascii?Q?uAtPX+dof4KaG9FegpahtWa2cOhk4CgLKdfX4itktkHFjBxAAE5s3iReG5Au?=
 =?us-ascii?Q?5JlSai18ji8VXISz5K8H3X6ImKgZh/xQOXKPr4q1ihPug6AZMaigUaz9c63e?=
 =?us-ascii?Q?i2OI8O9cGMOoJ8pD5UdyYuqJAbNBZ/9SX0dpEDytvnnjLXTQrAvPJ8Mv7JeD?=
 =?us-ascii?Q?8XH4+Y7n75Wxc0+wzehMfdYwLNH7cX+4GOyTS8DA0BbLUzhLXVE2Z73ggTPj?=
 =?us-ascii?Q?58U99F+7hrTCgXhYhKk0MsFO5QIYcmcYpEgE6KffyA8haQrYlz4utk85Gjbi?=
 =?us-ascii?Q?nw3bfitH8YveYXwFTP17nwbCo9LT9pF4hcJSS1OaqBRE9DyPY7H7pVVAwBQV?=
 =?us-ascii?Q?kQEB+ky0E9y9FCXFCoqhgjlu60+72hNkeFvIVakps7m987h9IWPDjcDq5HRa?=
 =?us-ascii?Q?wesBKxhRoWxokSlRJrLB8oa3krJNj3jGDsPrR0UpeWtyYNtYVGMSKYdVxEt8?=
 =?us-ascii?Q?XA=3D=3D?=
X-OriginatorOrg: chargebyte.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74ede175-9221-4162-ffe1-08db368a2346
X-MS-Exchange-CrossTenant-AuthSource: DB9PR10MB5211.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2023 10:31:52.9973
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30547194-0d55-4a2f-900d-687893d3bdc0
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O0YVpayzJPAjaK56FeJiFlZgTVDvzsyy0VaI1bz4wB5UoWJhDviaPwm2iQOTn7uCP6Vv1YcPMeDHW8St0TdZiycheJVCn1RVl4FmmRnON/g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR10MB6363
X-Spam-Status: No, score=-0.0 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series adds the support for chargebyte Tarragon, which is an
Electrical Vehicle Supply Equipment (EVSE) for AC charging stations
(according to IEC 61851, ISO 15118).

The Tarragon board is based on an i.MX6ULL SoC and is available in
4 variants (Master, Slave, SlaveXT, Micro), which provide more or
less peripherals.

Supported features:
  * 512 MB DDR RAM
  * eMMC
  * Debug UART
  * 100 Mbit Ethernet
  * USB 2.0 Host interface
  * Powerline communication (QCA700x)
  * 2x RS485
  * Digital in- and outputs (12 V)
  * One-Wire master for external temp sensors
  * 2x relay outputs
  * 2x motor interfaces
  
The Tarragon hardware is bundled with a charging stack under the name
Charge Control C: 
https://chargebyte.com/products/charging-station-communication/charge-control-c

This series is rebased on top of:
https://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git?h=for-next

Changes in V6:
- dropped already applied ARM patches from series
- add Krzysztof's and Rob's Reviewed-by
- no functional changes

Changes in V5:
- allow child nodes in DS2482 binding as noted by Krzysztof and Rob

Changes in V4:
- introduce dedicated dt-binding for Maxim I2C to 1-W bridges
- add Krzysztof's Acked-by

Changes in V3:
- dropped already applied iio patches
- renamed pinctrl_qca700x_mains_spi to pinctrl_ecspi4
- dropped Tarragon container nodes as suggested by Shawn
- sort the pinctrl groups alphabetically also suggested by Shawn

Changes in V2:
- after fixing technical problems send patches directly from chargebyte address
  and drop the related signed-off-by
- add Krzysztof's Acked-by
- improve commit messages (patch 3, 4, 5)
- make iis328dq fallback to lis331dl as suggested by Jonathan
- fix order of Tarragon entries in FSL schema
- improve Tarragon led node names and drop label as suggested by Krzysztof
- change Tarragon SVNS pinctrl settings after internal discussion
  with chargebyte hardware team
- drop broken-cd in Tarragon common DTSI which is not necessary for eMMC
- add no-sd and no-sdio for eMMC interface of Tarragon

Stefan Wahren (2):
  dt-bindings: w1: Add DS2482/DS2484 I2C to 1-W bridges
  w1: ds2482: add i2c id for DS2484

 .../devicetree/bindings/w1/maxim,ds2482.yaml  | 44 +++++++++++++++++++
 drivers/w1/masters/ds2482.c                   |  1 +
 2 files changed, 45 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/w1/maxim,ds2482.yaml

-- 
2.17.1

