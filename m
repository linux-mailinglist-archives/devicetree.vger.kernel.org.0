Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5174664981F
	for <lists+devicetree@lfdr.de>; Mon, 12 Dec 2022 04:04:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230031AbiLLDEu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 11 Dec 2022 22:04:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229986AbiLLDEt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 11 Dec 2022 22:04:49 -0500
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2079.outbound.protection.outlook.com [40.107.20.79])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A4ABCE39
        for <devicetree@vger.kernel.org>; Sun, 11 Dec 2022 19:04:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fhwbJzeGzuDc9hrCBvrMTV5APtcHGa5jQW14qPo3QUuWNgrdu0uainulYuuy9fZTWopkkgOnrA++nxLk8Tumk5tVZjfgbr5Ly0Sgn/eOYuj0/Zh1uADhko+7FiqQOB9fop1oZ4JQADkFG8PFHo828VK1Rs4XMcN42iYkG2HNk/V5bUQOT0wqwberOZ7V6dMnYGdf/IlUMDdjloIXkTIm1IcwfthjNX2R+eo/9cMZS3CmoswQFAct8YbMyogjRXlJG68KskGceKus1fr4+i+hmY2slZc8gtEHvU3e/G67IDrDbQTHJ0wVYXoAnlI3IHh4LOu0lGS6xaZhFtvWBLeGXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pdqAgpFeamdiXVL1gFhKBCgXkUhz/3Y5iiNnyvIg3p4=;
 b=iKpmqpPqvJqurwrIxdwQ/+9j+dQd7hcpH4UmQCkHHcAsae9VF0BvBULuwAh9bBYSNPt7ILF9fRAEqWZ/HvFJF+mN9q8601Vv+tQNTm0lYzwrhsBjhqc8yXVH9wTGBg4ocVMYU7oQkjQe9Y8nxqP0usd5UVqxzbXJsi1qoyK3dg5RSdhau/OVa+9TWAdrQ5hNJdjiryWDS6rtsGl4JzAtSA4BP8FEv+ewgg1RliF1Cm/zxHGn+MTDxCuQefnWMuZgdExMbSCITLi0bgsIQ8da21bs1uLpYHB0fiCA1Uc3sWnJNRHiHINRfFiixlKDwW3RJqz1/LJfH3lBgMyS1sntlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pdqAgpFeamdiXVL1gFhKBCgXkUhz/3Y5iiNnyvIg3p4=;
 b=fN8+O6t1gA2B8rQb65jWUYO7XYhaeO+M5xR5SaTx1HPyU4y99JUzg0NkV+HU4+6ETyRQZbNgVzWRClJz/gZuqzgTwlm4I1jxQ5x1QINfNnThoCPxAO4UAN1C8YZvw0/SuNy1b9tkZm1Fn46ysgWrA6W2SYlGVvyPGdcCs99zp5s=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by AM7PR04MB6919.eurprd04.prod.outlook.com (2603:10a6:20b:10e::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Mon, 12 Dec
 2022 03:04:45 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::ce5b:991d:5f5e:388]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::ce5b:991d:5f5e:388%7]) with mapi id 15.20.5880.019; Mon, 12 Dec 2022
 03:04:45 +0000
Message-ID: <733ac9d29fc03568e90cbfeb6c1108fc2ddbd597.camel@nxp.com>
Subject: Re: [PATCH] dt-bindings: mxsfb: Document i.MX8M power-domains
 property
From:   Liu Ying <victor.liu@nxp.com>
To:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org
Cc:     Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org
In-Reply-To: <20221211025702.672364-1-marex@denx.de>
References: <20221211025702.672364-1-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"
Date:   Mon, 12 Dec 2022 10:14:01 +0800
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SI2PR02CA0042.apcprd02.prod.outlook.com
 (2603:1096:4:196::19) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM7PR04MB7046:EE_|AM7PR04MB6919:EE_
X-MS-Office365-Filtering-Correlation-Id: 877f6488-8dfd-4865-08b0-08dadbed9e0f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4uVjidGs+5b2DiVX+YOhz5mGEu6vJ9sU1iqml08HmSTibQdzNm2nDVzWNkwdK9952t3wSYmxRUOFgQp1h/n2HNzA4COnHGOPqViSNMztcUebvpQRMsk+Y3VkPTTBJo29U/ENMq0zQ3kCWUlsXxxLzCbzjLnnjtBexyYOoVEYX+DMejKgpQzcIbWBXL2SVa99ySF0bvvgSGTYff0p6XAebNrmnkqYALqpZO5wPyWZFuFsALfRmb+VkESc3S4DUSa1UgoW5S+b6ZOtf1xJ5Q7jqrzaSc08ZyM60KpGXIL1zxKGnIS8Xc2DEOSZSBN4cVJcDCXiDYLEkKFf2LgRsSMskJtu/QBMV/mk3ETq0K6L4/Cg9cueWWWf0VbQonxRuOt7tNIb+2ODUKAwAW8oceMB6xSnRc03oY3bZU048F0UXVbtl+QkgQSRybJxA3hR+EEYDcFxNrsg4Q9aDNOw6SzBoYsMxJL5QdD013JD5XvwV0fKAeB+1AIAK1cssuatXRkAX1LmPRdnkOWLdD6erPa4IWqmAfJ2foah03FAKuRUGfNdlYEFxYLqGUck3Yt8JFtlVFzYRMlnoR0LZaw7F+3sgzxkk8Ziz+ORGs8ZUpjBjV/XyGiNDTvWQN2u5Ugcg2UaU/TuSP3Xi7mINcekNjgqzYsvHbyOlpRLsC2NGmDjJnCKs71FC1mo3FWpKnyChXaknYLcZCSYdXqgIyhNlGDwaP06VsbgpdkjIzWWztHgoEM=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(39850400004)(376002)(396003)(136003)(346002)(451199015)(66946007)(4001150100001)(2906002)(6486002)(36756003)(6506007)(478600001)(41300700001)(186003)(316002)(54906003)(26005)(6512007)(86362001)(4326008)(8676002)(2616005)(66476007)(66556008)(52116002)(5660300002)(38100700002)(83380400001)(8936002)(38350700002)(6666004)(99106002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MHhVREw2aDREMEdPcFNmTzR1KzJlK203Uno2bWVjQUpmb0FqcVBUZ0tEK3Jp?=
 =?utf-8?B?a2g3eUhrZXVtTHJnWmFodGtWU1J0OFVIcDUzWEw2VmRvM0J6bk9ZZTZkcm1H?=
 =?utf-8?B?RjVoOW9PUCtKYlNvSWJjT1V1UmY0WlkrR0FxUmpiRGQ4ZHR5eGVadzhZYjFU?=
 =?utf-8?B?cUFDQTc5TUZLZFJWT0JhT2podTlnSTlKZXovM0Zyc0x3VkN1N1lxamtHNTE4?=
 =?utf-8?B?eUx1YWNkUWpobzFPcUFUK2hzK251SjFkam1YRlpCN0JkckhsdHNER29UWEZl?=
 =?utf-8?B?b0N4Sk9pUXZRTWRDRzNYelc3NUFoc3JDZE1XUTh1eitlSE5WS290Sm5MaG9h?=
 =?utf-8?B?ZWpnbzZVYzQ0RVlyeGUwZ3JIU0dNVEJuZGtKY3FSK3RwTFF2Vm9vbDhQcmwy?=
 =?utf-8?B?UXBjRkloQVRBa21uK2Ura3dhUEUwMWoyd3pucnovM21RejdWTWgxSlBkMFpD?=
 =?utf-8?B?K2JlOWFVcExyb0FmRzRIM21tRm1MYTZneHFyRUZCYmxGSG9BRWtCdGVHbmNK?=
 =?utf-8?B?TCtiTFVNNytuTVo5OS9ja0lWdHFLVFM2dXEwZXVEdkgwNnBKcE44MHViNmZ4?=
 =?utf-8?B?d21LQk1jR2F3T0ZvZkRGMzF5T0lmN3F1bzJYNXlwMTZlSXo1VmJWY0Znc3pV?=
 =?utf-8?B?TFJRNUR1RVhId0hBOUtFcWVtM1NFNURvcGZzY1JsYTBZdEhIWS9YVkozUjl4?=
 =?utf-8?B?Mk96NnYzS0tjTDFVRnBjcFZKdEJLcjlwZHRlMTkyWmdhaXNyQzZJSzVia09m?=
 =?utf-8?B?TXFNSnB6b0ptK1h5SFoyZ1M2UnZ3VTlSMTE1NGZwNnZlS3MwaG8yMFFrVldS?=
 =?utf-8?B?TDRCaVEyVXlrY0NEaUt0MTR5b3VKeHBxYk9QQUQrNGRhU1Mrc2tFaG9EM0E5?=
 =?utf-8?B?U04vc21lWitwc1p5RWJCYUFTL2cwb05nTkFleTM0ejBPTFJETG1taktyR3ZJ?=
 =?utf-8?B?N0tPbHZKTTNqNkpDcHVSYWtnejlFWkVZdWJwdEVjZHpRVG10SDRvRDhKeVho?=
 =?utf-8?B?dXlKSnhTZnFFV1BKc0UvN1ZEbnNkYnhhbmdRY1dSekxDbHJIRjNmZEU0YnFS?=
 =?utf-8?B?Q3JhSUNub2hHcmNFNHhjT3R4eitOQVRNQS8va3dWcUVzYmQxYmdDZ2l5dHl0?=
 =?utf-8?B?TW9jQTFsK1VDQkp0Y0d3VlVucmVyc3Z3TUxnV3VwK1VJUDJBWmhTSkFSdmlN?=
 =?utf-8?B?aXk1M2poOGlYMVJlcFVkVko0cW9xYUVzVUJja3BvOEJwWnRudXZtbTBaWkVs?=
 =?utf-8?B?bzBNV0lESHR3aXZYWVFrRTVFajIvMW82R1ZwWFpGMmcwSml6c3l6VGhjaElh?=
 =?utf-8?B?Q3ZqUk5NVGMycmNEc3RzNngxa0lsZE1WL0VkSElCREhtczhuTDR3MlkvVS9P?=
 =?utf-8?B?RFBHNEdSYldjMWRUUHh0TjA2bzlFRFZVQzYwYW9Pdk90Z2hidVFsVEt3alRV?=
 =?utf-8?B?anJYOC9MbisyM3NMamsrRlVLbkxJK0liVDhXcnZvUkFRZnZWYXpnY01wMFFZ?=
 =?utf-8?B?VkhHTHJZaEdFZ2pYUk9jeVhZbUxKTjJzaUl2QWN5Rm1IWjNPUTVpa3Y4OVpP?=
 =?utf-8?B?NFJHTWJ1THRTWGZ1R3FKejdNb2VQL1ZBNnhkbFNaN3RqUm8vK3hGZ3NtVzJZ?=
 =?utf-8?B?WGkxNnk1RG5OQjhWS3pucVRJTTZtSmZyMEZiV0NLdkx4WUc4c1Y5QXpid2tz?=
 =?utf-8?B?VWtnM3pnYWwwSmVnVWY0UFh0amQzSFZTOG5ZMFJmOXR1Y215ODVUZjhFb3Q4?=
 =?utf-8?B?WmhuWEpSODI5eXdmWGhhTnhZMDhSN1ZsYXZBa3Z2ekppZ0RDZFVvWVl6YUpY?=
 =?utf-8?B?UURjZXVJMnNNZHUvakV1Tk5GVDhJSHdqRGRnVDY4QlVNTnhrQ2JHcnIzbUlZ?=
 =?utf-8?B?MzMyQkFqSEE1TEpLcGh5Y3c1Y1lFd1lLa0RaRHZ3bFBFcHRNUy9sUkhwRzI1?=
 =?utf-8?B?NWU0WWl4MW1DNVNLY3NQYXRSQzdEVTcwZTIwTG92SzZaS2xzQ0ZWVitaT1Nz?=
 =?utf-8?B?Slh4czByNXRuRWhmZU1IeTFYdHdlZm45WTRoZ1ZUZzNFQmJqd09iOGRLMHQv?=
 =?utf-8?B?R2tPZXFnQldwT0pvQlJZODJhS3cwY1JUQ1dpdEs4Y094RXByRkc3eFFFbzF6?=
 =?utf-8?Q?nUHgc+PID6k6JyFB+QOmki1Vv?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 877f6488-8dfd-4865-08b0-08dadbed9e0f
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2022 03:04:45.2031
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MkGhORrOmQxh/6ufjk390LcaohIdzNhk2oDA+9Osal2jylh3ec06E5aydqoYLVjkvihabjHCrJdtsnoMR8zs9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB6919
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

On Sun, 2022-12-11 at 03:57 +0100, Marek Vasut wrote:
> The power-domains property is mandatory on i.MX8M Mini, Nano, Plus.
> Document the property and mark it as required on the aforementioned
> variants of the IP, present in those SoCs.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> To: devicetree@vger.kernel.org
> ---
>  .../devicetree/bindings/display/fsl,lcdif.yaml     | 14
> ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> index 876015a44a1e6..31847efedd8f9 100644
> --- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> +++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> @@ -52,6 +52,9 @@ properties:
>    interrupts:
>      maxItems: 1
>  
> +  power-domains:
> +    maxItems: 1
> +
>    port:
>      $ref: /schemas/graph.yaml#/properties/port
>      description: The LCDIF output port
> @@ -87,6 +90,17 @@ allOf:
>            maxItems: 1
>          clock-names:
>            maxItems: 1
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:

There is a power-domains property in the lcdif node of imx6sl.dtsi, so
care to add '- fsl,imx6sl-lcdif' here too?  The patch subject and
commit message need to be updated correspondingly then. 

Regards,
Liu Ying

> +              - fsl,imx8mm-lcdif
> +              - fsl,imx8mn-lcdif
> +              - fsl,imx8mp-lcdif
> +    then:
> +      required:
> +        - power-domains
>  
>  examples:
>    - |

