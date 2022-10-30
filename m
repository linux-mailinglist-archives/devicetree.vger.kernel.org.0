Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4729D612B10
	for <lists+devicetree@lfdr.de>; Sun, 30 Oct 2022 15:52:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229544AbiJ3Owz convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Sun, 30 Oct 2022 10:52:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229515AbiJ3Owy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Oct 2022 10:52:54 -0400
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10hn2249.outbound.protection.outlook.com [52.100.155.249])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 835EAC16
        for <devicetree@vger.kernel.org>; Sun, 30 Oct 2022 07:52:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YlI/dbAUlNzMu4n6k4PgEDRwsuGSNxc0yR4WNxtpHAht1alitVAJSK/TqLHkerBWTHELF8vwwqn6KZwHpCmKzGaVUkLv192hjXLEagkpVVdij1s/6dwgF2ekJVz14dv4tbipW3NURbRM8KQ6MpQ+yhCFJrNxET7uK9Ru6qr++aoGxRcD/tghHKVT8A+zpFQLKeBK19jpTwz8dF+03GWZfuPXYYNSvzhZoSOvSrv7Ir8P8WOoNi27U47sumYIPp4kaBbSoZ2nb9t+v78m/RPuvsZvIWnnyZhnkx1Bl1s5qCcvtM3TE6qYESJBFl+5W1QcWb7TDHvIOPQyS6/53tNNSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=71b8Hcq0jbWLm9Mr1IJyvq/N3UExkjznuA19heg3urU=;
 b=GeL4qUDHlLOjEjpAkURqGYoPRPyFnpp/Y1Rgkxm70hTIDLUnNROAR0HLy5U+BZwBqMJRrGZbAvyE3VKZY7Tcwr9P4ZSQWIoC9Ch/9S9cJA2PkIiDE0P6/hrRrOf4kx2bGdwkfZF9XFULzXfZp+712LjWCx2htAqHDA0SKaGAVXyNNQ/TEfcmQT7SAB7I2ZYPjRQOg+vqiPmHolmEzSYPmDfBCggQuHnP8yMY6lFpNEcKB6ntMLGheA93n+DwzMPeul1h4ZCoJZGEGTQAogXS82QIBTRIKlgEjEXINwJ0te9EpL1RDLhO8Be7P+e9oKPXaJ8VqShggFxAwFN2Ku3A7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 209.184.167.3) smtp.rcpttodomain=vger.kernel.org
 smtp.mailfrom=sheldonisd.com; dmarc=none action=none
 header.from=sheldonisd.com; dkim=none (message not signed); arc=none
Received: from MW4PR04CA0086.namprd04.prod.outlook.com (2603:10b6:303:6b::31)
 by BYAPR15MB3048.namprd15.prod.outlook.com (2603:10b6:a03:fc::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.28; Sun, 30 Oct
 2022 14:52:50 +0000
Received: from MW2NAM12FT097.eop-nam12.prod.protection.outlook.com
 (2603:10b6:303:6b:cafe::ab) by MW4PR04CA0086.outlook.office365.com
 (2603:10b6:303:6b::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.15 via Frontend
 Transport; Sun, 30 Oct 2022 14:52:50 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is
 209.184.167.3) smtp.mailfrom=sheldonisd.com; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=sheldonisd.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 sheldonisd.com discourages use of 209.184.167.3 as permitted sender)
Received: from mail.sheldonisd.com (209.184.167.3) by
 MW2NAM12FT097.mail.protection.outlook.com (10.13.181.55) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.5791.15 via Frontend Transport; Sun, 30 Oct 2022 14:52:50 +0000
Received: from MAIL-365.ad.sheldonisd.com (10.1.16.82) by
 MAIL-365.ad.sheldonisd.com (10.1.16.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Sun, 30 Oct 2022 09:49:02 -0500
Received: from [193.47.61.101] (193.47.61.101) by MAIL-365.ad.sheldonisd.com
 (10.1.16.82) with Microsoft SMTP Server id 15.1.2106.2 via Frontend
 Transport; Sun, 30 Oct 2022 09:49:02 -0500
Content-Type: text/plain; charset="iso-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: 8BIT
Content-Description: Mail message body
Subject: [EXTERNAL EMAIL - USE CAUTION] Greetings!   
To:     <devicetree@vger.kernel.org>
From:   "Mr. Paul Morgan" <wendyarandas@sheldonisd.com>
Date:   Sun, 30 Oct 2022 15:49:02 +0100
Reply-To: <paulmorgan5077@gmail.com>
Message-ID: <ab6e1372-1014-4a72-9b00-6116d98d4bcd@MAIL-365.ad.sheldonisd.com>
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW2NAM12FT097:EE_|BYAPR15MB3048:EE_
X-MS-Office365-Filtering-Correlation-Id: c7f25c46-edc6-4f3a-705d-08daba866ad5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?SFg1jNQnJYFxOmKTpME23ttccXDKPzUBp2oj6MiBmWXnOvu8wzik4RASWC?=
 =?iso-8859-1?Q?o32YllqO4vjFo/gdLgu51+eBnLUfepJzQ7DvKyyQGYC1f+0ayZljkzOt5g?=
 =?iso-8859-1?Q?MtMJsFtU30C3WvBOJmItgwQn7imBhacN4yKfFTKZzFaBWQ78FEPS6XNFCO?=
 =?iso-8859-1?Q?nWUrrZfg2zSYx+ZipwiWe0okjMlwlLV+aYRCd+eHjm8Lf8Ya/sGkK2EERW?=
 =?iso-8859-1?Q?/EijSNJVhhLS+r82IXriJT/UCZhNO4p9Qr6gcnfgqzm9XBW5Yiepnal40J?=
 =?iso-8859-1?Q?vTitZ3DYl06jzz/yisO5rKsgELtHFmpVyTti+mFBdGQ8gh596rEu1IvohC?=
 =?iso-8859-1?Q?B7lvfrUtuu6Yp29Y1YQeQMeFq3Wd0rfdp4jcpgRCBrRpKxe5fTVoPmivpl?=
 =?iso-8859-1?Q?8It9Opgzp+0iW7aiM3eH9v1hGwY9zHqjBXv7k/yRb3IMQvGbhNySBZSfxK?=
 =?iso-8859-1?Q?eMClhyLy/HAsH6rA3PfTo5ZQ4kFVuwikbC4Cnw/hYTYN2wxULQmKxsiLWT?=
 =?iso-8859-1?Q?8DSdtF3JSDBcg/bQVNAe3i1KvLCGY6e8AWkNmzmVxRCTlWDDOGSC759Kjw?=
 =?iso-8859-1?Q?2ectAUetgoMfDm5oA0HuYeQ+cgXds9pz34oj7Xs4yyYinuC7IDjii7KI5l?=
 =?iso-8859-1?Q?DJkQFMVCjtS4SGKEzTj7rWpP0phchLDbCn5pB68zBhy99bnYNnzP3YX03c?=
 =?iso-8859-1?Q?a3Miwf0Wun6vMMuUf90VyxuVzrKADjnCmv7PDo/et6F4DUqfXOoXLl59WB?=
 =?iso-8859-1?Q?E+bfK2yoY4HbtYgeyzDF+KgC9hkDFv9u9yp5Cu2dDkJdJsdhJC0xtqmR42?=
 =?iso-8859-1?Q?Z+wh3fgGdfS09RCoJxlZVpuBixfSmAesC6dlovTzOqW55blhrhCM1oOCt0?=
 =?iso-8859-1?Q?9iQQl8XvCNJniA7ktNzOCMz1k44cRALIM9NU/Vkqo6cwB0YPSObMShYGsB?=
 =?iso-8859-1?Q?BxnCAXN3txdyGkEIBQsIrD171gMblM8Hdu2OKuTxts1CQURS2bpl8OhjC9?=
 =?iso-8859-1?Q?3z1YQHOhOfjYFyGhzOPuqWCo8X/CFvDELwQOxmoo9528kVDnPceeYloLAQ?=
 =?iso-8859-1?Q?lqZiouCxJOxlZVkQsK2eAboKf4xJlzJ/H4h6nsOxIb/IsKyiL9decm73aq?=
 =?iso-8859-1?Q?KFUMsPZeUGl4PrMZntpgBVqKiy51THGSDpSgEqzWQJFTxHC3yFxBywmnyN?=
 =?iso-8859-1?Q?0mfsW1/k6oiKbj2Yw2oooMwLbzZW56wgYJvuGORdUvvZo1RWfBEfMPec?=
X-Forefront-Antispam-Report: CIP:209.184.167.3;CTRY:US;LANG:en;SCL:5;SRV:;IPV:NLI;SFV:SPM;H:mail.sheldonisd.com;PTR:mail.sheldonisd.com;CAT:OSPM;SFS:(13230022)(396003)(346002)(136003)(39860400002)(376002)(451199015)(46966006)(40470700004)(36840700001)(356005)(41320700001)(31686004)(82310400005)(6706004)(8936002)(4744005)(7596003)(786003)(70586007)(316002)(16576012)(40480700001)(70206006)(8676002)(478600001)(83170400001)(41300700001)(426003)(2906002)(2860700004)(7636003)(83380400001)(6916009)(42882007)(26005)(186003)(336012)(47076005)(40460700003)(956004)(5660300002)(36860700001)(82740400003)(31696002)(16900700008);DIR:OUT;SFP:1501;
X-OriginatorOrg: sheldonisd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2022 14:52:50.4603
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c7f25c46-edc6-4f3a-705d-08daba866ad5
X-MS-Exchange-CrossTenant-Id: 3237ab13-a154-4aab-bc15-73e6206d6acc
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3237ab13-a154-4aab-bc15-73e6206d6acc;Ip=[209.184.167.3];Helo=[mail.sheldonisd.com]
X-MS-Exchange-CrossTenant-AuthSource: MW2NAM12FT097.eop-nam12.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB3048
X-Spam-Status: No, score=1.3 required=5.0 tests=BAYES_50,
        FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS,
        SPF_PASS,T_HK_NAME_FM_MR_MRS autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

CAUTION: This email originated from outside of the organization. DO NOT click links, provide credentials or open attachments unless you validate the sender and know the content is safe.

Good day,

I would like to get in touch with you.
Please advise if I am contacting the right person.

Sincerely,

Mr. Paul Morgan.
