Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 62D35581019
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 11:39:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232374AbiGZJjg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 05:39:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231760AbiGZJjf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 05:39:35 -0400
Received: from GBR01-LO2-obe.outbound.protection.outlook.com (mail-lo2gbr01rlhn2164.outbound.protection.outlook.com [40.95.78.164])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45A955FEE
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 02:39:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i/UN/eBvYNK1nGdxS7l2OJhU9IEjKrYSZspYYdstfsyjNGw55l7wWNppS55nZzBsNycNKA00RE1Gd+K4vKT0iTe8CHfNi0evFwGhHnhcDDP+tkb9F8Q8Torag34/CwsM2z2EwZ4C+VsCjus2Ora6/FVbggFolKkLwdMXeYF4yT71I1Pt3NqFQUdcbzvtsObIa0hn2B2U7ykmjLYii2GrIFTXu3+2qneeHUF+15TAVDMR1vwqH5g2GvParHi1ZZ9zCoT5DPKpo/ZonoKC3PAa4fDh49Y0kdKWFiDJqmZD/7sz9HCKHIox0MPTcKxlGIPM47xVNncic4BP6p+L9Tdnvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MZrqcgs5EYdFlLj39xkqBcXV33P0T+h/vT0D5IREmaI=;
 b=KP3qogJJ5jK8/z4XnFIr1ce3xyTEZD8clFRtXePXGyxDwecmSUWJCEihmfoycjvYESL0LHnyAcG6AfGIclgeMRKKMrT2dUwOh/q6IBD2qGAQWPLuJ6GZTj5dyCcs6AFD7hXauvi3dcjkwDfosDQY8r3hPZMumjPJPIyZgijSfnSRjwC/4kVLpRnXcQyLLWWKUzhDAeNAXBD2IqWEl4xGfVDYtmHoNH0Z6eyQinL5xLHNElZb+xjD+U+zuZtlO/jEn3r00kmszcrLAO9W37pbuLibDeGaZyLGteNBJKkdrabcF+9x1yZdxCLxgIHQwwW+ZcbhUClNJYemeWL7OBawXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=permerror (sender ip
 is 81.144.215.152) smtp.rcpttodomain=nvidia.com smtp.mailfrom=info.com;
 dmarc=none action=none header.from=info.com; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=KPEP.onmicrosoft.com;
 s=selector1-KPEP-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MZrqcgs5EYdFlLj39xkqBcXV33P0T+h/vT0D5IREmaI=;
 b=mtTI9jCsr/xZkPPV9Z57DdGzcrcPTRgElndjA8OAgzdUBrAuc/CIX9ajHXhNd+2o1kZtfBrWJBKUiJWSslWRUM7kr4YYc0BimxNgImsO9ert0j2DSJwWtI31ndQlEwsBbGK68tcdz1TuPMmB3arHgHFUa5ATlUyWlYna2KeU4C8=
Received: from AM6PR10CA0043.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:209:80::20)
 by CWXP265MB2695.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:88::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.19; Tue, 26 Jul
 2022 09:39:26 +0000
Received: from VE1EUR03FT053.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:209:80:cafe::17) by AM6PR10CA0043.outlook.office365.com
 (2603:10a6:209:80::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.18 via Frontend
 Transport; Tue, 26 Jul 2022 09:39:26 +0000
X-MS-Exchange-Authentication-Results: spf=permerror (sender IP is
 81.144.215.152) smtp.mailfrom=info.com; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=info.com;
Received-SPF: PermError (protection.outlook.com: domain of info.com used an
 invalid SPF mechanism)
Received: from hybrid.ecis.police.uk (81.144.215.152) by
 VE1EUR03FT053.mail.protection.outlook.com (10.152.19.198) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.5458.17 via Frontend Transport; Tue, 26 Jul 2022 09:39:26 +0000
Received: from EPHQEXCH1INP.netr.ecis.police.uk (10.242.24.5) by
 ephqexch1inp.netr.ecis.police.uk (10.242.24.5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.18; Tue, 26 Jul 2022 10:39:06 +0100
Received: from [185.225.73.181] (10.242.234.115) by mail.ecis.police.uk
 (10.242.24.5) with Microsoft SMTP Server id 15.1.2375.18 via Frontend
 Transport; Tue, 26 Jul 2022 10:39:05 +0100
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Description: Mail message body
Subject: EXTERNAL -  HELLO GOOD DAY,
To:     Recipients <donate@info.com>
From:   " Mrs. Sonia Toure. " <donate@info.com>
Date:   Tue, 26 Jul 2022 02:39:03 -0700
Reply-To: <soniatoure057@gmail.com>
Message-ID: <50799e48-7af6-4122-9be8-c4abd3bfc6fb@EPHQEXCH1INP.netr.ecis.police.uk>
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8d62f29a-59a2-470a-605b-08da6eeabad9
X-MS-TrafficTypeDiagnostic: CWXP265MB2695:EE_
X-MS-Exchange-SenderADCheck: 2
X-MS-Exchange-AntiSpam-Relay: 1
X-Forefront-Antispam-Report: CIP:81.144.215.152;CTRY:GB;LANG:en;SCL:5;SRV:;IPV:NLI;SFV:SPM;H:hybrid.ecis.police.uk;PTR:InfoDomainNonexistent;CAT:OSPM;SFS:(13230016)(4636009)(39860400002)(136003)(376002)(396003)(346002)(40470700004)(46966006)(336012)(47076005)(35950700001)(9686003)(2906002)(956004)(26005)(6200100001)(82310400005)(81166007)(40460700003)(31696002)(86362001)(356005)(82740400003)(40480700001)(83380400001)(70206006)(7366002)(41300700001)(8936002)(6862004)(6706004)(5660300002)(7406005)(7416002)(70586007)(16576012)(8676002)(316002)(498600001)(966005)(2860700004)(31686004)(62346012);DIR:OUT;SFP:1023;
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RzEzcjJMUWNheVdZeHM1dm5BSmRWalh6YUhPSExLT043d1VhbVF1RmViWWxh?=
 =?utf-8?B?dVB5ZnNMNGtYRGxrTUFlaFZsRHB4Z0Q4OWNBQ1BwYllCUmh5SFJXVkJybmov?=
 =?utf-8?B?bGxXN1Bscy9UTVlJeWEwNmVzU1JkY01qby9KSy9ha1hkT0pjSjJPN2RLMHJP?=
 =?utf-8?B?RE5iRXczdkorMUltL1BGYU15Vkp6WTc2bGdyZ1BNT1loYitFUGxkN0VoajQ2?=
 =?utf-8?B?NU90NnZhcGZMOHdLUjhFUjNaY0lOa01QN0dLdkd1M1BKaEVNL0l2VmprQlM1?=
 =?utf-8?B?Z3E0SEEycVB4Mzh1ZVI3cTFFNHNhTXc1ZG9LN1paNGsvSTBNQmt2SnJzTTZz?=
 =?utf-8?B?Zk8yQkxyZ0M1VlVXZHNKS09PU0J2ZlB4UFk5R2dvVjZRclZ3UjFRTWxVM3pW?=
 =?utf-8?B?QUN2eEJoN09oTHMrQUFieGM5eHU2NTNqRks4MEUzV1Vld3VFcUhnU3NWdlhx?=
 =?utf-8?B?bDROQWdrdXFxcWthajQzTGNXbWlIWWlGUk1aSGhSMkVaNHVOQmlacFRjSVNs?=
 =?utf-8?B?aTlIL0tiN3UvSEU4VVZQRFowZ2RYd1crOThLRVdMTmJnWERpY3VFOGJUakJD?=
 =?utf-8?B?TlhoUmtBQ2dubVA5Z0p2OGVGWGhVMFo0UjZVWkYzZnVrRWVrS3cxT2REMkVN?=
 =?utf-8?B?RlFuSUp5MzJZSTZZR3RVWWtxR0JXQXBVcDA3WkFJZWtvcE5XNDdPQldoREV3?=
 =?utf-8?B?MmlMVG5FTjFxT000UkpXNWYrQk82eW1vYWIwVXZpa0w0anpvWjhEUDBnWE9R?=
 =?utf-8?B?VUkwcGt5UzJNczc1azg0dFFDZisrV2xUYzZsY1FHcXRUUlY4ZTI5ZFJjQWtY?=
 =?utf-8?B?WGhHQXR3MGh3ZWJSajhmeVNrRXlKSWkvODZ3YTZvVnVWRjNHdkxKYThQTU11?=
 =?utf-8?B?ZDlwZG5wRHdLL2JDN2RsaWgwUGsrMENubTNrUmFTZk56cWk3VVk2U1hlMzF3?=
 =?utf-8?B?MHYvck9NaExjOVFKT3hoUS9yQjMyMVVaeDdOOHY1ZGZXdTlvZldSUUpORzJ5?=
 =?utf-8?B?QktFVkFMTUdpSlRoZU53T2N3OEU5cFc0QjdxZk9va1Nxd0M1NEFYNGVSS3p4?=
 =?utf-8?B?c3ZFVTVNMzRZV2xISENnYkVMWTFEV3hnaFVnaWdodTlUR3VVZ0xZTG9ZMWFr?=
 =?utf-8?B?ZUlkSTg0aVRSSXNQWFpPRFFaejdzVWY2RlZIL3R4TzFBeEpPTEFRZEw3djZ6?=
 =?utf-8?B?VGJZY2tqYzk3bFl1bGFHWklwMTV4TjM3ekpxYVFmU3hGQjcrWWt1ZDRBOFNo?=
 =?utf-8?B?d2h2RWk2Yk9ubCtDZVJkWkhIVHFWU0RYT2g0Qi9nNG1uWlRiRnZGSCtleUxv?=
 =?utf-8?B?T2VxOU8rNHVQckZ1dGM5b0QwRjFyOHNuTmpBS2JJckZiRjZPQzEvKytsSXVu?=
 =?utf-8?B?N0hhdUdhaHkzZkNOUVUyWWxJOWVHWDVka00rRWRqeFQvZzJIOGEzOWpCY1Bp?=
 =?utf-8?B?bkdhczhOWUFheHhCVzRCcVVhTnQra1docGJSVXNGYm5hUDBTRWV3TE44b0x6?=
 =?utf-8?B?THk0OVVOK0ZXTTVYbmtuNCsxT3pOZjJKcW56WTVMRGpEQ1JmWEYvV1Z1d2tC?=
 =?utf-8?Q?Yc2VW9CShMn/bnGDCRot6ihKarEV88aieAGhvqnIrF+7iQ?=
X-OriginatorOrg: KPEP.onmicrosoft.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jul 2022 09:39:26.0994
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d62f29a-59a2-470a-605b-08da6eeabad9
X-MS-Exchange-CrossTenant-Id: f31b07f0-9cf9-40db-964d-6ff986a97e3d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f31b07f0-9cf9-40db-964d-6ff986a97e3d;Ip=[81.144.215.152];Helo=[hybrid.ecis.police.uk]
X-MS-Exchange-CrossTenant-AuthSource: VE1EUR03FT053.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CWXP265MB2695
X-Spam-Status: Yes, score=6.6 required=5.0 tests=ADVANCE_FEE_4_NEW_MONEY,
        BAYES_50,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,LOTS_OF_MONEY,MONEY_FRAUD_5,
        MONEY_FREEMAIL_REPTO,PDS_HELO_SPF_FAIL,SPF_HELO_FAIL,SUBJ_ALL_CAPS,
        T_SPF_PERMERROR autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [soniatoure057[at]gmail.com]
        *  0.0 T_SPF_PERMERROR SPF: test of record failed (permerror)
        *  0.5 SUBJ_ALL_CAPS Subject is all capitals
        *  0.0 SPF_HELO_FAIL SPF: HELO does not match SPF record (fail)
        *      [SPF failed: Please see http://www.openspf.org/Why?s=helo;id=GBR01-LO2-obe.outbound.protection.outlook.com;ip=40.95.78.164;r=lindbergh.monkeyblade.net]
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        *  2.0 PDS_HELO_SPF_FAIL High profile HELO that fails SPF
        *  0.3 MONEY_FREEMAIL_REPTO Lots of money from someone using free
        *      email?
        *  2.1 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
        *  0.6 ADVANCE_FEE_4_NEW_MONEY Advance Fee fraud and lots of money
        *  0.0 MONEY_FRAUD_5 Lots of money and many fraud phrases
X-Spam-Level: ******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

CAUTION: This email originated from outside of the organization. Do not cli=
ck links or open attachments unless you recognize the sender and know the c=
ontent is safe.


Hello,

I'm Mrs. Sonia Toure, married to the late Mr. Thomas Toure, who was a busin=
essman and a politician here. Before he passed on we deposited the sum of $=
4.6 million dollars in one of the leading banks here.


I am very sick and diagnosed, so I decided to donate this fund to an honest=
 person. I want you to claim this fund from the bank and donate 80% of it t=
o a charity organization. The remaining 20% is for your efforts. My goal is=
 to support those less privileged and to fulfil the vow i made with my late=
 husband.


I will give you more details as soon as I hear from you.

Mrs. Sonia Toure.
EMAIL:soniatoure057@gmail.com
This email and any other accompanying document(s) contain information from =
Kent Police and/or Essex Police, which is confidential or privileged. The i=
nformation is intended to be for the exclusive use of the individual(s) or =
bodies to whom it is addressed. The content, including any subsequent repli=
es, could be disclosable if relating to a criminal investigation or civil p=
roceedings. If you are not the intended recipient, be aware that any disclo=
sure, copying, distribution or other use of the contents of this informatio=
n is prohibited. If you have received this email in error, please notify us=
 immediately by contacting the sender or telephoning Kent Police on 01622 6=
90690 or Essex Police on 01245 491491, as appropriate. For further informat=
ion regarding Kent Police=E2=80=99s or Essex Police=E2=80=99s use of person=
al data please go to https://www.kent.police.uk/hyg/privacy/ or https://www=
.essex.police.uk/hyg/privacy/. Additionally for our Terms and Conditions pl=
ease go to https://www.kent.police.uk/hyg/terms-conditions/ or https://www.=
essex.police.uk/hyg/terms-conditions/
This email and any other accompanying document(s) contain information from =
Kent Police and/or Essex Police, which is confidential or privileged. The i=
nformation is intended to be for the exclusive use of the individual(s) or =
bodies to whom it is addressed. The content, including any subsequent repli=
es, could be disclosable if relating to a criminal investigation or civil p=
roceedings. If you are not the intended recipient, be aware that any disclo=
sure, copying, distribution or other use of the contents of this informatio=
n is prohibited. If you have received this email in error, please notify us=
 immediately by contacting the sender or telephoning Kent Police on 01622 6=
90690 or Essex Police on 01245 491491, as appropriate. For further informat=
ion regarding Kent Police=E2=80=99s or Essex Police=E2=80=99s use of person=
al data please go to https://www.kent.police.uk/hyg/privacy/ or https://www=
.essex.police.uk/hyg/privacy/. Additionally for our Terms and Conditions pl=
ease go to https://www.kent.police.uk/hyg/terms-conditions/ or https://www.=
essex.police.uk/hyg/terms-conditions/
