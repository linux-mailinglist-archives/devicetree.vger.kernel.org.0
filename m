Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C14683E1BCF
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 20:57:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241700AbhHES5O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Aug 2021 14:57:14 -0400
Received: from mail-eopbgr30123.outbound.protection.outlook.com ([40.107.3.123]:65518
        "EHLO EUR03-AM5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S236758AbhHES5O (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 5 Aug 2021 14:57:14 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XjaW/cXWrI6wGlqk/fVU8c342/2mJUESd9RYOOluo3eNGtKLMOxSCu/qCKTfILiqvyNMQ5w6nTi9bKn77OOUL5eSRsQFHocj+HdJGOF9Ys5ZETjvw5GLo1rkWFIweRco73GoP6O2x3insTkeCTErKcNrVYw3I8oqy8cm99S/lwWejixS4DNjnN0LfZVhDQfvlOcQVMn4cuqZN5lIheeDtUsxHRWh2Qj0XY7dEOJz/LGPRiENAZPCNOGxzaRyzUsRjx4uJilQ/0FS8TmX6iFSTUWAtZpccHucEjLXGWN5JkSJ7sZZC4wgvtwTcppfC3UbDzJxR/MxEg2qX2pPAz+8lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mm3pFih78Y9JzyOLY4zQyixT5EBPEd9rdPhWDndhod0=;
 b=P5vJIcgpxQrx+IsX500Y3yWfjrWmeH0eyhmvL+ZtnAAgD1y17T9YdjIHOmarNWWcHprGRzYewG3T3eTafeh4gY0sYezdj7kCqGGFw6F8S+jGyWXOKvI3Yme26rApW7X4H7Oj9nv9Ml8O9sq7bc06+xcThCHWYjYCp2djFPckrcNU8r42qjXujN/WjaBBwxjjhLpOhNl8SSkOaL+n/hkLX5PKsNBavxLlqIexfOgXH3GjiToNNc7rPhB0iWW7WPl0txIT0d3doOhKDdrXivD0wZJrEb+AjMRjCVdArAM37BFQzEQd/Zt9M9UwphB0KgQrke0kzNHFiOjFOQwLztglCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mm3pFih78Y9JzyOLY4zQyixT5EBPEd9rdPhWDndhod0=;
 b=TkL0umIAfDIEACNP3XwkKs6oy9DNWy69vFvFO930HMEHs0yhL8WuNA01tdi+RVJZzLdIULmoXBnymMVRCkHi0w6UUbPrDNm/X765s9YCAT2NFkJYBO+Ax65rj4dT8k/6w4Q+28ohuq1u68neRIT//aLvA91nWNk35SeUE+1zp3Q=
Authentication-Results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=kontron.de;
Received: from AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:157::14)
 by AM9PR10MB3989.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:1f0::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.21; Thu, 5 Aug
 2021 18:56:57 +0000
Received: from AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::30d6:1ff9:85e4:48d1]) by AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::30d6:1ff9:85e4:48d1%5]) with mapi id 15.20.4394.017; Thu, 5 Aug 2021
 18:56:56 +0000
Subject: Re: [PATCH v2 00/18] i.MX8MM GPC improvements and BLK_CTRL driver
From:   Frieder Schrempf <frieder.schrempf@kontron.de>
To:     Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     NXP Linux Team <linux-imx@nxp.com>, Adam Ford <aford173@gmail.com>,
        Peng Fan <peng.fan@nxp.com>, Marek Vasut <marex@denx.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
References: <20210716232916.3572966-1-l.stach@pengutronix.de>
 <20210721204703.1424034-1-l.stach@pengutronix.de>
 <818b52fe-8fa6-b47a-6dde-783ac378c603@kontron.de>
Message-ID: <8de1cd0a-4d91-60e2-61e6-9f903bbf546b@kontron.de>
Date:   Thu, 5 Aug 2021 20:56:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <818b52fe-8fa6-b47a-6dde-783ac378c603@kontron.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AM6PR10CA0034.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:209:89::47) To AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:157::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.10.17] (46.142.69.7) by AM6PR10CA0034.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:209:89::47) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.15 via Frontend Transport; Thu, 5 Aug 2021 18:56:56 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2f3f537f-cd72-413f-adb5-08d95842cc40
X-MS-TrafficTypeDiagnostic: AM9PR10MB3989:
X-Microsoft-Antispam-PRVS: <AM9PR10MB39899C054D4A1034E76847A4E9F29@AM9PR10MB3989.EURPRD10.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: F0ZEfKSTntrt4RYEutIGgqGB9ULWOBqyEijF16/SCeTf8y7BbhXQW1T3U4AGVZ0qWDwy/5mbxlZFKTm96iYnGmqjVINhAsAUsV3/kcdmxqm4EiHSpfwJjrnnSExGyBWFD6QyClaX1PwKy35OOxGRl+aK8TDz+CHSHh904xQV6+HSaB2H1Ug/F01pUB/RbjnJFpzrYLUTG2xl2cxq3cPAYfVhWriuY1x5FrD4bNXx8m2ppNzovrSQ3tE//T7FJvXRB6mUQYjUU/tj5EDqlYczkdw6/7jRPOb2t2HMW5Z18RMzPjBzGsQ/n25rXqjERKLxgnreFrN9xe9Jom8JKeKsT55AdwJfhxVcZZMDz82MwkwB98KfjMSNbhJv8tDoNBiKH4bm7XG43RzSIFLVfSwRrai3zYOqVaGnfKFjc5zjFeO4H741EB4iSkQds9x1BBJoAwQvgyLDdT77qwNAhckxGGQCxXmtWDVqJe3m723chk5WtJcFJapxnjGJjRZWaQimdbG7CHmAfooIcy4V4wkgPr5zKpnHjfZD6FPpCIQMeDGZ/nU1I/hzvmWH3rVihlLzo6xF0tD1/OKP8cGL64Igdc/Nz30/O8X0ay3bR0qM7DU1CM96VJUSJ9bkwXg0VizERDqxOkjMnjvndoddhxNgzXES+K6Z+Gu4Qc5F6uMV2LhNW0Vi246uAOnfc5V5MdY0HTSdzOpqVF6n9Kf+zsJb7Xrt99gHDHBRjGklcX4Ktd3IvFJgOleLdqAVzLm/rqzXJt1gGwXkbhb+7xkXo/zLZOyhXHI12r4PZtjLd1kcpHQ8N44a82xAJQeLDqBztygj
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(136003)(346002)(366004)(376002)(396003)(39850400004)(53546011)(44832011)(26005)(54906003)(8676002)(956004)(2616005)(2906002)(31696002)(6486002)(110136005)(8936002)(316002)(16576012)(66946007)(38100700002)(5660300002)(186003)(86362001)(66556008)(36756003)(478600001)(966005)(66476007)(83380400001)(7416002)(4326008)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SFNiNUFJV0EzK2dnenpIdVBZeTFsL0JmNmcvRkhhT3IraGhQQ1hLdUhRUjh4?=
 =?utf-8?B?K0ZjRm4xcjdvbzJMd2NHb2lmUHFvaUpxTlI1Mmc0cURHckdFWFF1UEF6SEg4?=
 =?utf-8?B?anF6cVpYQjRVSkJXeGhaWVBRUFovSFZqODQzWEJTWTIyOWUzc21CeDFLNHpk?=
 =?utf-8?B?WU5SYTR4M3ZLVE1USVFaVlRqcVFKaTE1dVZUcmlTSk4vTmp3MFIzUHZQZ0Yr?=
 =?utf-8?B?ZThYMjFDcldPU3VvNHBkcTZ6WVUvSi90UnRvWGh3YW8vYUJSclQxbG5ZZW5B?=
 =?utf-8?B?bC9SKzFSWTNWc0Z6dm12Q3VKRTZhb3pEc3JsNUtlZkFlRiswZytZQWZhMFI2?=
 =?utf-8?B?QWpVeE1vOWxvbUNHQXpOODdTV29ZVnpGZmc5enJydWVIK3ZHVk4rWXlmK1NP?=
 =?utf-8?B?U1hOd1ozUXJ3RlhFRkVseFRBRlF2MTQwWC9oQVB3S2F5alhLTlpEcVVMWmR0?=
 =?utf-8?B?cktkRFYzcG0yL2tJcjFnTE9VSjA3bXRkeGRoakdVNFdmRUhXSlRkV0VSMzdm?=
 =?utf-8?B?SkQwanpyZlBRQnlZSWZQWmFHdldwNkEzQ1lBMTlqVm55VU9Jem5CWURZd3BK?=
 =?utf-8?B?Ti9NSGVRdHQ3c2twTTM1YVoxMnRMQzlkUmNiZldpREVJU3BXSVhvdVliQVVT?=
 =?utf-8?B?bG5VQ0dQNmkvSEcwTUkzZHJpR2k2ZHRRbzljUHo4aGM5cmJnK1pSYjg3eEhr?=
 =?utf-8?B?Q2Y3alZtdzdPN0Z3aEU2OVRJOFo3bU0vWmNRL3FucTJTaGRmLzNDdHFpdFRQ?=
 =?utf-8?B?OEhMSFdFa2YxWktxbXB2VGE3U21FYU1xUEtQa25hYml1Y1BhK29YMWhHY011?=
 =?utf-8?B?Q0NWQkZ4OE5ZMXlzdWFRRWRRNVl3SzhBNlRWU0xROEVySkNhUlFySmh2S2V5?=
 =?utf-8?B?NHgvUXlnNXhMTDBEQTI3SHhJMTJDbmIxRGxidVJyOEVaQSsrQVpKWVJMOGFZ?=
 =?utf-8?B?RSt4WUlCbldJU1Q5dW9GS0xYdE1GdFk4ejk0NG51M2IrYS9qcUhxc2JZK3Bl?=
 =?utf-8?B?VFdZbGVxMUFiL2xZYTZGUkZYa0tGMGI2NURhODJMMkViRmNIRklvNWN0OEJB?=
 =?utf-8?B?NmQ4UWN2MTdadWg3U1hhZFRuTmliVUFISTlxMzVETFhhVzNaUFJINTA4YnRt?=
 =?utf-8?B?V0c2eUNmcnJBcnZ5Ymk2QW9sNXAwdjVZQng1UVFOamNVN0oxV2laV3JMVklm?=
 =?utf-8?B?VkN4Lzd1R3RPRGh0Tkd5enVjc2lydm5Db3h1VlI0MU9wVWpnNHhoTUJ6TEdG?=
 =?utf-8?B?RFFLaFhZZ1I5Q2s3QjZjWUpzYzBCWmFwSTBaUmkxTjA2amtIZXhFeU9mTjFQ?=
 =?utf-8?B?U0daRkk3ZnlUcE13VWJsZ1l6ajNjQ3hIUVlzRmdTRmg3eTU2ZnE4MTFqd2pG?=
 =?utf-8?B?ZGFHUCtVYlJ0YzVyT0JxNnZMQ0lycXZaYjBvNmFUYkJ1b2VZcGFXbE9NMHJQ?=
 =?utf-8?B?bEtVQ1hFVDZva1c3aE1tN3JuUVJsNEJYaUZOU0lDcDYzcWpmVVZ6aXU4NHpm?=
 =?utf-8?B?VjkxL0NOa2E3OWFUdVRHazFhOFQ0SE52SDd2QUljeVNYU2I4eS9xbFpIdzhx?=
 =?utf-8?B?QVBvSGZmQjhJU2tmQjhzMklhNVRNZS9qM2dzT3JUaXJQcEEwVURvelVmL1kr?=
 =?utf-8?B?eXJMTFkxY21zZDlFVE5FK0hZWWgwK2poNm1xYVZ3SlhlSnB3eHBuZzdGb2kw?=
 =?utf-8?B?RFd6UTZQbXZXMEVUcDgwaHpyL1A0YVdPUStNTDdVVzFSNzg3OHV4N1Vwemgz?=
 =?utf-8?Q?+JvhUuX7MfiNDiaBtYVUiQxlQyBdv2WmrKUfbwN?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f3f537f-cd72-413f-adb5-08d95842cc40
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2021 18:56:56.8262
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fAVEcrQRAnBVZtx9qqXGqS++WicxbZFyzi5IaCuWoctQigiZKI4onGtR2b7jltW4yQI8jN6H0cwwdTMjtxezs/UU7f/rBkNc7TaiS+CWmJ0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR10MB3989
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05.08.21 12:18, Frieder Schrempf wrote:
> On 21.07.21 22:46, Lucas Stach wrote:
>> Hi all,
>>
>> second revision of the GPC improvements and BLK_CTRL driver to make use
>> of all the power-domains on the i.MX8MM. I'm not going to repeat the full
>> blurb from the v1 cover letter here, but if you are not familiar with
>> i.MX8MM power domains, it may be worth a read.
>>
>> This 2nd revision fixes the DT bindings to be valid yaml, some small
>> failure path issues and most importantly the interaction with system
>> suspend/resume. With the previous version some of the power domains
>> would not come up correctly after a suspend/resume cycle.
>>
>> Updated testing git trees here, disclaimer still applies:
>> https://git.pengutronix.de/cgit/lst/linux/log/?h=imx8m-power-domains
>> https://git.pengutronix.de/cgit/lst/linux/log/?h=imx8m-power-domains-testing
> 
> I finally did some tests on my side using USB, GPU and DSI (no PCIe, VPU, CSI so far) and the results are promising. Thanks for the effort!
> 
> I will try to run some more automated suspend/resume and reboot test cycles over the weekend and report the results here afterwards.
> 

Unfortunately I got some results sooner than I had hoped. I set up a simple loop to suspend/resume every few seconds and on the first run it took around 2-3 hours for the device to lock up on resume. On the second run it took less than half an hour. I had glmark2-es2-drm running in the background, but it looks like it crashed at some point before the lockup occurred.

Of course this could also be unrelated and caused by some peripheral driver or something but the first suspicion is definitely the power domains.

If you have any suggestions for which debug options to enable or where to add some printks, please let me know. If I do another run I would like to make sure that the resulting logs are helpful for debugging.

And I would appreciate if someone else could try to reproduce this problem on his/her side. I use this simple script for testing:

#!/bin/sh

glmark2-es2-drm &

while true;
do
    echo +10 > /sys/class/rtc/rtc0/wakealarm
    echo mem > /sys/power/state
    sleep 5
done;
