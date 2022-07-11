Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2207D57060A
	for <lists+devicetree@lfdr.de>; Mon, 11 Jul 2022 16:44:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231234AbiGKOou (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jul 2022 10:44:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231143AbiGKOot (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jul 2022 10:44:49 -0400
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2054.outbound.protection.outlook.com [40.107.21.54])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E00666B99
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 07:44:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H4bSmtdrr92ttPfgGLATcJzFROmM5MGAGEi3G7QKxJsNnU7RUBErDT4DmOBf8XuacA9XDAtV8Ikne68f6GHiYcsXnTuyTLyCrUURwm5In+oHYxGrC1dLAderrv2YPVEMh+bdPR6p2B2ZPaHEbqKYjLyW51PfjYvVVPepeAzEfm4Fgn6Be+2X/aZPgzGkreUKQGhu1IGxxfgm8aSxa++l+LRYx3UXvg1/hifTYsPzhuT+pLeelYMQws9zzqm/W+P/5Kq39if52DgQlEC7DhxfL+rw2+bJ7j6RiYoCOOqwGROWdrYByBhI6KFSOCf3PQVehngRz8qm6f3jyjbgBQeiQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m4jIpkgxMEyHlk1M6AK3ouCcpJZJ9s4m78/dEWV7V0s=;
 b=CFnUp9Bz2Zhyj9jxl9lZULQFbDBus26Elhru59vGVkDRBtw4fufIHMELAHxhooeRuSR2lV986RCqb0vHMgKsZt/aXQViq0xtSAh69IX8NeNCISDfRnSHnKUw873CeYMNqslOeH3K9a/1Fcv6OQHZNM8/jD1jZkpCKO4bme8eK89JrVoc1fJZbQxP7pGvb77tTmUf6RTrKlqpKZerVvtoFglkazvkPW7T2wqEqEG+xIa3Yi/5HasVpdHKdiPVjly/Xl+1m1LZqk4Lm9nWg1fkSBqsDHmdFIQIoJlSKsqiOAXKARd9bXrNm/E31LzZLZQq0/VDvsogDa5UaIQ63zigQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=seco.com; dmarc=pass action=none header.from=seco.com;
 dkim=pass header.d=seco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m4jIpkgxMEyHlk1M6AK3ouCcpJZJ9s4m78/dEWV7V0s=;
 b=YyatFyk1m+PhXK7hMayrOULUAH0G54ddCWHwsiuBWmA+lcoesuNxtiJVZDLgKWVGT+yYPLJkn1cM0UHOAhuZvFvw6nSjJiO0FfA+kQBHnOjEHvMmhDyOemKjP+jjLQichoVuAOxd+YpGqWLkeEEgUYXQ4xzd4kLw/wcqmVKijMUXJ/JXe7+pQQCLfUTVMDaYXXJFK2NZvOp215d1azUXNDCwXSPTWR/nqBbvd5xDymfpgvaOjWoPZHo904sJOnSMl6VtBKsn/GFQ8Iz+ghf6q4gHdQ5O7OfutXvGnmnsvec7x3pz8Qbs/tHcJWcWb+/jK0HOZlNlm5WcPy2fT1LWXw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=seco.com;
Received: from DB7PR03MB4972.eurprd03.prod.outlook.com (2603:10a6:10:7d::22)
 by AS4PR03MB8506.eurprd03.prod.outlook.com (2603:10a6:20b:576::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.23; Mon, 11 Jul
 2022 14:44:45 +0000
Received: from DB7PR03MB4972.eurprd03.prod.outlook.com
 ([fe80::757e:b75f:3449:45b1]) by DB7PR03MB4972.eurprd03.prod.outlook.com
 ([fe80::757e:b75f:3449:45b1%6]) with mapi id 15.20.5417.026; Mon, 11 Jul 2022
 14:44:45 +0000
Subject: Re: dt-schema non-array items property
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <f86cbb55-a548-537a-4108-46f10718c284@seco.com>
 <c853512b-859a-11ae-b933-c85fec7f9e36@linaro.org>
From:   Sean Anderson <sean.anderson@seco.com>
Message-ID: <c7edff7f-f89e-3387-62ac-a915b4915580@seco.com>
Date:   Mon, 11 Jul 2022 10:44:41 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <c853512b-859a-11ae-b933-c85fec7f9e36@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BLAP220CA0029.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:208:32c::34) To DB7PR03MB4972.eurprd03.prod.outlook.com
 (2603:10a6:10:7d::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c8b9bc22-d88d-4cd3-b29f-08da634be5c2
X-MS-TrafficTypeDiagnostic: AS4PR03MB8506:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Rpz53qnMEA4+W2WiMsjqH2/udAF5YWsWKpRKW+oVLeneErAzpxX7uJHLIiA+Fe2fv6emurfdr+ZUCwP8qmuu7OrsY22s92kSlH+7om0J8O/hJZnkAIPnXBq6kFhd7us+CXPNHVHhJap28Lcg8hODcIGEqp708i9L6Psh4mH/pcJBG4TCCzbK8l1Y+bfF1djj8X45eWpfiTdtY85g/jUlZ3awLCOnoCIXj0ok8bpRChpTMT4o5R6J4Al3bU7fo0lJfT8RxOI2QAZ7h8GwaYeqfKaUQXVkUR82uNqFi/OSG6sDGj2TQDX3+4pS5ynJMYVhkS3KU38wPK4re5pP0UIg/GOiHDYBOwU32kFhmXxWIi2IB8k/s+MBkGCO6ydCiABwqD/nG6EjiQmiO6nEDltnPA5x3fnEdTICVebTubHB95nTmLrKM+l5TWT5BPNr0qOBRD8Ox3cwuADt+lVg2b6fENJDVhDIzdTArHRorZuSgfCljWxlJs3C95sPZefKOECoNeoOLI+2d4q+CeBgmiMqBTUQrj7FIcUtK4L3zxQ0bn3vbW113mrEIXmDqiO9Jm+AWi9af60XACOtAoUAmql08AEDRnVS3sDBWlT9jk3w84Bae9yVh34ngb8SDO7Ka52erRJdWDb9JhKhSPiUyo4PfjzXxzQUBa2vvG0klvVJiB8XH8/QpxlA/1MhIpyDSTFUn5PcVAqC9MLvdNLZrgduaSlxIKB3XVaK3A1dIsb/sNW+8s5TDmA4h8fuoQVnKnkGdctW7f+3vLmZ9vj265wooXybyqVXq+Vr3rpbg8rbW7vx/r2hoYBY6fnlfwQ4SjXmWR2KjZtxCfUtniZ8RfnTu6UselW66HK1BKbuDycp5HhOMKGg5qrZqP3UqVRqleaqYDAnNlG5208GlGovC6QDUL9X/VTEBk5cga9iF9HLY1o=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR03MB4972.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(366004)(376002)(39850400004)(346002)(136003)(396003)(86362001)(38350700002)(3480700007)(5660300002)(2906002)(44832011)(38100700002)(8936002)(36756003)(31696002)(6666004)(316002)(41300700001)(66946007)(66556008)(6506007)(110136005)(966005)(478600001)(2616005)(52116002)(6486002)(6512007)(53546011)(8676002)(66476007)(83380400001)(26005)(31686004)(186003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZGE4c0pDank4Y2poMmJ1ZUVYT2VpZDdwSTZrUDNzVkZyNWJoeWtyWmYrdFRl?=
 =?utf-8?B?MEJOR3V4dTZoOXNXUi9CWElWUWdURGxKYkNackJXdS9TQTJlTFl1RXZLMmN1?=
 =?utf-8?B?a2o2dEJNb1pIR0xwQlpSaXhhM0MzeXR4RGdVTVlZWlVSaldSMmg5TXF4RVBy?=
 =?utf-8?B?bXJ1VEhHTzFRa1JhSnUzY0h0cVdBUTl1NlB1Ymo1eTU4d0VXc1owMndGNVJk?=
 =?utf-8?B?VkcrclNaTnhqa2xXamIwZUM5ZkU0R1RVNmxpa0cwb3JvbC81SVZqS2lGc2Fh?=
 =?utf-8?B?aDVhbDFXd1hhUTMxdWtoeTN0TjM4SjJYWVVTRVdZSHFvc3pNVHNLRTBqN0hL?=
 =?utf-8?B?dUx0d3gyQlVqcHV6QUxqQjJ6UW1SazFiNkM0Y0UzdVMxWUErdFc2Yk1UdFFC?=
 =?utf-8?B?Y1g0K1B2cHNWcGtFaGlXSHVQYTB4UHF4RThIdUsrSHB1NzcxM0VaUDg2a3lm?=
 =?utf-8?B?ZS9pQXdFN3M5UldZTFNTY0hJL0F2WjFPZHdCL09ZN0VGM1NMem1Cc25CTEJu?=
 =?utf-8?B?TGtuVXZ0UENESkR3WXoxaWFhdkNBTm1hOEdUMDlRRVpvNS84YkZmMWxKMzgw?=
 =?utf-8?B?MCtRaGNsN1c0Q2pYd29HTVptcXZCYW8xekVobGlxU08xUTVoT2t4SStMOUZ4?=
 =?utf-8?B?S21wa0ZVc3dJRnUwS1VESlAyUDZwMXg2U1poZlBNVk94azNNRWQxam52ejh1?=
 =?utf-8?B?QlRCTGFrQlBteVo2OFl5ZVFiam1vcUw4MzNKVTNnVU8rMXhtYW5WcmZaLzBO?=
 =?utf-8?B?NG11Y3RwbG8vL1g3eDBWeTlEeEsvSmtxcGZnckV5emVaeFJTVTdWODhnUmVs?=
 =?utf-8?B?bm8vQlNCVlZ1WkNBMXJiaGZkUVdIamxYZ3V6VTdFUUR2MWVtTjA1NnBEbnFk?=
 =?utf-8?B?clVtL0pFOVdYbEdWeTBRVld5dUlDeTFDV2VHVmU5b3I4enp3VThjd0V3MkhH?=
 =?utf-8?B?UGVSU2NXQzJVT3JkYm1kTkdBUVFxV2xxcFBTMHBqWUNlRVBnN25VdDhIWE1O?=
 =?utf-8?B?UWcyZHlqYlAwMDVmZVphUGdDOEg3SUNRR2I3aTJPMUdDZEg5TDdMajdOOXpI?=
 =?utf-8?B?ZjJKY2ZkYWNUSWp0Skw3Ukp6V09KNGIrOHlYRUw3dFlZbE5YRU9OUHNtaFo2?=
 =?utf-8?B?RHJQS1hjNHEwN3RXcElPS1NTVGExTHhUSEFFNkc5Z3pRcGg3aGIwd3VPT2Ja?=
 =?utf-8?B?TUNPSEFvSEFDaVlLVml0SU5Vb214aHNCTXFCb2lHR3BqcnVNMzNKRDJYbStK?=
 =?utf-8?B?QVdyZngwT3pwT2RSdDNEVG5wODJtZ3NBUzJabW83bFlMenhnL0pxQlVuTm5O?=
 =?utf-8?B?U1hpMFlad0xEOVpSZ2dyZWMya1BIcS9GNHN3bFlwQ0ZXWlQwdDBNNmZLdmtK?=
 =?utf-8?B?QXh1bXhMTnp3WFBIeWluYVlibzJiYm5xTXk4R01lTVdJSDRIVzIyWGgzL2kz?=
 =?utf-8?B?eU1pa2hFVHBCTnd4allDT2RLSlBDZ2RqOWlQSlZtOFR1bnhha2sxd3VxRS9Z?=
 =?utf-8?B?Vmw1SG1xekJqcHh6VmxRV2lybE5kdDladlVjR0VpNVpEY2NoenVQMWZ6QkNE?=
 =?utf-8?B?d2xDd0RvQ1dmT3N0UmZYTFVSVVRBMjdDNE1XdHdnZG4wQ0tPWWhVYUhjeHdL?=
 =?utf-8?B?cjNKVk5PMlNsTDA4Q0ttTFpESmhyV3pKZ2R0Y09Bcm9FbU9VbzJlTWp0eVdR?=
 =?utf-8?B?SEE3blFCOHhTOTJyRkJQS0lEWm1wcFBOOEZrcVlkaUdOc2xuZkFkcnJ2MW1p?=
 =?utf-8?B?cCtXNHRDRnhqZ0dJR05XUkZhL0dGcVNyWGRNQ29zMmJwZm14NEprUFdGKzNx?=
 =?utf-8?B?RWhGOHNTMDBiYlB3RlBTN0ZXeGI5eHA4aXNZRzFSOEJjWm11d04zdlhQWTBu?=
 =?utf-8?B?VnNZM0ptd1ZQRnJPeHB3eENZYm1xQ0JFL0xsSTdxek96TlNWY1hITnZJa0Vh?=
 =?utf-8?B?cS9jVUJuTjNzME5TMWNaaUlIQXZ4bU5nUm4zc21QbnJQVU5PK3hGaFNxTG9E?=
 =?utf-8?B?Ujg5bzZMZGZUNnFrdDRWNUFMQkJENU1RNE54QjhUWVB2ejVTejlzeTA4RGlP?=
 =?utf-8?B?N2xGWjdtYWtzaEExeXI2clM3YWUwOWQyNVozTUtyTFc5dThzT0RxcHVHbHh6?=
 =?utf-8?B?SlA2ckdQOE9hNVpqMDdqVzNxWlBTdHpVVjBCSmYycFkzanQ5emgvTU82dVQ1?=
 =?utf-8?B?TEE9PQ==?=
X-OriginatorOrg: seco.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8b9bc22-d88d-4cd3-b29f-08da634be5c2
X-MS-Exchange-CrossTenant-AuthSource: DB7PR03MB4972.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2022 14:44:45.6035
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: bebe97c3-6438-442e-ade3-ff17aa50e733
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5p1S99bMjPWzpW2W/O8CJ67X2b6lhclrTGIT+X7lLwGvvTx2kYR91owLpltBaEJnBqi3P7eownH9ZB5afOubyA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR03MB8506
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 7/11/22 8:23 AM, Krzysztof Kozlowski wrote:
> On 08/07/2022 22:12, Sean Anderson wrote:
>> Hi all,
>> 
>> I'm a bit confused about how the items property is supposed to work.
>> According to meta-schemas/string-array.yaml, the contents of items may
>> be either a list of enum, const, or pattern, or an object with any
>> properties allowed at the top level. However, this last clause doesn't
>> seem to apply. If I try to use it, such as in
>> should-work-but-doesnt-names below, I get
>> 
>> test.yaml: properties:should-work-but-doesnt-names:items: {'enum': ['a', 'b', 'c']} is not of type 'array'
>> 	from schema $id: http://devicetree.org/meta-schemas/string-array.yaml#
>> 
>> What's going on here?
>> 
>> --Sean
>> 
>> %YAML 1.2
>> ---
>> $id: http://devicetree.org/schemas/test.yaml#
>> $schema: http://devicetree.org/meta-schemas/core.yaml#
>> 
>> title: ""
>> maintainers: []
>> unevaluatedProperties: false
>> 
>> properties:
>>   compatible:
>>     const: baz
>> 
>>   verbose-names:
>>     $ref: "/schemas/types.yaml#/definitions/string-array"
>>     minItems: 1
>>     items:
>>       - enum: [a, b, c]
>>       - enum: [a, b, c]
>>       - enum: [a, b, c]
>>  
>>   non-kosher-names:
>>     $ref: "/schemas/types.yaml#/definitions/string-array"
>>     minItems: 1
>>     items:
>>       - enum: &abc [a, b, c]
>>       - enum: *abc
>>       - enum: *abc
>> 
>>   should-work-but-doesnt-names:
>>     $ref: "/schemas/types.yaml#/definitions/string-array"
>>     minItems: 1
> 
> You miss here maxItems, which is not correct (no upper limit). This is
> why array type is expected.

Thanks, that fixes things. Where does this requirement come from? I don't
see it in the meta-schemas/{items,string-array}.yaml.

--Sean
