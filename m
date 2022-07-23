Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C12E57EF1F
	for <lists+devicetree@lfdr.de>; Sat, 23 Jul 2022 14:16:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230010AbiGWMQB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Jul 2022 08:16:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229462AbiGWMQA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Jul 2022 08:16:00 -0400
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-eopbgr60068.outbound.protection.outlook.com [40.107.6.68])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF033AE50
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 05:15:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T3cn4JaqNDx13ZN/Z3k83SAlYVg/qjOF9Z3CEmSriJEK835KbIOnbcma8JvguxxPocyG/IbIr2PO236E7j8F6Va4GeUJDCktHX2LTzUPKdx5bB4rdJTmR3+sAGQQQlU6zLJeueQAtilr8Feh23w4qYssxY7099QnVJI3oEYRUd03mOCboVo1SnBoKJ+jsehxhN8ojDKK+eZHPO15MvFNLpJ/UB/+Oxzo4QguhujRidbo8rYg8G0LO+U4t4Yn4LRKgYLlkRIeusuQlhLJDqnowvd5HBLgka5qg7BfX5qUziWI6qcQnsKTQXV4jSdvWUCF5UlCiSV3zICyOURLU5WC9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YEEWldfpp3UEMdSyfeHXUsqV9GDAQ32iPYvS8qAgHhg=;
 b=BGLioahutsrIBJsMlf5LYPZCWOuaAcEuBcFVi2pUY9qHAgTgbleSNX+GC81UOWwYz/T0vmHfq8Yji5A5ptAt85LX0QlXti9ZBrLdySlSciRyKQ2z0S1bLSoXs+MTlLtgKYvPDLXEasFXMT3yF3Rk5lvr81D0nbYzt/c+4l/zR7N1IXKDed5bZIg5XFwYru9m5fCaBru9jhX3oX7THsTrQRxbKr6flIqljzNFvSnYan4wIksA2GUD/l0K/N0KEgAvkIzgmLwKp/WAhixW1hAiXDdYNXrLVrbwvNGaEn/q/ybY9t3aSqBF6l2L2IAP/l9E2DKp3YfOqKfnsnj6mzSYdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YEEWldfpp3UEMdSyfeHXUsqV9GDAQ32iPYvS8qAgHhg=;
 b=Z+RoGGMqYWs01uZxWligZSd/CSmRb189aczRu4Y457XDp8AMNKq7HOWT688OOMr8fe0KeQTojf4WSIkfieXcnNs30h+hkwby90jcFk12zB4PRErAeaUplQe/HcdZ3yG7EXGSVNuaYgnzVDWVHH1O1bxl4LX4wKJgc6o2gfjiNY0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=oss.nxp.com;
Received: from DU0PR04MB9417.eurprd04.prod.outlook.com (2603:10a6:10:358::11)
 by HE1PR04MB3194.eurprd04.prod.outlook.com (2603:10a6:7:1d::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.18; Sat, 23 Jul
 2022 12:15:53 +0000
Received: from DU0PR04MB9417.eurprd04.prod.outlook.com
 ([fe80::c0c2:ede7:3b85:1597]) by DU0PR04MB9417.eurprd04.prod.outlook.com
 ([fe80::c0c2:ede7:3b85:1597%3]) with mapi id 15.20.5458.019; Sat, 23 Jul 2022
 12:15:52 +0000
Message-ID: <1c6c9750-571c-bfd9-8804-4f16d691c480@oss.nxp.com>
Date:   Sat, 23 Jul 2022 20:15:42 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.0
Content-Language: en-US
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        shawnguo@kernel.org, Fabio Estevam <festevam@denx.de>,
        Lucas Stach <l.stach@pengutronix.de>,
        Sascha Hauer <s.hauer@pengutronix.de>, kernel@pengutronix.de,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-imx@nxp.com, abelvesa@kernel.org, Marek Vasut <marex@denx.de>
From:   Peng Fan <peng.fan@oss.nxp.com>
Subject: Align fsl,pins with dtschema
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SG3P274CA0002.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:be::14)
 To DU0PR04MB9417.eurprd04.prod.outlook.com (2603:10a6:10:358::11)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 36e5334c-b9f1-41ab-f2fa-08da6ca51646
X-MS-TrafficTypeDiagnostic: HE1PR04MB3194:EE_
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 58AnV0x2yG5xf8todq4q/O4T4Bs3zPW7wnerKIx1UF3A0u0SLrbiEevHlaF6Sp+7g5uIhJY8KINmXAUffp5fz5yjWvF8WEIWTizwuQ4obutTbxtlPAiW3PIcAueVDIQFC4TjBypu/4jxtQdkZU0jcxjYCHy56t/DQmH/XP/BeCESFjnkuyS6TMq7ZdMw6nnGAp5RRZSKoq2f4bmqP7rlnqkuQ/AV2NRmD5LlqAn2bvtJboQdEQVStRQ7a2E7T4mVAPsyRF5F9tDb3+eiLKCeBFIsHqhQJSqFNg6hXpd1hFWMOQAlCMQXNJCEUkm/yWzXTouijfESLVaulNt5pj+uMv0fqElL3vuDb2UhDCqpLE3fAwesuPPowVrNb2ywECkGOf5NfsORAD8iBN+MG/zRZwB497bdjd8FYhQcCN+dMTxFJMxDFmfCw2dDbLGShZo+v/XFtd75jRupsnp/kxwxgiEqqKW/JLL5WinBraeAEDf3ffjcAMU6zV0WtTw4uWl9Uu0Mse+fg//Y+8VJ5x202GFfbrxl3arK60+5qzfM+/+7R3b834dYVQUwUp+niebSlK1subwo2abdOPJ4werEhINTGe5RacNIhe/nkeb8W6ASYLXyNvburLikY813JcGbySRZRCFqNBKer/3S+ErIFIH8HbqopIaa+7vo5CvRElpM6zp1Fh8g3eg9sqWIxuXKuULf34MDJjuccnKw//qAJ6MJEKceLZYyWU+pOTjVf8c8UEMwv+S+gcVf3YmgIjbnusFj4Qts6wfLrJNvHctWewKnwi1vKmbGZxMmzdOpWp/zzx2GTwxApOyfEp34PPHvlMacwtpj85Al6wjSc4SwxGaaZolGxx7v6ph8NAhrOGo8gmXcGT7Cdr71PReJ3Lcc
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR04MB9417.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(39860400002)(376002)(396003)(136003)(366004)(2616005)(83380400001)(66476007)(38100700002)(8676002)(38350700002)(66556008)(316002)(66946007)(110136005)(186003)(6506007)(6486002)(41300700001)(6666004)(7416002)(6512007)(26005)(31686004)(5660300002)(478600001)(31696002)(8936002)(52116002)(86362001)(921005)(44832011)(3480700007)(4744005)(2906002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bjBsNjdrOTE0dVRtaTR0Q0d3OCtCbzE1UTViZ1NxYXlvMUtEL0RQWFVGdVln?=
 =?utf-8?B?OG4rTnN6UDgzTUtSL0pzOW1yOWMxVE5NYU1OYTRYbDJBcnFkR3E5bEFPQ0F3?=
 =?utf-8?B?NkpscE5venB5cEtCQ2IrK0FTV3QxOE0xYnFCQzl3UWZVS2JIallkOHQ5VmV3?=
 =?utf-8?B?N3M1cm9rdVMyR2t3eFYzaEJNcFZxeFZ2cHhQSnp3a2FmMUJZZmNJN1pQUHJP?=
 =?utf-8?B?TzdqeWZVdXZTR1orZFBxdzh4NzZubUp6NTRTS1lYL2U5TFhWaTVha1g0cElL?=
 =?utf-8?B?d25HQVI5eUk5TUcxVjFxMFlvdk50NDhBdzUvQXhUL1NZd2RTUk11bXhNY2R5?=
 =?utf-8?B?WU15TUtYZ3ZZWUhCMlpGUU0yb3NkRVhvWi9pcHJmVEgvT0liWTZNdnlVbFJ1?=
 =?utf-8?B?Y2o1eU9sYnh2TFN3R0VIOGFmM011NWxGYzRrSGcxdTROT0cvRUt5Zk5ObWFW?=
 =?utf-8?B?ckJjaVlOeEZEalM2S3Z5TEpBM3RmNkcyV2F5VzNXZDFzUmJJMlNUUzlOSTNn?=
 =?utf-8?B?UDJOaUE1R1VVQm92V1J6TGhwZ0kxZFo1L3F1WkRFOFk0d3FIa1pqOWZ5WVl3?=
 =?utf-8?B?RVBMeU9BTE9mcEZXZ3k5NE54Y1ovTHJ0cG5VRGRjRkliZ29ibDlBTXNyT0lG?=
 =?utf-8?B?ZEtZMlRoVlNhQ1lDQ25PK0lCNDJ1dHU0Q2VvRTkxWVV5dWg1ZFNUU1RDU1pj?=
 =?utf-8?B?UjlXeUJvRWUrV0hDK3o3ZEd1ZDZhZ0RzSklUUktWdmxjVU1yQlg1TXJpTmR3?=
 =?utf-8?B?Q1pWQ1NMeFFJYnhyMHl6MDdLS3ZBZ1dkVHNGdFdlaHRVdis5T1JJV0Fxd3Rj?=
 =?utf-8?B?ZnNiQkhEWGFwUFRBVVk4dEtpUXNsMUdWaTVKWlZBY0QyM2NFbHJMRTZ4Vmw2?=
 =?utf-8?B?V2hwVEVBbFZDN2VxaURwTk9nRmIrRzlnak5vYzI2bDB5bnV5K3V2aHZqVEdC?=
 =?utf-8?B?Z01ZdzNlVmRqZHBpaWZHREVBTm9sdCthakplQ2NwbWhhUE0xYWRTR0VPWGsr?=
 =?utf-8?B?RVRrTkM2L01DcERZNEhSQnczdS93amZtNWFJK0dIb1dOMHhWc0g3WTFYcFRR?=
 =?utf-8?B?RFJka1d2c2FvdU14ekt4elp0VnJmZDNqemJ5STZQMTI1NXI3TjgwdVpNellu?=
 =?utf-8?B?RHdBdUN1eitpWmd4Y0IrcnY4WFFCb0MwWlFWcStOazFUMGk5NFgyMGd2aSti?=
 =?utf-8?B?czdHSW53OEdkQXpZY3hQeUxHek1RZjBEbjIrUC9aYjZLMGZtc2NJTnVJM2FW?=
 =?utf-8?B?UnJkeG5USEZEckpUMEY1ZHVVYkEzNmdvQ2oxS1I2U2wvQ1BCdEROVWJpRHBV?=
 =?utf-8?B?SENVRkhDQWg1cVNsdG9SVDBpU3hhOEswUzFiaENvTzExNjdXVDlxNzUraE5j?=
 =?utf-8?B?N3lZNEY0TUJCR2xjTzFqZ3VmdG9LRUcwQXBhT0JIenBJU21IaXFwK1ZFM0wy?=
 =?utf-8?B?dFlnUm1YQ25EelFYNWVYS0MvWFJ2Mk5VdWxIOXQ2ZzhmL2h0ZTk2Qi9BUUtI?=
 =?utf-8?B?TkJONHJYMk5xUUdjTEFJaXNYRnNkVGszNDVZWW9TQysvREYwc3dvWVp5Wjd3?=
 =?utf-8?B?Q2xYLzFyQ2N0c2lSMFhNdEJmbW56WUNqcEtaazltTyt1QTJBSjRlYUxnUlVV?=
 =?utf-8?B?QzJrN0toeVNzVlRJT2VLcHVzRndhcTZobXZaNFExKzlxOUR3K1BTVWJqdW9z?=
 =?utf-8?B?NnVJRUpWNVo2RVhGMUQ3OXNWVnZKKzcxNCtYQzdwczlzU3ZhdzBBUndRRUJP?=
 =?utf-8?B?MHJYbjllTUtZMWNFajVxWkZFL3d6NFE3VFY4S1REQzZXQXhQMDVacmhqbzg4?=
 =?utf-8?B?d2hXK1lEcTk0ZjNLT3hONUFxbWYreGVOM2VwME50Y0tRclFUSVRRZWVwSHNM?=
 =?utf-8?B?cXdsQzFFUnFsVzI5b1k1dHNtY3cxTnQzcERpZlFGZWlhQk5TbVFRVURLeTE5?=
 =?utf-8?B?NWNYZzhQVTdnS1c5STlmbWNZMG1KZ1ZvRlVvZU5hMWRUK3lWeUlRekNCZ0ly?=
 =?utf-8?B?eUNlcUF4K2ZNZy80M3IxRnBnYU1VVjhja0syZStBVHNueG5TSVl4YlJ1Vjgw?=
 =?utf-8?B?QlZqcTVnTEZ6NU9FVFhEVjJPQUlHbFUxc2J5dGJFMkhTRlR1YnF1dmZvUDk0?=
 =?utf-8?Q?N8bXxQ6RMk4wYUlkuixF2d681?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36e5334c-b9f1-41ab-f2fa-08da6ca51646
X-MS-Exchange-CrossTenant-AuthSource: DU0PR04MB9417.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jul 2022 12:15:52.8779
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ndxlRJHOdKUjHPL4u4CG+9lNKCPnsvtbk5NsbWoSr19MOFSB7LdcicgYc+qlex+TtbrsgtldgBuaWQP5xOaVmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR04MB3194
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

All,

I am thinking whether we need to modify the fsl,pins as below. Because 
fsl,pins use uint32-matrix, so just wanna know we should do this update.

Anyway there is NO dtbs check warning. If we update fsl,pins, there are 
bunches of dts files need update. Do you think we need to update or not?

         pinctrl_ov5640: ov5640grp {
-               fsl,pins = <
-                       MX8MM_IOMUXC_GPIO1_IO07_GPIO1_IO7               0x19
-                       MX8MM_IOMUXC_GPIO1_IO06_GPIO1_IO6               0x19
-                       MX8MM_IOMUXC_GPIO1_IO14_CCMSRCGPCMIX_CLKO1      0x59
-               >;
+               fsl,pins =
+                       <MX8MM_IOMUXC_GPIO1_IO07_GPIO1_IO7 
0x19>,
+                       <MX8MM_IOMUXC_GPIO1_IO06_GPIO1_IO6 
0x19>,
+                       <MX8MM_IOMUXC_GPIO1_IO14_CCMSRCGPCMIX_CLKO1 
0x59>;
         };

Thanks,
Peng.

