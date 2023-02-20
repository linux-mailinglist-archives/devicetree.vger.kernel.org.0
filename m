Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E86BD69C4B7
	for <lists+devicetree@lfdr.de>; Mon, 20 Feb 2023 05:27:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229567AbjBTE1B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Feb 2023 23:27:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229451AbjBTE1A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Feb 2023 23:27:00 -0500
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (mail-he1eur04on2055.outbound.protection.outlook.com [40.107.7.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5454C140
        for <devicetree@vger.kernel.org>; Sun, 19 Feb 2023 20:26:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l6QcCoqr0SOhruxhW+WSEM8j4q4K3dRox8fI3GRy0aj6RTE2Qul4k3BjNlMZvVoNmUzud/sBfQGaJhUWFeZ0rbSENf0m+zTswZcSN6PJAX4UeV16tk+KsW/CmwuQIwqOOalx5oBbI5VLkWxKunqNTdQrnfuLpDQFeCyPiK3aLXhSmxgArpbByQem9+UHEE6rXmpwPyglkoS2COpA3x+FXxiHGY9di/+0u0YUnd55cXpP1POxFL3Hp/dcTSRsCslH5ze4MXhQODDW8ltPkkcik19oBGjQ5IFW0bqa5B58HMsqxmRmBXR+e/w/Y4xgDia8MFvZV7kGt/5+WDwmwDMXOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yR+UvBnCnYVfEke2iHURFc0vVyQ395cVYm2MIjqIlDA=;
 b=gHyFg/T+CgM/0/oGlc3/Ix6taBiBlm0dAyMRbT/5o+HOk12nikKfN0PAa2UmPNStMuNwiWVMZSPRn3FgsezzK111D3WspWmqYNjyDznJAqkyVRXJnMWL0muKR+tL2YY0Zm8MLpNGu5+SQUGrL6XLnooang6qOsQo5q7AwuBtk8ODJ67L95w23G5CYiWq04Od65PHWBA6yVDjed4n7Azv8x1A07/DaCizzacy88gpEvMznYgH/VtjA02O3CACeF44jcizIGCkTVxJln7H/mE857r9iDO4/lrdhsn3XqPArANi8SBOLfpE6EHyZjxfbNnxavXX+0+uic9cS3w6VY11yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yR+UvBnCnYVfEke2iHURFc0vVyQ395cVYm2MIjqIlDA=;
 b=Ix/IXFes6Skjm/K/NU4MhEhdeu2uie8bnom9Mn71GYUYHuHHmjGUd5R7VxvZ/VBCEXQlCqlCsQ1nUQmK2bkQCz+WYZYnqbfvuqALVT4G73OhUCV9OMvzWCFat82FAKa6cbDcxEVU3adt18OwJW3xwC2j713gQnSNvAZZ0wxU8Vg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by AS8PR04MB7704.eurprd04.prod.outlook.com (2603:10a6:20b:296::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.20; Mon, 20 Feb
 2023 04:26:54 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::5725:92ec:f43e:f5fc]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::5725:92ec:f43e:f5fc%8]) with mapi id 15.20.6111.018; Mon, 20 Feb 2023
 04:26:54 +0000
Message-ID: <a514b27e504c09bf42f477f1103b839a62520517.camel@nxp.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: soc: imx8mp-media-blk-ctrl: Align
 block controller example name
From:   Liu Ying <victor.liu@nxp.com>
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Date:   Mon, 20 Feb 2023 12:26:03 +0800
In-Reply-To: <20230220035051.327847-1-marex@denx.de>
References: <20230220035051.327847-1-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1 
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SI2PR04CA0006.apcprd04.prod.outlook.com
 (2603:1096:4:197::13) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM7PR04MB7046:EE_|AS8PR04MB7704:EE_
X-MS-Office365-Filtering-Correlation-Id: ca87bbb9-28fb-4636-b21b-08db12fab1d9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vQXklAE+nucfDkd4v5Q7pB79Wd25h5pZ1tfpo6AI662RjhRzNYNrXNbJOFcE51YpazJRxk9FPvQExGjjDgz8nuzSh9GJgEot18GE9MB/MulNS493+VhOzsAaRCbR0mgkdOinG6rBpqlJA8oIqOB3jiCn3ZN2Ww7zRli8/XGLuWX9Fhd3kjzhgLNESzWOtR2WeE6xoemA7CmiHGJRBx8Xvher/OWVm5+PUCPkkfCTZWWPzzfB7GjpOUpa6jC/rXEpK9JFI//aG49z4iL7fJIICITc0lLGBMrPbrplPnhN7ksr+/O9tCVXRCtZc36vpk6QFwbi/gVSMq3pWrR4nA4ht4jFmde7bfZeXC6dz5hOEsZaQtOHerPDQwi+kGuNm9g8Ag9UAsqlltXr7Fq8+TlWA/ZKv1thTfCE3S3ZLfxtHVbRbeXYdtSRzCUIS5wRKBbN0hNNatk9/e2Ukx1e/pf0O/w1fTiQuxvyiPGKX5mI3iBMw93ItoHJX3TtGBGvt+1PcupUvBpTqdjZJOJW6R41bAn+JLq1IJqAOPYrn3FY9qYl2AC+Q6lezfiHi+sOD9HUQtRrnIwlY+nHmoCdHXC63fULeNBp4vydTJWCD+UpLk4kJA64+f4WL5SkXQ7PKLfm1mOy+g4nIXYSFAkj5pxu2QNdQk5MDv6gTfB3SVyFzrAApYyXfT0FW60U+Q1fXzHRF8k+knU0z20ZWkTAKHow1vDawoPXTSIDdBmBvz171M4=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(136003)(396003)(366004)(376002)(39860400002)(346002)(451199018)(5660300002)(7416002)(86362001)(2906002)(38100700002)(38350700002)(52116002)(6486002)(478600001)(26005)(186003)(6512007)(36756003)(66946007)(54906003)(316002)(66556008)(83380400001)(6506007)(4326008)(41300700001)(8676002)(2616005)(6666004)(66476007)(8936002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cU5zTDYyY294N3lxZ1A0d0dZeUdMUzBoZUFDS3ZOOXc5enFjMUFiVTIzN3Ex?=
 =?utf-8?B?ay9lclROSmFRaE5GWU5jRmt3RDQ2Uzg1dngxakRPckhLWXZQNlVCdjBHU2ps?=
 =?utf-8?B?cnQ3RVJ0ZEtZSEVodWs2alF1c2tFYVVNKzBibE5oUHlzU2VVbTAreHpmOHEv?=
 =?utf-8?B?Qmtlc3dwNFpGZ3dua0V2YmFiaERhYUlJbXIzQm5LWU5uaVg2MXVYdWEyc21F?=
 =?utf-8?B?MS9IdEJqSzM2Mm9XN2YrV0xCaWNPc2tmVUxFNGFES2tlcUluS2RSSy9jMG50?=
 =?utf-8?B?aVpHNzlPVCtQRkw5eWc3djFvOHJKSmRzTzZWZVVhdC9lcEJiNmtmNmU4aWZT?=
 =?utf-8?B?SGRVMVFVMjI0LzRQNk51U1pqL2pOSzhVenR4bEduNHNJODNES3gxZWRHTk5q?=
 =?utf-8?B?a1E0NVdqRmdRMFJnaUxIYWFiT3pRek1VWCtWWjZNdjNXMWRqT25LYkNROGJD?=
 =?utf-8?B?SW1WUHRQTmVCdzJxL0oxUVR0MmQ1Y1F2bzYvVjJmbFVWamhEMU0zT21aZHk0?=
 =?utf-8?B?cm9zVVJiYktGMWxtZnlXdEVFMTRqbi9BV2U3YzVqMDVra2dVTTVKcXdzdWZl?=
 =?utf-8?B?YUMxczBQQzJOa3B4TUM0MzU5MkhMVGRGeGdjWEloUjc0RGNscHlCdlo1UFZJ?=
 =?utf-8?B?NDZydVpOYVJpeEZPYlk1UXp6WXJRYi9NMGFYbWNwS1VBRDFGMTh1eFVzdldk?=
 =?utf-8?B?N1FtV0RxMVJha2JpRG1kQUdZQlVUNTNYTU9Yc2VoK3NGT2x5dDZrK3l4aURJ?=
 =?utf-8?B?TWdlamlodHVidksyV3NPaEgrWlM5dkd5RTRUSWQxUW5PWUxzWTJWekVNNUNl?=
 =?utf-8?B?YWZDV1FDbUJMYUN4ellnY3hGQ1ZrWEg5NTd6YUlwOTBhUldOTWZBTzBuOXB6?=
 =?utf-8?B?VnVKVmlWclk4ZThOV0dRUU1WdmlwdWlyRjI5QU5yQzdrbHhuazFkblZZcEUw?=
 =?utf-8?B?ZmpSa0JmVjMwazFUdVpDNERtd2JQSjZjNGFwQWtoNGdBdEZabXFBVEFVcFRI?=
 =?utf-8?B?L3BGU3NiSFp5aW9kOHh0MU5ENTBhRlJ0UG04QzZWRlI5OUc4VnJJdi9lQ2Vt?=
 =?utf-8?B?ZUNoVEF2SlVYYXBMbnBoSzMwVjlMOUNkTDdVWEFGUk1UR2tWMmowN0tsTlZZ?=
 =?utf-8?B?OXBRUTFkbHliM2xVOE4rRU1VcFdtSzRVQXF4OEw1YzE2NFJMN3N3bld1YmVZ?=
 =?utf-8?B?dTdoWlJNM3lFWEtybEwxZWJaS21NeGFES2JKMHhFRy9LcytLZ0Z6OFd3dUYw?=
 =?utf-8?B?eFRTTGUrYk1hUWVCUCtlYm16dWViWUtWUno2aGNkS2lzUU9DZEJwNCsxaDVt?=
 =?utf-8?B?NGI0KzV0QnVIVHluMUFVRTh5NDRuYkhKL3VIQ3duUHhTY1FmTzFYRXR0Z2t5?=
 =?utf-8?B?a2FOZnVNNmhnekFPb0phSXd3NHJVSzdmMk1LR21Gd2FUVUdMZDBkVWhyRUpU?=
 =?utf-8?B?L012UlR0TVQ4KzFRZlVvdEtlU3VXbkpmM1BJNFhYeEdRWWNTdmRoZXdqbkpp?=
 =?utf-8?B?QTdJMkR1bG1lT3Bja3p2WnJHMzNUZTd6bFRUbVR1WisyajZNZCtIeExINmRM?=
 =?utf-8?B?UERmNllyUHcwTWJORi9BTWc0bW9sbGttWmRiL1lCa0FLMk13bVc1Ly9YRUtr?=
 =?utf-8?B?OWxLZFNBSmxGbytoZit2RzBieEgvRXV2eXlvYkZGdUJMYnREdENlanZHYTB3?=
 =?utf-8?B?c0p3TlZZSWxzekpkbUhldDM5REdSdXY1Y1pDMHhhaUJlVkUrNk1GSDZXT284?=
 =?utf-8?B?MHI4dC9yVTREM2JyTFR0dEZXUU95QmVXaVRBWDlwSUNFRXBWbnZTQmhtcHZj?=
 =?utf-8?B?RGUvTjlzbkNBMGllTWFVcFVHQ0NFaHBDWWdOa1dmZTdkUFk2dWRMSXliaS9M?=
 =?utf-8?B?WjR5OUFqd0daaHEvbWo4ejFzb2hCWFVXcWNSdmR2Tjd4aHZ5WklhQWIydUI1?=
 =?utf-8?B?akI1TU53dlVEWXc5K084clVMWm9xaXNKNURDOFRibVEwRlFvQmhoQlVOVzdJ?=
 =?utf-8?B?T0tGWUFLMUhyMGpoalc5RkRSSzdQczVJbTRDdmpkMlJyWlc0bytyb3M4akJs?=
 =?utf-8?B?K21KcFhSV3dCTit6MFlLK051NEhUdWRuL2FnQ0lMVzJLR2UwQ25zVWc5S0RJ?=
 =?utf-8?Q?HCom+vnsYhI7CgeJaP3YpbL2m?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca87bbb9-28fb-4636-b21b-08db12fab1d9
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2023 04:26:53.9264
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xQBc5+ltnNK04k0NVp/LIOJgyih7yl3ezuUYV9ZP+5HGJIgU2Vl9WCG6/PacB/YUSljiPkx6VMdRAwH+2QMW7A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7704
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 2023-02-20 at 04:50 +0100, Marek Vasut wrote:
> Align the block controller example node name with Linux imx8mp.dtsi .
> No functional change.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Paul Elder <paul.elder@ideasonboard.com>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Richard Cochran <richardcochran@gmail.com>
> Cc: Richard Zhu <hongxing.zhu@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> ---
> V2: Adjust the label too
> ---
>  .../devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml  | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Liu Ying <victor.liu@nxp.com>

