Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 319854E2E33
	for <lists+devicetree@lfdr.de>; Mon, 21 Mar 2022 17:39:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236787AbiCUQkj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Mar 2022 12:40:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351297AbiCUQkj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Mar 2022 12:40:39 -0400
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2065.outbound.protection.outlook.com [40.107.243.65])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 017D117E18
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 09:39:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lxl7keVYarO7SWqia6v1hhy4Ca2BrBjH9DWUYQWbIRfVdYaG4zxgvmu3Uskr37PX9i2xKowUcrJ+QPkHp1Bv26trScZbXh5DD1IVe1jaZ4HyVBHE/I3tOdNp8A3APnRgmMYIACrkqWrsJmoRkil4IG5LnstFbnd3fZEf0FqAzSzJihychBm4QEftqQwkYB6lEaVFrrhRN1hOmfhL9pwypU8+DsGyyZIZViKBHDdjxcu405fgKFVmasO5n8i70Zn9YPvRlU+GQ47jdTCqmiYH9YFT6T0iOuLzfEjPaBE8qEA+wxfrvxFJr/t4IDrQE/XFG8sbmCGBQXYKowVW1Q40cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=59ePQkJmeVHgg9HISbBwnt37o19Im9QkbgYCYh2qiZE=;
 b=jnFZC65EA5G/aOLqEoitlyDMLPd433skNjVDJg4wzHQAKLzhh928AaKpecusF/SFwtoQq4hU4r0s62bxYk8kErCZojEVy4xsCFP10e6iDO5GCeLjHs482etNTl+WV6ZJdPQRTFX6W6vFwm+vnG5Hvywg0/zn2ixGHBYJ56INilUQOO1dcLwn7cn8l0VHjsi4kaRprVt+Q27ao9z/LnqQDzsPta3WPsp8VgyS9E7/WhAnE6hUPfKLxEI/9I8Qr9Y00/eEUxShz0lezYzyz87gQaunLuC3zk5T+tuk52GE2gHOiuXVnLZqp61smvumgzhqhn6plTUCxo+R0KxOCf046w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.62.198) smtp.rcpttodomain=kernel.org smtp.mailfrom=xilinx.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=xilinx.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=59ePQkJmeVHgg9HISbBwnt37o19Im9QkbgYCYh2qiZE=;
 b=dp1u2SgYH6/22MLbxPo7x9OnE+bra+26DkG9sS8YU9MHBQTs/RttlJaiLQMQUjN37c7K19RezszM4M9npqJTYKtOfxfAUSQb46N7JLRqjNNRORd13JB/rjwskTGHGHfOD0IDVJhwPi7R9SBfc4nX0OiNWeIrKU+gvrf+LPqz+wY=
Received: from DM6PR02CA0066.namprd02.prod.outlook.com (2603:10b6:5:177::43)
 by CH2PR02MB6421.namprd02.prod.outlook.com (2603:10b6:610:10::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.19; Mon, 21 Mar
 2022 16:39:05 +0000
Received: from DM3NAM02FT007.eop-nam02.prod.protection.outlook.com
 (2603:10b6:5:177:cafe::c4) by DM6PR02CA0066.outlook.office365.com
 (2603:10b6:5:177::43) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.22 via Frontend
 Transport; Mon, 21 Mar 2022 16:39:05 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.62.198)
 smtp.mailfrom=xilinx.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.62.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.62.198; helo=xsj-pvapexch02.xlnx.xilinx.com;
Received: from xsj-pvapexch02.xlnx.xilinx.com (149.199.62.198) by
 DM3NAM02FT007.mail.protection.outlook.com (10.13.4.88) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.5081.14 via Frontend Transport; Mon, 21 Mar 2022 16:39:04 +0000
Received: from xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) by
 xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Mon, 21 Mar 2022 09:39:01 -0700
Received: from smtp.xilinx.com (172.19.127.95) by
 xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) with Microsoft SMTP Server id
 15.1.2176.14 via Frontend Transport; Mon, 21 Mar 2022 09:39:01 -0700
Envelope-to: robh@kernel.org,
 dan.carpenter@oracle.com,
 devicetree@vger.kernel.org
Received: from [10.254.241.50] (port=53042)
        by smtp.xilinx.com with esmtp (Exim 4.90)
        (envelope-from <michal.simek@xilinx.com>)
        id 1nWL3d-0007oX-0D; Mon, 21 Mar 2022 09:39:01 -0700
Message-ID: <4cebcbac-1224-b3a4-a887-81afaf1d3cd6@xilinx.com>
Date:   Mon, 21 Mar 2022 17:38:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [bug report] of: base: Introduce of_alias_get_alias_list() to
 check alias IDs
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Dan Carpenter <dan.carpenter@oracle.com>,
        Michal Simek <michal.simek@xilinx.com>
CC:     <devicetree@vger.kernel.org>
References: <20220315150912.GA24574@kili>
 <CAL_JsqLEeM3Wv_a5Ey54rgE5A6bZn85SG5WwiTWXfdH2mSVDYA@mail.gmail.com>
From:   Michal Simek <michal.simek@xilinx.com>
In-Reply-To: <CAL_JsqLEeM3Wv_a5Ey54rgE5A6bZn85SG5WwiTWXfdH2mSVDYA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 21215f42-d43a-4758-0cb8-08da0b595020
X-MS-TrafficTypeDiagnostic: CH2PR02MB6421:EE_
X-Microsoft-Antispam-PRVS: <CH2PR02MB642117E7B59A2A3353A73382C6169@CH2PR02MB6421.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +UMCRcEkd1eAQoeyiz7ATeJT/Qd/iabKVIjgtxikhBlPWh7L9Kz5BvBt2Qib0KxO52NPTcvcVKKU/MxnxQ7RGJ3gyPfokSs2VAaNOcWp05Tp+1LT4HKu7do4CBMz4UGAzgnla/OPVQ5n6T/0M3NCJQ2yQ85tRe6gwE7N38DMA293pSK6Kj1ocgD5lYczoQ2MfGvxjk03F+wShM/9zfZo9efzAUbLfmgsiW5Q/3ppe0fIHHWl6lQHwI0jXPkf7/0GvevZ75QqGBBoAnXIjnBAG7o2ASQbynAWoDSBbkUO8QfV6lDNJg08iv0WZbCXvmnBe7WfZDYaR75s9ZLr3nQTRw5477H3l7gkqTfw8+uXFk9mZuyqx6nHHN499mcI9DDE03cTd2KtksDGcd4sC2QzoszEr5U5tdnIZNy5HrbJ0JwXU7mWwHfCSuyaxKT/V1VizlSqcu3glzcsT2k2PYFrgfC7zMhv3bMnwzCWFSUPEdsZv0mNi4nScHbutzru87jTUIVZqB9EhPQr5Muq50yWwy5w5XaaqPH5KnchGBhJgiuqaszC+4cphTeGq6vrrGOgtMQ9QDbdhGvnSqeZCv9bnCQ9DQIWDQmjfcjTGL2l2I6CDbG5LZYAeDws8Ume0c+TrLUPSHyGujzcQ9UI70Mzl/YQty/+a4baso+XGivGVC5rWtglL3e8YoWP7RkpbkGEWL7SyC/WmKGiugW+m5msp9qmZM0Qx28uW5qwbO/Y75s=
X-Forefront-Antispam-Report: CIP:149.199.62.198;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:xsj-pvapexch02.xlnx.xilinx.com;PTR:unknown-62-198.xilinx.com;CAT:NONE;SFS:(13230001)(4636009)(36840700001)(46966006)(40470700004)(316002)(40460700003)(82310400004)(31696002)(356005)(7636003)(110136005)(5660300002)(9786002)(4744005)(8936002)(8676002)(70586007)(70206006)(2906002)(83380400001)(4326008)(2616005)(47076005)(36860700001)(508600001)(426003)(336012)(186003)(26005)(53546011)(36756003)(31686004)(44832011)(50156003)(43740500002);DIR:OUT;SFP:1101;
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2022 16:39:04.9681
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 21215f42-d43a-4758-0cb8-08da0b595020
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c;Ip=[149.199.62.198];Helo=[xsj-pvapexch02.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-AuthSource: DM3NAM02FT007.eop-nam02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6421
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 3/21/22 17:33, Rob Herring wrote:
> On Tue, Mar 15, 2022 at 10:09 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>>
>> Hello Michal Simek,
>>
>> The patch b1078c355d76: "of: base: Introduce
>> of_alias_get_alias_list() to check alias IDs" from Sep 20, 2018,
>> leads to the following Smatch static checker warning:
>>
>>          drivers/of/base.c:2038 of_alias_get_alias_list()
>>          warn: passing negative bit value 's32min-(-2),0-s32max' to 'set_bit()'
> 
> The 1 user of of_alias_get_alias_list() has since been refactored and
> doesn't use of_alias_get_alias_list() anymore. So I'm just going to
> revert b1078c355d76.

yes. I am fine with it. We can get it back and fix it when it is again needed.

Thanks,
Michal
