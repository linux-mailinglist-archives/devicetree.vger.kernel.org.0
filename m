Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4455AE1A36
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2019 14:31:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389427AbfJWMbE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Oct 2019 08:31:04 -0400
Received: from mail-eopbgr790123.outbound.protection.outlook.com ([40.107.79.123]:60976
        "EHLO NAM03-CO1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1725775AbfJWMbE (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 23 Oct 2019 08:31:04 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eOCIQsgZxl72KoY//Kd6IJivAMaiSbfxKtD+Yn7MxTJVEcoko4AkwT0tCnXANDfPmA+U61p6xvJstza+AKNiRoEq5yJOOLPK3kg74sW45atXECs2rux2ysXSedA61Yp9LWlnLMYR5R3A1MR011vOCrfZFKVXbh9Znr4uky2LfZYCDGOnWg0Lr0WXtrlYVToy2q5Mw6AHMrjqGD1w/ukl1n7ocgnelncWr2R/kUsn0ZbTGk5qkveIXP3dY+UBGUOdg9ivuMtJaEid/+QCcRhT/H4hsbuQDOzaoJbK+1iwxdyMUtxJ2t0gbO8a2XT+uWIvScq2yO2aKwT5pp/f8HCejA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uir8fVQrhUBUKVlheHuu3wnlnhYEbNrEjACQsU1M8No=;
 b=oUO077wZThILDIrsteEqa7ZZsy0cSun2adVTHxJAMhf92e8dGk1QhNd4YOBZykIQNKUAMstB1L5pDnjLnA/DLjyHOSJylobxAmB/yjfoRMcXNU3QL1FE8WGZ3N/N6J+udyLKWazompMR3qGDvffWroYhmP8vO9piHFwlI08nN2xhLW/avrhVWqFe/g27uPpcfrG6Ba2qm7P9SHn0eWHfcEjZN1AoQau4GIH/FESfzqG6a9l7NT4tG3uDxky1crTv06i8yAgIcn6ngaCiN2PesMpKzaBsLGlbGshtJm5gt/M97xAnsQwAfV0GAbjX5C5i9gbNJl4xBTONo8VGkLRnUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uir8fVQrhUBUKVlheHuu3wnlnhYEbNrEjACQsU1M8No=;
 b=MptGwhToFNNgKKQD9kZ2+khu8tf+2HUkRIeF+ja26oHfWDh0ga1Xabbj5TqaFQn+tTz4GZ23BMHzqqN5hA5czwPT77aAHPPN0O1AHReZQdAgeTiyZthmG/Rwlr/cW0zj4pR+9EQCnEbv7mJirKuaAWM3nniVDB3k1qJinsOymoA=
Received: from BL0PR02CA0021.namprd02.prod.outlook.com (2603:10b6:207:3c::34)
 by DM6PR02MB6764.namprd02.prod.outlook.com (2603:10b6:5:222::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2387.22; Wed, 23 Oct
 2019 12:31:00 +0000
Received: from SN1NAM02FT023.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::202) by BL0PR02CA0021.outlook.office365.com
 (2603:10b6:207:3c::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2387.20 via Frontend
 Transport; Wed, 23 Oct 2019 12:31:00 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT023.mail.protection.outlook.com (10.152.72.156) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2367.14
 via Frontend Transport; Wed, 23 Oct 2019 12:31:00 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
        by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
        (envelope-from <michal.simek@xilinx.com>)
        id 1iNFn2-00066i-2p; Wed, 23 Oct 2019 05:31:00 -0700
Received: from [127.0.0.1] (helo=localhost)
        by xsj-pvapsmtp01 with smtp (Exim 4.63)
        (envelope-from <michal.simek@xilinx.com>)
        id 1iNFmw-0004g7-VM; Wed, 23 Oct 2019 05:30:55 -0700
Received: from [172.30.17.123]
        by xsj-pvapsmtp01 with esmtp (Exim 4.63)
        (envelope-from <michals@xilinx.com>)
        id 1iNFmq-0004de-ND; Wed, 23 Oct 2019 05:30:48 -0700
Subject: Re: [PATCH 5/5] arm64: zynqmp: Add data cells to access efuse
To:     Michael Tretter <m.tretter@pengutronix.de>, robh+dt@kernel.org,
        mark.rutland@arm.com, michal.simek@xilinx.com,
        devicetree@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org,
        Durga Challa <vnsl.durga.challa@xilinx.com>
References: <20191018160735.15658-1-m.tretter@pengutronix.de>
 <20191018160735.15658-6-m.tretter@pengutronix.de>
From:   Michal Simek <michal.simek@xilinx.com>
Message-ID: <2da81dcd-029d-171b-c867-415a1e463911@xilinx.com>
Date:   Wed, 23 Oct 2019 14:30:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191018160735.15658-6-m.tretter@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: =?utf-8?B?Q0lQOjE0OS4xOTkuNjAuODM7SVBWOk5MSTtDVFJZOlVTO0VGVjpOTEk7U0ZW?=
 =?utf-8?B?Ok5TUE07U0ZTOigxMDAxOTAwMSkoNjAwOTAwMSkoNDM4MDAxKSgxNjQwNTQw?=
 =?utf-8?B?MDMpKDUxNzA0MDA1KSgyNDQ1NDAwMikoMTk5MDAyKSgxODkwMDIpKDIwNzc2?=
 =?utf-8?B?MDAzKSg2OTIyNjAwMSkoNjM2OTYwMDIpKDQ3Nzc2MDAzKSg3NDg3NjAwMSko?=
 =?utf-8?B?NjMyNjYwMDMpKDc0NzA2MDAxKSgzNjc1NjAwMykoMjM2NzYwMDIpKDc2Nzg2?=
 =?utf-8?B?MDAxKSg3Njc5NjAwMSkoODE1NDIwMDEpKDU0MzU2MDAxKSgzMTY4NjAwMyko?=
 =?utf-8?B?OTMxMzYwMDEpKDkyNTY2MDAxKSg0NjEwMjAwMSkoNjQ3MDYwMDEpKDgxMzQy?=
 =?utf-8?B?MDAxKSg5MjcyNjAwMSkoNzc5ODIwMDEpKDU5NzY2MDAxKSg1NjgxNjAwNSko?=
 =?utf-8?B?MzM2NDYwMDEpKDgwMDIyMDAxKSg2NTk1NjAwMSkoNzY0ODIwMDEpKDkwMTQ2?=
 =?utf-8?B?MDAxKSg2NTgwNjAwMSkoNjU4MTYwMDEpKDg3OTM2MDAxKSg1Njc3NjAwMSko?=
 =?utf-8?B?NTQzMTYwMDIpKDc0MzY2MDAxKSg0NDM3NjAwNSkoODcyNjYwMDEpKDQzOTYw?=
 =?utf-8?B?MDEpKDQ3OTc2MDAxKSg1MDk4NjAwMSkoOTU2NjYwMDMpKDQ5ODY2MDAxKSg0?=
 =?utf-8?B?NzczNjAwMSkoNTE4NTYwMDEpKDUwNDY2MDAyKSg4NTMwNjAwMikoNzkxMDIw?=
 =?utf-8?B?MDEpKDg1ODUyMDAzKSg4MzA3MjAwMikoODM1MDYwMDEpKDIxMDU2MDAxKSg5?=
 =?utf-8?B?NzMzNjAwMSkoOTQ5NDYwMDEpKDkzNTE2MDAyKSg5NTQxNjAwMSkoOTQzMTYw?=
 =?utf-8?B?MDIpKDk3MTg2MDAxKSg4MDk3NjAwMSkoMzE2OTYwMDIpKDY0MTI2MDAzKSg1?=
 =?utf-8?B?NzU3ODQwMDEpKDgxNjg2MDAxKSg4MzMyMjAwMSkoMTk1ODA0MDUwMDEpKDgx?=
 =?utf-8?B?ODE2MDAxKSgzMTk2NjAwOCkoNzQ2NjIwMDEpKDE5NTgwMzk1MDAzKSg1Mzgw?=
 =?utf-8?B?NjAwMSkoNzQ1MDIwMDEpKDQ3NDQ2MDAyKSg2NTgyNjAwNSkoMzYzODYwMDMp?=
 =?utf-8?B?O0RJUjpPVVQ7U0ZQOjExMDI7U0NMOjE7U1JWUjpETTZQUjAyTUI2NzY0O0g6?=
 =?utf-8?B?eHNqLXB2YXBzbXRwZ3cwMTtGUFI6O1NQRjpQYXNzO0xBTkc6ZW47UFRSOnVu?=
 =?utf-8?Q?known-60-83.xilinx.com;A:1;MX:1;?=
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 023f9bc5-c29c-4c4a-54ce-08d757b4dcc1
X-MS-TrafficTypeDiagnostic: DM6PR02MB6764:
X-Microsoft-Antispam-PRVS: <DM6PR02MB676422DD207F279107A93C32C66B0@DM6PR02MB6764.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-Forefront-PRVS: 019919A9E4
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: u8fwCHGHCaUVYnQcWyFmxzzhlAYhB38SyyVQTkryi5q1ykUzRNoex/jm7YaUoWUFyBPNYXFOFaBsnBA9qoptDKxkmsfz60wRoEY0CrMDwxUAfdHAyuifPL/Vsww6rwO8rrWR2LpzMLOec06Vn3ICn73vkArT5n8yQH31zvR7QZ8x0GoX6tNugztiNMLAVn0i7knMpkcvftD4dXfslAh0AJdgz8Bcufm8CAK3xHnBRzIJhc2FJbtvKpCFtT0FECBbHgrs/LIaJmvwOkXiDY/4ui+xc7ebZ/1wuHuzFZM4S0pmXoQjqHlLpRQzdDNKYBNUlcjU4hZT9qd+NssG8CzUlRkVW7Y3ILxdG7xYpQ0HP94t1DhdFByfKrBkKaTiKDXFzXpQ8ku12IrBp8pKDfwxn5HfsUFJAXZn6iNoZy0x0kzGWYT7vAaY7fV9+x/C9ZiE
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2019 12:31:00.4471
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 023f9bc5-c29c-4c4a-54ce-08d757b4dcc1
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c;Ip=[149.199.60.83];Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB6764
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18. 10. 19 18:07, Michael Tretter wrote:
> From: Durga Challa <vnsl.durga.challa@xilinx.com>
> 
> This patch adds data cells under nvmem node to
> read efuse memory
> 
> Signed-off-by: Durga Challa <vnsl.durga.challa@xilinx.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
>  arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 48 ++++++++++++++++++++++++++
>  1 file changed, 48 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> index 3c731e73903a..73d26177eb96 100644
> --- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> +++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> @@ -128,6 +128,54 @@
>  				soc_revision: soc_revision@0 {
>  					reg = <0x0 0x4>;
>  				};
> +				efuse_dna: efuse_dna@c {
> +					reg = <0xc 0xc>;
> +				};
> +				efuse_usr0: efuse_usr0@20 {
> +					reg = <0x20 0x4>;
> +				};
> +				efuse_usr1: efuse_usr1@24 {
> +					reg = <0x24 0x4>;
> +				};
> +				efuse_usr2: efuse_usr2@28 {
> +					reg = <0x28 0x4>;
> +				};
> +				efuse_usr3: efuse_usr3@2c {
> +					reg = <0x2c 0x4>;
> +				};
> +				efuse_usr4: efuse_usr4@30 {
> +					reg = <0x30 0x4>;
> +				};
> +				efuse_usr5: efuse_usr5@34 {
> +					reg = <0x34 0x4>;
> +				};
> +				efuse_usr6: efuse_usr6@38 {
> +					reg = <0x38 0x4>;
> +				};
> +				efuse_usr7: efuse_usr7@3c {
> +					reg = <0x3c 0x4>;
> +				};
> +				efuse_miscusr: efuse_miscusr@40 {
> +					reg = <0x40 0x4>;
> +				};
> +				efuse_chash: efuse_chash@50 {
> +					reg = <0x50 0x4>;
> +				};
> +				efuse_pufmisc: efuse_pufmisc@54 {
> +					reg = <0x54 0x4>;
> +				};
> +				efuse_sec: efuse_sec@58 {
> +					reg = <0x58 0x4>;
> +				};
> +				efuse_spkid: efuse_spkid@5c {
> +					reg = <0x5c 0x4>;
> +				};
> +				efuse_ppk0hash: efuse_ppk0hash@a0 {
> +					reg = <0xa0 0x30>;
> +				};
> +				efuse_ppk1hash: efuse_ppk1hash@d0 {
> +					reg = <0xd0 0x30>;
> +				};
>  			};
>  
>  			zynqmp_pcap: pcap {
> 

This code is not in mainline yet that's why I am ignoring this patch.

Thanks,
Michal

