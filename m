Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 31CB92E07B6
	for <lists+devicetree@lfdr.de>; Tue, 22 Dec 2020 10:08:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725938AbgLVJIY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Dec 2020 04:08:24 -0500
Received: from mail-db8eur05on2103.outbound.protection.outlook.com ([40.107.20.103]:2401
        "EHLO EUR05-DB8-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1725931AbgLVJIW (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 22 Dec 2020 04:08:22 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eLkn12p4sOIuBz3DpSfaEltJrhm1qJIhU0kasVntiAbrv4dLd053WZ4ZY9R417h9KqOJbWgSCSCpqJyCIZzeYfQDlDH8U2C6amL4BeLutaH1AFBS65wn21r+WM9CiUatjVtL0iuH2gcjnozmuT/GGy0oZu9ymP+V7/y+lAU1617ONq5zW9INx6n3mRkZT6GDCvs1WTek+i39RahQ6o1ochzWlFFiV0GVX4b33eeuwV8sJ0xUuB0r2UmZtOQfTN48+VK/bDtFlupEpVB/Tn06KiX8ZrpPXfwqctOwZKRzCwm33Qg6B+RzIegKC9f5bdbeCPyjYBAF7TqMFIuKiJ66OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wNQulqAr8qHK8Y78gkWx9I9Gd1QbaVdMXuBw5lUAONM=;
 b=NMR0PkNxOcUck0dut0SdBCCdNR5MjgcUK9Hpyk6ziXsRnyun6L/AedKBT017k8IQSMbL9CCR6R7SJ5hAKPs6YnalSe2iADKl69hpzVhAp6MiJ5/HcczDwRyJvnNWainkRPTyFzXX7lLU9t21H5Fd9UQVegPGVIkIrUKJ/ZrVL0yeXtDOZ4UzG/zT4Xfmg37YaZWgmFt9ZhdkV5jchoAwjLad+o1q6Hqc2QtwFyYE8zXSyp+b0fpBFEH9ANUEfPShN/B3yoi7fZGPJC1tSWsebYPOLGHG/rrgMBic6bs63tTTS9hCOKHDlZ497GA/rCmplytXKT4pbZ2Sl5JnCdKenA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wNQulqAr8qHK8Y78gkWx9I9Gd1QbaVdMXuBw5lUAONM=;
 b=LszMoLOOShEPfrx81f+swyvp5dXXk4kSU88AYFfAJ184n9U1PuDrSx9NrHpqN0yG5Lcwsg0J2IvAWTo/Pr/PSoG5s6V+8XsYgcXdCj3bkr37UQqwaj9VrM4mYtMJpYlKulEA3hCD8PTx83hDWsh+JJZ/lt9g5UDgcf4rN7xRFM8=
Authentication-Results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=kontron.de;
Received: from AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:157::14)
 by AM0PR10MB3106.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:12a::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3676.33; Tue, 22 Dec
 2020 09:07:33 +0000
Received: from AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::9d5:953d:42a3:f862]) by AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::9d5:953d:42a3:f862%7]) with mapi id 15.20.3676.033; Tue, 22 Dec 2020
 09:07:33 +0000
Subject: Re: [PATCH 1/5] Documentation: bindings: clk: Add bindings for
 i.MX8MM BLK_CTL
To:     Tim Harvey <tharvey@gateworks.com>
Cc:     Adam Ford <aford173@gmail.com>, Marek Vasut <marex@denx.de>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        devicetree <devicetree@vger.kernel.org>,
        Abel Vesa <abel.vesa@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
        =?UTF-8?Q?Guido_G=c3=bcnther?= <agx@sigxcpu.org>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        arm-soc <linux-arm-kernel@lists.infradead.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        Michael Tretter <m.tretter@pengutronix.de>
References: <20201003224555.163780-1-marex@denx.de>
 <CAHCN7xKyRcZQcZunw6nLpWKWNXWJs4V_fPoQbijVrv6LbuFdYQ@mail.gmail.com>
 <bb982b4f-3510-6663-0e4c-66a7c34b8d62@denx.de>
 <CAHCN7xJFsi-zfzHOYJ56s5cx-owRL5EPrXCqzBgfrhrveAfo2A@mail.gmail.com>
 <CAHCN7xKDP02QTNrxg84OvVF=Orcnh_gWj551ZV4bJphysfgu5w@mail.gmail.com>
 <bfc7b2e9-506b-1161-95ca-6aaf73f38a2a@denx.de>
 <aa5e86be-07a8-878c-54ff-2c2c7cdd9ef7@kontron.de>
 <CAHCN7x+oz9hoNfNYytGD++EbtAkceer7q359qoOP=pwUvaD9mQ@mail.gmail.com>
 <2b81d5d3-f80d-674e-7507-6fc3e7553161@kontron.de>
 <CAJ+vNU0jtNY_tJxHWoxF8GCO-+qdmDi+io60bSuxwyrEga9ekQ@mail.gmail.com>
From:   Frieder Schrempf <frieder.schrempf@kontron.de>
Message-ID: <0fe87f6c-44d6-9559-1e3f-33e7733e4c45@kontron.de>
Date:   Tue, 22 Dec 2020 10:07:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <CAJ+vNU0jtNY_tJxHWoxF8GCO-+qdmDi+io60bSuxwyrEga9ekQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Originating-IP: [80.147.118.32]
X-ClientProxiedBy: FRYP281CA0005.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10::15)
 To AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:157::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.30.119] (80.147.118.32) by FRYP281CA0005.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10::15) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3700.21 via Frontend Transport; Tue, 22 Dec 2020 09:07:32 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ef0a7f49-9760-4688-5e75-08d8a6590494
X-MS-TrafficTypeDiagnostic: AM0PR10MB3106:
X-Microsoft-Antispam-PRVS: <AM0PR10MB3106D0FF047B964A621446ACE9DF0@AM0PR10MB3106.EURPRD10.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AROy1fLywNKmTFNRvVCQ1mG1Ad3TmgBVi4FjR/SDBsAcZuNkdC2y/ufdNqPB/ev7BdfIM8mWgfAvzv3R82AIS6GKW9mku6VvngcRrX+E0mtiAzKX+YJwAUtZL5AoUQR70rOEA0aDkSX3sUhaWqPB0IUjc2hH+cEIFRXgFL1LTdBY6YQ7zdz7oaZpLyEyl4SdCoJ/an91tOQFpGrF37nzcSKj1Eb4QeLG7C6X8IscP5Nl/JViSdmb/ly5hyiNtBhaKsX/JHNtH+FDd6GE2L9VTs7aPNlkZylduqlX7rNVFvt0zoL7ZwdElTBIHSTz+aUh/MFhu2/kYhmdeXo7ZOKhU1a3CMH0vQ6o7hmlhMOjUkP9Oi4UlYNCun3tcyFueZ+qmkdioG8ftbDTX3Hsiy+4egGAPhRdVpmdrw/Xdrbh6qWx97bCrNH0r3bzkmstcwIRz0Rg3IX5zI2q6dm5qnyDgZdlLE05UdgvHypzYZexVcdBpQWyCPLJy2pGZgzUwkf+Gbuvpxxi5XtifvkzDlDsoUk274+19EhEiM/CrCBQnxwsxl5QHeRFkaqs9h4qhnbz
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(136003)(39840400004)(396003)(376002)(366004)(346002)(6916009)(956004)(2906002)(83380400001)(6486002)(5660300002)(45080400002)(186003)(36756003)(16526019)(26005)(478600001)(16576012)(7416002)(31696002)(44832011)(66556008)(66476007)(86362001)(316002)(2616005)(966005)(52116002)(8676002)(66946007)(4326008)(53546011)(54906003)(8936002)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?NCszZXpWZnIvd25UYmZhQ3BVbmxiRjVxMFVtMDJ5am0rU0tuYWpxQXMyQ1I4?=
 =?utf-8?B?RGxtMFkrbkorWGlDTmxtU2tJQnRMZU9BcWovTEVaYURDZmtyMmVtcEhQc3BL?=
 =?utf-8?B?b3VCeVZPTUNCWVlTYzZXc2FXUlFyRm1SMWZYaEhkLzBsTnFsUEprZnFKTm5G?=
 =?utf-8?B?OXJIUkRLRHdmKzI4d0VpbmV0ZE9nb1NTdTNobTBaNUZlaGgwbGJuM01tRDJ5?=
 =?utf-8?B?ZHJqUURhTkNjS0ZFVzIxc3VJSE9lQnlCdk8xaGNMN3N2NFBnUWVlS095VlV3?=
 =?utf-8?B?WFcybmZETnV5ZER3V3RiWDZQaGQzTGNCQ1JGVVFmYmR4UG5ZSW5FVklKM3Ns?=
 =?utf-8?B?c24zR1FMUFl4bURDQ05GVVBEeEl1K3lxYmxIRGdsVjJHSndnZVVkdG9SbDVK?=
 =?utf-8?B?SFUwNlNDUW9MSDRFZlZtaDRnU3VObXNUV285OFRZRGtoWVZ5ZGxIL2hXUlQx?=
 =?utf-8?B?b3VPYm5jQVljVHdzd2ZZY1R5S3MyVy9Vak5KcExtY2FMSnloVks0L2dNN254?=
 =?utf-8?B?SG02UkRLYjNwVFNsRUJzZDZ3R005L3VoTUQyUGw2aVVYeXM1Z29FSCtPYWsr?=
 =?utf-8?B?RTNqS2ZsVXlEK3FKeGJ0cEp1MG8rT2hFZzlXUW5CRnZ2ajQzQVlZYW52ZUpx?=
 =?utf-8?B?YmdVWWhTTEx4MEJhOWo2ZkI2eFB6RVpMaUFKSStsVlRWbVVUVFJmKzgva01L?=
 =?utf-8?B?QXNmbmozSTVGTlN2YzlEaW8rQkVSeU9WL0dWU3g5eldNUitXZ0lKTkZvWHg1?=
 =?utf-8?B?S2t2V2RPTlRLK1NXMkZjSmxlT3FsdTNBTnNPQmhTTldISDFWWnduK2ZuWE5v?=
 =?utf-8?B?eVA0cjBiSDgvOUJOUWhaN1ZhcGxQV0tVZTJSbnVsY2NVRVdnaEd3SE1KK3hy?=
 =?utf-8?B?VnJuZDEvU0g3eXJ4K0JTZ1FpSE1TM0t4NEVGbVRoVjhyTW1ZeUQ0Zi8wZHU4?=
 =?utf-8?B?NFMrSGxsemFwUk12YU1oK3FsdFFkcXgzRUxVc1RzSVEwWGFMVmR5V1BGVzRK?=
 =?utf-8?B?OGhHc0MwdlV2UWlHV0w2THZBamJlU2FubGJtK01wRUJmYld1a3hFa084Zk05?=
 =?utf-8?B?WXJqYXlNOTRvMGY2dWRVMDdCVFAyRUwzc2U4cnZ5Nkg3YnpQOFVxZGRwQ1Nn?=
 =?utf-8?B?czBZOWNXbmRzMXRkcDlpcE9NcXZZaE5jODdCbmdHMmlvMG1qVlRZOEpiWDR6?=
 =?utf-8?B?K0dZVlhZQU1MUmM2aUt4SWxGcmhYT0tXQkxjUFhPRnkzM3J1OC90aVY2c0lD?=
 =?utf-8?B?V2g0SGNXengzWjBhQ0hCSnNzVDl0RG9zZXBKa2NBby9LUEpibWhSY1kyVENt?=
 =?utf-8?Q?ecO4gkPRHejF0rR/8jFqG9Z0fONhXsI+Lk?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2020 09:07:33.1558
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-Network-Message-Id: ef0a7f49-9760-4688-5e75-08d8a6590494
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Tpm4Jjv8n9XXGIMZmyWF9If0hVz8WB4w7Enek/NHkfU9am+T8UvLn0WlgtsjMSe3k4ncBURzo8nAICapXpjZ3UNE9f6Z4V0ywaIHN9RxWWQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR10MB3106
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Tim,

On 16.12.20 22:24, Tim Harvey wrote:
>   'On Thu, Dec 10, 2020 at 7:15 AM Frieder Schrempf
> <frieder.schrempf@kontron.de> wrote:
>>
>> Hi,
>>
>> On 30.11.20 16:43, Adam Ford wrote:
>>> On Mon, Nov 30, 2020 at 5:47 AM Frieder Schrempf
>>> <frieder.schrempf@kontron.de> wrote:
>>>>
>>>> Hi,
>>>>
>>>> On 07.10.20 22:50, Marek Vasut wrote:
>>>>> On 10/7/20 10:17 PM, Adam Ford wrote:
>>>>>> On Wed, Oct 7, 2020 at 3:08 PM Adam Ford <aford173@gmail.com> wrote:
>>>>>>>
>>>>>>> On Wed, Oct 7, 2020 at 3:03 PM Marek Vasut <marex@denx.de> wrote:
>>>>>>>>
>>>>>>>> On 10/7/20 9:52 PM, Adam Ford wrote:
>>>>>>>>> On Sun, Oct 4, 2020 at 12:53 AM Marek Vasut <marex@denx.de> wrote:
>>>>>>>>>>
>>>>>>>>>> Add the i.MX8MM BLK_CTL compatible string to the list.
>>>>>>>> [...]
>>>>>>>>>> ---
>>>>>>>>>>     Documentation/devicetree/bindings/clock/fsl,imx-blk-ctl.yaml | 1 +
>>>>>>>>>>     1 file changed, 1 insertion(+)
>>>>>>>>>>
>>>>>>>>>
>>>>>>>>> Is there a DTSI change part of this patch?  I was going to try to test
>>>>>>>>> it, but  I am not seeing a change to the imx8mm.dtsi, and I am not
>>>>>>>>> sure where to put the node.
>>>>>>>>
>>>>>>>> There are in fact quite a few other pieces you need to have in place,
>>>>>>>> this patchset in itself is not particularly useful, it is just infra for
>>>>>>>> the LCDIF and MIPI DSIM block control. You might want to wait until they
>>>>>>>> all land in next and test that result.
>>>>>>>
>>>>>>> I have several patches in place, the GPCv2, this block driver,
>>>>>>> enabling GPU DT node, I'm also working on the DSIM patch you posted.
>>>>>>> I was hoping to test them all together and reply to the various
>>>>>>> threads with tested-by.  I also want to get my device tree stuff ready
>>>>>>> on the beacon boards so when everything lands, I can post DTS updates
>>>>>>> to enable the LCDIF, DSI, and the HDMI bridge.
>>>>>>>
>>>>>>> If you have a repo somewhere that has all these combined, I can just
>>>>>>> work on the final layer to enable the device tree plumbing on my
>>>>>>> board.  I just need the imx8mm.dtsi changes for this, DSIM, and the
>>>>>>> LCDIF so I can finish the task.
>>>>>>
>>>>>> On that note, I also have a i.MX8M Nano board which is similar to my
>>>>>> 8MM.  If I understood the 8MM clock block driver better, I hope to
>>>>>> adapt your changes for the Nano too.  Once the GPCv2 driver is
>>>>>> accepted, I was also going to look at updating it to support the Nano
>>>>>> as well which also has the same DSIM and LCDIF as the 8MM as well and
>>>>>> a better GPU than the Mini but lacking the VPU.
>>>>>
>>>>> I don't have a branch, but I sent you the collected patches off-list.
>>>>>
>>>>
>>>> I would also be interested in the patch collection for BLK_CTL, DSIM,
>>>> etc. Marek, would you mind sending me those, too?
>>>>
>>>> Adam, did you already set up a branch and do some tests with the full stack?
>>>
>>> Frieder,
>>>
>>> I have been monitoring some of the activity on the BLK_CTL.  It seems
>>> like there is some disagreement on how to connect the power domain
>>> controller with the BLK_CTL.  Someone reported that it causes a hang
>>> on the 8MP, so until that gets resolved, I doubt we'll be able to use
>>> the display system.  Some of the DSIM changes happening are being
>>> pushed back for further changes, so it seems like having the full
>>> integration might be a while.
>>
>> I have pulled all the latest patches, including Marek's off-list patches
>> together in one branch based on v5.10-rc7 [1] if anyone is interested.
>>
>> I added some fixes on top, that I needed to get my display behind
>> another Toshiba DSI-DPI bridge working. Those are probably not
>> upstreamable at all and need further investigation.
>>
>> I'm hoping to reply to the individual threads for more feedback. I see
>> that there are some blocking issues, but we hopefully get them resolved
>> somehow.
>>
>> Thanks
>> Frieder
>>
>> [1] https://eur04.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgithub.com%2Ffschrempf%2Flinux%2Fcommits%2Fv5.10-mx8mm-graphics&amp;data=04%7C01%7Cfrieder.schrempf%40kontron.de%7C4b06e39a1030405300be08d8a20913f6%7C8c9d3c973fd941c8a2b1646f3942daf1%7C0%7C0%7C637437507175831939%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=n1Y4HwamMfPukFuVEurgt7KOM9SMLkercFhgFMuE6ro%3D&amp;reserved=0
>>
> 
> Frieder,
> 
> Thanks for sharing your repo as it's getting hard to track these
> patchsets (gpc/blk-ctl/power-domain/exynos/dsim). I'm also working on
> display support for IMX8MM and in my case I'm trying to connect to a
> RaspberryPi 7in display which I see Marek has been doing some work on
> to split out drivers/gpu/drm/panel/panel-raspberrypi-touchscreen.c to
> separate bridge, regulator/backlight, and simple-panel driver.

thanks for the feedback and good to know of other people caring about 
upstream support.

> 
> Marek,
> 
> Thanks for your recent work on splitting out the rpi display driver so
> that it can be bound via device-tree. I have found that I need to move
> the tc358762_init to enable vs pre-enable when using it with the
> in-progress samsung-dsim driver else the driver fails writes due to
> not being enabled yet:
> diff --git a/drivers/gpu/drm/bridge/tc358762.c
> b/drivers/gpu/drm/bridge/tc358762.c
> index 1bfdfc6..0d88e61 100644
> --- a/drivers/gpu/drm/bridge/tc358762.c
> +++ b/drivers/gpu/drm/bridge/tc358762.c
> @@ -153,11 +153,17 @@ static void tc358762_pre_enable(struct drm_bridge *bridge)
>          if (ret < 0)
>                  dev_err(ctx->dev, "error enabling regulators (%d)\n", ret);
> 
> +       ctx->pre_enabled = true;
> +}
> +
> +static void tc358762_enable(struct drm_bridge *bridge)
> +{
> +       struct tc358762 *ctx = bridge_to_tc358762(bridge);
> +       int ret;
> +
>          ret = tc358762_init(ctx);
>          if (ret < 0)
>                  dev_err(ctx->dev, "error initializing bridge (%d)\n", ret);
> -
> -       ctx->pre_enabled = true;
>   }
> 
>   static int tc358762_attach(struct drm_bridge *bridge,
> @@ -172,6 +178,7 @@ static int tc358762_attach(struct drm_bridge *bridge,
>   static const struct drm_bridge_funcs tc358762_bridge_funcs = {
>          .post_disable = tc358762_post_disable,
>          .pre_enable = tc358762_pre_enable,
> +       .enable = tc358762_enable,
>          .attach = tc358762_attach,
>   };
> 
> Frieder, I did find that your "drm/exynos: Fix PLL PMS offset for P
> value bitfield" patch breaks the samsung_dsim_host_transfer for me
> with the tc358762 bridge in the rpi panel. If I have that patch I get
> a timeout on the transfer with some added debugging:
> [    4.386387] tc358762_write 0x0210=0x00000003 0
> [    4.387031] samsung_dsim_host_transfer ret: 0
> [    4.387038] tc358762_write 0x0164=0x00000005 0
> [    4.387375] samsung_dsim_host_transfer ret: 0
> [    4.387379] tc358762_write 0x0168=0x00000005 0
> [    4.387409] samsung_dsim_host_transfer ret: 0
> [    4.387413] tc358762_write 0x0144=0x00000000 0
> [    4.387741] samsung_dsim_host_transfer ret: 0
> [    4.387745] tc358762_write 0x0148=0x00000000 0
> [    4.387773] samsung_dsim_host_transfer ret: 0
> [    4.387777] tc358762_write 0x0114=0x00000003 0
> [    4.387804] samsung_dsim_host_transfer ret: 0
> [    4.387808] tc358762_write 0x0450=0x00000000 0
> [    4.387834] samsung_dsim_host_transfer ret: 0
> [    4.387838] tc358762_write 0x0420=0x00100150 0
> [    4.388168] samsung_dsim_host_transfer ret: 0
> [    4.388172] tc358762_write 0x0464=0x0000040f 0
> [    4.388200] samsung_dsim_host_transfer ret: 0
> [    4.493346] tc358762_write 0x0104=0x00000001 0
> [    5.509341] imx-dsim-dsi 32e10000.mipi_dsi: xfer timed out: 29 06
> 00 00 04 01 01 00 00 00
> [    5.509345] samsung_dsim_host_transfer ret: -110
> [    5.509348] tc358762_write mipi_dsi_generic_write failed err=-110
> [    5.509352] tc358762_write 0x0204=0x00000001 -110
> [    5.617336] tc358762_init failed err=-110
> [    5.617344] tc358762 32e10000.mipi_dsi.0: error initializing bridge (-110)
> 
> Here is your patch which causes this issue for me:
> diff --git a/drivers/gpu/drm/bridge/samsung-dsim.c
> b/drivers/gpu/drm/bridge/samsung-dsim.c
> index cb1ec3c..fc7c1d0 100644
> --- a/drivers/gpu/drm/bridge/samsung-dsim.c
> +++ b/drivers/gpu/drm/bridge/samsung-dsim.c
> @@ -174,7 +174,7 @@
>   /* DSIM_PLLCTRL */
>   #define DSIM_FREQ_BAND(x)              ((x) << 24)
>   #define DSIM_PLL_EN                    (1 << 23)
> -#define DSIM_PLL_P(x)                  ((x) << 13)
> +#define DSIM_PLL_P(x)                  ((x) << 14)
>   #define DSIM_PLL_M(x)                  ((x) << 4)
>   #define DSIM_PLL_S(x)                  ((x) << 1)

As I already mentioned in the commit message of this change, I have no 
idea how the "correct" fix should look like or if there even is anything 
to fix here at all. It's just what I needed to get my setup working and 
I found it really odd that the NXP vendor implementation differs from 
the upstream Exynos driver in this place.

I have some other hardware setups with different bridges (LVDS/HDMI) 
behind the DSI and if I find some time, I will try them and see if they 
behave differently. Unfortunately I don't have any hardware to connect 
the RPi display to the i.MX8MM to test your setup.

Best regards
Frieder

> 
> I'm not very knowledgeable about MIPI DSI and find it strange that
> several writes in tc35872_init succeed until the failing writes:
>          tc358762_write(ctx, PPI_STARTPPI, PPI_START_FUNCTION);
>          tc358762_write(ctx, DSI_STARTDSI, DSI_RX_START);
> 
> For what its worth I've backported Marek's rpi backlight/reglator and
> simple-pannel driver to the NXP imx_5.4.47_2.2.0 kernel and do not see
> any MIPI DSI write failure there, although I have the same behavior of
> the display not showing anything.
> 
> Marek, are you using the rpi panel with IMX8MM? While I now have the
> drivers probing without error and have a functional backlight,
> regulator I see nothing on the display.
