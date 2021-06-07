Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 90D1839D65F
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 09:53:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230127AbhFGHyz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 03:54:55 -0400
Received: from mail-db8eur05on2108.outbound.protection.outlook.com ([40.107.20.108]:24928
        "EHLO EUR05-DB8-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S229436AbhFGHyz (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 7 Jun 2021 03:54:55 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OxUTDhjpkCDVU8vIXe35XoCWyyM1H9db5iQZYTXHxytZf0KuUQ4YAJlvWF3fUibOpx0luf9CcATk6kFw/GIF93WNy1EHDtMUhBwGp1YPtMpjCGNGy236rxx599VWJoDZgKK8x8NU65Hx+3PPH+KyRaPv19odsAlQeIht7ZvFjB+EQkw2W+HXoLv2n9baKJWwCzJoWXQjh3jZw15YClHqotCbWTKgxS/GUYi6f0NSDPCDU13yPeDS/fEBAKFnI66ivJJkeDn5o5Cx4gGj2Fncdlmo3qssh6236baviatqRhJglrl92nbdIzliQouaIkFuNGOAR3oCdUgIJHDbFzMkrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ebCiAN/D6WEhsi9cs0AU2xLcz5ieOdecqs9F0hUVFPw=;
 b=jwfUsyz6RXcLH/9hjhfDGLEgae8MZaxudGPR0OmbEbOVlKYuta/AGF7BXvYqGAHl/BvxNhw/BdT8HAVCYbNh5y92Q3x4gieUcOgm2uApHh2K3Jmc8Zpa4dzN/Y3v92BmJ6Da5NB4QFXrd1NN+yS1+C+MGZXsMu5+OjvyWNxT8y748GWGTwMUdUc7qhkXXxQJ6Ytbg6K3ywTzyujxY7RmwyadaBAiRR0MG8SYYdxGOb9GfL6eapS8a8JCL7JaytgG0V2m6yrE5zohwDV/r+m7wj7oeFC0wGTAuQL0m56Fv7+1uy/M3AMQ9bbRFMqXmO4V1m0+dt4r/fHQJUv13caZ/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ebCiAN/D6WEhsi9cs0AU2xLcz5ieOdecqs9F0hUVFPw=;
 b=nE4H2d53JRYfq+0pFf3ASZjQuthbY0sKysXCob3wxMqggxJiL2Pm/iV5UZVFpQpAF4whHuowLHF8j2eP3MvsMNAYF7nk/ZE5jkQTZLA8jx6n0hj/m+WtP3vlkmfGT3G9zXXi74tmf79MmsRe5+/BT0Usbts1Ild/f3IpCuK6FRA=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=kontron.de;
Received: from AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:157::14)
 by AM4PR1001MB1362.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:200:98::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.21; Mon, 7 Jun
 2021 07:53:02 +0000
Received: from AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::1133:8761:6cc9:9703]) by AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::1133:8761:6cc9:9703%5]) with mapi id 15.20.4195.030; Mon, 7 Jun 2021
 07:53:01 +0000
Subject: Re: [PATCH 1/4] arm64: dts: imx8mm-venice-gw700x: override thermal
 cfg for industrial temp
To:     Jacky Bai <ping.bai@nxp.com>,
        "tharvey@gateworks.com" <tharvey@gateworks.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
References: <20210601174917.1979-1-tharvey@gateworks.com>
 <b63300e8-3739-fcc6-6d37-952f93cfd17b@kontron.de>
 <CAJ+vNU0mBQJ_ZLsKOiY0k7+drYvmw+bsHfeX4+Mg=s4_fxSUYA@mail.gmail.com>
 <5eba4438-239c-71d1-56ec-4edd70e87ec3@kontron.de>
 <DBBPR04MB79303661E07409B4B65F3EF487389@DBBPR04MB7930.eurprd04.prod.outlook.com>
From:   Frieder Schrempf <frieder.schrempf@kontron.de>
Message-ID: <273e2859-7874-e273-9599-139274891023@kontron.de>
Date:   Mon, 7 Jun 2021 09:53:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <DBBPR04MB79303661E07409B4B65F3EF487389@DBBPR04MB7930.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Originating-IP: [109.250.131.46]
X-ClientProxiedBy: AM4PR0101CA0067.eurprd01.prod.exchangelabs.com
 (2603:10a6:200:41::35) To AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:157::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.10.32] (109.250.131.46) by AM4PR0101CA0067.eurprd01.prod.exchangelabs.com (2603:10a6:200:41::35) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.20 via Frontend Transport; Mon, 7 Jun 2021 07:53:01 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a337ec72-7aec-484d-6af8-08d92989465b
X-MS-TrafficTypeDiagnostic: AM4PR1001MB1362:
X-Microsoft-Antispam-PRVS: <AM4PR1001MB13621F44CC7A3860D89C2D3DE9389@AM4PR1001MB1362.EURPRD10.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: he8uNM3udLUbaquvwZfdX2IOTa+0UE1ichotN+b94fom9OBT9ti0aemK2tUotCJ8xoRiPIHVMmACIA61EIihjidc0H2Ut/2sgdCRco89RYxIwt+1HZkMFDW+RubxlHmb9BDM+TqC792jQdCLK/bddirnszr2swr9f2mJYEZGFHwLQSXo/Zd8Eg0gt1yyu6IztnxPJCJg6htPISwq33pkpI1Ce/uwcyrkFac5RjWQw3c2sbd8HVhxkCgnISSShSC6Iv3EzozJmkcVjLmHDelXo7bHfqKzwyi7rL4mm2iIxM/mS440UMPDVk0bGJzbCwegquCxG6OY5PQI/8IKUyCDDqNN5b24+GL8zySuelk4e5/7RjoRsKlcgBBJSDNS393/CM2EOBmsvdGdxby9a0es/fXxciHRaBWaGbbpmOYNYprxJJoVFi7BQm2FBPmOIBrCkkeC7zhldnmynUWiJA3669SVonBPJi007wbonAFZmJ0bpf8izuUCrJLYPojRjxcyVQQ1Y1fNSB+fUvqgluu1MhwgnMKWY0M40Jpq4l7VIcBjDzt0W7YVmKRRu40TwzkxGd+Bznb76cBjTdkiK0mxRpvzVs0cT6dTxmBaaaHs/Lw7/Opw64KBzQx9pAQ1oK6BTJMLx0EnByvDKqkPAYl9pqIq9gWt+yeXRJ2gKAKw+HI4Zh+vUdC10PAaTvUZ5kXV
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(366004)(376002)(346002)(396003)(39860400002)(136003)(31686004)(478600001)(316002)(4326008)(7416002)(36756003)(956004)(16576012)(16526019)(2906002)(31696002)(38100700002)(54906003)(53546011)(5660300002)(26005)(66946007)(66476007)(110136005)(8676002)(66556008)(6486002)(2616005)(186003)(83380400001)(44832011)(86362001)(8936002)(32563001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?U3FjTHkrTFk5aVp0NjNxSG50TzNwYkw3TFRjMHE3QWZjMmdyYURCRE10S2NH?=
 =?utf-8?B?TlpoREtORXNvS1dXK2lGTGIwWSs1dlFzMHpBcDZmWGpzd2l6bDMwZzVDQysz?=
 =?utf-8?B?MjQ0SzA0OWZFZWs3bXZZbVZIZmE0MjIzZkFWL2swcUpPUkdzU2JWVmtlcCtH?=
 =?utf-8?B?dzVYMSsvOTQ1VTUxL3FZb3k0NmpGREgrZ0tFUjd0UjIySEErVHpTeEZ4cU9l?=
 =?utf-8?B?U1lyOHkyMTdlRHB0TmIvTXJCVXM4RkRyMWpmeHBIZG9kODZVWnN3TGdBVTh0?=
 =?utf-8?B?ck03RGVPL3pkdXNRNVF6UTlTTXpQeVYwSUwvQjRrMjhwMDNwUWxRelMvaHIx?=
 =?utf-8?B?OVNZNDZkelFOUWhEZ1oyTzdTY0tMczZTdzk4S0l6b0pFcUVnWHRhNWYrU29j?=
 =?utf-8?B?eWxpenhzTFZ4cnVlZkU4elhrTG5GZDNadzB3QVlFaG9uODlRZmdwWHFwKytC?=
 =?utf-8?B?Z3psaFc5dXUrZVNyd04vcnhabVI5ZkZuQVhCbG0xalRoSzI2RFBxUmpXcXpt?=
 =?utf-8?B?UjVhRnYxOXlZRExGcDMrNi9DL3M3T2dNUXB5K1VnaVJ3T3BJOEdSL2o3bGY0?=
 =?utf-8?B?RU0xTEtFM1dFdy82MzEzbFVjYi9VRjdrdkFuNVdwRjM0QmpEU2JZQjJFMllQ?=
 =?utf-8?B?OVhnMWZIL1FvRjdZcFJXcUw5NUx2OWhVN043NEl1TkorY2hWcS9MUGExOFVp?=
 =?utf-8?B?MFQvTlAycTUwUFZOSDFCVlFSRVBPN0E1MERXMFpkeXZPVlg5cTF5NGVNYzJj?=
 =?utf-8?B?REtTcThlaEs2eUJqK09nVHQ0SFVoVVB0ZEVHOTJlRlNNdUNxb2pyY29Fajcv?=
 =?utf-8?B?RmhUOWlSRDlEaitLdDBYR00vbWZOSnhQcG1hMFgxWDk1QmYyZDJacEJKRUQ0?=
 =?utf-8?B?QThIeG1vZ0hrMXF2RnF2V2ZDTWFUc3IyRk9kbTJ6aDZhME4xdHVFaXNlRVVn?=
 =?utf-8?B?dFhTejJuYTZuN3UzMTBvNi8zZmV2em5zMFVNTlhST1l6b24wS0g1bVJpUm10?=
 =?utf-8?B?OUJINksrSFJjMFlTSFY2eXNFanRHUlFrRVNZZ0hRWHVBK2RzWVlVZmYrS3Vp?=
 =?utf-8?B?OEJRRXMzNWdnM3U0OExLMDR6bmQ0TkpBODBFQ1lRMVdHR3k3MjhNcUNPZm9T?=
 =?utf-8?B?bHhTbEc4OTN4WXpncXFDZXFBaDZBNGplRDM2cGdTMEQ2djdvRjZ5QU5md3Zy?=
 =?utf-8?B?NTNuRGtJOEMrS2N1ZXNmdnZGR1hySWk2RjhldkZsTG45bXA2UUNTdU1Ib01h?=
 =?utf-8?B?M0hzVGh2c3kzLzEzNHNINDAxZExBQW5lb21ERFpWeHU3RmJFd2VSOGNSWkJE?=
 =?utf-8?B?UG9tSVdjeU1QRVBXRFlDZ2QwNStETllLM3dteW81THVMa2kyQXlWMVVFVXhZ?=
 =?utf-8?B?VVNRbHM4a2ZWbGFIYzFUYUJuK1JmVGdJSWJmSUNjekxaSWhMQ1FYSWwrY3gz?=
 =?utf-8?B?b1pGZDFHWWZHNnkwQzcwOW1ma0wvNkNNdXVIUTZNcGkyNEhsRFpMcENDdXVx?=
 =?utf-8?B?YzFlc3BIbURJR1ZqbHIyam11ajZ2T1BIT0ExVk9YR0dwUnF3cnc1MVFiSXBk?=
 =?utf-8?B?ZGZlejIrTExESDVPNWx3c3JTNmh6MGlxWlBMMmR6dCtJZmNvODROS000NHFH?=
 =?utf-8?B?SGx3SjMyNVNTQUJkWmF5MDlCTG5MeHE3MUZDcXM3cVBjN2VhbnlZSHpKeG5R?=
 =?utf-8?B?RG5PNDF0ZEJDcXg3M21GTmQ0SllETHlBQTlpaHBTMEx0N1AvaTBrSXdRVEhh?=
 =?utf-8?Q?1rJDH1LkQ2WKGa8gqyHldBKxUFvaEfbT2IugDDB?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: a337ec72-7aec-484d-6af8-08d92989465b
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2021 07:53:01.8539
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8QMkrbcN+7uSvwwprB72YgZBROzql42sQoMSpPagOyTlBoXWJuapaQnZhsc1Mq6BVIZBaXwAo3oxnkqHJDp5KuUaJeQjUseNM688q+/U4/w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR1001MB1362
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07.06.21 09:30, Jacky Bai wrote:
>> Subject: Re: [PATCH 1/4] arm64: dts: imx8mm-venice-gw700x: override
>> thermal cfg for industrial temp
>>
>> On 04.06.21 17:42, Tim Harvey wrote:
>>> On Wed, Jun 2, 2021 at 12:11 AM Frieder Schrempf
>>> <frieder.schrempf@kontron.de> wrote:
>>>>
>>>> On 01.06.21 19:49, Tim Harvey wrote:
>>>>> Override the default temperature alert/crit for Industrial temp
>>>>> IMX8M Mini.
>>>>>
>>>>> Signed-off-by: Tim Harvey <tharvey@gateworks.com>
>>>>> ---
>>>>>  .../boot/dts/freescale/imx8mm-venice-gw700x.dtsi     | 12
>> ++++++++++++
>>>>>  1 file changed, 12 insertions(+)
>>>>>
>>>>> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
>>>>> b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
>>>>> index c769fadbd008..512b76cd7c3b 100644
>>>>> --- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
>>>>> +++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
>>>>> @@ -493,3 +493,15 @@
>>>>>               >;
>>>>>       };
>>>>>  };
>>>>> +
>>>>> +&cpu_alert0 {
>>>>> +     temperature = <95000>;
>>>>> +     hysteresis = <2000>;
>>>>> +     type = "passive";
>>>>> +};
>>>>> +
>>>>> +&cpu_crit0 {
>>>>> +     temperature = <105000>;
>>>>> +     hysteresis = <2000>;
>>>>> +     type = "critical";
>>>>> +};
>>>>
>>>> As this is not really board-specific, I think the proper way to handle this for
>> all boards is to let the thermal driver read the temperature grading from the
>> OTP fuses and set the trip-points accordingly, similar to what is done on i.MX6
>> [1].
>>>>
> ...
>>>
>>> Frieder,
>>>
>>> Yes, I thought about adding that kind of support to imx8mm_thermal.c
>>> but the difference is that imx8mm has alerts defined by dt and imx6
>>> does not so is it right to override dt alerts on imx8m? What if
>>> someone designs a board that they specifically want a lower alert than
>>> the cpu grade they are using based on something else on the board?
>>>
>>> My approach to this was to eventually actually adjust the imx8m dt
>>> alerts in boot firmware based on some boot firmware setting or
>>> specific board support and leave the kernel alone.
>>
>> Allowing board-specific trip points sounds like a valid request, but I still think
>> we need a way to handle the temperature grading in the driver if no
>> board-specific trip-points are given.
>>
>> What if we just set the temperature property in the trip nodes in imx8mm.dtsi
>> to zero? The thermal driver would detect this and setup the correct values
>> according to the grading. If the dt already provides non-zero temperature
>> values (through the board dts) the driver will just leave the values and
>> disregard the grading.
>>
>> I think this solution would be covering all needs.
> 
> I thought to add the grading check in the imx8mm_thermal.c to dynamically set the trip points
> temp, but it seems hard to do it due to the fact of_thermal is used, as no helper API is exported by
> of_thermal, no better way to override the trip point temp.
> 
> glad to see any good suggestions.

Right, the driver doesn't handle the trip-points directly. This is all hidden in the framework. So this might not be so easy to implement.

What about this other approach: Adding all the possible trip-points for the different gradings to the SoC-devicetree and then let the thermal driver remove the trip nodes from the dt that are not valid for the detected grading, just before the driver registers the sensor/zone.
