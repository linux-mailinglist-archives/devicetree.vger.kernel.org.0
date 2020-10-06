Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E429E284E7C
	for <lists+devicetree@lfdr.de>; Tue,  6 Oct 2020 16:57:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726123AbgJFO5J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Oct 2020 10:57:09 -0400
Received: from mail-eopbgr770074.outbound.protection.outlook.com ([40.107.77.74]:20897
        "EHLO NAM02-SN1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726060AbgJFO5I (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 6 Oct 2020 10:57:08 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=npqsPw89X2Hpugahkc24Yd2XgzX6KNA0OD9kdRJU2XXuWRg5qGFpzjEGmPKtK7MrSGYU3Y94eCi/xs50ArsP/+dh/tSdlyY5gM8rkJY4TDI4GWyhS8QhB9xVFX7osE1csJRZM8A2mheqeQ1Vlmu11QaA//M2Olh2Ts0NBhvvj9bjPfwrk6ERQrueOHnx4wm8kdi/VN0bikqifxb6ImO26K3TlHxpinHOpGmKbLMkSFo/a2r0MyqWzK7G6SqDPkWjZOkczIC5/r9Mw/e07j1lde9M7N7swbF2IMRbRHYd29vQ+DCsMTyYnliUxTiIwCAO8fhd8/mZBcXsENynudYHBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5yvI+y5eaby11fOqWCUo5/KU25dIspEbMroWyAB7qsw=;
 b=Chlwe+KE4jdt84yJLmKVkOS5xKh3rVaL0LmvUEc7zIUK9HFOztNAs1rJMxWcrwthF5599A8kcXBKzQ12vQWu+iZbSgrbkFdogKl2B2h0QYFSZzFGyFTW68WAcvmwd9KYgyeDFqu7n0+3ztqryrDdiqsX1sCzTBNntEI0UTBfFBOFw5JxbidcWl3w0vxpcYJyvDJZLJSdPcXX2OGeMLCYQ+i2xV9SOCGZ4eo4ApZ1cEUbtRxSCudIb+ytb/qcAkCW8txxUB92ILsDXKVntxDrGhE7mOSIJJkHIPZoPPPf5q09aXf1dOCeEavjK3JmkL9VF/5bEKM6i3iSAUV2rsu5rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5yvI+y5eaby11fOqWCUo5/KU25dIspEbMroWyAB7qsw=;
 b=Zzj4Q2TLkCXExwjqLNsbKx5oI6RQMLMHIadUHcuQhg881IRAi8u/zfVyBf7zNCHrYBZAAMRsL3Q9zLSHIgz3Xsy3lHOX89L4Hm//bedEd92Ne1GRoBnGv3R0eBJE4ymJCXOWqAnEZjsDtNgjxQsp7m0XyTzCXyyr3T6MQ6njiXo=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SN6PR11MB2560.namprd11.prod.outlook.com (2603:10b6:805:55::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.21; Tue, 6 Oct
 2020 14:57:06 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::4f5:fbe5:44a7:cb8a]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::4f5:fbe5:44a7:cb8a%5]) with mapi id 15.20.3433.044; Tue, 6 Oct 2020
 14:57:06 +0000
From:   =?ISO-8859-1?Q?J=E9r=F4me?= Pouiller <jerome.pouiller@silabs.com>
To:     devicetree@vger.kernel.org
Subject: Need some advices on Yaml conversion
Date:   Tue, 06 Oct 2020 16:56:59 +0200
Message-ID: <2367272.gIzBuxHi73@pc-42>
Organization: Silicon Labs
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Originating-IP: [82.67.86.106]
X-ClientProxiedBy: PR3P192CA0034.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:102:57::9) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.localnet (82.67.86.106) by PR3P192CA0034.EURP192.PROD.OUTLOOK.COM (2603:10a6:102:57::9) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.21 via Frontend Transport; Tue, 6 Oct 2020 14:57:05 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 63e9d35f-da65-40ba-98ba-08d86a081761
X-MS-TrafficTypeDiagnostic: SN6PR11MB2560:
X-Microsoft-Antispam-PRVS: <SN6PR11MB2560D4DA55FF59470DA82921930D0@SN6PR11MB2560.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qeS8QmoxbWRZfLldierBMJJnz/Z7cLzu9kgai8Qc/7ccomLEtFBoreeowgmJUVLTqrtGJHkZGrFrQmkpG8KcFQ16uOzNYN0W86R3qXPpfj4pXWd5IQjIe7jCHXK0CF8Z1d35N0oaLLqWzONxQjvltpFoVwtro7K8Iq3vWOxCC4nUI8YfJJk2JZno3uVqSaDgk6SIQcQLMlPjs2PyqrYmaaMfBkWKHhuAn1R4llA/LtGm8P8ATGSIpA1sxlLETvkmtw1N6H4HH7tILyR1tm/35/pR5IxdE8uRNFUrjIpiPwt4EXWTWvULPx+kxDGuDCPfp4JOPE0TEhNILQLdB7QP9HnlQhs+ZLv1m5kA0hVpxbqZScAPBkAM3DeiJHJ6sykB
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR11MB2718.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(396003)(39850400004)(366004)(346002)(136003)(376002)(66946007)(186003)(8676002)(5660300002)(6666004)(956004)(66556008)(66476007)(33716001)(2906002)(6512007)(9686003)(16526019)(8936002)(83380400001)(6486002)(26005)(478600001)(86362001)(316002)(52116002)(36916002)(6916009)(6506007)(66574015)(39026012);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: U9QVtza9fekOj47kct4durE6XzgGJmvsVnA740+SbQbYI89d8ts0alrqwn5W2olfzoTS4iV0psvsxxWqUZx6mFLtHrTmd4iriRhtARop3PPaUvBmHvpprPwwrIo9WluoJyMU8yow1rer9UW7tV5OAwZ3T2JmKtKrZh76IN05I0YR9OMK1RVLbFSGkNqFGjpdvO8XYHmnNBbtbKnBJDuGCddsynvNCGRvx830gyF1eU9nVoqpMN5jxIhrvlfZvcOpDOdGyI9vxihXuz3V/og1+hQnJ0Mvbarv0fwW0L3eGGxJRYSTw7yiq9bk4wQtnOhmvnyCqbszLvbckT25ELQs8BzUQ8D2soMI22+YF+UxgwHAFTI+KS/JYThg7UyqwISg7M9xjrQ8tD1CqjVfENzCFMATV9/z6nV+Fl/9u2RFV+j3ZUr3tJVyDfwH0QFf1W1BOKt9ehd09HaAt7gbjUAK+MxlphydUJEK9RVfZs+h0UdwHdeZMTnwXZ5cDJnd2J8RDMI319oLoIU5AnRdVgS7K6exGALrrmDMtl7nfEqZf8mUVWb+h1WaIM8w+J4CaOv7nBWdkvcjEgC/63Ghr4CgrDuClaQauM4haEFfXcwV18gQLJnB9w9BW2eLJMtHTkmxMU5KfPbPvnPY/D90luLYbQ==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63e9d35f-da65-40ba-98ba-08d86a081761
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Oct 2020 14:57:05.9808
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F45QtAQcqOSXC0FQIgC0LInki+bYDrnLFqMA3Nj+k4KLogL5ZYZ70CZyApMKJtxvwBzKRWSaTV9SVpKqQNz1Jw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2560
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

In order to get the wfx driver out of the staging area, I try to convert
the following DT bindings to YAML:

  drivers/staging/wfx/Documentation/devicetree/bindings/net/wireless/siliab=
s,wfx.txt =20

Unfortunately, the conversion is not straight forward. The WFx device can
be connected on SPI or on SDIO. The requirement for the two interfaces are
different. For exemple:
  - <reg> should be set to 1 in SDIO, while it corresponds to the Chip
    Select in SPI
  - The attribute reset-gpios is not available in SDIO
  - The "interrupt" does not have the same exact meaning in SPI and SDIO
    (it is required in SPI, but not in SDIO)

I have considered to declare two different devices, but I am not sure the
dtbs_checker will appreciate to have two definitions of the same device.
In add, some attribute descriptions would be redundant.

I also considered to use conditional statements, but I didn't find how to
check the bus that the device currently use.

Does anyone has some advice about the way to achieve that?

Thank you,

--=20
J=E9r=F4me Pouiller


