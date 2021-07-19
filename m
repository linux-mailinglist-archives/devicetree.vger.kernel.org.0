Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 348673CCDCB
	for <lists+devicetree@lfdr.de>; Mon, 19 Jul 2021 08:13:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233618AbhGSGQG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jul 2021 02:16:06 -0400
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32]:18198 "EHLO
        mx0b-00069f02.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229916AbhGSGQF (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 19 Jul 2021 02:16:05 -0400
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
        by mx0b-00069f02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 16J66Rft003880;
        Mon, 19 Jul 2021 06:12:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : content-type : in-reply-to : mime-version;
 s=corp-2021-07-09; bh=UHeY70ZyEW1PAwbbal6ggqUpGaP7JAGvgFUwa4gZFtY=;
 b=mS9QmhGI64kUG7BBDU2h2q/k8KaUXzwoxa0V/97NFtKtuQK2OVhTc8Lni7FzvQiiyF+o
 qJD1QZFOlp0yMrzlR1tCVYmTBh1eb/UB/m/MQK4bizU4SNnFIDrAEiOOiEVEwv+gTkPE
 ddw+FDa3A4Q619Lzi5+sIeE/DC6nYQt+oExxWiEK/3ves5Iw7qNQ9Q5leOZnd++Pbg8m
 o3iD/OP/vHJULKeO5TT4oHjgmMWM2XwZXIESrA2aaM8mBtEniI60m+vRzh7efvt7zhbE
 1E0QZcq1v2R0SuMhvYZCFxY1qwLrF9CGRZ+8J4P9a0hFxw3kf0oPxsZp+A2/BSptqTb5 ug== 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : content-type : in-reply-to : mime-version;
 s=corp-2020-01-29; bh=UHeY70ZyEW1PAwbbal6ggqUpGaP7JAGvgFUwa4gZFtY=;
 b=ij8wXynx4H0YRhB2Fw50iALPej3n4SqQkKf/8qcRNffLLRHTK77c8+3jhpNWXnW3xdAJ
 pyxi7aWP1b7UeiwHfeAMBOpJ3rpgtlj3//jQigwpg2UhT3ClrR4FI9JXEmjtmYo3IVy8
 QQ6/aqYC4nFMW5OOXVyAkZNtxqy3K/4gVeLjXBCoKPDcpnJ68MGmL8gzoohieB67slAq
 ze06vzAgij1oE+dV4RQeLj7lkMPqSnjKdlR1GTQarPDQj5aAgqozG0nkILoGNDjXzwVs
 I6v4rCKfGku5AskWvFDTIaaxZoygI7yrc1OpaiCj6vyXwq+kwvKgFk+ngvjeMZlPPBTG 4w== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
        by mx0b-00069f02.pphosted.com with ESMTP id 39uptrt54g-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Mon, 19 Jul 2021 06:12:42 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
        by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 16J66ASq057911;
        Mon, 19 Jul 2021 06:12:41 GMT
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2102.outbound.protection.outlook.com [104.47.70.102])
        by userp3020.oracle.com with ESMTP id 39v8ys141s-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Mon, 19 Jul 2021 06:12:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cB451xJG0fLJm8r+kYPrDSTkHF1QNNwmBjIaNqOaSCyFP5Qg4npDRP1TIAMkJSRu5qYNXlUPgtQxaRIuVopDZ41ujCBIs+kukIVBFiUfjMIPuwC4QMsIDWpJp6I1chCvpMiVbe03BE61X9fC1YqRlXK7peNjVHDCsDgNXadQszoCKJQdGGMYqq822qLCjIuW6iBpb/vuHY98gTEOtJzqqi4dCGI//WHqYMQhZeOuPWocp912BVy/STMFCqYmb2yTRJ81qsDzFqX7hctS+NkoH+O0i826QXSowi+Ow85rs5iyUIao1Wg8bgJJNPEkNsF5amfbEUSc/GgM5DNcfNcm2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UHeY70ZyEW1PAwbbal6ggqUpGaP7JAGvgFUwa4gZFtY=;
 b=K/vmTHeipMa70zq1YcxsnN9SZMqmv6wbTLa8K3AyuyNS86QiaR6gkn9ytYkYmZNu2C69tpULBRDJsXHQDAP4s4sFcVkaWjjJIRSYnvQz6dWd9KcVOvtBTTR10Xe3qBFlKnoZATOJFPBnyxsd3do64ojdtB/9Ulp6cz2iwAQ7TdbgMO8p/gefqU/exm2i9lSjayQvydb7yOc86+anJU1w5CplY0DMRJPIqkzf1rZoSY7H5/EA08j5kssDUwW7AMGG2fjiTQ/NOa/KqO2FX2x0QojNV54Q17jR0UoYf79uVYWortUyizUVzkQ2DNI/dhyP97q1F08aqP/lUsY7xsxkSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UHeY70ZyEW1PAwbbal6ggqUpGaP7JAGvgFUwa4gZFtY=;
 b=hNpJGGr6z+iWO2K/qTQ4xZv+GXZCaA4Xe9gG3dtoVDboNcbMHBafRUxHGwF/1++CwNSqggq0bDrQyYpE9JoUKRYMwn8wlnhMngUuaD936QZnEs0D5x7rP/Cmn4K282ZqHzpGNIOG4Yw735padfdO4bLj0JL9ZLVMZ9+70kB6a0g=
Authentication-Results: lists.01.org; dkim=none (message not signed)
 header.d=none;lists.01.org; dmarc=none action=none header.from=oracle.com;
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by MWHPR1001MB2254.namprd10.prod.outlook.com
 (2603:10b6:301:2d::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.23; Mon, 19 Jul
 2021 06:12:39 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5820:e42b:73d7:4268]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5820:e42b:73d7:4268%7]) with mapi id 15.20.4331.033; Mon, 19 Jul 2021
 06:12:39 +0000
Date:   Mon, 19 Jul 2021 09:12:15 +0300
From:   Dan Carpenter <dan.carpenter@oracle.com>
To:     kbuild@lists.01.org, Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     lkp@intel.com, kbuild-all@lists.01.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Peng Fan <peng.fan@nxp.com>, Marek Vasut <marex@denx.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        kernel@pengutronix.de
Subject: Re: [PATCH 09/17] soc: imx: add i.MX8M blk-ctrl driver
Message-ID: <202107181452.0x9rl7rG-lkp@intel.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210716232916.3572966-10-l.stach@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JNAP275CA0039.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4e::6)
 To MWHPR1001MB2365.namprd10.prod.outlook.com (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from kadam (102.222.70.252) by JNAP275CA0039.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4e::6) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.23 via Frontend Transport; Mon, 19 Jul 2021 06:12:29 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0ea34614-7a0e-441a-227e-08d94a7c35be
X-MS-TrafficTypeDiagnostic: MWHPR1001MB2254:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR1001MB22547DD089ADB3CA9B4B040B8EE19@MWHPR1001MB2254.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2733;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 38k6xPKiZs+GFNTGiygwSYGj77CNn4RgL+aNsLklHu22e+D3J+YbNi2DIe1LzeTOVM8wqAGvOj5UyuTvwUacpSLdixEA/RUKpUZE4+YLcKpgDABoXLsCVVOdZaJhUJIVF/biVMFb+k5v9I1rj+uzfsPPpUwtu21Op/wP41HYHbr23LVeHKLHbqxueTzoXeB4dEQa9yLaeC3x/XwuauKV6Uevzozyi7Hqsg3kFCuBtonkpx89p/q9PTvLVRyaiwc9pASgkUCl2CdoytyOt9IfxHuCcwM3SPEjyoHmqE8iDIPLtZ9JuuBmxe1vlMW+kLV0jGyPuiuXOEcWfLtBRXOjHeggLGdxH/pB55y7Rmq8If1140xi/P+8DqtzwzxROdhvjAr23+mCfQIBVqiW+x1O1yMkzYZXLtcEVVRtpC9bEx3j3XgopcsQkZjV7CqIjrbU6BADBdqnF5cf9l/LphKBDDsqyUYnU35wcEM8Mal8xlTbaBKyjwf7qsuERqX2XbyLbaqKclgHFrzlgE4xCPV4GwGwRxUzvVvpz960mh9TZmnUZzO/NczH8X9otUc+FXd+re2JObp5TXZ6l4eTmFKF5G9HqaoKpGyloeUIaKAZ2imR6maKQSeZv+dhxf1ThFta2993SvR+KES8L2R3Bm8ZYOvMZd5Pdixv9FZR1UBNfOAcf81NknmKu1SQX568uHz877EFe5ZXuEfS74Q6A6yBAeiJ8nLUKxBG1NmhdHYnyrU47wpY7typncGtSPXy8xYaXtYARpY7UBg6zP0iVwPdNA8h0JC50qSqd+/ual+nZ7AwVe82RqgJmyM+G4GjeXtB
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR1001MB2365.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(396003)(366004)(376002)(136003)(39860400002)(346002)(54906003)(38350700002)(38100700002)(7416002)(110136005)(9686003)(186003)(83380400001)(52116002)(2906002)(6666004)(1076003)(6496006)(8936002)(478600001)(966005)(956004)(44832011)(36756003)(5660300002)(86362001)(6486002)(26005)(66946007)(4326008)(66556008)(66476007)(316002)(8676002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?INAw1Hnt0C6S1dlEeBbAZXrFgs7szDGOH0zXmmHeByasU+iNswNrR2vueuLv?=
 =?us-ascii?Q?Djp/NTLGfDCksHbJNutiw0IRpjAuE5WPVAs9/wVh6hGqhJyOG/TdpwQp9qzV?=
 =?us-ascii?Q?k6E9q573YVkxUg0QJC1IPFyg5xZZqoLwXhYRk0HqzlQq+9oTu8xnykP0/Ioc?=
 =?us-ascii?Q?6mucVPBwk+rA5CLswh0V8FQgCaqdmjCzyLkFTiA/IcpkYpQvEx0gptpbEKrT?=
 =?us-ascii?Q?0ddbQ5kJTwyBeqdO+Ba3yllwQfNisqUEu4Ut7iO/VjXNQDzqi9a3s9gvXK7B?=
 =?us-ascii?Q?SYeXXganfyRN2UQjGZwS3UdhVZHtv1F+4WNuf304MBc6Tr9swgrGBUeKrXbR?=
 =?us-ascii?Q?x0PqiNPZ5yW3wgUwZgvhGvjQsSp0ZI0TW0thOFWxZpRYKVHp/G5sIS/aWGVg?=
 =?us-ascii?Q?7Bt99TVtYIbYetxWpOyZtsgI7OtZ8H1iKnDJTAUtRJnpzHmV+IV3g6OEy0ZE?=
 =?us-ascii?Q?cr7547w729GqiFAy4NyH3jD7IrOJJ8OMTvxZrmXQ1BItyR0g2yF4cCMt4sgD?=
 =?us-ascii?Q?qHGcG9irRNAs17VHaiFRvQu1wdGACeqDmpZGftGgSlRrJ1+XgRZGWL+lLl5Z?=
 =?us-ascii?Q?x0P3W/w3KRBcjiCcKsLmOWgk9zAvnU/KhTqPzzr60L/jhMe2eahmUAHZ2A6r?=
 =?us-ascii?Q?KQGRKFgItWKXsDi3OJRSykRvlAJLPZEVGD+6XrMzXM5MvrkDrcQ9hWn7qxyF?=
 =?us-ascii?Q?5YrKMALWf2/BTH6EpiWYYMa0SyOMbKJRnoBuYl2N5idV9CqbETRBg/dr8tis?=
 =?us-ascii?Q?T+MT19dVWPlI8At4gdnrJV75qKTRG2XgXEl1AUZ/3z7PR6lUdITAX7nLlonJ?=
 =?us-ascii?Q?uIfsGrlVS6VryawILfvhniqiJepvdp7kYiYEokp57x2z6XFD1QBfyWKYtmZI?=
 =?us-ascii?Q?N0C0Z6ZHIqeDZ6q2CMjc4SwNABWzRz8NEIsvRo9ikl2p+VKqhGHITC/rEyg4?=
 =?us-ascii?Q?DYTCdeGLSzdb/5FntkiiLg5Yov3JgHt4RkOystfPq3sUZ9Pr5b+DcV0Zdto5?=
 =?us-ascii?Q?I8fQKLu3Sa40VP1oPVmoyel1kBHv4jtna6zpHdMWr8MdXUZLT2RxEv3jYxmO?=
 =?us-ascii?Q?Y6h2mf6Sx4Jlj16Bm2uQKj+GY707SXVHj3p5UcvyJ7LWExabe1JSud9i4uVB?=
 =?us-ascii?Q?iXwANJrFSSA9QTZn8NQk+MEV4lYj08N71yQqDZnDlvNx4USto5u3wdRRdsjO?=
 =?us-ascii?Q?m6wB7A6xkHmTw3B9hLBfg779YNjbYp3DhTbAjHMmqITY5oIaRh/v3ItsV8lP?=
 =?us-ascii?Q?pihLYgRG6hFZzgMqGTXLMXCj1S6/foukLuQ8I32q6IywX9zDLSAg5UlkElyL?=
 =?us-ascii?Q?lDQgk5W33n8o81uB386QaU9S?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ea34614-7a0e-441a-227e-08d94a7c35be
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jul 2021 06:12:38.9128
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A6GBvaeZ/xwhv7P8w3nCa170e1LiHEYoQluAgT/pMkmO6/hp/OOI/yJIKRHwbdxwXZAHhX9AF1fD9z25SKlykbcYC6yPMgKyMSvA+G7aD3Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1001MB2254
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=10049 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 mlxscore=0 malwarescore=0
 adultscore=0 phishscore=0 suspectscore=0 mlxlogscore=999 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2107190034
X-Proofpoint-ORIG-GUID: VpBUt4BUBk4PLpGhulJZDI3FslavlQPw
X-Proofpoint-GUID: VpBUt4BUBk4PLpGhulJZDI3FslavlQPw
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Lucas,

url:    https://github.com/0day-ci/linux/commits/Lucas-Stach/i-MX8MM-GPC-improvements-and-BLK_CTRL-driver/20210718-102944
base:   https://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git for-next
config: i386-randconfig-m021-20210718 (attached as .config)
compiler: gcc-10 (Ubuntu 10.3.0-1ubuntu1~20.04) 10.3.0

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>

smatch warnings:
drivers/soc/imx/imx8m-blk-ctrl.c:222 imx8m_blk_ctrl_probe() warn: missing error code 'ret'

vim +/ret +222 drivers/soc/imx/imx8m-blk-ctrl.c

446185fda14696 Lucas Stach 2021-07-17  150  static int imx8m_blk_ctrl_probe(struct platform_device *pdev)
446185fda14696 Lucas Stach 2021-07-17  151  {
446185fda14696 Lucas Stach 2021-07-17  152  	const struct imx8m_blk_ctrl_data *bc_data;
446185fda14696 Lucas Stach 2021-07-17  153  	struct device *dev = &pdev->dev;
446185fda14696 Lucas Stach 2021-07-17  154  	struct imx8m_blk_ctrl *bc;
446185fda14696 Lucas Stach 2021-07-17  155  	void __iomem *base;
446185fda14696 Lucas Stach 2021-07-17  156  	int i, ret;
446185fda14696 Lucas Stach 2021-07-17  157  
446185fda14696 Lucas Stach 2021-07-17  158  	struct regmap_config regmap_config = {
446185fda14696 Lucas Stach 2021-07-17  159  		.reg_bits	= 32,
446185fda14696 Lucas Stach 2021-07-17  160  		.val_bits	= 32,
446185fda14696 Lucas Stach 2021-07-17  161  		.reg_stride	= 4,
446185fda14696 Lucas Stach 2021-07-17  162  	};
446185fda14696 Lucas Stach 2021-07-17  163  
446185fda14696 Lucas Stach 2021-07-17  164  	bc = devm_kzalloc(dev, sizeof(*bc), GFP_KERNEL);
446185fda14696 Lucas Stach 2021-07-17  165  	if (!bc)
446185fda14696 Lucas Stach 2021-07-17  166  		return -ENOMEM;
446185fda14696 Lucas Stach 2021-07-17  167  
446185fda14696 Lucas Stach 2021-07-17  168  	bc->dev = dev;
446185fda14696 Lucas Stach 2021-07-17  169  
446185fda14696 Lucas Stach 2021-07-17  170  	bc_data = of_device_get_match_data(dev);
446185fda14696 Lucas Stach 2021-07-17  171  
446185fda14696 Lucas Stach 2021-07-17  172  	base = devm_platform_ioremap_resource(pdev, 0);
446185fda14696 Lucas Stach 2021-07-17  173  	if (IS_ERR(base))
446185fda14696 Lucas Stach 2021-07-17  174  		return PTR_ERR(base);
446185fda14696 Lucas Stach 2021-07-17  175  
446185fda14696 Lucas Stach 2021-07-17  176  	regmap_config.max_register = bc_data->max_reg;
446185fda14696 Lucas Stach 2021-07-17  177  	bc->regmap = devm_regmap_init_mmio(dev, base, &regmap_config);
446185fda14696 Lucas Stach 2021-07-17  178  	if (IS_ERR(bc->regmap))
446185fda14696 Lucas Stach 2021-07-17  179  		return dev_err_probe(dev, PTR_ERR(bc->regmap),
446185fda14696 Lucas Stach 2021-07-17  180  				     "failed to init regmap \n");
446185fda14696 Lucas Stach 2021-07-17  181  
446185fda14696 Lucas Stach 2021-07-17  182  	bc->domains = devm_kcalloc(dev, bc_data->num_domains,
446185fda14696 Lucas Stach 2021-07-17  183  				    sizeof(struct imx8m_blk_ctrl_domain),
446185fda14696 Lucas Stach 2021-07-17  184  				    GFP_KERNEL);
446185fda14696 Lucas Stach 2021-07-17  185  	if (!bc->domains)
446185fda14696 Lucas Stach 2021-07-17  186  		return -ENOMEM;
446185fda14696 Lucas Stach 2021-07-17  187  
446185fda14696 Lucas Stach 2021-07-17  188  	bc->onecell_data.num_domains = bc_data->num_domains;
446185fda14696 Lucas Stach 2021-07-17  189  	bc->onecell_data.xlate = imx8m_blk_ctrl_xlate;
446185fda14696 Lucas Stach 2021-07-17  190  	bc->onecell_data.domains =
446185fda14696 Lucas Stach 2021-07-17  191  		devm_kcalloc(dev, bc_data->num_domains,
446185fda14696 Lucas Stach 2021-07-17  192  			     sizeof(struct generic_pm_domain *), GFP_KERNEL);
446185fda14696 Lucas Stach 2021-07-17  193  	if (!bc->onecell_data.domains)
446185fda14696 Lucas Stach 2021-07-17  194  		return -ENOMEM;
446185fda14696 Lucas Stach 2021-07-17  195  
446185fda14696 Lucas Stach 2021-07-17  196  	bc->bus_power_dev = genpd_dev_pm_attach_by_name(dev, "bus");
446185fda14696 Lucas Stach 2021-07-17  197  	if (IS_ERR(bc->bus_power_dev))
446185fda14696 Lucas Stach 2021-07-17  198  		return dev_err_probe(dev, PTR_ERR(bc->bus_power_dev),
446185fda14696 Lucas Stach 2021-07-17  199  				     "failed to attach power domain\n");
446185fda14696 Lucas Stach 2021-07-17  200  
446185fda14696 Lucas Stach 2021-07-17  201  	for (i = 0; i < bc_data->num_domains; i++) {
446185fda14696 Lucas Stach 2021-07-17  202  		const struct imx8m_blk_ctrl_domain_data *data = &bc_data->domains[i];
446185fda14696 Lucas Stach 2021-07-17  203  		struct imx8m_blk_ctrl_domain *domain = &bc->domains[i];
446185fda14696 Lucas Stach 2021-07-17  204  		int j;
446185fda14696 Lucas Stach 2021-07-17  205  
446185fda14696 Lucas Stach 2021-07-17  206  		domain->data = data;
446185fda14696 Lucas Stach 2021-07-17  207  
446185fda14696 Lucas Stach 2021-07-17  208  		for (j = 0; j < data->num_clks; j++)
446185fda14696 Lucas Stach 2021-07-17  209  			domain->clks[j].id = data->clk_names[j];
446185fda14696 Lucas Stach 2021-07-17  210  
446185fda14696 Lucas Stach 2021-07-17  211  		ret = devm_clk_bulk_get(dev, data->num_clks, domain->clks);
446185fda14696 Lucas Stach 2021-07-17  212  		if (ret) {
446185fda14696 Lucas Stach 2021-07-17  213  			dev_err_probe(dev, ret, "failed to get clock\n");
446185fda14696 Lucas Stach 2021-07-17  214  			goto cleanup_pds;
446185fda14696 Lucas Stach 2021-07-17  215  		}
446185fda14696 Lucas Stach 2021-07-17  216  
446185fda14696 Lucas Stach 2021-07-17  217  		domain->power_dev =
446185fda14696 Lucas Stach 2021-07-17  218  			dev_pm_domain_attach_by_name(dev, data->gpc_name);
446185fda14696 Lucas Stach 2021-07-17  219  		if (IS_ERR(domain->power_dev )) {
                                                                                    ^
Extra space character.

446185fda14696 Lucas Stach 2021-07-17  220  			dev_err_probe(dev, PTR_ERR(domain->power_dev),
446185fda14696 Lucas Stach 2021-07-17  221  				      "failed to attach power domain\n");
446185fda14696 Lucas Stach 2021-07-17 @222  			goto cleanup_pds;

	ret = PTR_ERR(domain->power_dev);

446185fda14696 Lucas Stach 2021-07-17  223  		}
446185fda14696 Lucas Stach 2021-07-17  224  
446185fda14696 Lucas Stach 2021-07-17  225  		domain->genpd.name = data->name;
446185fda14696 Lucas Stach 2021-07-17  226  		domain->genpd.power_on = imx8m_blk_ctrl_power_on;
446185fda14696 Lucas Stach 2021-07-17  227  		domain->genpd.power_off = imx8m_blk_ctrl_power_off;
446185fda14696 Lucas Stach 2021-07-17  228  		domain->bc = bc;
446185fda14696 Lucas Stach 2021-07-17  229  
446185fda14696 Lucas Stach 2021-07-17  230  		ret = pm_genpd_init(&domain->genpd, NULL, true);
446185fda14696 Lucas Stach 2021-07-17  231  		if (ret) {
446185fda14696 Lucas Stach 2021-07-17  232  			dev_err_probe(dev, ret, "failed to init power domain\n");
446185fda14696 Lucas Stach 2021-07-17  233  			dev_pm_domain_detach(domain->power_dev, true);
446185fda14696 Lucas Stach 2021-07-17  234  			goto cleanup_pds;
446185fda14696 Lucas Stach 2021-07-17  235  		}
446185fda14696 Lucas Stach 2021-07-17  236  
446185fda14696 Lucas Stach 2021-07-17  237  		/*
446185fda14696 Lucas Stach 2021-07-17  238  		 * We use runtime PM to trigger power on/off of the upstream GPC
446185fda14696 Lucas Stach 2021-07-17  239  		 * domain, as a strict hierarchical parent/child power domain
446185fda14696 Lucas Stach 2021-07-17  240  		 * setup doesn't allow us to meet the sequencing requirements.
446185fda14696 Lucas Stach 2021-07-17  241  		 * This means we have nested locking of genpd locks, without the
446185fda14696 Lucas Stach 2021-07-17  242  		 * nesting being visible at the genpd level, so we need a
446185fda14696 Lucas Stach 2021-07-17  243  		 * separate lock class to make lockdep aware of the fact that
446185fda14696 Lucas Stach 2021-07-17  244  		 * this are separate domain locks that can be nested without a
446185fda14696 Lucas Stach 2021-07-17  245  		 * self-deadlock.
446185fda14696 Lucas Stach 2021-07-17  246  		 */
446185fda14696 Lucas Stach 2021-07-17  247  		lockdep_set_class(&domain->genpd.mlock,
446185fda14696 Lucas Stach 2021-07-17  248  				  &blk_ctrl_genpd_lock_class);
446185fda14696 Lucas Stach 2021-07-17  249  
446185fda14696 Lucas Stach 2021-07-17  250  		bc->onecell_data.domains[i] = &domain->genpd;
446185fda14696 Lucas Stach 2021-07-17  251  	}
446185fda14696 Lucas Stach 2021-07-17  252  
446185fda14696 Lucas Stach 2021-07-17  253  	ret = of_genpd_add_provider_onecell(dev->of_node, &bc->onecell_data);
446185fda14696 Lucas Stach 2021-07-17  254  	if (ret) {
446185fda14696 Lucas Stach 2021-07-17  255  		dev_err_probe(dev, ret, "failed to add power domain provider\n");
446185fda14696 Lucas Stach 2021-07-17  256  		goto cleanup_pds;
446185fda14696 Lucas Stach 2021-07-17  257  	}
446185fda14696 Lucas Stach 2021-07-17  258  
446185fda14696 Lucas Stach 2021-07-17  259  	bc->power_nb.notifier_call = bc_data->power_notifier_fn;
446185fda14696 Lucas Stach 2021-07-17  260  	ret = dev_pm_genpd_add_notifier(bc->bus_power_dev, &bc->power_nb);
446185fda14696 Lucas Stach 2021-07-17  261  	if (ret) {
446185fda14696 Lucas Stach 2021-07-17  262  		dev_err_probe(dev, ret, "failed to add power notifier\n");
446185fda14696 Lucas Stach 2021-07-17  263  		goto cleanup_provider;
446185fda14696 Lucas Stach 2021-07-17  264  	}
446185fda14696 Lucas Stach 2021-07-17  265  
446185fda14696 Lucas Stach 2021-07-17  266  	dev_set_drvdata(dev, bc);
446185fda14696 Lucas Stach 2021-07-17  267  
446185fda14696 Lucas Stach 2021-07-17  268  	return 0;
446185fda14696 Lucas Stach 2021-07-17  269  
446185fda14696 Lucas Stach 2021-07-17  270  cleanup_provider:
446185fda14696 Lucas Stach 2021-07-17  271  	of_genpd_del_provider(dev->of_node);
446185fda14696 Lucas Stach 2021-07-17  272  cleanup_pds:
446185fda14696 Lucas Stach 2021-07-17  273  	for (i--; i >= 0; i--) {
446185fda14696 Lucas Stach 2021-07-17  274  		pm_genpd_remove(&bc->domains[i].genpd);
446185fda14696 Lucas Stach 2021-07-17  275  		dev_pm_domain_detach(bc->domains[i].power_dev, true);
446185fda14696 Lucas Stach 2021-07-17  276  	}
446185fda14696 Lucas Stach 2021-07-17  277  
446185fda14696 Lucas Stach 2021-07-17  278  	dev_pm_domain_detach(bc->bus_power_dev, true);
446185fda14696 Lucas Stach 2021-07-17  279  
446185fda14696 Lucas Stach 2021-07-17  280  	return ret;
446185fda14696 Lucas Stach 2021-07-17  281  }

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

