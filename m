Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EDBD9702493
	for <lists+devicetree@lfdr.de>; Mon, 15 May 2023 08:25:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238961AbjEOGZe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 May 2023 02:25:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239649AbjEOGZc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 May 2023 02:25:32 -0400
Received: from APC01-SG2-obe.outbound.protection.outlook.com (mail-sgaapc01on2049.outbound.protection.outlook.com [40.107.215.49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 424AEFD
        for <devicetree@vger.kernel.org>; Sun, 14 May 2023 23:25:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j3Y1ivg8sHleuOBJcQ+kuOi3EoFBoIAWKtTOAPDcnKvXvxhfDEVwwu9m0HRcJ3la5+6l081o4g7U11f40UUp7wkS40Y0igaMFe8Tjp3H0pbhXUcAIJ0vjuoMDB+PUkYLA9AvZfzlB3bQYW844Qbz40sfNX5yYxReq7YntvLXOv8x7N/jyMEvz+GukHmOgkM7MVmj3UfQiyH9cTBwYKccLkq174XDtOrMqJY0D3Rl1bm6qNQnnBd+J1zYNiil82t8sv13QMNpzDXH/iPhnuvSoyZvu7DZtQTBjRl1CkLKGzEv3knGUevS6awJF9BCitAqg9SuwlH0AcAyRjM1UnBydg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2sPkazWwlRsPGLl4NrkjAIBrZBKji3WxgzMb15bylF4=;
 b=FyLhGxbHAqjZkvG+W6W72ixAPUTgHtOOkbb3ZLmhCArIrsrZ6KB3XoKiQ521aOnf719F0gHiQ57wD+Sg35dv7E6RyRysi5OQf9hxd9MGVKIDsrNkK6NWjGGd5+1ucgQINGB09m/FgezCQxEgiSBXluFMyNbPXjRUZCDoVPo8BIXOXNg523CTrpusn2WhT/9zZNeJNTjJKU5NvWPP3LH9WBdLhu8I1v5yOojTrvBLOVMtuLrKifJ7CBlPHNnfB5dwFw0Tn+GynOcg6+7oisWJnv0N4buseWlSsBbfK40ZbpMhxMJdaC1NRZdPY/yJdKlkWeH74styvZm55vmRTzar9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nuvoton.com; dmarc=pass action=none header.from=nuvoton.com;
 dkim=pass header.d=nuvoton.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nuvoton.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2sPkazWwlRsPGLl4NrkjAIBrZBKji3WxgzMb15bylF4=;
 b=KMUeIc3sRiLD+AAjp+rhotyoKNg+44fkDrqKlIUrIX/zaImhB2ttRibIWgwzkyrtYAY6qnWiRG8Xg9+DKSt9tfYq8AZUlrWE0/QijeuJZyhWk275osJ2HmlZb5vAM2jSK/DIIkrzrDcdEkAdTK5TPsA8fRdpzih9wDArkC/YWjs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nuvoton.com;
Received: from SG2PR03MB6732.apcprd03.prod.outlook.com (2603:1096:4:1db::11)
 by JH0PR03MB7512.apcprd03.prod.outlook.com (2603:1096:990:d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.30; Mon, 15 May
 2023 06:25:23 +0000
Received: from SG2PR03MB6732.apcprd03.prod.outlook.com
 ([fe80::3dcc:2a50:b1d4:b953]) by SG2PR03MB6732.apcprd03.prod.outlook.com
 ([fe80::3dcc:2a50:b1d4:b953%4]) with mapi id 15.20.6387.021; Mon, 15 May 2023
 06:25:22 +0000
Message-ID: <60173790-dd54-c0ab-9534-bb08772caccc@nuvoton.com>
Date:   Mon, 15 May 2023 14:25:19 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Subject: Re: [PATCH] ASoC: dt-bindings: nau8824: Convert to dtschema
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        broonie@kernel.org
Cc:     lgirdwood@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, YHCHuang@nuvoton.com,
        KCHSU0@nuvoton.com, WTLI@nuvoton.com, SJLIN0@nuvoton.com,
        ctlin0.linux@gmail.com
References: <20230512120146.600128-1-CTLIN0@nuvoton.com>
 <877338f8-d157-0f91-33a3-fdb03566aa57@linaro.org>
 <a1afe69d-2bb1-02d8-3573-dec370cc1a9b@nuvoton.com>
 <21488506-9e91-e7b4-a995-645b70c720bf@linaro.org>
From:   AS50 CTLin0 <ctlin0@nuvoton.com>
In-Reply-To: <21488506-9e91-e7b4-a995-645b70c720bf@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: SG2PR01CA0191.apcprd01.prod.exchangelabs.com
 (2603:1096:4:189::6) To SG2PR03MB6732.apcprd03.prod.outlook.com
 (2603:1096:4:1db::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SG2PR03MB6732:EE_|JH0PR03MB7512:EE_
X-MS-Office365-Filtering-Correlation-Id: 100a519d-b1bc-444e-9f62-08db550d29b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jv0xdDKAL6uwqeY1am8LW6n0zBP1G5Wa1bFx53YDqphhUsaWi+DQVydhf6vuYAQU0qv868wRowFkWSx6LrDNXzNQaToYxGLdHE+1ELoNLsEisPKMxm8TLW6myEgTkxdlj+pdZDowyqJV78vGHTUTPIRRJgg2jGzmAPCHDKetjdmXxs3ypQ1Cr1x6e81W/beOlHfJmAkGJkc0P6luY6l6r45H5t9Sv5R/kX6Me2fP5VxRinkx1bjThuzQH1sJobLElAyGWGhzw8v5dgb5Dg4TtvnaZMMi9eQc4SB7pR/9MLKq4aSUkHhcxVej8/0+sL9AHJSKq46mqG4Yx8ntbFA7cLnkUcENyTtyNZHtQGZayoy9p22vuRnZZ3wsyKkTybQle34UNSZeg/gzDBoDQA7zNLly3sX1GRGBiZTvG/SlPf2oqM4XxmXqByOebkYB0xCyYQKWTpFP3QCwlB5H7dqyr1BayDuhnMcyG1JSJiVw7hFSgjj7HFbed/VAgvHm2OqZpU44RRfxxwdj4bUh9tU1GR0KCTgiT885X5bNrwqlpDBSPPBN83p/7kbFmmpXyLEcCWoo3m/ZY9iefMC8JY6bou114CqQtVkUNZZZlNSo1b0qjssmYmLbgh6yHMx9hoCUZxYSpJAC/t5ZlYnn8EZu7x3p24RtWOF2dhTyvbjWncNAFZ+5i4c49kM9etQ7C46b
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SG2PR03MB6732.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(39860400002)(366004)(396003)(376002)(136003)(346002)(451199021)(4326008)(316002)(5660300002)(31686004)(8936002)(8676002)(2906002)(66946007)(66556008)(66476007)(41300700001)(86362001)(478600001)(2616005)(36756003)(6666004)(6486002)(186003)(26005)(6512007)(6506007)(53546011)(31696002)(83380400001)(38100700002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QjUySy9GcWxxWFExSEltbVFYZ3Jqdjk0ZmZNaDJPZFVoRkptV29lVVphK3VW?=
 =?utf-8?B?VERWZUFlUUVpWEpmWkRWZVAxb2JZVG9GUUpEbnJmQ3FjdHNucGpFa2M3NXJ1?=
 =?utf-8?B?YS9PcGFibElEV1Ezblg3VkVKSlkxanZTZy9vekNYZkplU1BVZXRrNW1ldUVE?=
 =?utf-8?B?emYybVMyNzBCYlRMeTVQQkRpd24waE5sNThad3NYelo3WngyN2taZWp3dlJW?=
 =?utf-8?B?MDBSdkxMUVhTYnlPTWJpaEtjUUx5VUZoMEEvYUx3eWRkMk1kWEZlMTB6M21I?=
 =?utf-8?B?dUNmWVVOZmNkbDNXQWVlTTUxbWdBa1REdlczR2pvdVp2RWhTUU5sbFg4ZWxT?=
 =?utf-8?B?dU90UnYxK3NoRnk0R0l0SzBDdWNrdGxTNEQ2U3pPQjlDTlhSNk9YV2FPbjVF?=
 =?utf-8?B?QSswWWlMdUZTNHVHcDRBaGlsMGo5cVB0ZHdyL3dMSTk2V3UrT05zMWQ4M0JZ?=
 =?utf-8?B?UmZPZGF2MHVGWllCWXdxQlVpc3J1VU0xd01ONmdaNUd4encwY1JSU21kcHJk?=
 =?utf-8?B?NjBKUnRiSTFxMXkzWWRDOFhoWERyNWdKM01aRGNQck9oZGNMYWFIbXpBZ2pk?=
 =?utf-8?B?aDZWclZyMHlUeXpmSWFrUUdsMHpIS3VTaVRqaE8vaG9TLzNOR0ZKM1U4Z3RX?=
 =?utf-8?B?Y3hHVFVIcVgwQ3lWanJjWHp0TTRud3pqNnA3NVhWRmpQT3V1aGNjcUJzOG5G?=
 =?utf-8?B?N1c2Y01MY09iQ25SV1BZcU13ZWdSVGdzMnlLUHkvcVNOM2xVODF6alR0Qktp?=
 =?utf-8?B?Smp0eHVOTUJrOFNMVEdQTkkvZEM5YXdpQmdueXh5RlBKUmE0MGRvWGZ0YUNN?=
 =?utf-8?B?dS9jZXRKRWRKU3EvQ3NidS9UR3Nmb0sxVDVSMWJaWXhZN2doRUgyRnBmeWlD?=
 =?utf-8?B?eXA3OWx0UGdseGdORnEyQVMwNlhmN1RUMVBhYkxvK1NNM3ZTQWI1aE8zN0w1?=
 =?utf-8?B?VENrUGpDOFI3bFAxU0doaHY2NnFNeFZ2RVlNMEgwTzI4VFAybkczSSsvYmVF?=
 =?utf-8?B?MWVrNXVyVzZ5MGY1MGpIcDZRSnNQRENWbkcrSVo1YUY0c2tJM3JNUVhlWGI1?=
 =?utf-8?B?TytETWk5TFZtemViRS9SMDNCN2I0Sjk4TzI0M2VaUVBCd2psa08yNlFMbG94?=
 =?utf-8?B?ZUlzc3ZKckxmdjZDcGxIaDBNNkVORUhJQk9ZUTQ2NUFNenJFV3JEeFBkcHND?=
 =?utf-8?B?MEpBN0tYZ3lKb0paRW5HRlF2NExzYk1sUHBET3VRL1N1eEw3eDVjN00yTFFk?=
 =?utf-8?B?cGcvd20zSGJ0S3I0ejZHb0JCcWVUK2FSMUxtaENWeUtXRlh2QWNuMjI0bUJk?=
 =?utf-8?B?eDQ0NysyaDJJZHNOajc2dThsZTZ0czM3bWltK3czeVlGelN1SXdKM0RaRUoz?=
 =?utf-8?B?a04rZFpBVEw0dmxuSlliSDNwMEZVVzNBd0ZUcS9tK3pzVUw5amNuTFYzWHdm?=
 =?utf-8?B?bTFhMUJhamZuWlBGdzNZN2YzUnRPcjVpWU1FMVZlTkNqV1BQbzdxWDZ0b05Y?=
 =?utf-8?B?VEZMVm51bmo5UTBFNVRKSzNPVG50cnhobGh1MjF2dkVaWjRTVmtNaUZ2Zitv?=
 =?utf-8?B?RUFTUmpKMXlxbkMxYXZCT1ZweDlyZjAxSkpnRUw3bDB3RXFBcFdidUdvK2Y0?=
 =?utf-8?B?TlJIQ3gramZ1M0EvaHFpcEFBV3ZOZ2tOWW96VUpxNnA5STlRTFVVNUkvdDNt?=
 =?utf-8?B?NEFTRWZldVVGN0Z1RnM3bThQZXp0VzAzNysrVmc2eklUaUdUaEdHN0lTS1Zh?=
 =?utf-8?B?Y2ZoQTBtTmhrRkljekpxdkFyMzRkQks5dkdqbytZU0JHQVMzQUswTHM1TmFT?=
 =?utf-8?B?VFlrT1pXSXcvZEdyMFB4cHo5NUpDU0gzRlBTVGYyNTRlcUxYRW5peDlJR25l?=
 =?utf-8?B?elVmK1FKM29peVYwZUFCNnZ1enRZSzRTcUFoZlBiTTJxOUtYbGY0SVRQY0Fi?=
 =?utf-8?B?Rmg2SGVBQVplbUdja3JrNXJqcmM0dTV6Mmo3WWluUkgwb1JFcGdEUEVLSGJI?=
 =?utf-8?B?T1RPcXdjTGwwLzZlOFNoTVdwWmRnbHNXNE93U0hZQ0dqZ2E4TWhEdm1hTlFQ?=
 =?utf-8?B?WllORWh2ZWZ1SlIvUzl1ZytNYmlKdWJQNC9QZ044bkpJUnV6YXZSVENQMkt0?=
 =?utf-8?Q?7bEna0+jVD3Jcn+If7p0QzCeO?=
X-OriginatorOrg: nuvoton.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 100a519d-b1bc-444e-9f62-08db550d29b2
X-MS-Exchange-CrossTenant-AuthSource: SG2PR03MB6732.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2023 06:25:22.7701
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a3f24931-d403-4b4a-94f1-7d83ac638e07
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sB5ZH8zPkXQ1T7SA/12PqDWc/fdXdoBA4r7E7qlHEuU76krFUEfeRgF4ipA6nBN9/dZ7oefosMzw+qMek030cA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JH0PR03MB7512
X-Spam-Status: No, score=-3.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 5/15/2023 2:20 PM, Krzysztof Kozlowski wrote:
> On 15/05/2023 04:47, AS50 CTLin0 wrote:
>> On 5/14/2023 2:38 AM, Krzysztof Kozlowski wrote:
>>> On 12/05/2023 14:01, David Lin wrote:
>>>> Convert the NAU8824 audio CODEC bindings to DT schema.
>>>>
>>>> Signed-off-by: David Lin <CTLIN0@nuvoton.com>
>>>> ---
>>> Thank you for your patch. There is something to discuss/improve.
>>>
>>>> +
>>>> +  nuvoton,sar-threshold-num:
>>>> +    $ref: /schemas/types.yaml#/definitions/uint32
>>>> +    description:
>>>> +      Number of buttons supported.
>>>> +    minimum: 1
>>>> +    maximum: 4
>>>> +    default: 4
>>>> +
>>>> +  nuvoton,sar-threshold:
>>>> +    $ref: /schemas/types.yaml#/definitions/uint32-array
>>>> +    description:
>>>> +      Impedance threshold for each button. Array that contains up to =
8 buttons
>>>> +      configuration. SAR value is calculated as
>>>> +      SAR =3D 255 * MICBIAS / SAR_VOLTAGE * R / (2000 + R) where MICB=
IAS is
>>>> +      configured by 'nuvoton,micbias-voltage', SAR_VOLTAGE is configu=
red by
>>>> +      'nuvoton,sar-voltage', R - button impedance.
>>>> +      Refer datasheet section 10.2 for more information about thresho=
ld
>>>> +      calculation.
>>>> +    minItems: 1
>>>> +    maxItems: 4
>>> Your description mentions 8 buttons, so maybe it should be 8 here? Or
>>> description needs a fix?
>> Driver just handle maxima 4 buttons for general application, but the the
>> above description is truly hardware capability with 8 buttons support.
> Then it should be 8.
>
> Best regards,
> Krzysztof
Thanks. I will revise it in v2 patch.
>
________________________________
________________________________
 The privileged confidential information contained in this email is intende=
d for use only by the addressees as indicated by the original sender of thi=
s email. If you are not the addressee indicated in this email or are not re=
sponsible for delivery of the email to such a person, please kindly reply t=
o the sender indicating this fact and delete all copies of it from your com=
puter and network server immediately. Your cooperation is highly appreciate=
d. It is advised that any unauthorized use of confidential information of N=
uvoton is strictly prohibited; and any information in this email irrelevant=
 to the official business of Nuvoton shall be deemed as neither given nor e=
ndorsed by Nuvoton.
