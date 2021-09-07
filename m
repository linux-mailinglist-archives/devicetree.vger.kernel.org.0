Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3ADD840239E
	for <lists+devicetree@lfdr.de>; Tue,  7 Sep 2021 08:54:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233726AbhIGGxr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Sep 2021 02:53:47 -0400
Received: from mail-am6eur05on2095.outbound.protection.outlook.com ([40.107.22.95]:48352
        "EHLO EUR05-AM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S231429AbhIGGxq (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 7 Sep 2021 02:53:46 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xt7nlyHLCBbSaee/DYJDY3d1w4JiRU1y+Imvm02cTvzTeEVoGBiQxJ5Nrmxgd3t66xf6Fu1CJXkPMdne/us8NNYOW0f7pQidF/hcMZwVn0Zb6+Mkn4mfymvcMyASzSJ9Kl/vk4fg+Lpukb1oZIIAiTEJsrnivRa4yFLrxqgPcRncH5budaSXqQAciwfv2WYbep79/M9f+9DH+OMQiQUwqwIPaG/hbPSzXifZXPxP9SDMOghe6yboSsfhtJ6NjiOrV2+hoD42WUdRW5JEGcvzcx9nhVbAUnUU/2Jl/h1DTT4CqrInl1V7at3as0oiXnIPsg8X8LZTZIH+BPqt9faZDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=oToQmrk1X/9jJcEdHRdELpsyaKrCI6vaWkMHPudJSPY=;
 b=YDXQr3wulLfxK65QifxEXt1uDbjm+XSd2WRLl0Gq8UXt4UQL7ZrDRT+bxB4dQxod5/s8hl7EFelus2G2phaINAjxkGyw7C+E/IOXtopZ0ufqmBxL2koNBapcN+s3LabaoUei+onnUgoYKyai/pwX+BT3ZBWf9tX0ZHiBeKcbu8+0QFNRmsX6jLw31riNRU30J/EIcy2HH8tuq6tW9LmzXF2t8kvMXBdfv3n4/q15Y5n/bGNWNsejhuCSIJYM6l0I8HT8zNrQlyO49cztePCnq53X/1ndmvnuaylDJaLiv04cXGgbqil2Oe4fxKlpQsQm1Uww80BlBDTnIPUj8DidZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oToQmrk1X/9jJcEdHRdELpsyaKrCI6vaWkMHPudJSPY=;
 b=Xj7Kk5h4AOMjfQyKbzVvwNDfbI1FOeITDdnnt2wvkPMQdCyAqpCKMAS8ZPgAEHsJYNEc/zw8J2qQh+WcPZkG5VdfUW1zbLMX9sQBd71aTaUz0gdCUsS2c4kYmui2uNX0UV9oX6yWQY09uAjLaWrPhtKvB2X1HMnayjhOl0qhaL0=
Authentication-Results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=kontron.de;
Received: from AM6PR10MB2968.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:d6::31)
 by AM5PR10MB1714.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:206:1d::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.25; Tue, 7 Sep
 2021 06:52:38 +0000
Received: from AM6PR10MB2968.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::d124:4253:83f9:d8e1]) by AM6PR10MB2968.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::d124:4253:83f9:d8e1%5]) with mapi id 15.20.4478.019; Tue, 7 Sep 2021
 06:52:38 +0000
Subject: Re: [PATCH v3 00/18] i.MX8MM GPC improvements and BLK_CTRL driver
To:     Fabio Estevam <festevam@gmail.com>,
        Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Adam Ford <aford173@gmail.com>, Marek Vasut <marex@denx.de>,
        Tim Harvey <tharvey@gateworks.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Sascha Hauer <kernel@pengutronix.de>,
        patchwork-lst@pengutronix.de
References: <20210906184333.1855426-1-l.stach@pengutronix.de>
 <CAOMZO5CBWQmYL2ut7BD8XZNPeSan4968WRrNTiRUBybw_EHMKQ@mail.gmail.com>
From:   Frieder Schrempf <frieder.schrempf@kontron.de>
Message-ID: <f9c0753a-f6c3-760c-fa35-a016d517c67b@kontron.de>
Date:   Tue, 7 Sep 2021 08:52:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <CAOMZO5CBWQmYL2ut7BD8XZNPeSan4968WRrNTiRUBybw_EHMKQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AM0P190CA0007.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:208:190::17) To AM6PR10MB2968.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:d6::31)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.10.40] (88.130.75.72) by AM0P190CA0007.EURP190.PROD.OUTLOOK.COM (2603:10a6:208:190::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14 via Frontend Transport; Tue, 7 Sep 2021 06:52:37 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 96d0a4f3-0272-47c7-0833-08d971cc1494
X-MS-TrafficTypeDiagnostic: AM5PR10MB1714:
X-Microsoft-Antispam-PRVS: <AM5PR10MB1714C5DB193564C0F439DCAFE9D39@AM5PR10MB1714.EURPRD10.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0N2DeL73OLqsAMA2UMrpibHgCbL2SLuL0YeQFJcC8BHNY7XAOSrwWd7TIkQPEMojGS+8GwSPHWDFEnKbIL9DABcSHLA/la3L+8QB2oFTK4zRQTc4LYBvBOsHWko6/icbh6m2IwbVbbd9G5nbZvSSNPu7oin3nYdnle4YIbOzEZtRJJ3LMqYCRqrgzqEPuew+lOVrJxo5A/NCogIWZ/Try17NKDgsSAhcYLR4rphl1sQDEH/UEIbnO7wi+t16UhYKXpy4fsmOtdrvWwzXVVVF/0A/tjDs2Tgdsm7+Gmk180Gq19ZM5zqIDTAB99CbYRNKW8AKbPt59LELxE8o5EfbXnMKg7Gk8pSPiKtmPtQ1EPW5n4NJ8Bkn41KU9bgYW1sZRHPrLqTgLmh3/PPBzuEFgEEZXGr+9tQF/QemrM6g1FVl45oN48G8U+ak5o+HUTvp1gDemaVf848tXUUWCqtfH7V7QCJ5w8LeefTMPXpH9S+yYcPZdRZOehTs6tq4RnzMklH8fx14bcABYng8ojNr77vRt65ayZnQSaLvvHEXelmXTbfLSfV3eF51OqRoJVAWixrbagSkiSzo9U6Xo3saIXs9gBgIoinZyBzwj+0EsS9s7OOkP83EqVUVrI2s5zvlYYkqOiRaGi2ECobaKnq+u61x6iave8/rfnHTnAmitCEQl0KRTrZIR4oVQHh2M+CnCzUUlcVRJ/hztkzXvqkzwXuKiK9qS8NFX0Ogaiybsz4=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR10MB2968.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(136003)(346002)(366004)(376002)(396003)(39860400002)(8676002)(110136005)(6486002)(54906003)(31696002)(956004)(2616005)(2906002)(8936002)(31686004)(4326008)(66556008)(66476007)(66946007)(86362001)(26005)(44832011)(478600001)(186003)(83380400001)(4744005)(5660300002)(316002)(53546011)(38100700002)(16576012)(7416002)(36756003)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q3cvb0xQajVYNzhCY0VwT1JqcXNyOW1PSVVuOXU5MFJYTjJZUzFrMEFXK0Zz?=
 =?utf-8?B?V29sUTBiT2pEWVorb0xqWjZKaWdrdnI5UVFqNFpJS1ZXMDJzbWNtakh0Zndi?=
 =?utf-8?B?d2Z0OGJIcnoyR3lzSUIxOTh3cGFETU9yWmxHbEZ0RTBsWkFNOXdGaVlYeXJK?=
 =?utf-8?B?WW9IaFMwNUx0Sm9iWmFoSTcvWERIbmNDQjZ6ZzN3UjNCZjdjd24zYkppRUF0?=
 =?utf-8?B?YTlMNEtYalo4WG13aDJKdlFINmxEcW02aEpoWTFyQkhiODQzVHVXdVNPbTlx?=
 =?utf-8?B?WTJMcUx5T1RaUkQ3WnptMzE5aDdPZnFZcEJjZnRHa0dGc3g5dnNEVGVTVWpu?=
 =?utf-8?B?QVR3MXppVFd5TENONlhzTHA5WkhieU5RRFBUbVNYL2ZVRldFbTRqZkg2ZXdt?=
 =?utf-8?B?N0RSNlJzeWpzZ29JbWpKRGRkcTNicWNZa20zNzVmOFdGc1Z2ZjF2bGF6RWN0?=
 =?utf-8?B?TnpRZ1dYaUtLS3pucmM2STVrZVVocjNqQWhWa1A4TGdSeFNEeE9OQUhUSmNU?=
 =?utf-8?B?NzRmck8vMnFtZTVhcWRTamVrdkgxdW5iWlYwUnFYUjQ5ZFlQTnJGWWgzeWdl?=
 =?utf-8?B?aWVUZW52bUdTajlyazNlbUtDNWtXL29ZSHZNOVJFSGgzTklHcGVXcmJGRlFk?=
 =?utf-8?B?Ykt2R29UVUw0VWFJWHFOUzMva1NpQnErOHJ5N094UU10eCtXVkExaTRBeGIv?=
 =?utf-8?B?ZXA4bDRuSkszV3lsdmFYU0ZWWHg0Smp3SGJpdXhsU2tjRjkveXJZRGFzS2sx?=
 =?utf-8?B?dlBYbjhKaDZ6YTFDb0NTcGFNVW83ZksrbDhWamVLUHBaSU1QKzBTeFNaUi9Q?=
 =?utf-8?B?ZzY2RG1WQW9RR1hPbml6VUtWb3FXNFA2UGpFc1VtRENSRGJkamdyTkNod04r?=
 =?utf-8?B?OE5uNWY5Y2hBQllJdVFjQ3BsMTZweWlWaC80ZFFQMWRDUFRxbDBQcGhFMTJv?=
 =?utf-8?B?c29MT0xWV3dZcDA1MUhPMElXdW1pZHprQUJ3R2VRaDVwYXVzelFnQWtQbE9j?=
 =?utf-8?B?Rk4rcjVLcUtkTE1ETHIxTGc5QzI2d3hHcU1VVkpJOS9GMUlnVkVrVVRoSmxs?=
 =?utf-8?B?WFNKNXV5amVpMHFCcnQycERnMWlDRFNaZzMxcmRlN1ptSldlYVhYZXB4MWFj?=
 =?utf-8?B?K1RiM0NXbU1YVFhzd085SE9Ka0NYWmt4cFVZbitGUUVOTGR3elduVWVoallS?=
 =?utf-8?B?QW04dEhkdGtDUlJNbFh2cHpZZ2NYdGpNajIxWGFuWVQzRjI4Mm4wckt0VVJT?=
 =?utf-8?B?MXgxcVZNekIrRHMvZythMnV3MnlVTDJocXBsbTVFSGZvcjFnK09FOEJKVmpT?=
 =?utf-8?B?eXh0S0xRR0pia05ST2MzYXFXUEg1UWgvSGE2bEpqWUxtQVgvUUtsUlZ5R1V5?=
 =?utf-8?B?OFR4cEpRbFBkdUlEWHR2SDNaQUhwYi9mM3NoQnowTFdjSURaWXc4SXVFcitX?=
 =?utf-8?B?K0NkNXpqMlAxZmJXUEg2U2xXZWRTZ1dYYTczVmI4cy90MEVWdUE0RVhCeXpu?=
 =?utf-8?B?QkNFOFdOaVRvV3ZLQXFZSTcvWHpxWnpUbGQ3RFcwT3ltRnBJNkt4emtpSUNy?=
 =?utf-8?B?N2ZPL2xGd0tVUVovcjJEWTU3Nko5TWExQXVpNHJzTjlJTit2VzlQZ3NoWGUw?=
 =?utf-8?B?NXBJcU1ETHJIUVc1ekxFa2JsR1pnUGZrWTNseC9KRWJCU3BINmdWSVlEVzRy?=
 =?utf-8?B?MG9abzNBMFladTlsUGJPazROZzJQUFMvYUlKRW5EQmhvSVZoU1U1amtTODRU?=
 =?utf-8?Q?rdW2HPthYRPOJVseGPDCbyzgaj7cCt+Dd78cN9d?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 96d0a4f3-0272-47c7-0833-08d971cc1494
X-MS-Exchange-CrossTenant-AuthSource: AM6PR10MB2968.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2021 06:52:38.4127
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hEZ9iQb6S5dX1wVZ7tdxf2TL3FF8POwmZqBVIPd/bsUXeh7ledTIz2iz3SDn2aMhgNVwnfyL0uL9aKVjvDFMQLbf8NMYDoJ3+2HU9dA6AQs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR10MB1714
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06.09.21 21:01, Fabio Estevam wrote:
> Hi Lucas,
> 
> On Mon, Sep 6, 2021 at 3:43 PM Lucas Stach <l.stach@pengutronix.de> wrote:
>>
>> Hi all,
>>
>> third revision of the GPC improvements and BLK_CTRL driver to enable
>> all power domains on the i.MX8MM. Frieder is still hunting some
>> sporadic and hard to reproduce issues and I currently don't have much
>> time to help with that. Meanwhile here's a new revision with the
>> obvious issues (DT binding validation fail) fixed to allow people to
>> review the code, so we hopefully don't miss the next merge window again.
>>
>> I guess it would even be possible to merge the series with the
>> sporadic issues still present, as it seems a lot of people are waiting
>> for this to land, as it's blocking lots of other work.
> 
> Agreed, thanks!

Also agree. I think we should try to merge this even if the
rare/sporadic issues are not fixed.
