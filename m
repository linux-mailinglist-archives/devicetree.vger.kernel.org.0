Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D5A422C8376
	for <lists+devicetree@lfdr.de>; Mon, 30 Nov 2020 12:48:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726385AbgK3LsG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 06:48:06 -0500
Received: from mail-eopbgr40094.outbound.protection.outlook.com ([40.107.4.94]:26437
        "EHLO EUR03-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726137AbgK3LsG (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 30 Nov 2020 06:48:06 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iafQ6tCOWLOVgcpLC5R9FGAU58HR5vTAoE0jngPxTRsGBHKPKnR2NlAJx6WgQ49WEs04fo1Ek68b4vtXi4WIlFauL6pnA1LDZ/715gr934necKktleqaFzhFkvSBizxbTQNK+co6KIedNDMDZLeO6y/zlSD64Vp7VRWNq2kYxBjjECfNQN0SHRJf0F9O1xOtx0Qr7p361uuIFJ2I7t+kDksw6vVVIVCARTp24qYEk9dAt4k3qzOz3UGf9r51fAVEIXkzuocU442AvmaOVlmsFDmd5767aesxnVqNY/QiDK744T/yjNgvK2zGYG2tdh71TeQIOBQW2itNkpNEg8iQ8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AQIAw8Tktbuy1OWbOF1vm1DrW+rPlVOStAol/caknN8=;
 b=I3YHLlVhRRzCpACvdohWmbWWUhobfN90Wfz2Et+6n4LWGqU3x4/Nl6daGzjcqwGtJYUnZW1xxpB0MrIJrRn/C1ZYJE0JKFwp1Id5BPaZfVDsm0UVEsXvK4l6HmorKpJb746lIJM9qxfm7qlmk25GvSTTlyDS/lHP/wt7PSsMkYhgjrArnDrL+jeqZkHQWothuaBOkbFPyUPw/d2fsSS1PdVC0HoRHHrZ9e/Igzvp8P1j8sDwHCf6l7UCg6FuuKUmKHGfPww19LgHoY5Jb0tJ3t+ZLMXzOWa6/mOHcJmEmwn9sjiyyKpY4io1vkX1tIIglNUd94gYUKwxNEXR0Mn51w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AQIAw8Tktbuy1OWbOF1vm1DrW+rPlVOStAol/caknN8=;
 b=ouiJg6YwNYD10aV9vMAL1j0VK16ggsmUJFhqPtP6wSldkh3QOiODVz2XeFUqZkwv/C9uytiph7GXRYNM5XG9pvJsytA51OmgntnMGREhdaGycNnWbclfGlOFcIctlTYvhRYNi7W67Lh3KuDaeNLrUeEHIC68FwQSLgXIyzMBSgU=
Authentication-Results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=kontron.de;
Received: from AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:157::14)
 by AM0PR10MB3617.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:15f::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.23; Mon, 30 Nov
 2020 11:47:15 +0000
Received: from AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::9d5:953d:42a3:f862]) by AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::9d5:953d:42a3:f862%7]) with mapi id 15.20.3611.031; Mon, 30 Nov 2020
 11:47:15 +0000
Subject: Re: [PATCH 1/5] Documentation: bindings: clk: Add bindings for
 i.MX8MM BLK_CTL
To:     Marek Vasut <marex@denx.de>, Adam Ford <aford173@gmail.com>
Cc:     Dong Aisheng <aisheng.dong@nxp.com>,
        devicetree <devicetree@vger.kernel.org>,
        Abel Vesa <abel.vesa@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        =?UTF-8?Q?Guido_G=c3=bcnther?= <agx@sigxcpu.org>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Shawn Guo <shawnguo@kernel.org>,
        arm-soc <linux-arm-kernel@lists.infradead.org>,
        Lucas Stach <l.stach@pengutronix.de>
References: <20201003224555.163780-1-marex@denx.de>
 <CAHCN7xKyRcZQcZunw6nLpWKWNXWJs4V_fPoQbijVrv6LbuFdYQ@mail.gmail.com>
 <bb982b4f-3510-6663-0e4c-66a7c34b8d62@denx.de>
 <CAHCN7xJFsi-zfzHOYJ56s5cx-owRL5EPrXCqzBgfrhrveAfo2A@mail.gmail.com>
 <CAHCN7xKDP02QTNrxg84OvVF=Orcnh_gWj551ZV4bJphysfgu5w@mail.gmail.com>
 <bfc7b2e9-506b-1161-95ca-6aaf73f38a2a@denx.de>
From:   Frieder Schrempf <frieder.schrempf@kontron.de>
Message-ID: <aa5e86be-07a8-878c-54ff-2c2c7cdd9ef7@kontron.de>
Date:   Mon, 30 Nov 2020 12:47:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <bfc7b2e9-506b-1161-95ca-6aaf73f38a2a@denx.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Originating-IP: [46.142.77.113]
X-ClientProxiedBy: AM6P192CA0033.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:209:83::46) To AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:157::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.10.17] (46.142.77.113) by AM6P192CA0033.EURP192.PROD.OUTLOOK.COM (2603:10a6:209:83::46) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.20 via Frontend Transport; Mon, 30 Nov 2020 11:47:14 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c1b3be96-f053-4ac7-8403-08d89525aeb7
X-MS-TrafficTypeDiagnostic: AM0PR10MB3617:
X-Microsoft-Antispam-PRVS: <AM0PR10MB3617EE8FABE050F92624EE17E9F50@AM0PR10MB3617.EURPRD10.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JEQq3/CAjZdsMKRjj9LbtxRBJ3aO9Kl6/oUX2mK559AcuOoDAelMhDgw2lONkKgmZtpUS8v/Pu2ekqiuwzbUeKBuAWkDCVKcdoY6+vwNVsAfqSmQByulzOW0i8sykQ+xutloEY0g2z98DRkQG1QZaxB5X3OhaZ0OFfo0lF0IFZl6FGIaMu5lsgG1VDrV7lmz/n39qXDRh2HkgaG3MvZxj8ynA9COdqWFA78IRe4DkUhhczwTSuisP93vZqz7nnYQmBGMp9ZoHlrUFTROTy6sR2K5Dpdv4tzJlYlp2H40mCztPoYK4OHvCcHiFjAQKviczmdTiBcctBDtC/hJY3bzd985B/61gLPT+R3abqbh3MFY7xUBi4CJo6lyjUliVioz
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(396003)(136003)(39860400002)(366004)(346002)(376002)(2616005)(44832011)(86362001)(66556008)(2906002)(31696002)(66946007)(5660300002)(66476007)(956004)(7416002)(478600001)(8676002)(6486002)(110136005)(54906003)(26005)(16576012)(52116002)(186003)(53546011)(16526019)(4326008)(8936002)(316002)(31686004)(36756003)(83380400001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?NjRvSVJQVDRPdnZRbEQxK2hMYWk3OHFYSzd6Qm9Mc2EwbU10WGxEb1RmZHBy?=
 =?utf-8?B?ZFpIWVB6L3FMek9VT3czRThqNnp1RHYyMGxPd3l3SHYrc2tIK2pwMzZWZlRh?=
 =?utf-8?B?UE5NVXBhT1FNUmMzazlkeTVHUXhNSThSRlNhcDQxVWVpSVV4VlREV2Z2MDRq?=
 =?utf-8?B?TGxKTVZ3cktzdnVyOHZENWU1dnVNQkVMSDBDM2YzdHc4MThpamFzeUdFQkNs?=
 =?utf-8?B?ZTYxM1IrVmNIODdkL2I1VUFsbU5WVXVqeldRblIxamoyKzJlODI5MHdTRjJh?=
 =?utf-8?B?anBUZ1RlTGphb0xXaWVmcFQrbGM5MGdkTkJUWnRBUkFpY2xSYmZnYzQ3aUlM?=
 =?utf-8?B?ZVYzdTRFK1ROdGczaldpaDhFemcrOGJJOEpSbDZqenBwVUFkWU1tU2tiTGhK?=
 =?utf-8?B?SFpHWWFsSWRQOEFvMHJ5eVhrZ3gxOTRZNFBVSXpENmdxZ0MxRUx5bzBSSGVj?=
 =?utf-8?B?ZTM4T3VTVE5SQWFtdW5la2I2R2E4RlNHcjNUd2VEc1UvYktVMHpycGFUcmNn?=
 =?utf-8?B?RHJtd3YwcjBDNnVlYXVKZWJqSkZ2aEs2VEEwb3FuVXZYdGhwSDlvdnNFNFJp?=
 =?utf-8?B?RGp5U091WEE0RklaZWtEYW5YSU50c0l3K1o3QkZETFpycWg5Z3VyTms3ckZW?=
 =?utf-8?B?OG5nRWNDMXVSTFdqa1k1VFBaM1ZoVzBWRDljT2pkZHFST2tXRmZxaFRWTmxt?=
 =?utf-8?B?M3E1MVFvNEJ3TTdyS3B5RExLbVhsRXhCYk95KzRRNk1BcXhHeWQvUUJSS09S?=
 =?utf-8?B?UXdJalpqTkFKSE8wZElJeHRCTCtNbHRRV1R1OW5aZEJ3dnZmV2x1cG1TeUhq?=
 =?utf-8?B?bGlOcUxyeDRoUkZqQzY0L1J1Sy9FMmhQSFlBYVVwVTlFRElsMXZFR2VZUFI5?=
 =?utf-8?B?MFl5U3FEVDJUY0VCUGRYelJ3YmpWbHRyMGdpcXNCMWgyRXE2SEY5YTJoVDB0?=
 =?utf-8?B?MlBYZTd5YUNGOWhiZUZlTVRsS2VYWlduZExOaEs0S0hRT2ZneTJXVlBzMlAr?=
 =?utf-8?B?UkRMMG5uYkhLeFcxWWdRalU2L0h4ekRONmJjME1rdUhEcUMySDdtdTN0cmtm?=
 =?utf-8?B?K2dyOFcvenVBM09mRzBxU1ppdXNIOHk1MTAzVC9vbGZBZ2xqT1B6TDN4OUJX?=
 =?utf-8?B?MmUyamttWUpRSW91QTNoRCtscXNNeFg4VXY2ZGppRk5MajBoKytSVzlpU0dP?=
 =?utf-8?B?dldxaTBhUTRGQTNCTGhaRlNpV3h5S0xEcDY1MXh5Nis5M3hKYXJuOWUrS29X?=
 =?utf-8?B?THRyaldOc1Z5ZzR3a2xuaUtKZ09sMWVsZnEwM21iQkRKTUlCUVZhOHVVOFQ1?=
 =?utf-8?Q?edmyTY0oZIadRFsJstrp6fcFnXQ/4oACA+?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: c1b3be96-f053-4ac7-8403-08d89525aeb7
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2020 11:47:15.4643
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EThC4DIiXtYjzgW9cLWwux40OJjRretBXRAWsiyW1+Yyb1IUnRnO7QcWzGiQaLzuL1TmD+pHh3Bn+3msnhrkSlEuPNQ4oDTry80AHGK0rac=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR10MB3617
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 07.10.20 22:50, Marek Vasut wrote:
> On 10/7/20 10:17 PM, Adam Ford wrote:
>> On Wed, Oct 7, 2020 at 3:08 PM Adam Ford <aford173@gmail.com> wrote:
>>>
>>> On Wed, Oct 7, 2020 at 3:03 PM Marek Vasut <marex@denx.de> wrote:
>>>>
>>>> On 10/7/20 9:52 PM, Adam Ford wrote:
>>>>> On Sun, Oct 4, 2020 at 12:53 AM Marek Vasut <marex@denx.de> wrote:
>>>>>>
>>>>>> Add the i.MX8MM BLK_CTL compatible string to the list.
>>>> [...]
>>>>>> ---
>>>>>>   Documentation/devicetree/bindings/clock/fsl,imx-blk-ctl.yaml | 1 +
>>>>>>   1 file changed, 1 insertion(+)
>>>>>>
>>>>>
>>>>> Is there a DTSI change part of this patch?  I was going to try to test
>>>>> it, but  I am not seeing a change to the imx8mm.dtsi, and I am not
>>>>> sure where to put the node.
>>>>
>>>> There are in fact quite a few other pieces you need to have in place,
>>>> this patchset in itself is not particularly useful, it is just infra for
>>>> the LCDIF and MIPI DSIM block control. You might want to wait until they
>>>> all land in next and test that result.
>>>
>>> I have several patches in place, the GPCv2, this block driver,
>>> enabling GPU DT node, I'm also working on the DSIM patch you posted.
>>> I was hoping to test them all together and reply to the various
>>> threads with tested-by.  I also want to get my device tree stuff ready
>>> on the beacon boards so when everything lands, I can post DTS updates
>>> to enable the LCDIF, DSI, and the HDMI bridge.
>>>
>>> If you have a repo somewhere that has all these combined, I can just
>>> work on the final layer to enable the device tree plumbing on my
>>> board.  I just need the imx8mm.dtsi changes for this, DSIM, and the
>>> LCDIF so I can finish the task.
>>
>> On that note, I also have a i.MX8M Nano board which is similar to my
>> 8MM.  If I understood the 8MM clock block driver better, I hope to
>> adapt your changes for the Nano too.  Once the GPCv2 driver is
>> accepted, I was also going to look at updating it to support the Nano
>> as well which also has the same DSIM and LCDIF as the 8MM as well and
>> a better GPU than the Mini but lacking the VPU.
> 
> I don't have a branch, but I sent you the collected patches off-list.
> 

I would also be interested in the patch collection for BLK_CTL, DSIM, 
etc. Marek, would you mind sending me those, too?

Adam, did you already set up a branch and do some tests with the full stack?

Thanks,
Frieder
