Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C3E5D355753
	for <lists+devicetree@lfdr.de>; Tue,  6 Apr 2021 17:08:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229828AbhDFPIu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Apr 2021 11:08:50 -0400
Received: from mail-eopbgr140052.outbound.protection.outlook.com ([40.107.14.52]:44957
        "EHLO EUR01-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S229469AbhDFPIt (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 6 Apr 2021 11:08:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R+Qyyq/wqN+J3QEIfQgoafbfE52NTE/nkWJszsx1uMs=;
 b=w6STXdhQk9Eh9f10wsR+ZFdjtsVmph9t1sf20dm9NufITOml0g6OLrptEa9JweJUT4+Ll97V0y6Ah7TlBF6iarX0sgw8pdDK+0BM7JGMY7Rw4wHDP6JixcnbqsOSNfCd3xoheYHw3fx4VzdPAfXfVCejjUsro0W1QYt8FtJbaRY=
Received: from AM6P194CA0007.EURP194.PROD.OUTLOOK.COM (2603:10a6:209:90::20)
 by AS8PR08MB6360.eurprd08.prod.outlook.com (2603:10a6:20b:33e::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.28; Tue, 6 Apr
 2021 15:08:38 +0000
Received: from VE1EUR03FT032.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:209:90:cafe::f6) by AM6P194CA0007.outlook.office365.com
 (2603:10a6:209:90::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.16 via Frontend
 Transport; Tue, 6 Apr 2021 15:08:38 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; vger.kernel.org; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;vger.kernel.org; dmarc=pass action=none
 header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT032.mail.protection.outlook.com (10.152.18.121) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3999.29 via Frontend Transport; Tue, 6 Apr 2021 15:08:37 +0000
Received: ("Tessian outbound 9bcb3c8d6cb1:v90"); Tue, 06 Apr 2021 15:08:37 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: a6e311aa3bed019b
X-CR-MTA-TID: 64aa7808
Received: from b8c24f98c827.1
        by 64aa7808-outbound-1.mta.getcheckrecipient.com id 7E69CB3F-7BF3-4692-89B7-2906E058A0F5.1;
        Tue, 06 Apr 2021 15:08:30 +0000
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id b8c24f98c827.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 06 Apr 2021 15:08:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pujb2saTORzGaA2CEx8U1eXq9qAokBMgKWuiJ22GJcRMUENipk1tCPz//mgwT/KHK2Dh0bUZeKTMYk4GIPnuBzd+Ltpdgv/Qg7EHMpUTD4zZYs9Kvj9Dr/9K+6lPGhQdU8dEHfI9CpWJ8sZ7P/kQTRw/vDXsmnL5jTKaklNuM0iJX8b7so402dZNMLm3+YnVDa3DySZq76T8dI0/Awyg5nA7MkUuEo/utLBSbA90snQ9KvYryU0OcNCMpg7a86HvMCKGc0G655fk9sca8LmjszZxTGteAV41tEJC+xoZKxD22dvvsHhVU9nl38Q0KVQ/sq+nnaFMh1dNXHQXFudqCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R+Qyyq/wqN+J3QEIfQgoafbfE52NTE/nkWJszsx1uMs=;
 b=oYF3EOyVEFSJ8Ze02WublIKBY2lud10YbE8ohd/b102fiZ1Om+SPn2MPBKAFChIZiQk8LVvnz9Lf026pK0pg7EQNc8WwG6dDg7RUETYAi8QbnXTs9koDRjddrg+IEH2/shubV+jGDSrQtOvDrYZtykKFcCHFfeNPc00SdrlEpVKv/ohVHo59yRxNEfI3ixs/8Yv5hAGzT1THxxLZfgI73wWlDYn8tLhyVA9W+bnRzUcVSfmErAcMIqhfCjsqq8f2NT2fEureTDb0v5XnjLtbE0h23z8IQ5Rmay2zRy5gOloBYwZCPXs+jTCq3bw/Oz0IWLr6P4hvIJJiXiwZPGnBDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R+Qyyq/wqN+J3QEIfQgoafbfE52NTE/nkWJszsx1uMs=;
 b=w6STXdhQk9Eh9f10wsR+ZFdjtsVmph9t1sf20dm9NufITOml0g6OLrptEa9JweJUT4+Ll97V0y6Ah7TlBF6iarX0sgw8pdDK+0BM7JGMY7Rw4wHDP6JixcnbqsOSNfCd3xoheYHw3fx4VzdPAfXfVCejjUsro0W1QYt8FtJbaRY=
Authentication-Results-Original: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=arm.com;
Received: from AS8PR08MB6822.eurprd08.prod.outlook.com (2603:10a6:20b:39c::20)
 by AS8PR08MB6024.eurprd08.prod.outlook.com (2603:10a6:20b:23d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.28; Tue, 6 Apr
 2021 15:08:29 +0000
Received: from AS8PR08MB6822.eurprd08.prod.outlook.com
 ([fe80::d1cd:4615:3552:8cf0]) by AS8PR08MB6822.eurprd08.prod.outlook.com
 ([fe80::d1cd:4615:3552:8cf0%3]) with mapi id 15.20.3999.032; Tue, 6 Apr 2021
 15:08:29 +0000
Date:   Tue, 6 Apr 2021 16:08:21 +0100
From:   Achin Gupta <achin.gupta@arm.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Sumit Garg <sumit.garg@linaro.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        Trilok Soni <tsoni@codeaurora.org>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Jens Wiklander <jens.wiklander@linaro.org>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>,
        Marc Bonnici <marc.bonnici@arm.com>, nd@arm.com
Subject: Re: [PATCH v5 1/7] dt-bindings: Arm: Add Firmware Framework for
 Armv8-A (FF-A) binding
Message-ID: <YGx5Zfj9B7cO8Uso@C02ZJ1BRLVDN>
References: <20210325143255.1532452-1-sudeep.holla@arm.com>
 <20210325143255.1532452-2-sudeep.holla@arm.com>
 <CAFA6WYMrCzDUHn4O=tM7y+w01LcSPrRu3Awja7io1XtcZPhqYQ@mail.gmail.com>
 <20210326105545.44rdcbrumg3q6i7y@bogus>
 <CAFA6WYNf+Wmb3v56_-hUekn4UwSBe87OGJFehDx7t4iDWgg17g@mail.gmail.com>
 <20210330150312.GA284502@robh.at.kernel.org>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210330150312.GA284502@robh.at.kernel.org>
X-Originating-IP: [90.247.115.55]
X-ClientProxiedBy: LO2P265CA0028.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:61::16) To AS8PR08MB6822.eurprd08.prod.outlook.com
 (2603:10a6:20b:39c::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from C02ZJ1BRLVDN (90.247.115.55) by LO2P265CA0028.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:61::16) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.27 via Frontend Transport; Tue, 6 Apr 2021 15:08:28 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: afb4f63a-756c-4605-d746-08d8f90ddba9
X-MS-TrafficTypeDiagnostic: AS8PR08MB6024:|AS8PR08MB6360:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AS8PR08MB636026C5EFA06701927DBB9CFF769@AS8PR08MB6360.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: baxuuIW8Dz4cN254ByPd69Vgrlny6WbFkfRPKomUDSMptpl8GKU7PfqLly5wvjEEBVOm1fgwFIfGSzW3PWSRBx9lUUFnOgVKJk2VL2lMz9m+MRajO1JcH64ZK/geP9QILpk3Q744ONZkz16uQnj/zywpkD0O3gCAnkZzozMH+CAD3d/q2Lm+VQKcazIdlG39swgIjgfkMBtmbuIV5Y4LPkvbfiSqHx9SAlaC8I5Qs59w8S6ohZe6/0XeBJfvHDVhFZl/fzUwHzi2+VCA6iXf2JqNrbiByxVhOStyN9NQPi+C7luOzXtXr+N0PLBMU1mJYHlqruja5QyJBEtAj5M2oyxB4p22WYekJNjaEU7DpDQCHYap8fSR0zrgGraqTfLMwxBMaxSC/ONI09FGVvPJyx1g2wr4bU1atccLGfB6uNbVtEQqL7kPPvhQ90Wm2FQ6xgsPWHnohGQv59XyuEUVPC8Oo2LDkds4UGcgHJ6wTmWs6KfLrvCbGkrFmjx6kpbtpEvCyrirFp8NkoLVSrdJ/cLYk4DyoffpaI8QxnAMrRc+zok7/gnmw2zOrCv/HbY2TiOlUn+RV1VY81gYOMgeErXR7Z/f1NhgjPi8DHd8tuUiD1C7LYAS0XB4cPjMB39Q02TtwTttCFS9rztQUx5CwYQjTUi3FnKjDDbbt35Xj06OJdmBvfZ0sPltMV04I6zv
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR08MB6822.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(366004)(136003)(346002)(396003)(376002)(83380400001)(44832011)(33716001)(38100700001)(66946007)(66556008)(9686003)(54906003)(66476007)(2906002)(6916009)(8936002)(6666004)(55016002)(26005)(478600001)(956004)(16526019)(5660300002)(52116002)(86362001)(186003)(6496006)(316002)(4326008)(8676002)(38350700001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?G6mPJazbcaiPuqOidkvJE+jvRNyMmoz5DLtmqf7W4mtN5QbxT0BqdbIFsdg4?=
 =?us-ascii?Q?q2hhaL4dJzG6nLEO41n2jL3MFE1F6D8A2cgoQTTPxRqt5iQz/NwMoDMOV/Zq?=
 =?us-ascii?Q?W3gLbNryPwGh9a+BeyvhJIJDsg/nj7gnTIgkkbAGRbK86XgEj4o+FKX3QG80?=
 =?us-ascii?Q?raaxZQsNIKZG8Q1i5Mz5gV5nQrWInvJHfeViFfVj8Q/cgN4FPUjUqtBAFnaL?=
 =?us-ascii?Q?i7l1rb4Sp9tRyeVDPOuCr6KDN6ZAWapz8jAqAZLv8x4Qm4mi7ahUQG/Wn4Tu?=
 =?us-ascii?Q?1qts5HSCRvwziYO6g/gdYEscWSei1A3HAYnYpQW2Yj94ftDkXWvcBLUWLgo5?=
 =?us-ascii?Q?c870DdIcwmISNQXokGuIosQH9W4EaU6PBowIJZUXONz8K/3g8+eKIx/5CYkd?=
 =?us-ascii?Q?E8bwGCtXQrMh+MEDL7ZehVWVQCDSJvy0qbZ95zUxjVbH4InvHE2VhMcw58Gu?=
 =?us-ascii?Q?WztJUR2bwdX+XOzkEqJRf8KNw88MpFXR62XAQFZ9z79tnHwCEJr2jVwD2oQk?=
 =?us-ascii?Q?kH2dIdRWi2AJCC0Hgk8BYw7qD6Qz2tw0ntYYna4WSGDjQLuASWAo6oE4YhzT?=
 =?us-ascii?Q?mAP0Pz1ftIZ2+I75v2CRfoe7L0xHqQWlPRRtTJ5ZqAZkcDJCia7AG43mwEM2?=
 =?us-ascii?Q?wTouWaRuOta8aW0OOLYY/J44MJR4bfBT5+2cmPoAVqRdFS43S7p+RdedcRGT?=
 =?us-ascii?Q?jkr//di9DRqFVTMhzptbfJecGrnnACf04RHa+4dn1X5QduyZi1lt6dvWOQQd?=
 =?us-ascii?Q?aLcu+ZTPyNZzoWvfXtvloZtmVDptIGdZjlFpJmAcOTR1Q1XquDdRbVhj0hBt?=
 =?us-ascii?Q?8ppRSk++Du2TCSk6F/e7gmvhQUF69FosyKEuQybEiiZSQJkNByDDZagGuJaB?=
 =?us-ascii?Q?nf+ny/CeVNl0WdNspUWAZwhjv25J1UEXx+7zgLDSGpwA7tkob31pQFvInwaM?=
 =?us-ascii?Q?93CrfZwwUhdX7QkumFQ0amoT81hBDmfmjA/S3N59UUseDo+ydA4CEppkK4N7?=
 =?us-ascii?Q?GSE6h8+1QoHcErUK36+9LERNGDLCyewOp1/2hBi0oxaK6iPcTodgWTd9Tn6r?=
 =?us-ascii?Q?5F9Kj6ATC1sK4yh+w2A1ceGKGjIcFFk1NIA5a1c3wkKCnwwX6HsoqSQwuyLy?=
 =?us-ascii?Q?AE8oU6RQ8k0ejlF5hqdcqbqVBknTTKEV6GNU/wfeWAe7fKOnrDEU8/m7TAge?=
 =?us-ascii?Q?BLGMtWKxOpmsroolZK4uXBVoyfWI/LqyI/ldEi/yuLeOqJbi0XSYWl5xJFSR?=
 =?us-ascii?Q?dvleH5A8FX3NPLgcR1OYx8OOMW2p95Fc0txalKaHVHUsdbP6hG8VIYNOURY7?=
 =?us-ascii?Q?gOCCiOYe4pyvJs1e116Z/mrG?=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB6024
Original-Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT032.eop-EUR03.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: b504b4e7-35f9-4eaf-9b2d-08d8f90dd5d9
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FS4YpiXOY3GPKUeQfy3I8Tm/tjwRz9/fKfmyu/7dAAHNuyZq5HVqPZEo9YlpnNeA8sMIvfSlwdGZNdV1hRzug7dtSCgW5QBjSAbYQr70l4a4i/7G5vLM27c0+Q4NYlndGYuKrfBFgg51ZGMOnv3vx5UG3ULeLBH/asz2tE21O9CQ/bXNVWbMjA7pBqC2uUXdhoEVUTY5DShQjwRmiheEth6aOzFhcrI3KLKyS2vv3AHHqhJnDMy8AlojIlV8Cd0/Zbj6SzXWQctzLRR8evgJD2UMyVg1RSb2zdIjR/21+vuycal3t0k9MOB32OTocuXR5usQhiuBazoCsRy8Vn0vo41NLT4WSY1sSyxEnPBC9jVrfUuzoNv2L9tgGanUI2qD/T9c25O8UnudrgBDXVLMjmt3VV3sB84RqlLFmFQbOXQEEJxGhF+Xj8BETyQjh0dTBBRjJWg0tlMuMbUCr8mp13oT2t4l6pLeW+IAbFSVSIjA05FfFWOM7vbcwqQcn4iZoaxXYBDQGRTI1Bb800Rql4YzrsrPHVqX003sVB0MFlXtuhUoxmbjviJOYa4XhHVWHFvAqutwkwnG0JKE/Hh9qi+3j7+38xgM2j7aY6tLcufoTJ9tPS64TLZvSeUp303wBmS+VreQyUJaklo5wqGERtItTYB+7LrpA7OucBzQN04=
X-Forefront-Antispam-Report: CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(4636009)(39860400002)(346002)(396003)(136003)(376002)(36840700001)(46966006)(6666004)(356005)(55016002)(6496006)(82740400003)(33716001)(70206006)(336012)(478600001)(81166007)(44832011)(83380400001)(70586007)(5660300002)(4326008)(54906003)(316002)(36860700001)(2906002)(8676002)(16526019)(86362001)(6862004)(47076005)(9686003)(26005)(82310400003)(956004)(186003)(8936002);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2021 15:08:37.8311
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: afb4f63a-756c-4605-d746-08d8f90ddba9
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: VE1EUR03FT032.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB6360
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Tue, Mar 30, 2021 at 10:03:12AM -0500, Rob Herring wrote:
> On Fri, Mar 26, 2021 at 05:26:52PM +0530, Sumit Garg wrote:
> > On Fri, 26 Mar 2021 at 16:25, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > >
> > > On Fri, Mar 26, 2021 at 10:35:23AM +0530, Sumit Garg wrote:
> > > > Hi Sudeep,
> > > >
> > > > Apologies for catching up late on this patch-set.
> > > >
> > > > On Thu, 25 Mar 2021 at 20:05, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > > > >
> > > > > Since the FF-A v1.0 specification doesn't list the UUID of all the
> > > > > partitions in the discovery API, we need to specify the UUID of the
> > > > > partitions that need to be accessed by drivers within the kernel.
> > > > >
> > > >
> > > > Wouldn't we be able to implement auto-discovery of ffa partitions? I
> > > > think enumeration of ffa partitions on FFA bus should be quite similar
> > > > to enumeration of TAs on TEE bus (see [1]). Otherwise we need to put
> > > > these redundant DT entries for every ffa partition which IMHO would
> > > > bloat up device trees for every platform.
> > > >
> > >
> > > Any suggestions on how to ? Clearly spec doesn't have that provision, I
> > > had raised this point in the past. Jens has similar concern and he did
> > > ask the same[1]. As I replied to him in that thread[2].
> > >
> > > I am open to suggestion on how to auto-discover, currently as I see spec
> > > doesn't support it.
> > >
> >
> > Thanks for sharing links to prior discussions and I can see that
> > currently spec doesn't support it. But from an implementation
> > perspective, I can't find any reason that we can't support
> > auto-discover. Have a look at below proposed simple FFA ABI:
> >
> > FFA_LIST_PARTITIONS
> >
> > - No input params.
> > - Returns an array of secure partition UUIDs to which this non-secure
> > virtual/physical FF-A instance is allowed to communicate with.
> >
> > I think with auto-discovery, one of the major benefits is that if the
> > OEM is using a common platform to cater to multiple use-cases which
> > rely on different secure partitions then OEM doesn't have to bother
> > about shipping separate DTs.
>
> +1
>
> DT should not be the dumping ground for everything forgotten to be made
> discoverable. There's not much we can do about h/w, but firmware is
> different and can be changed. In other threads (e.g. PCI config space
> SMC calls), fixing in firmware is the proposed answer. So let's do that
> here.
>
> Maybe if there are implementations shipping and changing is too late
> (yet not too late to use a new binding), then I'd feel differently. But
> being in a spec or not alone is not enough reason alone to accept this.
> It's obvious the spec did not have wide enough review.

The v1.0 specification (released almost one year back) was reviewed by a few
Trusted OS vendors amongst other partners. Nobody provided feedback that a
FFA_LIST_PARTITIONS like discovery mechanism is a gating factor. Hindsight is a
wonderful thing! The ability of discover UUIDs of partitions would indeed be a
very useful thing and this will be added to the next version of the
specification. I think it is worth providing some background in any case.

The usage model envisioned was that a partition would export services that would
be identified by a UUID. An FF-A client that wants to use these services would
query their presence by specifying this UUID. The FF-A discovery ABI returns a
16-bit ID of the partition that implements the services. This ID is more
user-friendly and space efficient than a 16 byte UUID for register and shared
memory based IPC between the client and the server.

For example, OP-TEE would have a UUID to represent the TEE service. The OP-TEE
driver would ask the FF-A driver if there is a partition with a UUID that
provides OP-TEE's TEE service.

The assumption was that a client must identify the service(s) it wants to access
to be able to use FF-A ABIs to talk to the partition that implements them. This
was more important than a discovery mechanism where the client says: I don't
know what I want but please list all the UUIDs of all partitions in the
system. I will then see if I can find anything that I like.

In this model, it was not envisioned that the FF-A driver would carry the UUIDs
of services that its clients could want to access. The client would know the
UUID and the FF-A driver would return the properties of the partition and its ID
to enable further communication.

We did envision the need for the FF-A driver to know the IDs of all the
partitions in the system and their properties e.g. number of vCPUs etc. The
FFA_PARTITION_INFO_GET ABI when invoked with a NULL UUID returns this
information. It is a bit like "grep *.*".

The implementation choice to have an FF-A bus with partitions as devices on it
was made after the specification was released. This was not obvious at all at
the time of writing the specification. Clearly, in this model the FF-A driver
needs to the know the UUIDs. But this does not change the fact that the clients
of the FF-A driver still need to know the UUID of the services they are
interested in.

For v1.0 we are left with no choice but to carry them in the DT. This will be
addressed in v1.1. I see this as a case where implementation choices drive the
evolution of a specification.

I hope you can understand that it was a bit difficult to foresee this usage
model for v1.0 when specification and implementation are temporally separated.

I also think that this issue is different from the cluster **** the PCIe ECAM
SMC discussion is.

I do hope this helps clarify the situation to some extent. Please let me know if
you need any more info or if I have missed anything. Also, apologies for not
getting back sooner as I was on holiday.

cheers,
Achin
