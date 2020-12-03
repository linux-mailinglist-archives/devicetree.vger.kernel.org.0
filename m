Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DCAB72CD097
	for <lists+devicetree@lfdr.de>; Thu,  3 Dec 2020 08:50:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727106AbgLCHuE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Dec 2020 02:50:04 -0500
Received: from mail-dm6nam10on2088.outbound.protection.outlook.com ([40.107.93.88]:47872
        "EHLO NAM10-DM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1725912AbgLCHuD (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 3 Dec 2020 02:50:03 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TkBIF9OBDnAhxyj73x0/CrZrS6O8kCuxWAGvYwH3z5jC8UjB0GjeFaa/17Iv5otjxnTphYjxjJdn5KeatnrYds9BQNRdphz0H13ACCVPKwtaM2au9Nxissbq1NyyIE6xoygMrjZ6VR0NRyjAgKMafURDwdHSt0TNxWwIQlWVdhJ/XOFJEvJFtL+5HQVpm7hfNhjIIQUsUN1XgeOvbNUhLp4sn6J6IFvw/sjFWecCWEuurIb/zDLZMnuTPdUYOUW5koDeCI/dnI1bz1bnkcZ7e7fZJFeN9DPGy6iGybhorvtf1MnXe89IVDMohpZDE7rJk71yby42wEgJz+KRgY0UCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hw7tnnz9f/kwkVD10mVlKhiHOiUutLluOLzSZV2qV3E=;
 b=LDnuI+RNJLRnib5MB0n41KvPgTmDQh8NGd11+Lahft4Y1jlJZX1w6JVHhKfbjSrejsDiSDWW/UTP5kCX7+8LCTCB8IwXZEE0RIsceB3wIA11/wZkGBcwcO9aQyD+uQGsG9AgyjxOBGV5H3DOVOgDuVLKctTQ5pKn5HgTDG7JbSZdJMjjXD9UJPBYbI5HGtVbTiIiiXkdnhOUlqrjUDQfoohsoHVZTIAN5R3V4v9A9xMY6rCcJVkMJGUvQzhILQ1iL5aREaaRRq8tiKtOhzD8ShlmSdun4QKlZp+WgPctSaJfGTSkDlIWpHynryd+MnPM8D7rIc34jmru9AbGKVuEww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.62.198) smtp.rcpttodomain=pengutronix.de smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hw7tnnz9f/kwkVD10mVlKhiHOiUutLluOLzSZV2qV3E=;
 b=mpoGWymjh9bZVfL4gDYDQqdgVlr+m3QKx5nIJLlH5pYnCkPRyJqIUcWMcq6LXHtL0msLsCBnUFM0LWbNK14K+FSpFTYSlIQcWkOZ++WezRHq7iNh6lMzBemxr89AZDvREWxEZP6z4xX4Aua5OydksXI2epfW1cUmE6w6zlMvBUE=
Received: from SN6PR05CA0034.namprd05.prod.outlook.com (2603:10b6:805:de::47)
 by SN6PR02MB5168.namprd02.prod.outlook.com (2603:10b6:805:78::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.23; Thu, 3 Dec
 2020 07:49:09 +0000
Received: from SN1NAM02FT007.eop-nam02.prod.protection.outlook.com
 (2603:10b6:805:de:cafe::bd) by SN6PR05CA0034.outlook.office365.com
 (2603:10b6:805:de::47) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.5 via Frontend
 Transport; Thu, 3 Dec 2020 07:49:09 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.62.198)
 smtp.mailfrom=xilinx.com; pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.62.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.62.198; helo=xsj-pvapexch02.xlnx.xilinx.com;
Received: from xsj-pvapexch02.xlnx.xilinx.com (149.199.62.198) by
 SN1NAM02FT007.mail.protection.outlook.com (10.152.72.88) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.3611.27 via Frontend Transport; Thu, 3 Dec 2020 07:49:09 +0000
Received: from xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) by
 xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1913.5; Wed, 2 Dec 2020 23:49:03 -0800
Received: from smtp.xilinx.com (172.19.127.96) by
 xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) with Microsoft SMTP Server id
 15.1.1913.5 via Frontend Transport; Wed, 2 Dec 2020 23:49:03 -0800
Envelope-to: michal.simek@xilinx.com,
 kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org,
 robh+dt@kernel.org,
 devicetree@vger.kernel.org,
 m.tretter@pengutronix.de
Received: from [172.30.17.109] (port=36106)
        by smtp.xilinx.com with esmtp (Exim 4.90)
        (envelope-from <michal.simek@xilinx.com>)
        id 1kkjMN-000801-BA; Wed, 02 Dec 2020 23:49:03 -0800
Subject: Re: [PATCH] dt-bindings: xlnx,vcu-settings: fix dt_binding_check
 warnings
To:     Michael Tretter <m.tretter@pengutronix.de>,
        <devicetree@vger.kernel.org>, <michal.simek@xilinx.com>
CC:     <robh+dt@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <kernel@pengutronix.de>
References: <20201202090522.251607-1-m.tretter@pengutronix.de>
From:   Michal Simek <michal.simek@xilinx.com>
Message-ID: <6029fb9a-bacb-1db0-294f-096323374535@xilinx.com>
Date:   Thu, 3 Dec 2020 08:49:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201202090522.251607-1-m.tretter@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7821fd08-e63c-4604-4d09-08d8975feaff
X-MS-TrafficTypeDiagnostic: SN6PR02MB5168:
X-Microsoft-Antispam-PRVS: <SN6PR02MB5168D409CFDD9E2882B738CAC6F20@SN6PR02MB5168.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qVDYnJXaNZoWVJxH93TtSaX4DW0BT5MU/qcDkOFxHlC3ZlkIGM7js6x+jhYcs0lNSYivfAuyYaStcvH+QyKmExinpL11Yz0DMAgIVE8HW0nXQ5/quwqKn20q1bEsCtDdtaEF1LsyYmcAzhjN7oWLfiaCjoyY8g7zmfZZqyPO1pr/43fFvsBUbggHsyaFHr9Kx3DV+Y1FoEvfJpmg95CC1eoI33hHydF6OECR89ZmN4EFN4OV3wUAB+pifOPBaap96mIdCj6Rx7nTW69mc+TqQ7QtFsnI1xRn0VxsXwjTKY5Hz19g6qJZqTK0F/I5qN/DBbmJg5CJdNemuSCkyOfRNA3TXHU+fF1Y30fU9dvCywLip5vkVl1tukUNZOwJBSS+9V9hzcKO1jhbU7Q6Umrr5BitxrrVdfdVEPEO7fGezIkqmC0oNmHNec4seiah2ZryUTa2QHQSMbvJmr+QgpMaZYVuV9+x510x0US6Yh5IYZdVF9M8Tej9rv1huqCw1y/veoN/PQSdyb68ORwC6pXm6g==
X-Forefront-Antispam-Report: CIP:149.199.62.198;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:xsj-pvapexch02.xlnx.xilinx.com;PTR:unknown-62-198.xilinx.com;CAT:NONE;SFS:(4636009)(346002)(396003)(136003)(376002)(39860400002)(46966005)(2906002)(336012)(36906005)(478600001)(8676002)(426003)(82740400003)(44832011)(110136005)(8936002)(186003)(966005)(2616005)(26005)(54906003)(9786002)(5660300002)(316002)(70586007)(70206006)(7636003)(83380400001)(356005)(47076004)(31686004)(4326008)(31696002)(36756003)(82310400003)(50156003)(43740500002);DIR:OUT;SFP:1101;
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Dec 2020 07:49:09.2392
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7821fd08-e63c-4604-4d09-08d8975feaff
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c;Ip=[149.199.62.198];Helo=[xsj-pvapexch02.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-AuthSource: SN1NAM02FT007.eop-nam02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB5168
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 02. 12. 20 10:05, Michael Tretter wrote:
> When running make dt_binding_check, the xlnx,vcu-settings binding
> triggers the following two warnings:
> 
> 	'additionalProperties' is a required property
> 
> 	example-0: vcu@a0041000:reg:0: [0, 2684620800, 0, 4096] is too long
> 
> Fix the binding and make the checker happy.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
> 
> Hi,
> 
> The xlnx,vcu-settings binding was reviewed [0] before the bot started to
> run automated tests on the device tree bindings, but now produces some
> warnings. The original patch that introduces the binding is still in
> Michal's tree and I am not entirely sure how to handle it, but here is a
> patch.
> 
> Michael
> 
> [0] https://lore.kernel.org/linux-arm-kernel/20200429213659.GA9051@bogus/
> ---
>  .../bindings/soc/xilinx/xlnx,vcu-settings.yaml    | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml b/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml
> index 378d0ced43c8..cb245f400287 100644
> --- a/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml
> +++ b/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml
> @@ -26,9 +26,18 @@ required:
>    - compatible
>    - reg
>  
> +additionalProperties: false
> +
>  examples:
>    - |
> -    xlnx_vcu: vcu@a0041000 {
> -          compatible = "xlnx,vcu-settings", "syscon";
> -          reg = <0x0 0xa0041000 0x0 0x1000>;
> +    fpga {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        xlnx_vcu: vcu@a0041000 {
> +            compatible = "xlnx,vcu-settings", "syscon";
> +            reg = <0x0 0xa0041000 0x0 0x1000>;
> +        };

IIRC we had been discussing this recently and Rob wanted to have just
1/1 mapping here.

Take a look at 0db958b689ca9.

Thanks,
Michal

