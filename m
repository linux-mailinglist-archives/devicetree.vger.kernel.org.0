Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 409FE752385
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 15:22:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234975AbjGMNW0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jul 2023 09:22:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235191AbjGMNVs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jul 2023 09:21:48 -0400
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2083.outbound.protection.outlook.com [40.107.21.83])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4F7A2712
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 06:21:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cYF5heZuIA04XNb1I8HQOTdadrbXOJBdywM6closnun7P3ScXY+onazec2vR1WXuLFcUis0mgkjB+k001EffFA3RHOAsWA6Zf/KYuol5dD77cZrns8i84nxxL1N+iDuImqnAtObfZdDtRSLRds0/AfI0o5sZRPQGOVWXbsEScTz7tSby26lcnoTo0swZRX5BMmxwacvqXj1fEwevWz4dPhItpEZoYL1a1Sl9S6x52F/fpx+YPhHmDNDI6etN8CsjiRsF/1Prkz9VQBcoF4wJxhlTVPmQsLka9FwY/AO7sqPqaSsFvHJhLHsplBl+a865xp4MMcVX+1wVRdyE1hglaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w6zajfpc19nfG/lXvw6K/W1EWK0h0pNCJMtuHrbOZzM=;
 b=GyDY8/1e+ICvlFfNk8RidN2l++kYZQeHqpFqsiefDfx3RT9CIvY5NFXf8VBoiIg/kxEvdVeMulPhnquwpP8gEoiy7kr1WkYc3FwshTBFYc1JMFevZAFAUkoCUxJUJCcgm22UqyB8UDl5O39xYFEEthQFzpkF3+jtqvpURzvWwa+oa0lFUkPQG2nwlq4TpWkIER+4UEAzQIhr/gouKxIhyZLNlMiJLLjmD4ACKKtbjewpG24C8AS9PMS4rYBp+nthzsfwHS1bKLXc3ejy3OUNtsED2uGNUmSO5paw8vpUe1K0KLfcbmKxSN42PCAxfLtRvWGkPb3Q4Qv1AhxiFtbdCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=variscite.com; dmarc=pass action=none
 header.from=variscite.com; dkim=pass header.d=variscite.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=variscite.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w6zajfpc19nfG/lXvw6K/W1EWK0h0pNCJMtuHrbOZzM=;
 b=Qjd3gn6J+N88aJZrDrvaEx98aT2bbBTnI5MRJXLFZlJEGRtfFN5PrPgiOpwA155+IpHnK42u7CpcjDoFapNa814ZzF5EvJVI1hAg5Rm0+/NLCOexTTo+PFQDRZlpTJ8ddpSvSs7+WogbeqvZ/vNm3RgsoJjIQpPTPyZ1H967FNS1rIuvicUqHR8ak+0U0pMB9V9LsBYmnf6BE+pqgENwJuI+A77iRDcQCzxFzOKAYLUTH61vUVq1U0aN6lPXtEVMmN1B5shi1s7GiylJp2SAyMqHi8q10XlVOT39o9mRJXHfKnDHLZxCzTRRuJqlSTQI0yEqpKl6RXhMPUzXOaRL0g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=variscite.com;
Received: from AS2PR08MB8808.eurprd08.prod.outlook.com (2603:10a6:20b:5f4::14)
 by DU0PR08MB9050.eurprd08.prod.outlook.com (2603:10a6:10:47a::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.20; Thu, 13 Jul
 2023 13:21:04 +0000
Received: from AS2PR08MB8808.eurprd08.prod.outlook.com
 ([fe80::88d8:ddec:561b:c061]) by AS2PR08MB8808.eurprd08.prod.outlook.com
 ([fe80::88d8:ddec:561b:c061%6]) with mapi id 15.20.6588.024; Thu, 13 Jul 2023
 13:21:04 +0000
Message-ID: <322ede0d-7cc5-6878-4aed-af4c120b4de9@variscite.com>
Date:   Thu, 13 Jul 2023 08:20:58 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Cc:     Eran Matityahu <eran.m@variscite.com>
From:   Nate Drude <nate.d@variscite.com>
Subject: [PATCH] Requesting review of U-Boot mxl-8611x device tree bindings
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH2PR12CA0015.namprd12.prod.outlook.com
 (2603:10b6:610:57::25) To AS2PR08MB8808.eurprd08.prod.outlook.com
 (2603:10a6:20b:5f4::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS2PR08MB8808:EE_|DU0PR08MB9050:EE_
X-MS-Office365-Filtering-Correlation-Id: cf65076f-6a47-452e-c034-08db83a40232
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QSbTwRPHA10ap8VmioeOntJVp8HKQseNwPyN53TPjCaK5ezq7WCqmzI6Xf/n3MEtZAJ65jtnbMwDa3DpaJBXIGejy/g6JApJWAWEU7XNeEvvXZkjUgRs+8HeO3U1rtdypjVvSysibyR3Oo972mb43ZL1v69IpWJyXgd4uwOBK5KEhHN6gIXZdIwmRJzV2otMRpuk+4moVVIotIljmeQ0QC9xDOMELIOPkaUg4y5uBzyFWVr3O6Di2dnGwQYDjMlXYP6PlCx3Z5vgkZcHpcoIIsWX9BmMVaJFNiGUhEfjmQITn7t01J73F/ovNh2MdI5Jk+f8OPc3nr33mf2DW6d6DWSJ5qUWnPFDt1tPmzHGYgMhsZivRRXNi72MKwqv7wQ4gSOt9JvhHpU2spxXtihCC47bT9YwW/FodDChrIWbIEFQpSbDxFEuVt98sZKAJcmWBBObUVmgwAyJL4DWiFDZCCCa3HiuXquXYEtKjEMWpWUjBbLIXhw+E3tK/S1hxvyZvlT7rVYg0QOPegXgWd/Eopm6GEbeYusmd1EFnbWj+R206SFA+VYbKistAtC8JZku4f1EuVgvQlkEeuBe6hlAG+mMhm7R4eoJd1M0MIk4wzE5nVil9W8neK/HgATsSVyzkbpCGM1HiwAok0u1vumXyA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS2PR08MB8808.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(39840400004)(396003)(366004)(376002)(136003)(346002)(451199021)(66946007)(6916009)(66556008)(66476007)(4326008)(478600001)(86362001)(107886003)(6506007)(26005)(31696002)(186003)(36756003)(6666004)(6512007)(6486002)(83380400001)(41300700001)(38100700002)(2616005)(8936002)(8676002)(31686004)(4744005)(316002)(2906002)(5660300002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OUlpOUNYekxyTkMrZEh0T0YvdkIxL0g5dlpudWxCYWFnaXBGS3JyZXg2Zy9L?=
 =?utf-8?B?RXJidnBxbXZRRXBEVlQ4L0N0UEZTMkRuc0M2djExQzJadG04eW1zNmRYRWoy?=
 =?utf-8?B?a3d6VmsySUNKTndzYTkrVktycjRrTTZRajloUUZXY092WHg0L0JBc3RNdDZu?=
 =?utf-8?B?TEYzd2s4M1QyZGUyL0FyOWU4ajZOY0FtVC84SURuU0RBNzJhU0hha1Q1b2dF?=
 =?utf-8?B?Uko3SHJkb0VVZHZxcjVvWWVxTEJjUnRGV0x4TDRXU1BOZzdJYjBUeW5GWEQ3?=
 =?utf-8?B?b1UrdnF5Ty8wb1lzMVk5U0JZY2N2eTdYVWtvb2JKNFNZUDd2bUlrZEJ1N1l2?=
 =?utf-8?B?ZHNkQ0tOYlduME9yTm5ZU2luZ3ZGUXFsbWVqQmhvZnhsZDh5aTk1b0ozQ0FK?=
 =?utf-8?B?ZFVaM2VOc1UyVFdHYkFTYWJrbU54TUp6OERUeHRnNEJLUjhPeWx4bjNKaWQ2?=
 =?utf-8?B?OHdzWEVEWDBLTFNRYlRGWFpBRlJDQ1ZtYVM1a0VvWm5YRVArTmFkSWdXZjc0?=
 =?utf-8?B?RG5MVEZxUURJNEhwckxUMit0aHhhMHBLWlNOL3RLcXloQm5RZDBsN2pEdUp3?=
 =?utf-8?B?OEtjeXdGWDBXdDNNRFUrcVUxMTlOZmZMb2VBUFVQVnJneml3THRWa1cvSVdp?=
 =?utf-8?B?Y3RDUXNoaFRNSnVsU1o2QVV5THBQUzRSbDJPYjcyNHQ3aFoxQzBjek1ZOGRT?=
 =?utf-8?B?TGt1OGc2QmJ6aWRuL3ZTb2IvWE94eUNhN0N2TVZNb1hwYVh3NnBkWGFYcTZu?=
 =?utf-8?B?VFY1M2ZYSlUrZWlGeHRGWDNNemkrNWRRL2F4SUVxOThnRk00eVpkU2JqNTFX?=
 =?utf-8?B?b1lwTHExS0tlSVFYeTJnOGc1bTdTNm5mUExlZmxuY3RVS1hxN09UYXNOTzdm?=
 =?utf-8?B?cExPTlJuMGpxVmlhanAvaThnRXk3aDQ3M2tsMnAzelFrWU9YUVRlWVo2M0dB?=
 =?utf-8?B?d3p3alJ1UTdubVE5bU9lVFNXREhxeGlTaUF1LzRoMXIyM0NnanV2cHZKMEIy?=
 =?utf-8?B?MW9UQysyS01MNGhPKzJYZDYwb3oydXFRaE1IZFA4eUowalQ4T0dRcTJSN3Rj?=
 =?utf-8?B?WkwwTlhLa0lhRnhici9pSXFkaE5xdkVKK1QrMVMyV0c4WVZKVCsvd0xwK2lB?=
 =?utf-8?B?cHdrS0JxUUFDdm8wVDJ0WHJNSVRYckp0T2EzeHZsZzMrcW5ManM3U2VnUUlE?=
 =?utf-8?B?bWZ2UitON2hWZnVlaUNMa2M3SWVpVGdEWUE2L0R3Q3QzN24rbWZtMWc4OThG?=
 =?utf-8?B?eitYZWZqOEY0MExYd2R4RFlvaWI2cUZweGFVUzAxVHU4UjBqOEtTV2VKNDZZ?=
 =?utf-8?B?YXkydUg4eE5OVTRYUCt5b1N2aWlxSHB5dWVMTVJQZHhZdEJpTTdWUGN3Y2t1?=
 =?utf-8?B?dWJaZUwvc1NLeUx3NFltcVpMRmc1NFM0dS84dm1RdlNQYXlsV1lXakxpQTAr?=
 =?utf-8?B?Wk5hNkx6S3c5d0Qrakp1czQwSXliVG5xQ2xQbFd0MmI2RGRsTTZRd3lFQ3VH?=
 =?utf-8?B?SDJtRUtEbk04bTl2dm9oakhadm5SZnZNc2N1eE5NZEJEWVJWVjREZlp4QmpV?=
 =?utf-8?B?SnYreFdtZlBPTnZ6MnAxQ1MwZUVmZUJpWEsyNzJCVDF0SzhaZzNQZXgzWE4x?=
 =?utf-8?B?MUlKWm4xQ3NTMkNyS3R6b2xFQUR0RzdqM0VzczMreGpsdmVVK1R1VTZGOFF4?=
 =?utf-8?B?cjR4QTBYRlB3NlJuNzd4MTE3OUd2N3p5VS9PdDVQSkgvU1NaNlM0emtXd2dK?=
 =?utf-8?B?dHByU3VqR2drOVc5NzFqaTZLQVVIcnA3LzVtUDdYT2pCVjYvckJ2S2R2N0I0?=
 =?utf-8?B?cEx4eDIzZHRFcmxkakIwRTNQNVoyOXcxWi9rUUhtWkFsREFaSkJvZG5EQXg5?=
 =?utf-8?B?bVBuYnJ5ZnhkS1hrV25jcVZJUUJld21pUUN5MWZWbHBPSWZXeEFSTWJ6UTFi?=
 =?utf-8?B?OFI4SHBLOWV5cGJQQ2xPN1VERVlGSmMyN3pHU1kwZ0VVZWRERXRRTEkzNS90?=
 =?utf-8?B?bkV6dUFMKysvTVRxaHhUWWFEVjl6dG1YMm1YTTVzVGxIWWJ2bGRYaEFoeTh2?=
 =?utf-8?B?SHMzWTdCSHcwY2hJcVlrWmoraExTdkgxZktCRmNMeHJ0RFQwbTVVQncvNkpJ?=
 =?utf-8?Q?6YOA06yDNQgvXjMJ+fDE4yBOI?=
X-OriginatorOrg: variscite.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf65076f-6a47-452e-c034-08db83a40232
X-MS-Exchange-CrossTenant-AuthSource: AS2PR08MB8808.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2023 13:21:04.0921
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 399ae6ac-38f4-4ef0-94a8-440b0ad581de
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p0YnxUyurTknnLxRbWE+yCrdPjTLeq5yi/aCQ39K3RcinLRqNb3dQ3NJCaTWVw4mfqlMwV30lOvSBcMCRgy3Gg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB9050
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I am working on adding a driver for the mxl-8611x ethernet PHY to 
U-Boot. While there is a Linux driver from the vendor, it is not ready 
for mainline and it does not currently have any device tree bindings.

The U-Boot maintainers requested that I have the device tree bindings 
reviewed by the Linux devicetree@ to avoid any misalignment between 
U-Boot and Linux when the driver lands in Linux.

I will send the bindings U-Boot patch In-Reply-To this email.

Thanks,
Nate
