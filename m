Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1097736B07D
	for <lists+devicetree@lfdr.de>; Mon, 26 Apr 2021 11:24:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232103AbhDZJZG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Apr 2021 05:25:06 -0400
Received: from mail-vi1eur05on2121.outbound.protection.outlook.com ([40.107.21.121]:27552
        "EHLO EUR05-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232078AbhDZJZF (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 26 Apr 2021 05:25:05 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IzqZMkeksTaBeM7i7mI3EnEaNC2Jw6TpbOphW+39SFlzZ/Rt3j2bdUNnoPoMO4KSVZAkrGw7MW1g9q6xB7UoTTuwglfjzZxetVno9HQEISDou69xikDpBRhJvLkIP0r4VenMU8cJGwCegScqwKi357mt+bQL3S2Q7Z4/JJtTXHP9T7hwhJcD3K9AZ5BQKx+iXMl+dMAE+o7UXFJryoR7cRVhIvU3u489vLv9AxoBTbaWckCzYa52GXTBnST7egWOVuvb2Jnx2okvTDOBqOzFF+wemSl97/go+uWECnYzYZK2w8PLMhoBXqwgk8HZ507HkUHcXxUtEjzK7stjYUQ3WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sQitAqCUSDOvDCK0kCqcQ2BuUVfv92U6HVtKNHsCyGM=;
 b=AWk9en9MQ2tNzt0tpQ4EBoFTjs+MAV/1DkMsSBP9f6gfibMyH3oe6emwnf8L2zcT7G1Jp3fGNsBfpqk7IF+BmGZrooDQ5OaX+0qVdLc1prgtkcAEKvfYAmVCdYY7+bkngKOoHrXL9Tt00xUcNLRm2wCSzFrvDNIXk1s7N41QYpftFPL6JXDN58fjIJwZNBinJXQAhgWI4zUJs+w1LnutMisENsd9LSQdpb1+uQgugMrYFHvbI/ngo6gcB3hN9LlsXaer0/7omkvXtmnBCnO8anJ5A3M8b+mFbrxOPacJfkB9IfsrOjv1MiVKD2sMgb/+AeYfPClNBZHmsq1/snI/FQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sQitAqCUSDOvDCK0kCqcQ2BuUVfv92U6HVtKNHsCyGM=;
 b=AyhbwZhZ5A6po9WT0luSGSwx9rZNIgCDOQTlvWkEP+pV303QhNUknips40UvD5rOfxVikbSnQWQ/lvnW3tLA0i7TBKJz6Dgt0y8/lOqsKjBt/U02uWOqT1eWXAB6rmMN1VWiAfsxN7ktxC+UHspOg6trPQTTl4x56RFu7ZzTNcU=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=kontron.de;
Received: from AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:157::14)
 by AM0PR10MB2962.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:15e::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.21; Mon, 26 Apr
 2021 09:24:21 +0000
Received: from AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::3d8a:f56b:3a0c:8a87]) by AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::3d8a:f56b:3a0c:8a87%7]) with mapi id 15.20.4065.027; Mon, 26 Apr 2021
 09:24:21 +0000
Subject: Re: [PATCH v2 08/13] dt-bindings: imx: gpcv2: add support for
 optional resets
To:     Lucas Stach <l.stach@pengutronix.de>, Rob Herring <robh@kernel.org>
Cc:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@gmail.com>,
        Adam Ford <aford173@gmail.com>, patchwork-lst@pengutronix.de,
        NXP Linux Team <linux-imx@nxp.com>, kernel@pengutronix.de,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org
References: <20201105174434.1817539-1-l.stach@pengutronix.de>
 <20201105174434.1817539-9-l.stach@pengutronix.de>
 <20201109201557.GA1690230@bogus>
 <5b6c97dc74ccb38107a50972427d091cdb114209.camel@pengutronix.de>
 <f652344c2c1664d541300dc71cc9ccd8aeaee292.camel@pengutronix.de>
 <928adc851c756f27562b0ae1847f08e2c857504d.camel@pengutronix.de>
From:   Frieder Schrempf <frieder.schrempf@kontron.de>
Message-ID: <f9400040-0884-81a4-ae76-5cd1db8c195d@kontron.de>
Date:   Mon, 26 Apr 2021 11:24:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <928adc851c756f27562b0ae1847f08e2c857504d.camel@pengutronix.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Originating-IP: [88.130.73.114]
X-ClientProxiedBy: PR0P264CA0165.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1b::33) To AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:157::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.10.17] (88.130.73.114) by PR0P264CA0165.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:1b::33) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.22 via Frontend Transport; Mon, 26 Apr 2021 09:24:20 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9b9561fe-9cc8-4fd8-7564-08d9089512f5
X-MS-TrafficTypeDiagnostic: AM0PR10MB2962:
X-Microsoft-Antispam-PRVS: <AM0PR10MB2962F03F1DBFF4D1409DBF7FE9429@AM0PR10MB2962.EURPRD10.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ba/LwkOVWu8dg2afQm607wOIfoEK9voKghmh1SH7wqmkwQpAHudSVoulb/DLS4zRCGfjWt+dUWYZhK0VqXt4sTRxwPESMSwPTwmJyG/VAibwm2GKxL+NXS728iQ+DcAd3plY7fdRv065EcoscfBA9AfO2YoJMY87I/15z6GeUQM+MTU3xRMwzAkzSLSQHCeg+VBUo4eGCQkQngsymHYHhMzbM6+Vm+hXrqrfcFAcJcrfvQ7zBZ0BPF9dRWI4J4E2wqVg2DbAafsMBEoTqz5z/ELQGfqPy9rOhAKyecjblsppzxQzwMhxhyyjLHHXoPR51d55NQp6tZFvn1MQQTi3W1gZKe2SkRUUY+sLMBiAoDiugNrAKIekkq05cqOYQ/HFxTvv/wCt36UPRkPg7YDa0jtD7vR+XlPao9b6XQO84lsQBaeiiRlnDcWIAqMe6fzsU39ALoBuL8Bgo2cYDEhKlVaXp3q/rdUgej11TlseaGYMhn7CN7wfaklnjyfjFBLRubijp333I7KcMed53OjRO7b2azCB2FLH72g7QJvdfU74wV9/WiUwKqxNWLM52CAT8ZMAdmpOK/bOn7rYU4WcqRPefaM3cKn8wmI+I4uOgeaVU4Pcufe2qd/Uuq66hbuVJdUSpIb2ohbMucLO9mGheezQQP92Q+pglc1+wkQeC+9N/g2ne+KRZcbV/W4fi01pVp/x4FDFSH/CFZ+0l49Lx8WSFmg2mZw767IprG5kMAM=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(366004)(376002)(136003)(39860400002)(346002)(396003)(8936002)(956004)(83380400001)(54906003)(316002)(2616005)(66476007)(110136005)(8676002)(66556008)(36756003)(66946007)(6666004)(6486002)(4326008)(7416002)(2906002)(38350700002)(186003)(26005)(38100700002)(31686004)(478600001)(16576012)(53546011)(44832011)(86362001)(31696002)(5660300002)(52116002)(16526019)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?c2Yrd1gxWFNBWXM1S1FwRjJ1MXhqWW53cjl5amJiQWZGcHFJOXVRekhXbk10?=
 =?utf-8?B?QlZraEtNQmZtYko0TWtvNHZYWWRsNVRncmIzcURIa0N2b2J0RmM2RmJUTUZO?=
 =?utf-8?B?QmpYOHh6dWhYVkVVRWRxbmJoV2M5WndOZ2RTUEtuQlBDUFpWUDJXYmxFajZM?=
 =?utf-8?B?YzUyVWJ0dHBPQW5sNVdyTFRrSHUxTVFiendpbyt6cFZObXlQTGRhMTFvM0lH?=
 =?utf-8?B?Ynh6RnhVZEFQNnFSZzdscWc1RlJBZ0l5TC9JZjhFUUNwblVoajlXSFcyWFNx?=
 =?utf-8?B?ckxrS1VjRW5ZYmowRlNPcjNlNWFEUVVrYTR5ZEZyMGFrdFRYbHNORmI1cmE1?=
 =?utf-8?B?bTRGSGNkY2tXN1UrUjg3K2NwNzYyS3lIbXN1WHE4b21uQ0xQdDFEc2tCZGcx?=
 =?utf-8?B?TVBlbFBCQktjK0oyMFZzdWMvc2g3NkRpZ3VZYXQ5aWl0Y0xuSDVQcmlUaDJk?=
 =?utf-8?B?bTlub0ppU21nQ3BPeGJCSFdXOFd6aWlDMXBVWjhheW9qUGpMNitXSHNvYzB2?=
 =?utf-8?B?V2ZmZ0M4ZE0rOWoyUC9CSkNVck5YTkhKd3JNbk94TytvZHY2QzluN0c5cnZa?=
 =?utf-8?B?MFJtQktRbHNCakZydkMwSXRGSklLcE1Ec2FYdEFNOXpMTXcxMGJnU1BxREIz?=
 =?utf-8?B?YWpOV2YrVE9PRGV0WnlVa296UEw5RDF0akl6Y3BjVE8vVDV1MGM5U3kwQ1da?=
 =?utf-8?B?Nzd1MHZ5Qis1c3RGUjZqdVEyU2ZleE1lMHNneGVXOElZZjBKbytBdmMrQ0g3?=
 =?utf-8?B?QUplSStqaWlseG1tbXRBdXgyUFZjRWVldWpLWS9JQmRJZFVwWXlPU1M1UXNj?=
 =?utf-8?B?YUswOHVUUllLQWpIU2h2Z3I4Ymd2bURZRWhQbnhwTVkzM040eDdXR2prclps?=
 =?utf-8?B?ZFdrN0Q0RU0rNHZPS3R0Zjd5MXpFNnlmdG9BSmJUYWg1VURLR0ZPTGxnQVZW?=
 =?utf-8?B?NXpvV21OTHlEaGtzd0VMYXNLVG04Y3NncDliTXVaRjBhVmdxeXNqQXZteFM3?=
 =?utf-8?B?Z2U1eEQwRUVxRWJsZTczMnE5ZGM0bHVnempnanFlYS95d21rQkc0aHNKSmg3?=
 =?utf-8?B?dm5UWEhtTVRzUHNjeGFFMTNWbmJCVkdYT1ozSlBsQzZxUUxFcFJFSmtyYy9L?=
 =?utf-8?B?Z0hpdVI2SUQ0c2FvM3NoM2Y1ell0K0taanlGcWpBcjJBQWN0djdtcVBETDRX?=
 =?utf-8?B?SGJUVWJYSHhrT0VRS1E5NEVMTEcvSGVpd1pnNDUxOVAxeVlpeS8zWkpBOTZV?=
 =?utf-8?B?ZTBBR1dNL0phcXdSTFloVkhtL0IxbmIzRC81OUZGRFFqMlRTYXpkS2N6bndF?=
 =?utf-8?B?d0RCbVhFZC8xcldQNFZ3Q3FKMlh0aERvaTZQanlLRWJsRVNHTlNXS3dNY3E1?=
 =?utf-8?B?SUxMcURDVVlFMEhxa3l1Mm1PYjhTc0lDMDkvenFOWVc3TzhSVEt0RmIzRTBJ?=
 =?utf-8?B?VlpQWWF6TlVNbnNkemw3bWZUb29mRW9BYzBsclFEVng4UHpQY2xjTmp0bUZi?=
 =?utf-8?B?aFhPVjd3eVA3WS9GdHdBV1lCVnVVOU9UYUJTNHZXRGhYMEwyUEtMNXJ2ckZo?=
 =?utf-8?B?SmJiOFhYM1RQKytLSmE0ZzZFS2dsdUs1NytpMUZ6azN5cDBkaU1MYkxaWjE0?=
 =?utf-8?B?SHZDN3NTaGhpTGZDcE9JM3J5cTJzZk96MnlEY0dhWmZUMGFtRnlqdGdJR2Zv?=
 =?utf-8?B?K09ybTFQaDM3Q3E5ZVJSd3ZrVjExM0pMNlcxdDVBSU04UkVELzMwU0h6cGs5?=
 =?utf-8?Q?HYFVDdT/Kzg9Wwfx9H+cK3LzOG9t1wR9R/ZrxcZ?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b9561fe-9cc8-4fd8-7564-08d9089512f5
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2021 09:24:21.1950
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I+4Vq70RDzPSbCI9+6RLw+53boTTTp+uEd+cVr1I2MT0CBuTKu9dysEzGjTj7OLHnr0rO/AUjsi9Gqu1URhXG3w2D/xHWLoSqbEINrvg1xo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR10MB2962
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On 10.02.21 15:35, Lucas Stach wrote:
> Am Montag, dem 30.11.2020 um 10:57 +0100 schrieb Lucas Stach:
>> Hi Rob,
>>
>> Am Dienstag, den 17.11.2020, 15:11 +0100 schrieb Lucas Stach:
>> Am Montag, den 09.11.2020, 14:15 -0600 schrieb Rob Herring:
>>> On Thu, Nov 05, 2020 at 06:44:29PM +0100, Lucas Stach wrote:
>>>> For some domains the resets of the devices in the domain are not
>>>> automatically triggered. Add an optional resets property to allow
>>>> the GPC driver to trigger those resets explicitly.
>>>>
>>>> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
>>>> ---
>>>>   Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml | 7
>>>> +++++++
>>>>   1 file changed, 7 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/power/fsl,imx-
>>>> gpcv2.yaml b/Documentation/devicetree/bindings/power/fsl,imx-
>>>> gpcv2.yaml
>>>> index a96e6dbf1858..4330c73a2c30 100644
>>>> --- a/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
>>>> +++ b/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
>>>> @@ -66,6 +66,13 @@ properties:
>>>>   
>>>>             power-supply: true
>>>>   
>>>> +          resets:
>>>> +            description: |
>>>> +              A number of phandles to resets that need to be
>>>> asserted during
>>>> +              power-up sequencing of the domain.
>>>> +            minItems: 1
>>>> +            maxItems: 4
>>>
>>> You need to define what each reset is.
>>
>> I can't. The resets belong to devices located inside the power domain,
>> which need to be held in reset across the power-up sequence. So I
>> have no means to specify what each reset is in a generic power-domain
>> binding. Same situation as with the clocks in this binding actually.
>>
>> Do you have any guidance on what do here? Is this binding okay with
>> this explanation, or do we need to do something different here?
> 
> Any pointers on how we can make some progress with this? It's blocking
> quite a bit of functionality of the i.MX8MM SoC being enabled upstream.

One more ping from my side. Can you give us some feedback about whether 
we can proceed with the bindings proposed by Lucas or not?

This has been on hold now for over 5 months and it looks like one of the 
reasons is that we don't know if the bindings will be accepted.

Thanks
Frieder
