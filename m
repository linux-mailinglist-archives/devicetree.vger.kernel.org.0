Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 581F26498A7
	for <lists+devicetree@lfdr.de>; Mon, 12 Dec 2022 06:37:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229647AbiLLFhk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Dec 2022 00:37:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229537AbiLLFhj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Dec 2022 00:37:39 -0500
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-vi1eur04on2089.outbound.protection.outlook.com [40.107.8.89])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BF92CD
        for <devicetree@vger.kernel.org>; Sun, 11 Dec 2022 21:37:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N6DHvBg5Hiv4leSKQvIxLYxmfx+rSzilSy+9RdD22wKI0KVYYFomLuKB2kYbbcPKF6W9rYVAXp0Atzlvbhj3mIJR1Rwum7OziGlCXdtMWJdugtCMy27US3kA8QP090c0yBffA6GPoqUy+o2lK9Gake6nsFKyzgDq3XcuCay8bs4LesDrbA/N05/rryC4M2WkuqyUC7K+lhQOSpC5oHlIasKcTDzrAH9lxItxFcSzGn4e8Ey8Pcw+G3IAuUg4SYRABjaK/QNkmXnHX8eijQKOfIVLhWPxHD2DiDWpT1VmHhuvmSoUUefQ6GnuquOgUnN0w0hacim0Rp/Weh749mw/aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/4sSgYz40KfnX+gVjs37zLxwV94kAk8NSkBIxaLvh9c=;
 b=SexNLIH3nQm4hXJj1Kx/m466NrT6a+fUQ0GQ2yOkiOE4XBc2Q+93dVOF675nUiil6us2ZTfQqUzJxiGn03j3pK8Djb8/6yr8KhEKy0rQ+QLFc+/P4bNs+KGqkmTlf4CsA05sk9DSGEgmfWofOOrqDvZ2TGy7rnxQR9xSndAGv4YDHb+V/YXmYRSelaihTyjwZb3Gz/ATcBQDa9sxuvXx9jr5Hz3Adoo1JMmiQHWJbYgc8zQWMQFmbsW6JWDyq7pYSP5rxzeRfRskFthBA0GWaXa8yN3tyJHewEZlFBf827+xSHTcC+KehtXSjaCWAUF4m7oueBRRbEtZYlWhkLj3+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/4sSgYz40KfnX+gVjs37zLxwV94kAk8NSkBIxaLvh9c=;
 b=NP5t20/91VIQcAxqvqlDc1cIQWef4QsGxuT1qmPzBfLt8X4hkSWcH4QXdit8SBaRKTB0L8C+0DSJup1LsHFKSytc3oagYPhQIVcqLDpI+kX3KG6e4GhYUOenXwijXFP8IwobnR7+cZ8sOUWvJuOxde9+H1pDAZDJqZ/LsDEblU8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by AS8PR04MB7765.eurprd04.prod.outlook.com (2603:10a6:20b:2ae::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.10; Mon, 12 Dec
 2022 05:37:34 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::ce5b:991d:5f5e:388]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::ce5b:991d:5f5e:388%7]) with mapi id 15.20.5880.019; Mon, 12 Dec 2022
 05:37:34 +0000
Message-ID: <46fd04e5cf355aeb4c8e647f72e4d022a4060a86.camel@nxp.com>
Subject: Re: [PATCH v2] dt-bindings: mxsfb: Document i.MX8M power-domains
 property
From:   Liu Ying <victor.liu@nxp.com>
To:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org
Date:   Mon, 12 Dec 2022 13:37:05 +0800
In-Reply-To: <20221212051451.260336-1-marex@denx.de>
References: <20221212051451.260336-1-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SI2PR06CA0001.apcprd06.prod.outlook.com
 (2603:1096:4:186::21) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM7PR04MB7046:EE_|AS8PR04MB7765:EE_
X-MS-Office365-Filtering-Correlation-Id: c193f87a-b239-4ae3-5ed1-08dadc02f76d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cV7eRoc9w0QWgmffvNIQdYMLIbuUKJoIxW4O371UVHXIfFFC7r0y0WdlkODs/rARYyW/XoYgMEz6IyOaRW/NkR4bgeP84FLQrcWuyiFHJNaefytBVQxivNlkwCSzJWZzIZ61ZfsUsz2x+iP/1wquRI75iLf8foOhe1wDlWSQt60g6rEjHu5Pn80rAGrK58kMiZg1diH11hN8G84Y16t+UOtB3Pvogp07CksUwPV5dOAowXzZwdLSPot9c3PV0iF0QyvCsjwYRgvnij0ADZl+qovSdvd+HzyQmlfkjsmXowV4cX3VvHDx+dNO/OTMfYQ3OTfZfSxdojqVw6u+nm7Wu+F+2a+o/Uk09wZjrIK7kWCiOdR1W+BA7puRwgzoSFyP1d4d5Iw6CjW7KmsgcMwDmnS9vdx1Va0XjQ6k5oI95yjDOAtdbMcg7AsjBUEePJXiniq2fibskiT8GlPfLQYo/PK/r96igFXfTb6eUznhU0on68mTwpoLWpA9CaR6wqClSdYT9yArFIUVxIKcIFuZB9Ya//fU7o9RzsuxlQiL9OhLwxO+JKfJc5q5Ub+KTBHtoMRH5aSy7pIM1oIIzLVa3tXNpoQMJC6jQ3Btq/11UD2/PuwjJqtudLXD7Aa3jkJ9Rbo9PNPnPqvyecABdClPnE8J8O+Iuz+OfJgDkqxdIs6zeex52rsCYZSen0GcsOc+4ZBcK5/d8urupfvQ8wVSg9vG3iLNgpQ+MhAsCNxdQBY=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(376002)(136003)(39860400002)(346002)(396003)(451199015)(316002)(36756003)(54906003)(83380400001)(52116002)(26005)(6512007)(6486002)(186003)(6666004)(6506007)(86362001)(38100700002)(66476007)(66946007)(4326008)(38350700002)(66556008)(8676002)(41300700001)(4001150100001)(478600001)(2616005)(5660300002)(8936002)(2906002)(99106002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N0FUSHp2TkdZVG10cWFOYUZDMnhqSS9BUm5oQytCR2FXaDYrYlhTM2ZpMmFF?=
 =?utf-8?B?Sjg1SE96NFg3WGdmZ3JxS2pOczZtZlRqbzZVVlZRd1EwOExWaW1BcFJzYld6?=
 =?utf-8?B?emt1SW9JTTgwOFhodWdVaXVXcGorSkNDMzJYaFNiclhjbXFFbytabDRNQ2Vl?=
 =?utf-8?B?ZTFXSCtsQXAxNmF5eE8yelVyTk1UQTZNaTRvdmF5dVhIeGxFenhpaFp0ZDJZ?=
 =?utf-8?B?QVczVk10ZHBlMUxjNHBwbjVBU2krV2pVeEZyNUZXSnZHcTZlQU5GaWIrcW53?=
 =?utf-8?B?QjhHSmZ3R3pNVUJ5UDBwZmo5Yzg5ZHlyUHVka0pFWHFsUzVleTZrZ1Fkb2JR?=
 =?utf-8?B?b3p2ZzNsbFpKbmtpcGxJQWEzOXRMNGhRUFZqd09yb3QxYnZhazFXT2kyWFhW?=
 =?utf-8?B?cHE4SjJESGdJTEFQaWR2R0s4Q1Z6OTBkWUdPaVczVGpEaTRjdEhlMmJxVUFN?=
 =?utf-8?B?WVBjQVp0eDdpdi82TUMyM3pJbU1VUDNOa1Y5TVlHbEloMVFjZEZuSkV0T1ZV?=
 =?utf-8?B?VVFaNWU4c3RmT3BRclBERktIWGNRS0p3L09iUzJlVVMyWlE5b2t2cUFZb2U1?=
 =?utf-8?B?UHRYNEJqZXdvQ014enl4S1RKeURxNUNydjVMU3VFazlwbUREYnpaRk1oVUQ5?=
 =?utf-8?B?YUJUeHBidS9DYXgvTzdkd09xVk1hclR4TW4xQlpyYVN2elFYK0YvZ29oQTRa?=
 =?utf-8?B?MmpXbmFtMnJWQzBlV0l0b3hzZlVrKzM5bU5ocERZTEYwUmZBd2pFYStRU25Y?=
 =?utf-8?B?OGNzVHREbm80VVlCM1NrVDBVdDlkZTJzdW52YTlEM2hHaXRobU1BSmhpT3lV?=
 =?utf-8?B?MkU2NFhpQ3pFcjV5ekluRmppT05uWFE2eVUzTWxoR1A3aXNCS3dUL0VnbHZD?=
 =?utf-8?B?Q1lvakp1VG9WQTdCN3B6dDJSTU1vY1kwTSsyNE1qaDlKRUp3SllnOUcyWFc4?=
 =?utf-8?B?Tm9aWTczTmNXSGVteTNDNzdaVWV6RWRrNllWMWhKWkxTUDVPOWxUL3hXa0ht?=
 =?utf-8?B?NEpJeCtyNTB4ZVpsQ2d0T2dCZjI5TDN4aXg3L3hzMDBTT2Q2UlVDdENYaXVI?=
 =?utf-8?B?aEpoSEt6YkZRblZ2UkJ5Y1VwMmtSOC9ydXR1Z3RzYUNRUFdQc09tVGdLZmEz?=
 =?utf-8?B?eWRyNWwvUlMxRVA1VjFJWkEzM2FmUU0ydC9udTJ6Z0FnNERvWlhrVE01SXVG?=
 =?utf-8?B?SzlEMHFaRGlJNXh4VDcvdGNkY0FCSE91LzNtUkhDV24wSGNlaU85UitQVUZS?=
 =?utf-8?B?dVpiTUNtL2dEdm91L3JlNW4vQmYyUEhNRG56RS8zSXkzMlpvR0FzWUxHUUVq?=
 =?utf-8?B?NUxsNStzRTAxazVqd3RVY0JJaDhieHVCTzV1a0Zzb0UySzlpTHRDWjR0Smtn?=
 =?utf-8?B?ems4aW5IZzVuVmVoMGJUa0xLQ1d5a3EvVEhVRGlJMERMLytMTVlEVDJ6REVZ?=
 =?utf-8?B?V25qYjFwbUROVDYrby92dGd3VkF6M1Y5U0FPekxnUEt0bkJQZ0kydUhGK1JE?=
 =?utf-8?B?RlRPdmtXa01adWtheGZ1bjA3bnlwUXNjWHJ6WkNJa0d2MENBZGhzU3RtVHNC?=
 =?utf-8?B?TUcvUTlBaC9CT3lVOHhiRU1US1NpTVRmQlhPZVVOOFA3ZXRJK0k4UEtuYU0x?=
 =?utf-8?B?YXgzYlFmUVNKOUUra2dta2psb2QyR0hsZ2kvMkFURjdFbE52bGhQLzFJaEp6?=
 =?utf-8?B?OEZHVnkyVFNZa1VzWTdENWt3S0Q3ayt3Q1cyTlhLTGMySU0xUnd6djFJenVF?=
 =?utf-8?B?cFJrT2lIbXF1Lzk1cnRvNkZpMWRiSndJTm10MHVmOUtKWjdaNlhHTllVNmZL?=
 =?utf-8?B?STJyRGFsZmM2MEl6UEZGY0VjWmtRUVFOTDZMa3VzZlEvN0ljeFhpZTZTWFN2?=
 =?utf-8?B?ZU9xdksrZHU5MWg2a05Gb0Zoa2ppT3Npbzdvbk95bGRZUmRyM1lQL3ljQmpU?=
 =?utf-8?B?d1F1OWt6WFkzUExBd1NyQVV5aDJCY3V3UjNPeWZFcTNjSjRzNThQVUVMbVVi?=
 =?utf-8?B?RFB6ZE9WQ05HSnB0WkZmcE02V0V5clQ1Y2pxckZoTVo4ZUNNeFhKOVVjdzJH?=
 =?utf-8?B?WmVmVlFzNXY0eDNrTjNCd1VNMWdia2hFTHdWQWRnenV6YTBNYXArWHNKQVps?=
 =?utf-8?Q?P3ZqPxX2p1+/X7SCwPxS5VSK4?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c193f87a-b239-4ae3-5ed1-08dadc02f76d
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2022 05:37:34.6149
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Cqcx1Ps3/PO+nIlgZqr7kr5fR8sE7Ic3EWNKkY3LApmlRb9zaCpSVzXAYxNa05UCt3G96qBVBEYfxkQT+t6rKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7765
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 2022-12-12 at 06:14 +0100, Marek Vasut wrote:
> The power-domains property is mandatory on i.MX8M Mini, Nano, Plus.
> Document the property and mark it as required on the aforementioned
> variants of the IP, present in those SoCs.

Please mention both i.MX6sl and i.MX6sx SoCs in the patch subject and
commit message.

> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Liu Ying <victor.liu@nxp.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> To: devicetree@vger.kernel.org
> ---
> V2: - Add AB from Krzysztof
>     - Add mx6sx power domain into the list
> ---
>  .../devicetree/bindings/display/fsl,lcdif.yaml    | 15
> +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> index 876015a44a1e6..d51b4e7957f25 100644
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
> @@ -87,6 +90,18 @@ allOf:
>            maxItems: 1
>          clock-names:
>            maxItems: 1
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:

As I mentioned in v1 review comment, please add '- fsl,imx6sl-lcdif'
here too?

> +              - fsl,imx6sx-lcdif
> +              - fsl,imx8mm-lcdif
> +              - fsl,imx8mn-lcdif
> +              - fsl,imx8mp-lcdif
> +    then:
> +      required:
> +        - power-domains

Now that this is required for i.MX6sx LCDIF, the examples needs to be
updated to add the property for i.MX6sx LCDIF node.  Otherwise, 'make
dt_binding_check' would report error I think.

Regards,
Liu Ying

>  
>  examples:
>    - |

