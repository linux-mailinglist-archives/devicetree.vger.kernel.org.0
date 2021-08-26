Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 847943F862C
	for <lists+devicetree@lfdr.de>; Thu, 26 Aug 2021 13:12:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231406AbhHZLM5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Aug 2021 07:12:57 -0400
Received: from mail-eopbgr10090.outbound.protection.outlook.com ([40.107.1.90]:60750
        "EHLO EUR02-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S233736AbhHZLM4 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 26 Aug 2021 07:12:56 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O3xz30ch8br4ehoem9ufGrnB5FtNH8I7HWWWUUaca1aBk7/lYn+7/TFV1/cdy/bILmJbiE0j2ePB7xY4RTgzzpZ6QqHCl2URZCN7cRhFXgE1ciZkVoYsQdyl5Ab4iNJcGUcbtMrBFUKV+/pbL1s9RyMn+1WDzYVjw6qcOMEOojke95ogahNcNa30TxiAaH6qOgAs5C3xo954YjtLFouVHBqqEPCX33v/QPyrvLI9wtWxav/qzmUiTCvApgKu8j0wrWmR0856aSOviWjbjTU37YEEICDYupkQtLc974rFw1lrvN8HUmBq0DUVlKCKHuQLAl9Svr7EV5r5YnArH11yyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HgYJgLFtR+GoxQVy06PjG5Z/Mbd1RIG0VNBwN+DME/k=;
 b=hRgyjk13QQ+WJQEhVwqyXKTzcGsSPfPyDf+w0TX7KY2YfGZWJ5pZ66QPSd/dFucMJyT9NiLLoAvbeodC2JiVhZUhGu0SDh5oFKCy90Ek5o18paSeEuW7a92TNqTE/4eAwcvB8/dU2I8ftH/6pahQpTmvTGVmkdWQHBU4fkB0HGBkFNcX47G+Z0KY5S2lDgPdGkpMWQwIVBeSMyGdoBKHvgyYOgl5P3GgRl7oCjWlb0bmzXmC68sx4S8nM3NTnSPMc0Pntndmo3Dy51l1JysLUmMYTvLV9foOP2PaAATnTa/CbuFLCTJ8b35VgYIl9dHk/1Pb6FA0pwO2h33Z5jvjiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HgYJgLFtR+GoxQVy06PjG5Z/Mbd1RIG0VNBwN+DME/k=;
 b=WzPMA9IngcqPrvryNa9t4SvbVTbnebUzTLUQaUMvst4L4R6XOIFrmbRowioX8621uZw/ELHocvDSs3TMdY825ZZLGDxU8uuy7hAx1PsyvkQhdqOJkmvrixpysGykYl0EdCnWeIk0fK3hZqxU9G3GzLI7BJG08oUidNNYZGTcAvQ=
Authentication-Results: linux.ie; dkim=none (message not signed)
 header.d=none;linux.ie; dmarc=none action=none header.from=axentia.se;
Received: from HE1PR02MB3148.eurprd02.prod.outlook.com (2603:10a6:7:2b::33) by
 HE1PR0201MB2300.eurprd02.prod.outlook.com (2603:10a6:3:84::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4436.22; Thu, 26 Aug 2021 11:12:06 +0000
Received: from HE1PR02MB3148.eurprd02.prod.outlook.com
 ([fe80::65d1:4ec2:a48a:69fd]) by HE1PR02MB3148.eurprd02.prod.outlook.com
 ([fe80::65d1:4ec2:a48a:69fd%4]) with mapi id 15.20.4415.024; Thu, 26 Aug 2021
 11:12:06 +0000
Subject: Re: [PATCH] dt-bindings: display/bridge: document enable-panel for,
 sn65dsi83
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, daniel@ffwll.ch, airlied@linux.ie
References: <131ea94b-2079-3214-3ab9-f2129659cb76@axentia.se>
 <YSZvIBp1axmfqkeh@robh.at.kernel.org>
From:   Daniels Umanovskis <du@axentia.se>
Message-ID: <00e6424f-d884-1050-58ec-956d4aa7f9ef@axentia.se>
Date:   Thu, 26 Aug 2021 13:12:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
In-Reply-To: <YSZvIBp1axmfqkeh@robh.at.kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-ClientProxiedBy: AM6PR01CA0064.eurprd01.prod.exchangelabs.com
 (2603:10a6:20b:e0::41) To HE1PR02MB3148.eurprd02.prod.outlook.com
 (2603:10a6:7:2b::33)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from midgard.internal.axentia.se (87.96.186.165) by AM6PR01CA0064.eurprd01.prod.exchangelabs.com (2603:10a6:20b:e0::41) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.17 via Frontend Transport; Thu, 26 Aug 2021 11:12:05 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0818fe6b-bd92-4072-1ffb-08d96882569f
X-MS-TrafficTypeDiagnostic: HE1PR0201MB2300:
X-Microsoft-Antispam-PRVS: <HE1PR0201MB23006D6C4ECE6DAAE8539706BDC79@HE1PR0201MB2300.eurprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3631;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dIaUGO4xVxvjphcgDhAz18KQ8iMQkZCXjMNO8k6uccPLebGeqW3YOjwaHgkmPX9zRtri2ciVt+iu3FEUgkoHBDPcQQlTVBHXrFIuOVSqWNfkqfhj99PAzbE3MVimgLOjcbfBd46HlI93uPDup2g6IWAL5G1QgUJ6rbgXWFGan7rlXDYdw6j/qlWucljeC16bAlw9cqD5Cl3zUaGqdfoXFzqPu+33WslEqy0STBTZwHZ/cvBr1sa909lb864mrVvbznfGZJot8JZTloXW1/q5C5rY3legeXktZFZvePOXQszlwiHXAe15BhllkmgMynxHXNaL1gJiGI8avET2kBDazLQxHSAh+b2h7LRzRuQ+4JROle5P8YPTSrD05s1UF3x2jTEI/+Mf/cojxy6QDnBMk4htXWQjT5AVLkE023UcphlFp3BKcygHw+Noe3Bduv/hP6ruCQw1BG/QpAqk+xReqJ/oCHh/Eg+6z81DxY+zrdmflzUYBJXSNlf/9EcRpwtzHZSaSMZWMHrK16EGAeB09P8J3xO9mdTfbXER7xhACWvuNX9pOPDo52a4VGNTOde1f8sfEdQb/C+EF+gdHvAVa0ukRD6ZKmFx3Kp4ZQn7GfhjpdXE3wdBSgfDGtt4neP58Y16qgdnJtYQBxGXaNdzkN4E1a8h3YFnh6DiYeax08YW8iVwxoNwlX+xD7d47d3fJO47JhRgcK3trDgNyYPRMPigH+hEGLLLw5zx23j4Y74=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HE1PR02MB3148.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(376002)(396003)(366004)(39840400004)(346002)(136003)(478600001)(8676002)(6486002)(4326008)(8936002)(2906002)(53546011)(31686004)(5660300002)(86362001)(31696002)(38100700002)(956004)(7696005)(26005)(36756003)(6916009)(186003)(316002)(66946007)(2616005)(66556008)(66476007)(138113003)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bHdHQ0JHTXFtYWtjd1MyRk0rVndTTWlHampJU1Bna2pJVjNQSHFvZG1jL2FL?=
 =?utf-8?B?SjR2NG1vYXpHMWZiTkRYVG93Q0xLT0xQUkgzVUV4S3U1K2FWU0NWNk50c3lB?=
 =?utf-8?B?NFZtZkJWMkEvZ0NQaWE3L2NDc2dKVldkb3pTZVpKTWprSnc1RmJQcW05V041?=
 =?utf-8?B?WEdNaUUwQVgrcmp5VnZGYWtEVmNHekNWMXJMQUE1Q25ROGdmL2Q0c1RVbVc1?=
 =?utf-8?B?TTlKNzFnNjJCbE1kUklWYXAzTDU3SVUzSnBrVW9lUnduWm1FMDlQNVM2NHBs?=
 =?utf-8?B?MVl1MmlXenpTOU12cU9lWTFCNTNGV3FHYStQMkQvZGd5ajc1MGcxcDlJdTFL?=
 =?utf-8?B?ZkFIOWN1bG02N0xPWGsxSXVNVERRV01zSmNsM0Zmazc0aXpUTjl5M3FUZ1JH?=
 =?utf-8?B?ekVKUVpYejlqVFp1bmw4RlNxZ2IyNHVPb1dvcDhvS2l3a3UrSHlOaTN5Q243?=
 =?utf-8?B?bU9abFphcjEvOE05MXk1Tk9ubDFYUTNSakxiV1g1Nld3RjFwWkN5NzNZV1I4?=
 =?utf-8?B?b05Xc2tLNDJBMnF2NXRCc3EwazMwWmNlYkJaQ3JnTjA0dkczb251aE9Tb0U1?=
 =?utf-8?B?ZXZTeUlWRk92V0pIWXVOcERGdjQwRnBwME95bi8rYmc3elAyeXhDOU1POHA3?=
 =?utf-8?B?aHRYN1hKY1hkR3pjRENWYWFEVkRYL1UzSHFmUHlyRWpicC9pRmZFd0tWWHBS?=
 =?utf-8?B?WDZSZ1RwUDB0MTkvZzU0VllhUVM3V2NpMGxOcVJMckZPVHFmQ0ZZRVVMVHBa?=
 =?utf-8?B?WWpLZjJNdnJ1NzNPZGxaM2VaQTNZUEpYRTVaVjl5R09mRjdOV2lUN3JkSjRY?=
 =?utf-8?B?RFEwVm8zWHVIUkNkY0lBQm4vUFhQUVAwZ1diRllxMktyYkJ2cGJGeWpkS1ZS?=
 =?utf-8?B?UzIrcndFb01RZVhpbERHdllXTUNGaW44cWdscHE3d2xiWnFSRzJJYno0Q2ph?=
 =?utf-8?B?c1I4L1JNZlhWcFJralNRNGp0ZTlSN1BHd2hOTDFoZzVCdXByVHZLTHdIM25a?=
 =?utf-8?B?bG0zb2pUUjJOcGxxRERVU2tzcVRBaUl4T2RKWWdjOWdSc25yQzBFTkRLS0NK?=
 =?utf-8?B?YTNrY2hSWWVnNjZCNldzY3IwaTdJek4rWW5qdDNrZEVzR29PTWRUUnlQWjJS?=
 =?utf-8?B?OG8wcjlNbkRVOEJ0ZXZTVDk2S3FPWXJVNnJQMyszeWJEN3pTQjg5Ry9KTC9i?=
 =?utf-8?B?SHI1OUdkUktmUExyZE53dUdaWVJxcUVkYmlzYWQ4L3hxbG9Wc0FjT3lvOWow?=
 =?utf-8?B?L0dwRDhsckJpbUhvZkdJajcwUGJPU3E5dzI5R0NZVk9nQ2Z4WFVhZWNQM213?=
 =?utf-8?B?VGVLS2pPOXFCV0diTFZ3TndER1ZhZlpMTE1GRkNZZk9LVGtxRUJqT0g5ZU8w?=
 =?utf-8?B?Mk8xd2pOZXZMamRHRGN6WXRFU1A4Z20zb252OFBtSWozRGplZjN0bjFjVUx5?=
 =?utf-8?B?SDdseEFVRFUvSlIyVmN0QVJqandUV0ZmeTdJUjBZYm1ibU50c2NBWUxBK0Na?=
 =?utf-8?B?S2kvUEtSR2w3RFdTNnAwSVh2RHJDcUl5dDFXTFV3RmlLZGVGMGdkcUVuWTR0?=
 =?utf-8?B?cXdSVUhBVSt1RWlkb0dPeWVyU0E3VlBPcmVhaWJ2aUJ2Zi9nMzZFcmhXSkdL?=
 =?utf-8?B?ZzNZdDNzalU5Uko1a2wzcXVBajJ1eXR4bkhqbmVCWFhnV1N1UWVtZzlyMitX?=
 =?utf-8?B?eHRiaDRxaGRkdVNFcm56S3dxU2tOWWVQMkhDVVA4bWo5b284VFpQTTluUjhC?=
 =?utf-8?Q?gRKlAQkI8GDKPwKW8P9pxFi6fXDIIrf0GOYUgZU?=
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: 0818fe6b-bd92-4072-1ffb-08d96882569f
X-MS-Exchange-CrossTenant-AuthSource: HE1PR02MB3148.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Aug 2021 11:12:06.0020
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KUP1HHsHOK//gApM6yG667DPwgt+Gnddn3QW6yUNPwQ80EGv4KiILNW6YEuXVIBY
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0201MB2300
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 8/25/21 6:26 PM, Rob Herring wrote:
>> Signed-off-by: Daniels Umanovskis <du@axentia.se>
>> ---
>>   .../devicetree/bindings/display/bridge/ti,sn65dsi83.yaml      | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git
>> a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
>> b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
>> index d101233ae17..1aca6c1a8e0 100644
>> --- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
>> +++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
>> @@ -32,6 +32,10 @@ properties:
>>       maxItems: 1
>>       description: GPIO specifier for bridge_en pin (active high).
>>
>> +  enable-panel-gpios:
>> +    maxItems: 1
>> +    description: GPIO specifier for the panel's enable pin (active high).
>> +
> There's already the common 'enable-gpios' property. Use that.
Could you clarify if you're suggesting a change to the driver instead?
The driver uses enable-gpios to specify one GPIO (the bridge's EN pin),
and optionally enable-panel-gpios for the panel. The patch was intended
to document that behavior.
