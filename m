Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 83AA45112C3
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 09:45:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231744AbiD0Hrj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 03:47:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1358991AbiD0Hrg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 03:47:36 -0400
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com [205.220.165.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D692157830
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 00:44:26 -0700 (PDT)
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
        by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 23R4x5Ip015535;
        Wed, 27 Apr 2022 07:44:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : content-type : mime-version; s=corp-2021-07-09;
 bh=lY//zGXu+w2oN5635ODk7+mwaxya1BKFICSKzN6W82w=;
 b=Cym7XBikpV04oxDr8VVI+Qyq8aCtUiS3erG+EsxJxC9N/9W9NnXkGCnXaE2rQQRhrS7q
 vKkiERU10Kc2FyM/DfX8we1BCcuCUJGwJKdzyy9+kimuoV62iv6SCaeFhYj4jRzTYCo4
 itiHXy++t95Bxxr3TLo7yxfVFiGgGbPWZxswyjFQMU+OajoPkq5w/yo09ZhP449RcRAw
 zxrViB1+Ur4vPrJhlUvke+dCF7Ewv30ffldL2tRo/e2Diyrik7ePwNpA6yLHjFJXqgGv
 aUxzkcVAq/ifkg8tXHlBdESIHzXSQFDpFI9xwM4mO620wgeVSCmdKnC9UdV6Nkr6eiNB Ww== 
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
        by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3fmb9ar6hf-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Wed, 27 Apr 2022 07:44:23 +0000
Received: from pps.filterd (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
        by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.16.1.2/8.16.1.2) with SMTP id 23R7aY4P032563;
        Wed, 27 Apr 2022 07:44:21 GMT
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2174.outbound.protection.outlook.com [104.47.57.174])
        by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com with ESMTP id 3fp5ykdak6-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Wed, 27 Apr 2022 07:44:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OylfXAM9zgY+fwol1LAoui9hpNSUgKHX4qWgfv1ngXMKZcoY18E0x5e6Snn6MQBLhzZxBc7b+xYMepvsqiid6SemenbpkapGyIHRqi1XAIlLvoMe9ryQo7+f0rl6fR63YoC4EY2UVK2DRakD8xPU82s2sy8yed1PYoNf1rKiSMXVA1XdfwgeGlkCY/mutQncwocQuYTFyMxgce9nCudovCxzUPpyj4SpLL1TahFLRh3L9IxPoPAiE2soqf2N3E7/nphNu91K/GlrhCYCvgJhPHKs/qsUe+qJgrDQS/Yds3ibXLjcSP/Ybs1dH5ir9YvPGaHW5W5VVkY5/KuC6FgK/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lY//zGXu+w2oN5635ODk7+mwaxya1BKFICSKzN6W82w=;
 b=YVyZiT+QJuNQ2Y+jKgUPSKPXCbJknb04U+8uQLWs38/YTkHn5XGeq48Casp6YVGV1bgV4zuOCrsoj2/doitB49NXlE3zfmdhnAEolnQ+Kq+uHHh/W/dPgl30sd+EQXBQt6AnRVmOKaxT1gtTytE/p8AfMGbOdBlk5W/p7GElkv8f1RKUq4sAVCE0BHoUWDsp7ySlCeKr7lNC2T32HYsk+AtjDflEZnhxaca2p/PWjCTh/h1MLDljlStu6ehVMQRbBal5U1meNzGRfziI7lS4HtKvPyvvCGBVo/aklEq0ru4U6Ywho6Z3EoxBMco4JNQ0QtNanCI4mp7c64A+PHwMfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lY//zGXu+w2oN5635ODk7+mwaxya1BKFICSKzN6W82w=;
 b=aqZrBGo2pfmbEJ1PM1x0rOwXSHd9mQCxrsCC0DDIHXC3L5FZ2lMCQyWtL0lMzX2gaST6Xsx7A5qiZCZJt/HkAVcVXqzAudwZGn0Fm7GHKxe2V6cXd0k3QylNebVjYQzywpGwfeety6ESHqP1Xr44J3hUc7XLeF8zQ+bC2q6oiGU=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by BN6PR10MB1635.namprd10.prod.outlook.com
 (2603:10b6:405:3::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.15; Wed, 27 Apr
 2022 07:44:19 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::b5d5:7b39:ca2d:1b87]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::b5d5:7b39:ca2d:1b87%5]) with mapi id 15.20.5164.025; Wed, 27 Apr 2022
 07:44:19 +0000
Date:   Wed, 27 Apr 2022 10:44:10 +0300
From:   Dan Carpenter <dan.carpenter@oracle.com>
To:     frank.rowand@sony.com
Cc:     devicetree@vger.kernel.org
Subject: [bug report] of: overlay: rework overlay apply and remove kfree()s
Message-ID: <Ymj0Sg7ubvNeXgyG@kili>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-ClientProxiedBy: ZR0P278CA0167.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:45::15) To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7f3ceb43-32c6-4e24-a036-08da2821bce1
X-MS-TrafficTypeDiagnostic: BN6PR10MB1635:EE_
X-Microsoft-Antispam-PRVS: <BN6PR10MB1635A2F1DF3A8FF4BF1F12F98EFA9@BN6PR10MB1635.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: E8xZfMuAxiNSRlC1rDiyNDv5Sx3PRoHdkGfam0c/sPrzm8qcgabOz+7dfywJ10JXPG2/i6hvHC2a9IB9c+cjZ8kyov5jumwxIRLbeQ3wBczNUClU5qJqtgg8AHqsK+XtDkeiqGMdyCqPo7n0HqPgLVYDo24QuhsbLR5IOhA0tpFXdBrmT6zRg2fFdg2dBRzSryMe7QI0hPThdjVBtJj8oAIKcgq9PJzF93Xg+LlNwiCdmTFVIvYM5QBdQoI2Uia+7ftvzXKzBvusHHwRy/Lw6KOf0e8Il+oV8WJ5Xj6KFsgD9f7ru18Z01h2oOI0kDN0MJfG/hRkOz1OIQoGaA5HxEI+iSTmY9PWgROB5Gm6N4ktnauHzgHSf0Hz9RVAYfNa0fk0/bhOnqmvv2NhkEWsXfLj0yRinn7WkssCNTawFWOzPB/r9bBpz2xVgoswKCaCSMC5ou0+B0JMMQCvqDlIS1O/4WMeSZM55JAaq+UJfKve2bqQVto1IXlHx6OEcqotTQbotIgMDYIcW18g8Pj7ZkrvLCJJMDaZzwNF/NXGuh77AQaA18/LuRdSZ/hbaJt9yD9GKeHbku3ybtRzwX3x7bNuRPnLslFJvZjJF4tbUj70TScV+0M0Jn3kW4VPQy4stSoNYzvmkOleOC+H/WWYljNtaOuSaZZSVNMl/oD+yxeRxJyakQJ39gRQWRRt+2gIs52Wc7aj6MmgzdAesXP+Yw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR1001MB2365.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(7916004)(366004)(66556008)(4326008)(66946007)(186003)(508600001)(66476007)(26005)(6512007)(52116002)(6666004)(6506007)(316002)(8676002)(6916009)(2906002)(9686003)(6486002)(86362001)(8936002)(44832011)(5660300002)(83380400001)(38350700002)(38100700002)(33716001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3s6pecYOTc/ucY52v9nf3cArr76ckk3t2gkhnnRXbBkINqXXfyPxrVmzLInE?=
 =?us-ascii?Q?Kb1A5r9RzYbJcM6Sbk2AOCFmXy4sfRMsjqip3Q1SyDW4SZefmEkHbhCCyXaq?=
 =?us-ascii?Q?infAONyFmJFBmSZIvOLIpxofHZep8IPFEC60TvVMUlfzLpSPqvM0Br+e7KYQ?=
 =?us-ascii?Q?4JbdihvPlTchGSgq0BrP+g4I2UBNZsiEafJ+t9YBajBTcJIYTSqopXuU8PUs?=
 =?us-ascii?Q?ms6w3PV0SkSAtcPKeyIYEp6UTO7P//yi/ECc1q4ma7zTwCPtQY3YD2HfVa1G?=
 =?us-ascii?Q?B1XcvR2UpOd26ZY7k0d4VF8/YDTiHhlC4zjXGk4KMzrfJMjGXLeI7ly1sAbg?=
 =?us-ascii?Q?upY/d61N+rGKx6BVco/CaSQH4JnIV/chm2dcB+N7zjS/LBqJmOLDIQMFa6WM?=
 =?us-ascii?Q?FYvEurQRtWJUesK3QJjj37OXtx9Bn/86fP6/OvJkXYaksA5mPxWmV9WrE/3V?=
 =?us-ascii?Q?PJ3STy4ICnosXsEIhMERB8Kg21aEX3JwwRph3hsRjC4JPIh0cbqatkiWdBo1?=
 =?us-ascii?Q?ZTCb9FnZ4M2EQns43z4bonn9jCf1Z8Y2QXXQmUQBX8FoEJTDnZt27OkoHh8Q?=
 =?us-ascii?Q?uc67zK+UeUOuR+NzQ9NoHLcrNg/3ZCw6VBe1PAKS7t6G7h2I8yDGxQo94iyJ?=
 =?us-ascii?Q?UpR2D6mZiyH6PaLYWXILRQRcA+oE7FciXCwH68xTQAJ1MPTMOpZCaKGZhT8i?=
 =?us-ascii?Q?TkjtoACItX6Df9weeCIYgx98F18iRPwcIgIF2fgJUR+ynBM5OobOUvzBNt+G?=
 =?us-ascii?Q?VZ2LNgovmczLtmFS69fN/ekLBF7leM8KKWfS7JU/Y8zd4egtT+xTTD1bJhV/?=
 =?us-ascii?Q?wwiyLHGkuzT3Q+n5nSYPlrNxMz9QrgI98U3utl3+/KU1UrKcP12l0luUQ9YY?=
 =?us-ascii?Q?qzVC7PhZny4srqhbRoGrlYihre83Ihwo4boWPoiEwNMPT02Q1PaUedUvZzt4?=
 =?us-ascii?Q?AHDb5O/kQDNwvnNgohY2/G0+0K5R3G8e1Dq0liwXmfUhFjxNqVSfbqoxeSQx?=
 =?us-ascii?Q?Du1LL37cOPbQeGHi3TRrav3QeVepdaInjzbdP0lJx/yEpFA6YmeVxwWXRarZ?=
 =?us-ascii?Q?rnx4+1ZbZFBtDyG6/CUR49UjFN2Kw/C/w2khOxj3jHLRyz2rxtfNOE23a1CW?=
 =?us-ascii?Q?zTTkOlJEYJb57NzmvMQpSbUNpKcY4V951lR+xM4b4UTFlDg1gHqT1HrUXPO0?=
 =?us-ascii?Q?3bVvMA5M991BuQJe1LIzmUT3nUrSTqWTPsBqzm7qeC9IcWdYJ3HRV56Gpsja?=
 =?us-ascii?Q?I5NM/+ViumUnupiI9KbY5GsiQ3CnLfY/s6Eoep6Au3JkbSoLEH6oXJWduWBB?=
 =?us-ascii?Q?rMJOqXfKWuqU56A1DhrqqBCBaN/vRYVSD2fdrlr365d+Pl4WIa4LDKZK68KB?=
 =?us-ascii?Q?1DdkVpXqpRF9FZFIG+JpGA3lMr0NFbio2yr7DRTUM+IvaxqZfJzQNrnFd/Z5?=
 =?us-ascii?Q?UnQczmUzfXVES+mq/4xzKnPZg2/0qmdXPKp30iSYHEkwAATrkxECOiowCzGk?=
 =?us-ascii?Q?o8Q2IaQa6JSxCNJbZJ8j3usc8lafMwnHPrAnRBvX0HJ5naYOFrzo2d0cWVk2?=
 =?us-ascii?Q?Up/qO9FDQSYQ4eys2e+Xw+2ypQnUXpo/MZA02SYAw2n7Vfhjr0BAxZJW4WPi?=
 =?us-ascii?Q?AjcCXL5Hldv+KMiGBmXukDbDnFhzD9SK4tnevBmbWB0pMuRRrEv/4CRpvWwi?=
 =?us-ascii?Q?UTyF4GCtxEwEx48iCTQm2EHf70ckz8SkFDfCrGZjyWqolmdFtS6g2gjz3KuY?=
 =?us-ascii?Q?o2YF1C+OSVSJp/wVLO9upsBWuNMQc9s=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f3ceb43-32c6-4e24-a036-08da2821bce1
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2022 07:44:19.5531
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xbom4ULB0qx6fjBlVPGtriJBk7pBSNI+7YKoA5FtdeGZyE+DJpAANaXSBXHRUeAhi6XWCzF0VY46L0F5NmIprFFloiHtyzUC3UI3/MBUBcU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR10MB1635
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.486,18.0.858
 definitions=2022-04-27_02:2022-04-26,2022-04-27 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 mlxlogscore=652 mlxscore=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2202240000
 definitions=main-2204270050
X-Proofpoint-ORIG-GUID: gLTwYtWIPX0vqaN5M_YPn2gnRbBbzO1m
X-Proofpoint-GUID: gLTwYtWIPX0vqaN5M_YPn2gnRbBbzO1m
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Frank Rowand,

The patch 067c098766c6: "of: overlay: rework overlay apply and remove
kfree()s" from Apr 20, 2022, leads to the following Smatch static
checker warning:

	drivers/of/overlay.c:180 overlay_notify()
	error: buffer overflow 'of_overlay_action_name' 4 <= 4

drivers/of/overlay.c
   155  static char *of_overlay_action_name[] = {

We need to add a "init" string at the start of this array.

   156          "pre-apply",
   157          "post-apply",
   158          "pre-remove",
   159          "post-remove",
   160  };
   161  
    162 static int overlay_notify(struct overlay_changeset *ovcs,
    163                 enum of_overlay_notify_action action)
    164 {
    165         struct of_overlay_notify_data nd;
    166         int i, ret;
    167 
    168         ovcs->notify_state = action;
    169 
    170         for (i = 0; i < ovcs->count; i++) {
    171                 struct fragment *fragment = &ovcs->fragments[i];
    172 
    173                 nd.target = fragment->target;
    174                 nd.overlay = fragment->overlay;
    175 
    176                 ret = blocking_notifier_call_chain(&overlay_notify_chain,
    177                                                    action, &nd);
    178                 if (notifier_to_errno(ret)) {
    179                         ret = notifier_to_errno(ret);
--> 180                         pr_err("overlay changeset %s notifier error %d, target: %pOF\n",
    181                                of_overlay_action_name[action], ret, nd.target);
                                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
These are all shifted and so post remove is out of bounds.

    182                         return ret;
    183                 }
    184         }
    185 
    186         return 0;
    187 }

regards,
dan carpenter
