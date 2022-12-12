Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70C8D64990F
	for <lists+devicetree@lfdr.de>; Mon, 12 Dec 2022 07:46:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231342AbiLLGqJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Dec 2022 01:46:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231340AbiLLGqI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Dec 2022 01:46:08 -0500
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2057.outbound.protection.outlook.com [40.107.22.57])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F207BC2A
        for <devicetree@vger.kernel.org>; Sun, 11 Dec 2022 22:46:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nTLbK2X9/YAh3ohJRrHmX9mBBcQQuTZJJaqsGAv/EAUq79tz2TI3qXaYLL288MfMkmXitdLiDi8a/hfKlMxe3Xbs0v9fxGQEiGGugr3JVsXxK7H3HhQEqoc91l6eU8GbkL9qEZlwJuZDDqL/YzCcIEZjT0fyOmcA+4zJ2KxidRnFwZW9a+iwRXPFlkPsJGki7qjomzWg/jqzoSq42cLTZLdPzVyMGjWwkefRYjj3lJaAVas7kWkqgnZ1OPwAu3CsoPpTnAJyEGdgnrZ9/XTfeYWzSNGK7HCbDdxKgBvZi5FCNIKvxBKR/wb2WxonOjbFLx9EDjKLiA16c/wOalMfyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=II5Dk13b7fyhsfEmekKL1emMo+G8JXF7z9lzYOtQx5k=;
 b=NaI27PF13jk0dMCAw1t50glxqeMGwvrv7Oncm204yaX4UEtWIAlONCOYWJVs3EsPsv6MabA6ZsXsCnhuAK8RiweAGXMXXV/rYpZYtmzCJbfGGQpDi5eS4FlF20/QhQSr77ZkrY06jGQHGlZCU2JtLLky4SPqL3u7KDoD/j3xbIVe3lo/fBqG/Fzw6xx+gjI8GEv2BGUZI+NaQOfMYe6EGSo0yo1Ti2iymGHYVGrnBN24ek2P570uqvUTjoSn9Tys5SF96MIiEyEAT7U0qe5XujRtrqzPlQMQsEJpvoe6rUSSnpM4sBSetYJT2a1AGteBtgOM/OQK3X79kbGZJNFZmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=II5Dk13b7fyhsfEmekKL1emMo+G8JXF7z9lzYOtQx5k=;
 b=MxpkeXNyxFCzBkYZACMMyP/KtFLHUOPWhrtth9tgLNbsnPgnJmXRh9P0gFcn2e4BD6ZaMSiPmAhGDHjh9YwzzNKXgMXd0h1MQwhuVD6tTiY65JkSZJbSA8p4sy5bBRSfhnJWa3TjawwQg4LPmNRtzCIQqF6f4JZsjWG4wjC0ux8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by PA4PR04MB7917.eurprd04.prod.outlook.com (2603:10a6:102:cd::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.11; Mon, 12 Dec
 2022 06:46:01 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::ce5b:991d:5f5e:388]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::ce5b:991d:5f5e:388%7]) with mapi id 15.20.5880.019; Mon, 12 Dec 2022
 06:46:01 +0000
Message-ID: <fd9c4a08629085787474b0e8cf7bf903ce1bfed7.camel@nxp.com>
Subject: Re: [PATCH v3] dt-bindings: mxsfb: Document i.MX8M/i.MX6SX/i.MX6SL
 power-domains property
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
Date:   Mon, 12 Dec 2022 14:45:23 +0800
In-Reply-To: <20221212055137.270638-1-marex@denx.de>
References: <20221212055137.270638-1-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SG2PR06CA0194.apcprd06.prod.outlook.com (2603:1096:4:1::26)
 To AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM7PR04MB7046:EE_|PA4PR04MB7917:EE_
X-MS-Office365-Filtering-Correlation-Id: 9303128d-87d4-4d8a-91aa-08dadc0c8758
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0Ns7m36ibehFz/rHvMCMfI0zccJd3E5Ss4bxXAtsd7qO/DtBzZspE4CmEXrEC4zL7rf8K6Gd4gz4IRGjNzyprEkUN81nRVRuQ7WbKkus9WEdm7iw317oO38D/lQ6hnQPMaVU1MRkclCV4Rne4GHSSmPTeqgUwWk66ZH5v8FwFDQnh9GsFKnf1ZxNkz7fd5OopNovky7o2sI8pl3xYhMgJ56FrTUsyRJ8EXn6GDmzHoyj5XhiyQqzDAqiyNwCsJuNcJ6SkrZkyze/blSrI9bgZO6irWlW84OVjSJgcluuyHPP+7kGm/7hWlQ19K0W80nAOelkLjHVaa2Ui12Hd6bZtvYadAGd9gFsxGcmRc4gvlbYAbqSH37Pt7KuhYT0eJoWWOsl5d3c24o9MmYPDrw+DAzx82QLs+ROxKY0PrNzJn0kZJJ69ffXzthwchNU6OFcDHOKPV66rV/5tbNGw1d+QF37i68rtYO1dllCdN1rtd2T67Rd870/pWrRRABz0KcoOtEyJsknnt/xzkRMdCBbT4Gp4TMzddibDLL994xE+HKUAl8kqDH70LAoN5Y0sOlsATMQeVc7v9g+4eCLeiG72kT2v15QP9pr04wanFKq3O/iDqUUSL1LbMWD7VRpW5RO4WaFQ+QwhItj2tEkj4+D7+LKY0nr212rM3hKBlxff0s1RAe9gGt5LuE6tjlnkdd91fW+OzXQ43cpaV0w0jjd++HphkBMgPnu1G84Tko0Rts=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(136003)(39860400002)(396003)(346002)(366004)(451199015)(186003)(2616005)(86362001)(6512007)(41300700001)(26005)(6506007)(52116002)(6486002)(478600001)(6666004)(2906002)(316002)(4001150100001)(38100700002)(36756003)(38350700002)(66476007)(54906003)(66556008)(4326008)(83380400001)(66946007)(8676002)(5660300002)(8936002)(99106002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eFgzQnVObzEwK2JsUUU4eERNS3doZ2l0TVQxaWZSV0VzYXUyUnp1dW83ZFZh?=
 =?utf-8?B?dTErQ2psTUZ3ZkkzdkwyVDgzUC9scTBvT0lKaHBKL2ZidHNXaGhHM00zeHpO?=
 =?utf-8?B?Sjl4a0lWY1ZLU3JrcUVQOFlxcDMvRW5pZ2JxUWFRcHBIVTBHMnpDeENtUzU2?=
 =?utf-8?B?QmE2a29zc3BZMDA4SUpBRHlzM2IwWDU2M2FtZHFEeUlMY1hOakFZNDVDMXR3?=
 =?utf-8?B?dW03ZTM2VStoYWVMT251dU1rRkh0VWh2WFZwZHR1cWpWOUUvVnZNSklUTGt1?=
 =?utf-8?B?Qi96YjVaSHh1Z2RBQzFNcmN4V0dTbmxYWG5GQUVNNElzQkdFTiszUmhUK1JV?=
 =?utf-8?B?OFF5OXRLUnFSQ0lKMDVncEJLWUVzWmx3SktuOG1jS3VyWFBoYk51Znh0WmtD?=
 =?utf-8?B?K1U2M0tzR3M0R0pkRVV4Q1IyV1pjOENCZkI0TjAxSjJMd3RhWTVxcDBhSWZK?=
 =?utf-8?B?MTBqVVlWRXBLcG04UVB0UkROakNHblN0S1Z0aXdxZisyZ3hCOGRIb0xOUnVa?=
 =?utf-8?B?VGRydDNkL0NjWmVJOFFUcHZiL3JDNEdwK1g3cWJoMitjQkQxa0V2ekx3aEha?=
 =?utf-8?B?ZGc2dE9KbFVIcUlUZzMvc3dTU2owcnVoZER3aktxeEJoWTZ6RkMwY015elcw?=
 =?utf-8?B?dWxYTlpJOXRCTmlVWDRsa04vT3E2aDdyMVhlNnZSTkhSN0p3RFNGVTVqT21V?=
 =?utf-8?B?WUFkQ3VDZjVJWEcwaWtiVUFlcjF5aU5TYzEwOEdMZXRORkN2djhJeDlUN29y?=
 =?utf-8?B?cmpYTHk0aWtvcVlSSzNWUGJPdlZBdXZyOGNUeC9aZEtDQzlnL3BpWDZqWk1k?=
 =?utf-8?B?d2gyaC9tYnhURTJ6VzBOZVRWRlpuOFFYQmExZHFzWlRtODUzb0daeDg5VjNp?=
 =?utf-8?B?L01CeFVtcXVCc004WkF3a2xETkVUV0I3cE5MQ2N4OEN1aEU4dzB0NmZUQklx?=
 =?utf-8?B?dEJCMGVhNEJNWUM4V3B0K05iRlpYcVhzbzlBNkV6ZUhjaEFoNE1neEp4SlpG?=
 =?utf-8?B?ZXNnc3VqQXJZSHUzaGdoTEx1YmVrMlk5OENwSStqbVJVV0w1MUlodTQ4ZVJR?=
 =?utf-8?B?RVprRG9aTUVZb3cxZS94N1FDREhPZnRYSm4yeEJYS1ByeFpGUVMxMWZMOE1x?=
 =?utf-8?B?U0hZSTREL1NVejE0a09xK2hwYkxCa2FUYTJJQ0VVSUZhRW9sdjMyeVpnQzNy?=
 =?utf-8?B?U2VIT2JUVWVDcHZ0UWE0Y1RXaHVNZ1JwZGZMNW9RNlpnRk1oUFFvSTdZbWVH?=
 =?utf-8?B?OU10V1VuVU5PRS9ybVMxQU9jSkZpNGd6MVZHZkdweTc0ZHladlhJOVFLL0Nx?=
 =?utf-8?B?RmtqMFlOSGtyMS9RWjQxQ2VrTldEZFNENkJQN084UHdZbVF3YTdnd2c1U1l3?=
 =?utf-8?B?YUtjNjZ2azNBVGpIN2pEVkNEUE9IK0tkcXNucVZHU3g0SzFqMmRObzNTVWtV?=
 =?utf-8?B?N2lPRzJYd216T0R5endBekNQeEFMdnB3MUppRU9OeFBuM1diZy9KbGJuL09F?=
 =?utf-8?B?ZzdpM2JZczNFVHd5aWlJemxXWTBQVzVWZHFmVHgxWm41dEo5akgveUJrVkJB?=
 =?utf-8?B?WlJ0TTVSZEtQSmpCczl3Ykd4emlFTXcyTmp0L3c5UmF1eFlYMFBIUy9PcTcr?=
 =?utf-8?B?cjUvVldtM3FFNng0OHc4T1V3UENhZFR5QThZRmFPMCtDQUpwaG93MkRNbGU2?=
 =?utf-8?B?eDc2eFA5TnkvQWdBVUF3WU1wc0VwZ3VuaGFMelZ6WFZHMEtjYnZ6b3lXYVVQ?=
 =?utf-8?B?Qi9Hc0lmMVl6aXIrTTV4bWJPWWNPaWFXa3BnS3plQUxaVHJmUnJYV2pFQ3dQ?=
 =?utf-8?B?d1VKcTJKVjhkbEhoODQ1UWZvQ2cvQi82K3l5ck42TlZLek9vNExod011WTdk?=
 =?utf-8?B?QTJKSTUxUzVJQWVpM0oycHN4bUpsYlBnVVBZcS9yRytJTlM5dXJDaHFoZGxL?=
 =?utf-8?B?Lzkvd3Y4Y24wRlJNbGs0Tk04aDZ3VlIrdzZjR24vK0EyVW9yTVRQakp5Y3dH?=
 =?utf-8?B?bm5aaDNPTGRkT0YyNzJQUGFZVlQ5eWM0REc0WXVmbXNubXcxdHFha09VQlNT?=
 =?utf-8?B?NkhhQlFtanlZS1FIZmg1NzZjcDQ2S0V6TnNyek9NYjBSSERSb0hzSFdZVXpU?=
 =?utf-8?Q?XI8H0f7rfkTgZ1PnTFmVQArrF?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9303128d-87d4-4d8a-91aa-08dadc0c8758
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2022 06:46:01.3512
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q8x3CinEZ15mpqD5C7MAW6wwdHCcH3pHA9MBQ4R9bKpxNiLIDEI82VLfBg5owA+yluk/HS47izXUb7SHTWpJeA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB7917
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 2022-12-12 at 06:51 +0100, Marek Vasut wrote:
> The power-domains property is mandatory on i.MX8M Mini, Nano, Plus
> and i.MX6SX, i.MX6SL. Document the property and mark it as required
> on the aforementioned variants of the IP, present in those SoCs.
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
> V3: - Update commit message
>     - Add i.MX6SL
>     - Update example
> ---
>  .../devicetree/bindings/display/fsl,lcdif.yaml  | 17
> +++++++++++++++++
>  1 file changed, 17 insertions(+)

Reviewed-by: Liu Ying <victor.liu@nxp.com>

