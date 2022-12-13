Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B2FFD64B65E
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 14:36:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235220AbiLMNgG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 08:36:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235706AbiLMNfh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 08:35:37 -0500
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (mail-db5eur01on2047.outbound.protection.outlook.com [40.107.15.47])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7177205E0
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 05:35:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TMfFHM//h5GGm2gRCXPZvMZXohwmdQ86OJBmEJVBtxzYNWRwAuQGDB7iLy7LOi54zRFWZqwHN5P50ozZCX0UwCwVuANZBKq2Fp+Ij/1nO/Oq+6OipdPJsB0LWZMl9YbHhiVfeo6fGWmF31aYasEoIDE9M2kOLy/6+I/6wDwjRxmLRLLvXQEfGhx9NqvNG2XqtMDypCmagaF47P2dGy8jIDHDiIp2EmB13hknIxkGD9SB2rlRiC96/OIHMfctlXXKak2VV7UPPfPzXkwF2/hxzBzbGJO3lAZFVhCUUNPZ0PjPfLaYH8mKFZ0K3ketGqnoB1TZkaceASKZxP6P4UT0Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jqXHcpv5u7TNMna5g7whpXkqpEZ/Xyw55PXjwUHimEo=;
 b=cLzH6BgePylNe8OUj7FqhvJRLfUEtDL6146jUBOLg4iMUfNBWW/g0IrFuSnUnFwXqe7GT443SMG1LGjeq/2ybPR4hUfkT6nd7sD0EO/2o+iD5q5qNQyD9jAeay3Cy65uGUkjmarLjO9CoRDDBwaeDE1AS75hAopKsH5B1KILQhhqVsGwhUybqo301mkxSMiwlHdHG4qXko2vj095t7M6OQv7Y0f6fsMuRs269eJrvzHiSASfE5dgayIOG5a+C4zw6/VhaQ6ifaJahLPX07q0JJwab2n8WGuGhSCPdnS3bWyPuLxyEqsj5lO5gNo+ts8K228TPZKwhUrXB//sZWxutA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jqXHcpv5u7TNMna5g7whpXkqpEZ/Xyw55PXjwUHimEo=;
 b=VHA048y0YVEa0Uat85wOfJ8hht+h8FpolSi5qIzleaUx2x4heSDP5ERBmyho6KxL5C4D/cWsQ64bheq2e1uUHi6bXU/O+GQ5lltgMDcpV+l74XtOSXE1MswURwUpE4ZK06YNHwGSNwSrSEGix0hqxbnjg45U+CHLqjuwdksBCeM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by AM9PR04MB7524.eurprd04.prod.outlook.com (2603:10a6:20b:286::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.10; Tue, 13 Dec
 2022 13:35:20 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::ce5b:991d:5f5e:388]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::ce5b:991d:5f5e:388%8]) with mapi id 15.20.5880.019; Tue, 13 Dec 2022
 13:35:20 +0000
Message-ID: <2dc549383f16c186591404f247c9c93d20be7ad8.camel@nxp.com>
Subject: Re: [PATCH v5] dt-bindings: mxsfb: Document i.MX8M/i.MX6SX/i.MX6SL
 power-domains property
From:   Liu Ying <victor.liu@nxp.com>
To:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org
Cc:     Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org
Date:   Tue, 13 Dec 2022 21:34:43 +0800
In-Reply-To: <20221213132006.6446-1-marex@denx.de>
References: <20221213132006.6446-1-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SG2PR01CA0129.apcprd01.prod.exchangelabs.com
 (2603:1096:4:40::33) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM7PR04MB7046:EE_|AM9PR04MB7524:EE_
X-MS-Office365-Filtering-Correlation-Id: 21f2c81f-16ac-42b1-da1a-08dadd0ee0e9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: B1ZIOyht5yfbglsiwQK5H4IUrSayBAqm0vgXTdYKwDDg4KKLR9nobQG4S/NzfGeirQoMF+cypudFga1nn99u6GF4zPxo7wjqGGdUNdnXFzWlMawSWVYdF2cLfIBvuwcnh7TpNJ8SvNCB0SohuvTNY6/IgwEcCM0diifIPnxsjlkW+9d4M6OREjbcFMuZ/KM4pyOTZ8x8Su/RKFQvpemuRwh8+LiZeAl5W2pKpE3H4jvTyIJo2AcMwsb641kfKFDzu9Ina9W98pOWsJFy+Ihe8K3WYymXtRlCcmp+91GnoQMhvGZiRZHSgCTT1uWPTO8Il0gxALVmAxc+BG+5b+iZMKgnUxWGPNBic6nkLiKxw3+hHH7H0TnYO67A5kQcKneA5FbvjLZmcqzBBBmxy3PedukpYNB5top3sSg+EGHDwuHpK8gOvH8zbfCKjzF3v2cRZsPQOAqTIukSRDRzvHBSBiFOInSY0blvnKtxqO2p+4OuCQsxGPwalLcO/SbHx4OXl1pkR6DC+nxKa/ttI2JcmomifDUCgQ0DN76BhAAbX8YQjsH9Cih1edR1+SQU0G6GVqTkDQ1BqsvEvjrVdurOnC8UG37aYQF5E/q2OtT/6BSu028izkUL3bypJ+aKti0sJFmLNmIJYgzA5lA7VJb8Q4m9TznF0RyYgPctUwSDIpQmZq3uI5c24yf2ladjDVn63IA7vYci6rAVQrKlNetzlVG+PTsAAgmW5hMlVq9otvc=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(396003)(136003)(346002)(376002)(39860400002)(451199015)(26005)(6512007)(6666004)(52116002)(6506007)(6486002)(478600001)(186003)(41300700001)(66946007)(66556008)(8936002)(2616005)(8676002)(66476007)(4326008)(5660300002)(2906002)(83380400001)(4001150100001)(38100700002)(38350700002)(86362001)(54906003)(316002)(36756003)(99106002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RDRNdUZzYjdQeXIzSEttdnNzaVRCakt6ZVI2dmprZkViUzJXRmNHUG9LM1pi?=
 =?utf-8?B?ck1xT2h6NTdtYlk4aDd4ZElYUG95c2l4S081K1lZb2lPZjlQL0VQN3hoRFBU?=
 =?utf-8?B?UjBSTUxHbjg2aHZmMVBwSVVrUVBBQXcvTkRMQ2VTNnpHdkY0SEc2bFQ1ajVV?=
 =?utf-8?B?UHRkY1pMRTY0alJ6NlBFYktkYll2YTVGUlJiWEdQelNWWElOSElsazlEUFVR?=
 =?utf-8?B?aHhNV3JmVTFGU04yaCs3alcvZVp3WUVSMyswcEVJbzg1WDlNR05RN3A0N1Z5?=
 =?utf-8?B?T3RWaFBQZDQrWWlJNXFMejF5NGs2bEpyZmc2dVJuZUQxT2hBOXF3Y2lrNnQr?=
 =?utf-8?B?SHhocjNGUTJsTVR2Q2QxanVaWU9iZDlqUlJkRWwrMlUzeU95WWtkTXhTbFIz?=
 =?utf-8?B?TTJDUnNnU3BlQVh5MHE5L09xcFNLRmVMR0JjdXZjS3FBaDNrOEZqcFczMWVG?=
 =?utf-8?B?eHF0Yyt0RStVaGNRS1o0WlNOSlFwd0ZOSk9Jc29MLzEwUnBEZjZDRzhCRytP?=
 =?utf-8?B?V0c0dHJuYkE3alZFWDRDb2xqRGx0YmZ2OFE0OXE4b05vVjNxWkVRUDM4a3A2?=
 =?utf-8?B?aE03UUtkM09hakdZeFE3VWpaaTZ1N1VCQlZGUnlhQWtKYWhVVUJ3RDNRTDZG?=
 =?utf-8?B?VGw1ODdNdkwrM0V3d1dSNStUOHVtUFRsaHNMYituQzFiaWw2NjBManpzSGFZ?=
 =?utf-8?B?YUViaEFUbUIwN3FIOVlhY1Q1UGc5WHFpQ29JUEhzYmR0NzV6Z1ppNVJNWEda?=
 =?utf-8?B?ekJhamdaN1dnOHc0Z1NpckpCc2lZMktOY0lBVUxIbXBrTzgrSUNteVFndk45?=
 =?utf-8?B?SFZ2ODFZRlNYWElqb04zd2p1Vk84bWJnbEorY1R1Z2xWUDROQmdLMlp5OHRm?=
 =?utf-8?B?ZWF4U0lTaXYvekNJMmMxMjc5T2hXZFJGa2Nlem5Oa0N3eTEwc1FGdEFLVFln?=
 =?utf-8?B?ZjRDQVArUVRRTTVsWC9uQmY0K3YzQzFKSFEyajBvWG4rUm9kNHR0NVo2NmRh?=
 =?utf-8?B?MGI0c0N6cUE2RnNuYkZaK0RXT0loVHRHYjNjNGpUNzJ2OS9RWkdmR2xqN3py?=
 =?utf-8?B?aWdmeU5nbndSbmdJaGt1NzNaQ1RPSkRUbHR2Y0VvdGc0U1AzRVg5NzBWeTI1?=
 =?utf-8?B?MEhPbmc4Vzd6dms3QW9sZTU0RjgxRytzekR1UDY1ejZPOXd4SFk2dlNRTisr?=
 =?utf-8?B?aGNNb2RMdkVLUjlKM2VoNFhpNkRnazVqYlNjSkJYSC8yN1lwTEsxT2tFWEd3?=
 =?utf-8?B?SlMyTmVaeFQ5a0FCVTFWOU1EUWZrNndpVFdubWdBVTY0aCtXS25taHB2MnRw?=
 =?utf-8?B?K1Y5VmtrZDg4cDcra3VUR1I1eGNTR3MzM0x3bGZrSG1rTElweWV0S1g0WFpS?=
 =?utf-8?B?VkpsU2U3Qm4yVTJhOEFMbWZHZEdIcEl1NDN4S09neE55QkkzQ0pEaE04NnJU?=
 =?utf-8?B?VFpaZ3hwVjFid1BBdHdOazlNVmVyRUVJRndhclB0aVdWMzBKUmdVUU1JOGd1?=
 =?utf-8?B?N1BGeERnSWswdGJ3MnlIdDNDYmFuSmJCUXRyK3hEVGZSNWpxcmVnWlpLaS9L?=
 =?utf-8?B?eHFwWkFDUVFNM2R1a3FJaTRYVzhaMmtQcUFDVVNKUWtoTU9LeW9rNDVEQkpz?=
 =?utf-8?B?T05VbTl5Sk9Qa3ZWaklLQ3FzZTdjMHNIbU9yRVVhYno0bE5RclpRZXhWOEpZ?=
 =?utf-8?B?ekhNQy85WjltdHpSVGhHYUxqS0txV3BxTG5MMXk3c2x3ZG1PQVZOQ1ZKQmJO?=
 =?utf-8?B?cXZ0dEM0SUNsbE84NXBVVkRBREkva1FENU1TUFQ2ZkFXL3JzS0lwbkJoYnBJ?=
 =?utf-8?B?UFQyRVM0RTVCbUZDVG9SVHBhWVJpb2xQU0hHbTdDeVhsbTd1QnhXeE1CaEFi?=
 =?utf-8?B?WnhxM0Jwb2lxOG5UU2QzcTBNRkZhMHAzbDBuSGdPOVlsTkkrbFlidmJwT2tG?=
 =?utf-8?B?d0FITVlnTk9qWU04U0U1K3FrUERSZTB6cXVBb1RaYk84QjZyc0VoTjNCVHJv?=
 =?utf-8?B?Z0RYU211K3RydW9nSGdJcytlWWZSb09VZ2srYThOTkxQMGNtY0dFTmJWdldY?=
 =?utf-8?B?TmdRaHpwVFFzWDZwSlExOFRzakRZbUswb05ZbkdjUGQyUzJlS2RPWFdZczZx?=
 =?utf-8?Q?bBNRJ0wXaWJg4dtiV/lI2dHLr?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21f2c81f-16ac-42b1-da1a-08dadd0ee0e9
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Dec 2022 13:35:20.1705
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LRlamClRi+P8hBCK+dOqJteg2Y3/HDTjRoJL3fr4WpU4EbkAn8Eexn6KTc7qEkosr80azNMeFgdPYHysXBRbzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB7524
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 2022-12-13 at 14:20 +0100, Marek Vasut wrote:
> The power-domains property is mandatory on i.MX8M Mini, Nano, Plus
> and i.MX6SX, i.MX6SL. Document the property and mark it as required
> on the aforementioned variants of the IP, present in those SoCs.
> 
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
> V3: - Update commit message
>     - Add i.MX6SL
>     - Update example
> V4: - Drop ack from Krzysztof
>     - Rebase on next 20221213 instead of previous 20221208, which now
>       contains power-domains: part of this patch
> V5: - Drop power-domains from MX8MP/MX6SX entry
> ---
>  .../devicetree/bindings/display/fsl,lcdif.yaml    | 15
> ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)

Reviewed-by: Liu Ying <victor.liu@nxp.com>

