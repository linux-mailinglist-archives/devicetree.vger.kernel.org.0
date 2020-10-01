Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BDC5727FA7B
	for <lists+devicetree@lfdr.de>; Thu,  1 Oct 2020 09:47:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725918AbgJAHqt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Oct 2020 03:46:49 -0400
Received: from mail-eopbgr40094.outbound.protection.outlook.com ([40.107.4.94]:34368
        "EHLO EUR03-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1725878AbgJAHqt (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 1 Oct 2020 03:46:49 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EYO5WaxjkwF0/RUgVGrb/UjHqGbxS/PB6WsCeJevJFz82Ub4yisKH60l2GZ6uQkoXx6rzwQA9tQwRR14odlmw4IuQ32wRKLB+W9qC69UuZFnBU9ZhyIaxKrmmv3zYldQvfA7RQsuHWI8bXWC7ngNB89aGj9sYQQNGj/juw3VjJMKNVSKOAEIXF1FJfs8tcosn9BCbiglmb/p+zdAwiuYlHyuceoyONH7V2JB3UaY43DqC4pgzmBCz+B+IhSuW/Mt94UPro2947XB6lGlI9F06bRCreKgBG2gHbPWLTSwrCjioN2PTU+fAkTNla0bzsnL9r57XoVZLcoqO+3qtg5baA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=81WYbgvZKoNO1WXbtYxr9xaoXJ4mdikR4PMkJ3ty+Jc=;
 b=LY6aPFcx/1KmlnZptA9Rt0GBgva7Pwd9DxEGPnqr7HcP8Ulc2hsd6RKud312tXjmelfRQ9QT8huhx4eCmGwqdIaKtGIWg2hytswPZG4znTH366KMG3wx5h7Mrp3v9jpzcqjOHtxgu6ePhpCH9hk2a+dUWSBjGTLzcas6Iw7/teBOUlCkyYNvOZEgM8/zbzO2JurLfqYjd+y5DBTqMZO0qthOV887QMZC2JIr23MItNjAz4UfuLazRn3u7sDkBoPSN3B/eBVWa7FBLTdVCTFlJGHa69rhaspUKoiQdwfsS1djdoetPjqdFDhnpQGnkkyk9J1Hcc9NH8h57NJ58ZtVzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=81WYbgvZKoNO1WXbtYxr9xaoXJ4mdikR4PMkJ3ty+Jc=;
 b=eSPh6VbY7iIpB8jwDGGdHsnEt2Uf89PK8ZZFYxIHCqufI5AEVbrQ8S5/o8dr0FvkkwAfAUPPANepCynGiyY+u+sCG4CFSouTik/Stcvqo9j7l0rig+zTAZLpHnQ2htpUsXupMEWjjTqIpl8MQAuzZe9i8GKiwjL4VgzKdC1cQk8=
Authentication-Results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=kontron.de;
Received: from AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:157::14)
 by AM0PR10MB2722.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:123::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.34; Thu, 1 Oct
 2020 07:46:45 +0000
Received: from AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::852:b8d:8b04:d2f5]) by AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::852:b8d:8b04:d2f5%6]) with mapi id 15.20.3433.032; Thu, 1 Oct 2020
 07:46:45 +0000
Subject: Re: [PATCH 00/11] i.MX8MM power domain support
To:     Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Marek Vasut <marex@denx.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
References: <20200930155006.535712-1-l.stach@pengutronix.de>
From:   Frieder Schrempf <frieder.schrempf@kontron.de>
Message-ID: <1461917a-5b8a-3487-bcb1-b4380df34852@kontron.de>
Date:   Thu, 1 Oct 2020 09:46:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <20200930155006.535712-1-l.stach@pengutronix.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Originating-IP: [89.247.42.197]
X-ClientProxiedBy: AM6PR10CA0059.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:209:80::36) To AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:157::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.10.17] (89.247.42.197) by AM6PR10CA0059.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:209:80::36) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.32 via Frontend Transport; Thu, 1 Oct 2020 07:46:44 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f1a78dce-778e-4eff-4bf7-08d865de2542
X-MS-TrafficTypeDiagnostic: AM0PR10MB2722:
X-Microsoft-Antispam-PRVS: <AM0PR10MB272268E8705F35D7AD9B4525E9300@AM0PR10MB2722.EURPRD10.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Oky5TfZYwdgEJowM2tObGrX7XqRz9OjGnd+JmKTomXhQX7JuAbEjcUcHbyoaFt+mdLYVKpuZvQ7muwnpoc1mSVehaEcipol5+YCAW5zydjTWLj7fqtJxJ5NLAV2KtgJ60A1L7xI0PK2oO99zKp0Ef9gpZ0L0bk644hmqH9Qyj9i+vp63LfugSkqXUjXM5sX5VxQjVg0EoC29/kSqxtgACfcyqWOLl1Q8niZnW/MTYoAYx3asJNnUXhber0XwbHQXXkPESj6ynPUeMoNehkGKr1I4JNXEO4R0dzF1IMI4DHdlPoT8pNn5G0wSppe+iMQy6lPuDb8NZ3GcNDf5jMEvR7wb1JI4vRfoFj/zgDLvGPX1EOqlemSt72b8kzlQdJkg
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(346002)(376002)(396003)(136003)(366004)(39850400004)(66556008)(956004)(2616005)(66476007)(16526019)(186003)(5660300002)(44832011)(4326008)(478600001)(83380400001)(8676002)(31696002)(8936002)(2906002)(86362001)(31686004)(66946007)(53546011)(52116002)(36756003)(54906003)(26005)(6486002)(16576012)(316002)(7416002)(110136005)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: 1t/5nZpeNYkfS7/SH/jXvCWXCv0cIFtCKhtd6EEUs7yPwWGvi9UTO2nY9Cx21og5LGX4iBzzCYBOLSN8NJqIlMeCLdl7uIto+ZchANB5d39kbMrSk+2cnDcuzjQb4ZowKGzvZoDL1fqxC4zUApepI01p9dd9qZZlMzS83aiKMd2HVsl3Kq7kNxicghcFzNF8ynGlnuHcwAglom+j/o5W2VFr9b0B3YBnbVFP+JjwZ9XjtpFZGAaoImp5lydlY8YVHBiAltC1v36M/ECeAqwHLbFRDmdc0aFIbM71H2Sr+D1luKUzHrxNTYtlTcUr9oo2qPUw8fhlykadbmWFnjZnY6G2v7TWE2sxBmvqu4vbJn2KL6G9pbAHvpDih8GtT0toLqAjvY0SgcazzND550Jdv+SjhxCLIm9G559DWCUOOuBodtAWlt7hCnM2cxi38mNfbenB6X9ONfE0uVRh0selORtT/U2RzPZ6E5XQrk0zJthxZwz8uERwj1oQTFF1gAdf/wNKBgk7zaeuH5/ygzXNPMrmWFUQNmVsiWYhUSjpg3y4k7M5UYYR6CjxqNZ5eCxdZB0NxumDX1qPeekEImfDSMKGU/B9blmnS91Yh5kw2IlmWI4E8tprejeOKvyrwSsE3w8XHBjx5WJmN6y2MkRzPw==
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: f1a78dce-778e-4eff-4bf7-08d865de2542
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2020 07:46:45.6991
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uroIUuNZgPtKwIfIxIvVQuNbLfiQhpyE1aYhSEtKBqw0Es3P8pYCZSswyeXCOlyY4VoJQnVETPrcMVMoBxTq8y8RSHELTxe9w5tBCINRPCU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR10MB2722
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30.09.20 17:49, Lucas Stach wrote:
> Hi all,
> 
> this adds power domain support for the i.MX8MM to the existing GPCv2
> driver. It is not complete yet, as it is still missing the VPU and
> display power domains, as those require support for the BLK_CTL
> regions of the VPUMIX and DISPLAYMIX domains. A Linux driver for
> those regions on the i.MX8MP is currently under development and we
> plan to use this as a template for the i.MX8MM when the dust has
> settled. The changes in this series have been made with this in
> mind, so once the BLK_CTL driver exists it should be a matter of
> hooking things together via DT, with no further changes required on
> the GPCv2 driver side (famous last words).
> 
> Special thanks to Marek Vasut who helped with testing and debugging
> of early versions of this code.

I tested this on our i.MX8MM boards by making sure the GPUs and USBs 
come up properly. It works just fine on v5.9-rc6 and also backported to 
5.4. So for the whole series:

Tested-by: Frieder Schrempf <frieder.schrempf@kontron.de>

> 
> Regards,
> Lucas
> 
> Lucas Stach (11):
>    soc: imx: gpcv2: move to more ideomatic error handling in probe
>    soc: imx: gpcv2: move domain mapping to domain driver probe
>    soc: imx: gpcv2: split power up and power down sequence control
>    soc: imx: gpcv2: wait for ADB400 handshake
>    soc: imx: gpcv2: add runtime PM support for power-domains
>    soc: imx: gpcv2: allow domains without power-sequence control
>    soc: imx: gpcv2: add support for optional resets
>    dt-bindings: add defines for i.MX8MM power domains
>    soc: imx: gpcv2: add support for i.MX8MM power domains
>    arm64: dts: imx8mm: add GPC node and power domains
>    arm64: dts: imx8mm: put USB controllers into power-domains
> 
>   .../bindings/power/fsl,imx-gpcv2.yaml         |   8 +
>   arch/arm64/boot/dts/freescale/imx8mm.dtsi     |  59 +++
>   drivers/soc/imx/gpcv2.c                       | 501 +++++++++++++++---
>   include/dt-bindings/power/imx8mm-power.h      |  22 +
>   4 files changed, 516 insertions(+), 74 deletions(-)
>   create mode 100644 include/dt-bindings/power/imx8mm-power.h
> 
