Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BEC82581B64
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 22:56:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239990AbiGZU4k convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Tue, 26 Jul 2022 16:56:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232306AbiGZU4j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 16:56:39 -0400
Received: from de-smtp-delivery-113.mimecast.com (de-smtp-delivery-113.mimecast.com [194.104.109.113])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 680C139B82
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 13:56:38 -0700 (PDT)
Received: from CHE01-GV0-obe.outbound.protection.outlook.com
 (mail-gv0che01lp2042.outbound.protection.outlook.com [104.47.22.42]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 de-mta-17-Pgpa04ycM8aleOhF50p5lg-1; Tue, 26 Jul 2022 22:56:34 +0200
X-MC-Unique: Pgpa04ycM8aleOhF50p5lg-1
Received: from ZRAP278MB0495.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:2e::8) by
 GV0P278MB0433.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:34::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5458.18; Tue, 26 Jul 2022 20:56:33 +0000
Received: from ZRAP278MB0495.CHEP278.PROD.OUTLOOK.COM
 ([fe80::3510:6f55:f14a:380f]) by ZRAP278MB0495.CHEP278.PROD.OUTLOOK.COM
 ([fe80::3510:6f55:f14a:380f%6]) with mapi id 15.20.5458.025; Tue, 26 Jul 2022
 20:56:33 +0000
Date:   Tue, 26 Jul 2022 22:56:32 +0200
From:   Francesco Dolcini <francesco.dolcini@toradex.com>
To:     Shenwei Wang <shenwei.wang@nxp.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>, devicetree@vger.kernel.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v4 2/3] dt-bindings: arm: imx: update fsl.yaml for imx8dxl
Message-ID: <20220726205632.GA5011@francesco-nb.int.toradex.com>
References: <20220726204111.733647-1-shenwei.wang@nxp.com>
 <20220726204111.733647-3-shenwei.wang@nxp.com>
In-Reply-To: <20220726204111.733647-3-shenwei.wang@nxp.com>
X-ClientProxiedBy: ZR0P278CA0037.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:1d::6) To ZRAP278MB0495.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:2e::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6fdd54aa-f313-4305-9698-08da6f495249
X-MS-TrafficTypeDiagnostic: GV0P278MB0433:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0
X-Microsoft-Antispam-Message-Info: 5dnilW/vnS+ExShQOozUy/GFiE7vSvLV9pXpjX5z3N766S+u3D1EkBGH9TACSLcz2tMuk1huPBZUz1WjDoyCoNFimcUkwzkh4Ps9IT7iiyofs2l/bmFfjB+Upf/hZrAfQy0Hi9BIfPLxjcgdAowJ17P7lCaCl7ccI3PDU6dZeBrDF41YywUy6uCCN3Irb2ZjRHWY8cbG62o6+TsaN5EL/BFK+yMkz3l8X06P6qieuJmLuAFb7wPTIXcJLwiQcajCTfBHwFpcSfWqbKCNksltn1JLNrCuEM7oS+ghld6cls/PENyJxwLtjePJYKn4NoyDKhw5D1xx1nT3ZCb28vrBqu39JnronPemvsk4H1IJ5BCNucCXocoeEmWsTYqgCf540vQ7xkds8U5cHDgCgBR44tgqZ10UjqGnSGF6a660R467xecjt/RBlQCjtEPL3Sk8d9w39XbWTNuy7VLhV8QmfNq34tfoL+Q5GAGJLMw3F+ogOeGG/jGt7WUzEhCId7eEYb/bDY7/6+q/o2gXj+/W1oa3iQtOIBqk0ZNu6vabMabn/KJTdVFuIRLm7Z+SFmQOI+ectBo1M5IpkuPCbdW/7uoPf4x/37t8kqcroseWqK0PHeNVsU9M3VpBdqOPv3yAWjXcArD+WkdwZWqFWJ40uORY3rEIlfbXHcIU4A+6vfNbWQdvQnOQ6TKLRTDX+3VqLvo2XHrh4S34Q7OZzfDAW+1B9YHiBQOLAzOIVMvHiRLJPrxUGKWVtpoOjku7ap9FOdmVhxwHlN6lhPfnCMJrf71LR1II67BqmD2DKguScu4=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ZRAP278MB0495.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230016)(4636009)(366004)(396003)(136003)(39850400004)(346002)(376002)(6512007)(8936002)(38100700002)(478600001)(86362001)(44832011)(2906002)(7416002)(41300700001)(5660300002)(52116002)(186003)(66476007)(66946007)(33656002)(8676002)(66556008)(6506007)(6486002)(6916009)(54906003)(316002)(1076003)(4326008)(32563001);DIR:OUT;SFP:1102
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?tOyg0OuaQ1N9fLWUrPM4RfJ+ZvYcp/d2n7NEC3zNC31T9mOyOcKeq3yWnqjd?=
 =?us-ascii?Q?Rj4DvmIzIvrAZeSgES7/R2Ltban45JXotu3fZToMcuykWC2OVnxt4hgG1Y5v?=
 =?us-ascii?Q?YVqzsmhmoXFhKHs7xVkvkw2cPsACXegVS4VH3JvStE/byZmI4lQYYACS1qm2?=
 =?us-ascii?Q?b+9XBHKRZ16NxtVNrNu/5JhT/3eu+LNuaKO/K1ieN1od5ofxiVpl3aSWJNSi?=
 =?us-ascii?Q?n8iakdf8XWYovN9ePgDzGeljoHK7AlqM3q0m0Jil9KlchFkeDEchi6gP05sG?=
 =?us-ascii?Q?enOHFYIprqcEaaZF01B2ah6/+CkduAaanCW4ckZbcnRo2aJhzPUaG7Nf0p2J?=
 =?us-ascii?Q?qjnBTAfAVzDY+k+M89/J7lSdvPvxChdkOdUKVOPmnvXZm41mauuxbBltb74d?=
 =?us-ascii?Q?87XEa7z+IkJqnuLb6UUnYk9gmu7TTizGY2jhD9pHs3/AzxwRti7GrDUP5l3R?=
 =?us-ascii?Q?wYEkEqSAuB8W1sTkm7Tpa4kw7gwvA5eNoNbGhyEBl1vEBrh+63pn68tZA/Es?=
 =?us-ascii?Q?a9mtOexYJYkzvapwZWOhbZDua8nNIOGHN4o9rRRslfzFrCG5Z7LUomms/sZm?=
 =?us-ascii?Q?gHuLUk+vQI0tWlNc/ctXR1h5Cgo9uIiTdYaRfBu+Eduw3YuK24+EIb74r9XZ?=
 =?us-ascii?Q?GUAuK8zMlqrEUuL4SDMGLx9eKklbIgGBJgz9QzrU6E1OBlKpwAx90nczGDe8?=
 =?us-ascii?Q?eJKkS2U/1aMiEt/nTZIXdTdtfVO913w1faZkKsFtV6H/nthXvkWRf7LG07S8?=
 =?us-ascii?Q?wW2sL1e2MGntJGC3kFyDceUr2zTZMH31IfHgQwPDs2agZ7rdEQ8i5dMefCuf?=
 =?us-ascii?Q?qDF6QXoI+4Wj3xxwHREz630D85euMfxEDDzt+2qXr9vFdo11TVKzjMVkF/ii?=
 =?us-ascii?Q?kNVq5ZYsZHIpKbgB8UNw5lgAT0Z3a0ketAK5sUPYUXF5xFrJwlN9N4FEjlNa?=
 =?us-ascii?Q?oDPn9wBtcQNyftoINaXITXayAULVPp+FTMZCUi28WhkihIB32bfyw5Efy7by?=
 =?us-ascii?Q?Lm9K3JgO2Njipal00yN0eRWtS2K1L+0zub0DyPc7+vN6knbXYWvUka/PwNeG?=
 =?us-ascii?Q?gq1z0oSDxW1V4kXIybM1reYjO6B1ECj59+zMt5xyofKqLqUA/7el3UxPbf6H?=
 =?us-ascii?Q?xVWUCT29r4asb9XEiempv8l3EO2v79mDWj9aRBySdhNCR2aj9teicy9EoFun?=
 =?us-ascii?Q?ud/lpehpEmdaACezr9RSFo2Ih5CYr+2I6yUVTo2gHViAw0nIG8V4eviRCyDG?=
 =?us-ascii?Q?57ocYitnV1uGzylGimNXSjO4pIhCGzmBMg4MysTv8IaIt1Up7yDbPBvYrfJ8?=
 =?us-ascii?Q?+eh6omZDF7UWFjR8vA8bY6l938txITSLv5Q/Zl3hcBWMznfZ+p6qPNSBxnKs?=
 =?us-ascii?Q?VZsTdwQORL2qkGbkhe2JYIPXgA50B9o0ppZThMNBvMHNUnrrkCXx+vfB/IWV?=
 =?us-ascii?Q?00+FkESs7Gpc3sXASQgu44QS1dk53gGe+R9dcz21G2p+3oFG4dmSsAP+125i?=
 =?us-ascii?Q?a3M89u359BKSw8z2oWWyr7KvInNtzK7t+nCMnAWam+1LPrPuMWXNDGEgqlL7?=
 =?us-ascii?Q?xtJCennH5hcWZ8/GmdaOgrF+xh+ISxJBYfcW+ryl62tlfhrNECWo7a7fLbXE?=
 =?us-ascii?Q?JMNIyQhYs+4XWcUnmg1kzkbT0dKySv5omRVSfwjb0ZZTkK6loAeGzzCSgXe4?=
 =?us-ascii?Q?f+NFxA=3D=3D?=
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6fdd54aa-f313-4305-9698-08da6f495249
X-MS-Exchange-CrossTenant-AuthSource: ZRAP278MB0495.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jul 2022 20:56:33.1290
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Fu+t6urvR4ax3xNu+z+U2zHFqw2wu6vXp55ybDp0RcKpsOkxAFlLP3K3Gl2ROZ8xU/56z+CGwngy1KiwWHjxT7/phRLUecDnfSq6LqFBb0U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV0P278MB0433
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: toradex.com
Content-Type: text/plain; charset=WINDOWS-1252
Content-Disposition: inline
Content-Transfer-Encoding: 8BIT
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 26, 2022 at 03:41:10PM -0500, Shenwei Wang wrote:
> i.MX8DXL is a device targeting the automotive and industrial market
> segments. The chip is designed to achieve both high performance and
> low power consumption. It has a dual (2x) Cortex-A35 processor.
> 
> Signed-off-by: Shenwei Wang <shenwei.wang@nxp.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index 7431579ab0e85..26bef585b97aa 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -1034,6 +1034,12 @@ properties:
>                - toradex,colibri-imx8x     # Colibri iMX8X Modules
>            - const: fsl,imx8qxp
>  
> +      - description: i.MX8DXL based Boards
> +        items:
> +          - enum:
> +              - fsl,imx8dxl-evk           # i.MX8QXP EVK Board
> +          - const: fsl,imx8dxl
> +

Wrong board name in the comment? i.MX8DXL EVK Board?

