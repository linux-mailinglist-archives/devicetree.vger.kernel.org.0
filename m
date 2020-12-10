Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 228522D5F4B
	for <lists+devicetree@lfdr.de>; Thu, 10 Dec 2020 16:15:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390002AbgLJPPn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Dec 2020 10:15:43 -0500
Received: from mail-eopbgr140100.outbound.protection.outlook.com ([40.107.14.100]:65154
        "EHLO EUR01-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1727216AbgLJPPk (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 10 Dec 2020 10:15:40 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XP0ddO9PrcYMizDkM4YPdGZ9r0wW2Y7PgxYCXnePBQtmVE/Mkbg4cVTF0/fQCD8U18BkS0CeKeidfO6cmD28q5S063eaYkdQUh6OZzB2gJTUtPYbGlemx8adUGR/wv4+MVeeDxLkVbAF9KdClntt+msSP3JJgVAb4tet7xjBG/PBhQu3tmlvdX5rio83S8iF7XO4KidQ9D6syyPE0AzzZtDbcXt2HQgYDkbQyXuX+dwP+JoAF5SCskhmnaTVWFjsh3RDTKEoHpal7WlvYZ4gvNo79YVmVmneiFs81gkuYlUPYT4n+YgKzwY/EJJ0DX7JPNbPqodSEX6PG++WZxtmCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rgCjMRYIq8UxhKEmRHEek31I75J1eVbxZ/SSxgDbXvk=;
 b=AtDZbyajfthpEgIMs2JS7mcFDONp2aQyNwUZszUBGki2F0Y/UJvMs56RqRJz+w47XyGyvuoLZtobykaA+QH+6gF1Upee+tXF6a5EZqqGpVUsOTC4INClsrP+kmAtaqFj2ksTUyirJvMdjFT2Iuip/0m5Gsvk0ECEOrFIH84hb2G5KnZQ4v3lpeIzT6DiVgbb6WjULoUkXPr6b3ts4yKRusyA9t2bizKkDKceXcefZrExTD5MfcOCvUw4zQKspcneQvG2n4TtGacccrI82Bk4Pwna1HUYdcgcDMZurTi5UdBNckIP5gPJxsR5Lj+QlqLv5z5N2DM2I9r3Kznj8EOuXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rgCjMRYIq8UxhKEmRHEek31I75J1eVbxZ/SSxgDbXvk=;
 b=T+oC4bCrG2Ve4dgas47FsTDqJm2QKoh6r6yMBkK8gAeM+uHg8tigabZelgxhF3sAoGY0J/od+1XZXHSaP4rEHSDIo6igM1h3GU9w61DGLUcD7tDRA+HGfg9FYlxuEP7NNHQsK8Iu79Jx+C28tsCYEjqU8YqHYCCmxEQYkzEVnTs=
Authentication-Results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=kontron.de;
Received: from AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:157::14)
 by AM9PR10MB4465.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:270::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.13; Thu, 10 Dec
 2020 15:14:52 +0000
Received: from AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::9d5:953d:42a3:f862]) by AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::9d5:953d:42a3:f862%7]) with mapi id 15.20.3654.012; Thu, 10 Dec 2020
 15:14:52 +0000
Subject: Re: [PATCH 1/5] Documentation: bindings: clk: Add bindings for
 i.MX8MM BLK_CTL
To:     Adam Ford <aford173@gmail.com>, Marek Vasut <marex@denx.de>
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
 <aa5e86be-07a8-878c-54ff-2c2c7cdd9ef7@kontron.de>
 <CAHCN7x+oz9hoNfNYytGD++EbtAkceer7q359qoOP=pwUvaD9mQ@mail.gmail.com>
From:   Frieder Schrempf <frieder.schrempf@kontron.de>
Message-ID: <2b81d5d3-f80d-674e-7507-6fc3e7553161@kontron.de>
Date:   Thu, 10 Dec 2020 16:14:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <CAHCN7x+oz9hoNfNYytGD++EbtAkceer7q359qoOP=pwUvaD9mQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Originating-IP: [109.250.142.243]
X-ClientProxiedBy: AM4PR07CA0016.eurprd07.prod.outlook.com
 (2603:10a6:205:1::29) To AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:157::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.10.27] (109.250.142.243) by AM4PR07CA0016.eurprd07.prod.outlook.com (2603:10a6:205:1::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.7 via Frontend Transport; Thu, 10 Dec 2020 15:14:51 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4e893a4e-23d6-41a8-867a-08d89d1e57e0
X-MS-TrafficTypeDiagnostic: AM9PR10MB4465:
X-Microsoft-Antispam-PRVS: <AM9PR10MB44658B7D0BAA8D3002769D19E9CB0@AM9PR10MB4465.EURPRD10.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FC6jl6nzgY9xIjSKt+GSl0J7vKwudOHNCXlZkyp9BOdcP9KswNkPlEMEPmmUzaSHLyr6PjHbq71gTI0iXvUuK8zaWjz+GvSRKKs+6wplKYhugO4X0eaI6Nd/c1vS+Tdn9mZpwXS6u/2FCQIQItS1QfjmFva+QoYexu/na4pP2b1bpfthMHK0eebPf6FcqKvO8oefuQC0rVJHAiB6hm+H0ehW+5/CMTkFr0RhS8wEg2BvJkidKwpI76/XSOq/hUiXRI/YKwEiLkHDGzbYHpVI8E0lhGvy41675zq/ugbNV4n2uD435JTs3goJOlsfkRMfxfFG0iQmza7Nl0o2daOAT0FaiKnWtFXZJ2x+f1QNcs+7ShrjqC1Oe1oaSKxlhPxYALJliPGl+XE1R3uQW2kYtChfFh1YERIbjxizAysX0f/vNnZXKEmmRkX37UvEo2fIKX9bNVqAwM1bDQg3UTamSpU33uGUbOJueZOoIxcFEzY=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(396003)(39860400002)(376002)(366004)(136003)(346002)(966005)(31686004)(8676002)(52116002)(110136005)(16576012)(54906003)(8936002)(2906002)(83380400001)(4326008)(36756003)(31696002)(66556008)(956004)(66946007)(186003)(316002)(26005)(478600001)(5660300002)(53546011)(66476007)(16526019)(44832011)(86362001)(2616005)(6486002)(7416002)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?ak9DNG1RNzRXQWpwOStJbzlXOXJvNnB5TEFPNlhtcnhsVEFnUXZGYmhWMk9R?=
 =?utf-8?B?NEZESldOa0hnUXN3anRSUHg5ZHRXNGVqQUMvenhrSkUxSmE2T2tHUDRQZmx0?=
 =?utf-8?B?QTlhQmIxYVpVdFRHeVAvTm0yVzVTT2pvSnZJYTZDK2N0UEVrcmNseldjZXRO?=
 =?utf-8?B?eDhTY00zUW1oY0pFeXNGQmNVRW93YkFPSjdtOEJPYVN0Q3pMRUl6MFg2V0xt?=
 =?utf-8?B?RlRJMHB3eFRsUDFwRzJDdXhWMmR2N2NOZXpRcmsyaWZmQ3ZOTy82QVFzNFBO?=
 =?utf-8?B?QmVQR0MwMFhSU2hDQU9RZDVmSGtJSVdSTUwwbXZQbnUwcjZYT1NvY3o4ZnZR?=
 =?utf-8?B?bHFTQWxPVE9wMDY4NVZkd0JKcFdqOEUxNzl0ZU8zeTZtdVBGRkl3MFQyTTFX?=
 =?utf-8?B?Q2YrQXJtaHh1UDdOQktqRXk4ajNVbUlDZmhBdFc3ei85TjJySVZHbG1qbjh1?=
 =?utf-8?B?a3lKWWhGUWM2eEJaSzZVMlRlY1QrOUluRFJrN1dCL05hMnM2N3I4RVFjWjdX?=
 =?utf-8?B?L0MxTlk0aFhoZjY0UUZHL3FuNEp2MkorQTlsNFdHeGJXSmQ4ZVdtRUI1ekV6?=
 =?utf-8?B?ZFlTdTRwSTRRcFJCZzJzWEtFWGxyL2RmdkRudUZSTHZ1TDRNd1VkWVp6WHJ1?=
 =?utf-8?B?UW9RRGVKY1cvTnZmQ2oxRWtvZmw0UmQzTXdPM2Z3VW1jYVpsdDR3SGlQeXRQ?=
 =?utf-8?B?YTdRaHQwZEI0Sk5RMUpra2VPS2FGR2xUVTUzM1BlMGJxdVZsdmxHUG1iNTJG?=
 =?utf-8?B?L0dNTzg5NTE4VExueVVTM0ZiWkFFaWdBVVJEcFlDTTZzdHgrSUdQYlpRNUty?=
 =?utf-8?B?V0FpMHRqdy8zNlV6dkJRNXJwZ2NFNnkrWElUblVQTjN1R25XV2s2SFpKR09C?=
 =?utf-8?B?WEFreEFmdkFyZVNHVXJoaW1TMFpOZXI0SXg4bVpxRDhNd1duWkZXOWNFZy9u?=
 =?utf-8?B?cnM1Z09jd2FwR1hqOWZOanFsOFBMS0JzYWxoSWtTQlUyYk9uaExKSFM5VUVl?=
 =?utf-8?B?LysvYndmNlBIdE1tQU4rVUthR1gxdTJqc2dKU3ZQSk42SzhGTGt4NUhlWHlQ?=
 =?utf-8?B?bndFRmV0VDdvV21KVWU4UllNa0ZoYVRsbGdpSDJVNUR0SHZtaSt1Sjh3NjNP?=
 =?utf-8?B?amJXTGUyZE9HVXlVNFRqUWNKQ1o1RkJmZ0wyazd6QllRaUZxbThuT0l3RE9H?=
 =?utf-8?B?NkZLMnQvZVRVR015ZnFnSFVnT0ZsQTdIWXpPd3IyU0dUYkxWZVdXL1BCbTJH?=
 =?utf-8?B?MktLOW5TUmpDZHVNVXFwNGtaTFYzSWlLak1tdUdHbHRneDdXajR1aHowcm95?=
 =?utf-8?Q?cOwqv2Ry6ut4eQoKF/SY+LY4r7ejiAUxdF?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Dec 2020 15:14:52.0657
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e893a4e-23d6-41a8-867a-08d89d1e57e0
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Mvo/j4NS5ggrikd5OCzSBdm5efyaBAJguLtHOpLSgwZ8d0S6IAbsvjDHbFhDzWuYC+nCis41/keVgWEb86ly0nN9582MBgkqmZ2OtJkoLIg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR10MB4465
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 30.11.20 16:43, Adam Ford wrote:
> On Mon, Nov 30, 2020 at 5:47 AM Frieder Schrempf
> <frieder.schrempf@kontron.de> wrote:
>>
>> Hi,
>>
>> On 07.10.20 22:50, Marek Vasut wrote:
>>> On 10/7/20 10:17 PM, Adam Ford wrote:
>>>> On Wed, Oct 7, 2020 at 3:08 PM Adam Ford <aford173@gmail.com> wrote:
>>>>>
>>>>> On Wed, Oct 7, 2020 at 3:03 PM Marek Vasut <marex@denx.de> wrote:
>>>>>>
>>>>>> On 10/7/20 9:52 PM, Adam Ford wrote:
>>>>>>> On Sun, Oct 4, 2020 at 12:53 AM Marek Vasut <marex@denx.de> wrote:
>>>>>>>>
>>>>>>>> Add the i.MX8MM BLK_CTL compatible string to the list.
>>>>>> [...]
>>>>>>>> ---
>>>>>>>>    Documentation/devicetree/bindings/clock/fsl,imx-blk-ctl.yaml | 1 +
>>>>>>>>    1 file changed, 1 insertion(+)
>>>>>>>>
>>>>>>>
>>>>>>> Is there a DTSI change part of this patch?  I was going to try to test
>>>>>>> it, but  I am not seeing a change to the imx8mm.dtsi, and I am not
>>>>>>> sure where to put the node.
>>>>>>
>>>>>> There are in fact quite a few other pieces you need to have in place,
>>>>>> this patchset in itself is not particularly useful, it is just infra for
>>>>>> the LCDIF and MIPI DSIM block control. You might want to wait until they
>>>>>> all land in next and test that result.
>>>>>
>>>>> I have several patches in place, the GPCv2, this block driver,
>>>>> enabling GPU DT node, I'm also working on the DSIM patch you posted.
>>>>> I was hoping to test them all together and reply to the various
>>>>> threads with tested-by.  I also want to get my device tree stuff ready
>>>>> on the beacon boards so when everything lands, I can post DTS updates
>>>>> to enable the LCDIF, DSI, and the HDMI bridge.
>>>>>
>>>>> If you have a repo somewhere that has all these combined, I can just
>>>>> work on the final layer to enable the device tree plumbing on my
>>>>> board.  I just need the imx8mm.dtsi changes for this, DSIM, and the
>>>>> LCDIF so I can finish the task.
>>>>
>>>> On that note, I also have a i.MX8M Nano board which is similar to my
>>>> 8MM.  If I understood the 8MM clock block driver better, I hope to
>>>> adapt your changes for the Nano too.  Once the GPCv2 driver is
>>>> accepted, I was also going to look at updating it to support the Nano
>>>> as well which also has the same DSIM and LCDIF as the 8MM as well and
>>>> a better GPU than the Mini but lacking the VPU.
>>>
>>> I don't have a branch, but I sent you the collected patches off-list.
>>>
>>
>> I would also be interested in the patch collection for BLK_CTL, DSIM,
>> etc. Marek, would you mind sending me those, too?
>>
>> Adam, did you already set up a branch and do some tests with the full stack?
> 
> Frieder,
> 
> I have been monitoring some of the activity on the BLK_CTL.  It seems
> like there is some disagreement on how to connect the power domain
> controller with the BLK_CTL.  Someone reported that it causes a hang
> on the 8MP, so until that gets resolved, I doubt we'll be able to use
> the display system.  Some of the DSIM changes happening are being
> pushed back for further changes, so it seems like having the full
> integration might be a while.

I have pulled all the latest patches, including Marek's off-list patches 
together in one branch based on v5.10-rc7 [1] if anyone is interested.

I added some fixes on top, that I needed to get my display behind 
another Toshiba DSI-DPI bridge working. Those are probably not 
upstreamable at all and need further investigation.

I'm hoping to reply to the individual threads for more feedback. I see 
that there are some blocking issues, but we hopefully get them resolved 
somehow.

Thanks
Frieder

[1] https://github.com/fschrempf/linux/commits/v5.10-mx8mm-graphics
