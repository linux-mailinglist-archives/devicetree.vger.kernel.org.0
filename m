Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 751C64BC830
	for <lists+devicetree@lfdr.de>; Sat, 19 Feb 2022 12:34:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238457AbiBSLea (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 19 Feb 2022 06:34:30 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:42118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238736AbiBSLe3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 19 Feb 2022 06:34:29 -0500
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10hn2206.outbound.protection.outlook.com [52.100.157.206])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D063750458
        for <devicetree@vger.kernel.org>; Sat, 19 Feb 2022 03:34:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hEVkcw3jQ1eEHcsJ2biXXPeJiSwYrasNgzvmVIbCM/yqyX2d6C1iYkSm2se94MguOk92GE5XhkVWi7Q2w1twJch40kVSb8lDkPYU2NHwiR+mKNIeXmKIvJ68cER+utFtGbTtOJ13QMrfNxE2M+DlTm/QADegCWWTGX/gLi9Vy3xmXtM3br9MGjiXTT19L5c+oxJ4OaTf5iUDbLMcHKWUJ5efiUkUUilN4tNLmPgaWoBlspMvWNDwIOhcZW6NRs30RFh4UGcp/oUMt7ICszDLPocLAwcsB8cYuELfVGo0dLxw6Zb867O9eXp+S0qWvPbUhtBwbNCWOjFnmoW2Lhz9Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5+iJiA0J6jviS6/j+q9zQZlf+odb/fFUug6nr0gp3M4=;
 b=FhKNhDEe67bW4KQvjwdp0v061veC6rc9KnjJKnR9e6AH+pCqOYJja7xxr8mH3Rw2X9YdDSh8xUuzMy9aIxxYFqwwz7K9bxOjcxjFhydrJzRf7IH0PLlRTDvysifKCqu/H+Wr2R7RVEbXVUmatnzBynUkC/w4fofV2139322m3TKb5ZYB4NPD1B3tF5XDpuBG+uhKjE6kIA+Ggq1vSAMpejPNxHcP8xkI9JxpGnGpox56MfBO0rEzddF0/bLEY/PflEtpcEls+MTiX2kThMAUpw8Oc7VIFHGbHtW2G5vskbmYXkXt//l8+uFp9JnvkjVkkgUgOWcdbolqDVI9uvQn3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 216.169.5.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=u-csd.com;
 dmarc=none action=none header.from=u-csd.com; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ucsd4.onmicrosoft.com;
 s=selector1-ucsd4-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5+iJiA0J6jviS6/j+q9zQZlf+odb/fFUug6nr0gp3M4=;
 b=gRWm/nONLWnCLTOwaBOjLis5ofNsa4NkOKsdz1xycGKLRFjTHGB8cmm7AxIbtmuo4e3xp36Do7sCJxPKY9Hc1nf+lsFX31DUOL7+5D8+PfqH4r5u321i6jCRhtD1wII36x5TpF8b1C8t0K2QqMDNgHBQbiDPIKGH85ZdlEN9dcs=
Received: from MWHPR14CA0028.namprd14.prod.outlook.com (2603:10b6:300:12b::14)
 by BYAPR06MB4295.namprd06.prod.outlook.com (2603:10b6:a03:56::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.17; Sat, 19 Feb
 2022 11:34:00 +0000
Received: from MW2NAM10FT042.eop-nam10.prod.protection.outlook.com
 (2603:10b6:300:12b:cafe::80) by MWHPR14CA0028.outlook.office365.com
 (2603:10b6:300:12b::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.14 via Frontend
 Transport; Sat, 19 Feb 2022 11:34:00 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 216.169.5.195)
 smtp.mailfrom=u-csd.com; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=u-csd.com;
Received-SPF: Fail (protection.outlook.com: domain of u-csd.com does not
 designate 216.169.5.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.169.5.195; helo=UCSDEX1.u-csd.local;
Received: from UCSDEX1.u-csd.local (216.169.5.195) by
 MW2NAM10FT042.mail.protection.outlook.com (10.13.155.173) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.4995.20 via Frontend Transport; Sat, 19 Feb 2022 11:34:00 +0000
Received: from UCSDEX1.u-csd.local (192.168.16.43) by UCSDEX1.u-csd.local
 (192.168.16.43) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.18; Sat, 19 Feb
 2022 05:25:25 -0600
Received: from [199.231.186.244] (199.231.186.244) by UCSDEX1.u-csd.local
 (192.168.16.43) with Microsoft SMTP Server id 15.1.2375.18 via Frontend
 Transport; Sat, 19 Feb 2022 05:25:25 -0600
Content-Type: text/plain; charset="iso-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Description: Mail message body
Subject: HI..
To:     <devicetree@vger.kernel.org>
From:   "Kristina Pia Johansson " <info@u-csd.com>
Date:   Sat, 19 Feb 2022 06:25:25 -0500
Reply-To: <piakjp2022@gmail.com>
Message-ID: <32c08d76-2a64-404e-84c0-8ddf7af4ba6a@UCSDEX1.u-csd.local>
X-CrossPremisesHeadersFilteredBySendConnector: UCSDEX1.u-csd.local
X-OrganizationHeadersPreserved: UCSDEX1.u-csd.local
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5ab8a261-59bb-42a7-6861-08d9f39bb97b
X-MS-TrafficTypeDiagnostic: BYAPR06MB4295:EE_
X-Microsoft-Antispam-PRVS: <BYAPR06MB42959D5B2B93BEC0B0AF658797389@BYAPR06MB4295.namprd06.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Forefront-Antispam-Report: CIP:216.169.5.195;CTRY:US;LANG:en;SCL:5;SRV:;IPV:NLI;SFV:SPM;H:UCSDEX1.u-csd.local;PTR:InfoDomainNonexistent;CAT:OSPM;SFS:(13230001)(136003)(376002)(396003)(39860400002)(346002)(46966006)(40470700004)(36840700001)(70206006)(8676002)(82310400004)(70586007)(356005)(31686004)(3480700007)(82740400003)(81166007)(336012)(7116003)(2860700004)(2906002)(36860700001)(956004)(508600001)(86362001)(40480700001)(47076005)(6706004)(26005)(186003)(6916009)(4744005)(40460700003)(16576012)(31696002)(5660300002)(8936002)(316002)(9686003)(16900700008);DIR:OUT;SFP:1501;
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?SbwyjWSKuv5yqF/RzGbf0ZZeXI4kugGFzusgyECeshspxUUhla2SVv/K7q?=
 =?iso-8859-1?Q?23DSIA2mzxMBL4RbCYH6GYLNkx/pcRBakiJyeC7VOt698ttuesKsm47yma?=
 =?iso-8859-1?Q?Mowm48P2zpax8PV/xlrT18zkPMH8P4KAR3pidGeiuVUpOMfxi4UOQgyoCN?=
 =?iso-8859-1?Q?+D+os3Yqc2x0ww090Lj2jPb+nwy4aYnaSzh1ErVK9jbP6M135XvJ2Z0bht?=
 =?iso-8859-1?Q?3FpAE8AIT5rfGxi7SQmWs6kN0dRzCn7SlC0mOHk3K+CzOCkjXMDzQkyjJg?=
 =?iso-8859-1?Q?2Oj65UWoMbjDwyGB4jk+1z3V0+BlRzKzSJF2wlW8Fl9hbcAB0Je5k9l5pS?=
 =?iso-8859-1?Q?CS4ufArMGDCinwX7WTB40Z05JzlVrr3ccw0KIZR7/DOcPIUFZijva2L3qE?=
 =?iso-8859-1?Q?6mlrYDrEoCy0m6Yp9v+VJOgju9SnCrhXJJml8ILNfQXOokKBhzoL//zy9p?=
 =?iso-8859-1?Q?rcdO04DjlO3bME+A45HiS7Rxm7xRzCSm5ElvOVNsfVOGf4iODALmo6t9XP?=
 =?iso-8859-1?Q?N3BJD4NX+vrlDZ+WEzvAaTB+LxEwkcCU0GTCoHZrjCIBYnH2/m4uaOiIig?=
 =?iso-8859-1?Q?kv00u5e8mM9661wl6Gotx3yPxW5VpiBMqfLJLbFVKnQEOfPlBxqlvGn9ma?=
 =?iso-8859-1?Q?DGjqIi39je9UNyVg5Ulz6isUzRpXi8EwfMZXugV5tY8Sg1/DK04xRnORwF?=
 =?iso-8859-1?Q?JKAJmWc5f76Jmcb22xKCTD9NAr1TBCa5K3HEQepqzr7qFX04AhFNIVCKBD?=
 =?iso-8859-1?Q?xjhIa9ysPdLLdbAL3JFWvOpKZse+5fHVpfQRjZyqCT7VEZCSYE4mqadh9m?=
 =?iso-8859-1?Q?pxsU/rGrwRXVyCKQ2VsaOkDc74pEspFFtanQErJP44aq+18p5rxjSm6cFg?=
 =?iso-8859-1?Q?FB/j9ybqBRf1zgytfsyvZ3burDQtVZAD1qDMp9pru1LSW4kvB6ZPfFLN7o?=
 =?iso-8859-1?Q?8pZ/JYQ1cKeyOlL+jX2Ukv7j6XDQoqZZIf3qLPqL6GxyNa2EaU0LKpaRDN?=
 =?iso-8859-1?Q?wEHbHhl4nopp8vxVRluQyta3j/fLaWYjFBiNeGuRd26ziqqnkOG64uI/I1?=
 =?iso-8859-1?Q?54Bzo65W/fvfRH3toHmYf/8=3D?=
X-OriginatorOrg: u-csd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2022 11:34:00.5895
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ab8a261-59bb-42a7-6861-08d9f39bb97b
X-MS-Exchange-CrossTenant-Id: 663d4886-a028-4654-8be0-f6e600c88247
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=663d4886-a028-4654-8be0-f6e600c88247;Ip=[216.169.5.195];Helo=[UCSDEX1.u-csd.local]
X-MS-Exchange-CrossTenant-AuthSource: MW2NAM10FT042.eop-nam10.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR06MB4295
X-Spam-Status: No, score=3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,FREEMAIL_FORGED_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,RCVD_IN_SBL_CSS,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: ***
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi

I hope that you are at your best and doing well. The purpose of this letter=
 is seeking for a pen pal like friendship and I'd love to and be honored to=
 be friends with you if you do not mind.. If the Idea sounds OK with you, j=
ust say yes and we can take it on from there. I look forward to hear hearin=
g from you.. My name is Kristina From Sweden 36 years , this will mean a lo=
t to me to hear back from you.

Warm Regards.

Kristina
