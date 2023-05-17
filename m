Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C853706017
	for <lists+devicetree@lfdr.de>; Wed, 17 May 2023 08:30:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232160AbjEQGaR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 May 2023 02:30:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232025AbjEQGaQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 May 2023 02:30:16 -0400
Received: from APC01-PSA-obe.outbound.protection.outlook.com (mail-psaapc01on2060.outbound.protection.outlook.com [40.107.255.60])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1376449B
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 23:29:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ldTx2rgxzQBbzWPr0FG+l/7k2hN+3IhWDp/5MlP+SGkvDBkBXmq8Dp06gWZiaSeIPMGq25jWo/MezroAZuBh+/pCe9yjhZakwe6k5KgK8ByNkERomFz3uo/jWzJCCjzCPwh57x4AaGUf8NdsdvhY96m/3+emNvwhyZgI4pe/FbDxB1XcbFjY2iKGGgPHLT3H8Kx1SXPD2eRRDNDFz9KEF9emiMBV8Nqp4CJidPongEzVZ1PSKxOEhlvDOgQuYpvscf3/xRWa4DhtI7j+9lzptXu6yBJ1OAD+r5N3fme/1tWGvYGYQ4YuULRqG4D1Z85O5s3NXoByRd/ye6LE/bgm1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l5xgESz5/ibf/ZuIBk/GtiT93GGi+qnsoAuoucZpiFg=;
 b=lvtCTjlasrxN8C18RgUXA0Mj7XPgAp/nLqBJ6OwKu1+0XFA2gpSoi7qgdxywpbtaLkXnSuPcfLrWoIAgsEDk2xBaPhBXpFusxDcF5QCUTyU4ognW1VCj8A0/jBc/P1jQCA0Xly8ywIM3TTLKFJnFpH2CNGA8fQpIrZsMdhH6QLuRB98Uy28H8Zo93a3o3jsJCFIgi9V3Sqek7SwF4VMmDXLgolleSglA+tO2sWBJ4Oiq11zIpPgEcVOdgowPeEClHZd2U/Xt6OiLB35LWNjQkaidQ2pwr1tJUpMxbKCNYhCrJWACJuWGhYzmXqYuTEvKDnS73eyZC5qoA9Em9/YURQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nuvoton.com; dmarc=pass action=none header.from=nuvoton.com;
 dkim=pass header.d=nuvoton.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nuvoton.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l5xgESz5/ibf/ZuIBk/GtiT93GGi+qnsoAuoucZpiFg=;
 b=VpH9Y6N8KUQZYnEsgaWoopp9wWqRtYgvyqs8d9erBAn+TzRIQO601x4JrVcLBxwU/6yhof/1BPhys33s3OBhtp/4TU5AB90IFpeLF4btHGSoIRaKjVs2ypY9TvV5I+ucVtNqHycDOIFsvfCJEv2jC0w9dTXTrjrJX5paY3lwrXo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nuvoton.com;
Received: from SG2PR03MB6732.apcprd03.prod.outlook.com (2603:1096:4:1db::11)
 by SI2PR03MB6781.apcprd03.prod.outlook.com (2603:1096:4:1bd::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.17; Wed, 17 May
 2023 06:29:46 +0000
Received: from SG2PR03MB6732.apcprd03.prod.outlook.com
 ([fe80::3dcc:2a50:b1d4:b953]) by SG2PR03MB6732.apcprd03.prod.outlook.com
 ([fe80::3dcc:2a50:b1d4:b953%4]) with mapi id 15.20.6387.034; Wed, 17 May 2023
 06:29:45 +0000
Message-ID: <c9bb21ea-ec54-b90e-157b-9b1a3f9f9d71@nuvoton.com>
Date:   Wed, 17 May 2023 14:29:42 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Subject: Re: [PATCH] ASoC: dt-bindings: nau8810: Convert to dtschema
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        broonie@kernel.org
Cc:     lgirdwood@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, YHCHuang@nuvoton.com,
        KCHSU0@nuvoton.com, WTLI@nuvoton.com, SJLIN0@nuvoton.com,
        ctlin0.linux@gmail.com
References: <20230516054447.1081404-1-CTLIN0@nuvoton.com>
 <ced69a34-5350-abd4-637a-691bf4af140d@linaro.org>
From:   AS50 CTLin0 <ctlin0@nuvoton.com>
In-Reply-To: <ced69a34-5350-abd4-637a-691bf4af140d@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: SG2PR01CA0157.apcprd01.prod.exchangelabs.com
 (2603:1096:4:28::13) To SG2PR03MB6732.apcprd03.prod.outlook.com
 (2603:1096:4:1db::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SG2PR03MB6732:EE_|SI2PR03MB6781:EE_
X-MS-Office365-Filtering-Correlation-Id: bdaaf575-afb8-46b1-0fb1-08db56a01b3f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4daTCLKQgW4amepWNL1dIWRqKP/AjWhNo6WXtqedWobpO2dsOF67Y45uVLegHU21C0aAlHWUqX4a0tYmXT9v4I3qAybnjwjE97al8o9zjawfo5tBasviDxORJyTwi0P6Mp/IOsdguVG4pyFi5943Qzh4VL9pw0JXMJyykOeIRXeggNcvrAvZ6lRzcvPE9FCBotqpHKpUqvjHPPGWA+7VRAMerILAurULgRYA4UeeVL8HICbs5nEHjyeAZIPl0zEwkdPvuk0bjdnx5fstNR42QNKMX7gFRGOnuybYNI/qE9oivS38G7Kg9qjluLhm8WJXqlkRV9kFuSvqQG16+q1CMl5+89GRgWJFCfM9SsmPTDzWE5SHc8Ryxxh+6+yV0RHoqMOeV0pB72SZtzfn2PX79u5YgcLWIS1eNLj9ht9u/m4657s61AV0BMMXZmTXraARlWbKVAX8djmpk49sNfCBrJHYJEw4HsXc5WneD0UFe4KUKXgfAh7F3/zMA4qX6OR6R+rmQT0LveMJIxH7K2XXSxq7Iyc9JJTeG+1LdEBL96t/NW4ON/21j6gC7uO7ja31/UF6vZ5xSISBhMXNpPVVLgBFFAOLu0svtNCA1pozyf6ER9QV/De+llEiIqO4ORlvgJoo4B0Hu8Ah3Vy2i9oZAdrs3+iRT+o/oxTlsbBkwYrlYy+oIzxxBYbNCEqd9vrR
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SG2PR03MB6732.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(366004)(376002)(396003)(136003)(39860400002)(451199021)(31686004)(41300700001)(8676002)(2906002)(8936002)(36756003)(5660300002)(31696002)(86362001)(316002)(4326008)(38100700002)(66476007)(66556008)(66946007)(83380400001)(53546011)(6512007)(6506007)(26005)(186003)(478600001)(6666004)(2616005)(6486002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q0gzRGpaWHV1Mi9wazAxamtkM2M0anV4STlGMU5pcmhHcWlGMjVDK28rc21Q?=
 =?utf-8?B?NmNOK29LeENyamxJSDl4UHZRdjRJZ1hsbXhvL0FBL3RvODlrU05penJRZzdM?=
 =?utf-8?B?Z010S2x3RzFqVUlza3ptUmRTc2Njd3BtaEo2M2xBNlZvYXJiWWpPaWJpdHZ3?=
 =?utf-8?B?ZjQzVldPck9qd3UrbWhCMU9HR085UU9MWGxLaElrUExwODFMczlWQ1FLVjh5?=
 =?utf-8?B?SEpOLy8zck9OQzBKVXJMWHZ0VS9kNDNyUEtkdjdWZ1BnQlhaR25Md0dFaUJ2?=
 =?utf-8?B?bit3QjBJWkJYd2xwQ0IxbWNDZXN5SWlySThoeGlrdktTVk5ocDlqcnNZa3Fu?=
 =?utf-8?B?RHM3c292UDNOV3hCTEdNQkJwSGFYOFBGM0E5cnVYK2xRS09VVjhVQ1JOaFJn?=
 =?utf-8?B?d1V3WVRuZmxIWU9yNjkxN3BudGFWZXkzbHRCRHRYelhtK0lNM0Y0OUhveTVU?=
 =?utf-8?B?UHVrMFNVVzB0Q2dzVG00cVROUTFCcWJMOFMvS0hIbzg0NDRrNU9jUmU3Q1JF?=
 =?utf-8?B?a1RnYitmWld1dTB4QVNleUJzYzNiOWkyNk5PTmpKUmJxN0Flc2xTTStBTTBj?=
 =?utf-8?B?L2RldWFrL3BJUFYrQU9DbmhXSjZIZitTM1pyaUdYTWZMZ3JMMzUyMTlVKzYw?=
 =?utf-8?B?Zzk5QTR2RElCNjNMck9mbENHaTBTcFlTTitqN3MwVmFNWTJYVzVGcnJsUjdj?=
 =?utf-8?B?Sk9aT09za3ZkTlRNZGxrSmlhYVN1ZGJrRlp5SGVTYlpYV0NIbFhTTVpVMHYy?=
 =?utf-8?B?TlNDWkhXSElpRC8wdjBZVDhtMmVTQUtrRlBqMmNOK2VLdmtaSTBxNWp1bVM3?=
 =?utf-8?B?TDBNRmlWTXZIcXpQL0p0cVFoY1VSUFNraXhiWitXZitGd2JVMm5zbGNFeng3?=
 =?utf-8?B?QlZaQTRJaHZacjdUUVJRbFhkSng2azRtcnpid1FCRmhWUmkwVUlaTHdzdTNo?=
 =?utf-8?B?MzVZbG5EKzBKY0Ivc1ZEZDBjT1RjZk9IMEJZZXdxbWRFZTIrWGRwbXRUVGk0?=
 =?utf-8?B?cUF3TlVaZ21SQUREcVVOLzJFNTM1NHZ5SDE0TkU4Qnc1UXhHQlZmSGt3RlM5?=
 =?utf-8?B?N09YdmxkZngvU2RwbnY2RTBmL3Vwb2dMQll4S3ZtTnloMmlxVjc4YlBxdWl1?=
 =?utf-8?B?aWh0bWJJaG9VQjExQkF6ZUliZ0R1UmtjRUVLR1QzZkpKTFUxbFNnbkpUeTFk?=
 =?utf-8?B?WEJJMCtnQlMzMERVU0pWcExRaXl6aTFtdjBSK3YycEptVTFQVW01OEdITisr?=
 =?utf-8?B?WWlqcm9lT2FqZmZETDhqTCt0Zzg0b1BCR1BvTmwvRjVtbjNmem9FOU1URWxI?=
 =?utf-8?B?alYwVG04Qy9Gb2hxdkJCeVZRUXVNRXRJckFkQmF2VzR2UE8xRmpudHlGWitU?=
 =?utf-8?B?elBmdEtaZHpxdlNmUjZQSWFmWXIxZDdGaGpkUEM3YnJhSURqbmNsYUFjOEZa?=
 =?utf-8?B?bGY2bTkyM1NyNFRzVmgzYk1keXBkcnZFeW13T1JrbWVlNmRQU25RRTZCVXkx?=
 =?utf-8?B?QWpyZkgrQWlKb0ZOdGFVZC96SjRvMTh1cXM0SmNNVlRGRXNaWThNT05sakEz?=
 =?utf-8?B?UVRMekxYZWphb0JsSjVEMG5nUDBqdHV5aW9xMVdodlkyUURGa2dodFBKcmI1?=
 =?utf-8?B?QlVYOU5jS3JKNWlvSzRrV0poUnRLczNxTXZVY2RwWXNQejA4QjR4RDJLUVNC?=
 =?utf-8?B?RVpnalorbU9zUFZ1ZGFXbUtkQTVPL0gvdzBwaE5IbTM2WUwxTXVITnMwRnJ6?=
 =?utf-8?B?Zk5GdS80SmJOYVBQOE93ekdMaW0ySWpFYTNjU2lCenFTNldXaTcxaE03amxt?=
 =?utf-8?B?K2g3SDN4YVh3YklPUHAyM3IvVVRuMEx4QmZ0UjZOVFErSkZCZ09HMURDblFL?=
 =?utf-8?B?SitWY2wrdll3YXFvYkg5c09Kdkk5b3VqZ2lDZUlsWVM4eUVWQit2VFhFeHdS?=
 =?utf-8?B?M0hKaWU2NzJDdWxaWDlZbVpEQm1iSzJvQkZwVzJDSWg1U0gwaXFnRThXaVQ3?=
 =?utf-8?B?N0krNldLektPL1hLSkd3VzV2MVhFbVFKeTlPL2FNQzJrbU9SMjg0S0dHV0lR?=
 =?utf-8?B?cnhqKzlIWFB5MVZmTTM4RXFFenZIOXRFcWFzbzErNkpCTjE2U3JWTXRDNWlY?=
 =?utf-8?Q?z/gSv9mjKWi7QGS7COUBXgvhQ?=
X-OriginatorOrg: nuvoton.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bdaaf575-afb8-46b1-0fb1-08db56a01b3f
X-MS-Exchange-CrossTenant-AuthSource: SG2PR03MB6732.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 May 2023 06:29:45.7482
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a3f24931-d403-4b4a-94f1-7d83ac638e07
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tqvaJFujqtJtLGXoqARXI6clexz91W2kbLQnRn/3lpeYmfTxRtmEeEvNXLUnbdCU2oEuUpDOxI9PzG76nU7Nqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SI2PR03MB6781
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/17/2023 12:11 AM, Krzysztof Kozlowski wrote:
> On 16/05/2023 07:44, David Lin wrote:
>> Convert the NAU8810 audio CODEC bindings to DT schema.
>>
>> Signed-off-by: David Lin <CTLIN0@nuvoton.com>
>> ---
> Thank you for your patch. There is something to discuss/improve.
>
>> +unevaluatedProperties: false
>> +
>> +examples:
>> +  - |
>> +    i2c {
>> +        #address-cells =3D <1>;
>> +        #size-cells =3D <0>;
>> +
>> +        codec@1a {
>> +            #sound-dai-cells =3D <0>;
> Please put sound-dai-cells at the end. In DTS convention is to have
> compatible first, reg second.
>
> With this:
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
>> +            compatible =3D "nuvoton,nau8810";
>> +            reg =3D <0x1a>;
>> +        };
>> +    };
> Best regards,
> Krzysztof


 From your description, my understanding is since I set required items
sequentially, one is compatible, the other is reg.

So the required properties should be filled in first, and the follow up
properties are these optional properties.

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
