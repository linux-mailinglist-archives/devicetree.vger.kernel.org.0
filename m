Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F49561248F
	for <lists+devicetree@lfdr.de>; Sat, 29 Oct 2022 19:10:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229720AbiJ2RKP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Oct 2022 13:10:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229729AbiJ2RKM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 29 Oct 2022 13:10:12 -0400
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01olkn2024.outbound.protection.outlook.com [40.92.99.24])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B0C765E1
        for <devicetree@vger.kernel.org>; Sat, 29 Oct 2022 10:10:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lc7xJ3tnbSAFziai3G86v18HSEDIKMHkU04UK3wcq1wRRhKYl93DToBeDugjTq4pu0F24XYWWk6EaL4gBaDdFBqhQGOXpGyuHtPrdq9fq5tDSS2PoKlVtKJIsyDZ3WbgJRkw0nOKPvsqFJ9CEazQuVQIM1oZIFGdJ0K5aEabjK9EnJcrtQWYnAzv8TBqlVCRpAEh1bQ0jbJgzL5Yl3aEUA2O4cstBHqiJHkzbjmrgy4aVglXpafns/DK7hSJpirB0ndmoM+ypu+UlXmAXQUpr40QxE3G5Uuolq9dpK+UF0Ysl2MPWbbONP3b5dFb1kW9G8Mn5pgP/ArJjjOSnqL7Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p+B2h6KrqFxICVheFEPGNABrJxhUzLtiV+316ZppzM4=;
 b=Ll50E2+03yRDy6qm98PzFDMmjhkkIYEmDgxpPWRVsK4avtY3eldBm8bTFrO2W0r4q4x9Y12X6DhJKe1Ywq5LqRsWG3Nka/hL+AWQZQSafo7HWInWbtMRxLgK3VJDhZRsKx/BkKMY4bhxCmsQRmrTSTKg8G559B6E+ruPYNbAsf6/iqRBi96XBFPDWIKE+MkhwDf7rPBR+/Vp4vkEvq5M3IIhixOqCtS1372k6mjdS5n1f8hp9fxmAJuwANfAghRZV5tQ45iu2FVXDIjTTEMDRgB5FBq+ioYKnUCRG7EMuJELIc5UOMaFopwHEOrP7PtRLCVXFBOfR8LWfgAMiBQ8Wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p+B2h6KrqFxICVheFEPGNABrJxhUzLtiV+316ZppzM4=;
 b=blxUhMQmoqTW+XSxJRAlAhQoepq7rXUfaWpck2MKFN3NDmuTNxnAB2VC/BFaw60wM2VsLwq94SnI3xvbF01BQyiYZp6IevibxuijG4gfq8Lr5H39T6uh6F5IU6pyrcEkyYrA1XS4rFfsHPdMS/Vnx4jR+XkhCqcceCqQdcFsaNw3FI+IUny1z0wmn2svhjXRlq4WSNnhuS+VmCVgDwonI8ib2cZe7IZ2sR8J2Cq1wFQS49OT8wJsQ0HDkg7s8tKqa2llhbYQ4Vh8CDWZiLkkaUoUCiRjNV3oU4k2+ljhR774SRFpOzQFixsJmYjCSzW8rly78c2FDB/Ue4GX8Q2Yzg==
Received: from OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:1f9::12)
 by OSZP286MB2094.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:16f::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.16; Sat, 29 Oct
 2022 17:10:06 +0000
Received: from OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM
 ([fe80::5c85:eeae:9c31:93fd]) by OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM
 ([fe80::5c85:eeae:9c31:93fd%7]) with mapi id 15.20.5769.016; Sat, 29 Oct 2022
 17:10:06 +0000
From:   Shengyu Qu <wiagn233@outlook.com>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        heiko@sntech.de, michael.riesch@wolfvision.net,
        s.hauer@pengutronix.de, pgwipeout@gmail.com,
        frattaroli.nicolas@gmail.com, frank-w@public-files.de,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Cc:     Shengyu Qu <wiagn233@outlook.com>
Subject: [PATCH RESEND 0/3] arm64: dts: rockchip: Add support for Radxa Wi-Fi/Bluetooth combo module for Rock 3A
Date:   Sun, 30 Oct 2022 01:09:01 +0800
Message-ID: <OS3P286MB2597FFC604F3163D769839A198359@OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-TMN:  [HP9kX4PoTOv1yVcPAikAM0KYNa7i1Uu3]
X-ClientProxiedBy: TY1PR01CA0184.jpnprd01.prod.outlook.com (2603:1096:403::14)
 To OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:1f9::12)
X-Microsoft-Original-Message-ID: <20221029170903.78-1-wiagn233@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS3P286MB2597:EE_|OSZP286MB2094:EE_
X-MS-Office365-Filtering-Correlation-Id: d1d6ff7a-9615-475b-f03a-08dab9d06c89
X-MS-Exchange-SLBlob-MailProps: +bEufbke4JeMXSBvw/BrjT7XaCzxJv7XC618g9pEoba1gvCUiQWAQr95Jp5AlU8pPL+2kEbv8op7ZdZROMH2if3V0xyOk8GJ1J6ERYw1w1rRqehhBuV0McAI6Ex7ppjNEFsVkCAQleESS92hpnnxz8w4Ut7lYhWJddCULsSxeVs0LAYu4vPvSZd2zzM9bs5ZqXI0i42yRfAGio8W8HdCrYUmFpFtx3lVpeyEqQYHsKUQRevfIwYzKB28ABjrxvdzRzxMk/AONqnmoTcmo4eQwOaqlcAHjxgg0EZcFBHqhYq4xXgB2H6BCH8oMZCUsdeZYv1MZIrer0/i832aE4fIRxGyWsXLtpn5ki7qz/Iw/61ngU2A706yIAPyaVROWuEvKCpkUnZqzPq6A7VR8czfVlZp3a6hE+4m+J/dCkSs5Tr7CGlSizkfgp97UiblKxk4ivkeejkmMkawmNrJa/VYMo8gn0KBC10c8oQxMnbQ/C7GW7wD17cQJsUu/1sI5GqIfngTD77mWUAMno4TIsJS7d2HkntUnck7Ta1KWvnQSqs+Z9MJ7D0UuOXGK7OKlOctgyISZKYCVQFOcGiuO3wb+ARI01mZS5QyFFp4UXjq5Tnd6Q4GYiUHJk0u5kTe9ElnkG6W40XgKc4/r8zgIaq7ms9FDKkhafV71omijtdk9jGO6uxbnfmIdE79/eFOClzO98xnjreTx/TtBky4p7JyVal3KXUstKO/2C+KqE6jagx8cW2NMTr8unbERQNSB5qKlR11RaITYk3ppXM/nPiecg==
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YyvaNQpuLOwkb8LCAo2DpdHGyCzb75E5gzfo1jIwGRv8dys5ZfeZvGzWMifC3mEpG0ipcS/Uptrer4MSLrpf7zjOqYFoylS8UnSPKWMz9QbrNZWLyEQELsQE0z07FZEvwuccAz/XWxSLfjzXFRi108ENEwOsRi2AveTwFZPKLkIP7z5GD1lM/dyysj2cLxrIAnu4sGYSp0ajOYHplaz/U1rZTf2IpfTPEGwALMQYBHzD1Xae/oh/CJDbcuWNKZE1yg9q07Fe9kpfWV23H2SFtxiZyvHkivkqF/Bx8S7bzZhIeCpRe6gS7NF5D7009ceBqIiDd2pU+aKyIanejUKFnzrZBto8laVaU7z0VTKDZJrbTzT/BW5bSIJaOO2FHZju7LACjFHAKiTQ2SVIzS7pHg83rhuT/70zMNseNk/O+v7qlb81q+wFxYpWS70Y8VISKHhsrWTWXKMeJupNRC++QhLb8hMiPEWKXYcTAGDJ9UZmF5Ad/AeoHC4/mNY2289MR2zqLYXaHDK6PDi9HycJlWj4pB9L2saDtkl34XHkHLnCl/+pJvsdxsuBkkaBw4/YTkkpxQdz/AaUBFDY5MHbd8hmGzF9v1EORXyfOSSv3clHdsZhOmJrP048WzCF9NogmAogWyXGNrphZrJbTimK8tX7USmOGiDWGnY+61SGb5ODGQ/0bIkZweJ1b6vtKcJY
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TERTKjn84eFYgM7ByVtmVced3ngRgiHgepSFiB3YemxBKGJOy3GT+F1AMmiU?=
 =?us-ascii?Q?379hvFzRFGlq4Xo9aoguIvjHcQPZBjCrVCmYqVaIjXWojBy8KTa6BjngZ7pg?=
 =?us-ascii?Q?Tow6lvTtCHZapB1M08b4GWjadrJ/Asi/FYswObYkMt/Omj7wcyZC9U6s7CrV?=
 =?us-ascii?Q?HOUsHReZW2kh03xSbdnmwBWceTVKLCurhMDBIVMpWsHAMzjcOYMk5tNw95pL?=
 =?us-ascii?Q?Fs9S0f1JCaGRcrRBHV6DFYmtdhzE4xd+3hceUkTGUrJP92Kqh8CGbg6Eg4oe?=
 =?us-ascii?Q?jnrvY+PGQH7SiiLQQ7d2SzE5UOrzA8lWpbzxyPH4MJj3ceiufYXnecC9pOa8?=
 =?us-ascii?Q?wHFI/nfAKI0aFQkyCIn/WrhgFy4NLFE0m6u3wjYSXTxaTwo0cM/m9RzGQtIs?=
 =?us-ascii?Q?HGi3b28vbgtRBD+lV5blcFarVJVxrDfqx1EmAowmmaikT5F/aXV7q4bQ62Zm?=
 =?us-ascii?Q?U6SD54ngfnsZxoIApWO0wkZIx5prOit3fNtjqgFe53dyfnCtSSJoV81tUps2?=
 =?us-ascii?Q?WrXXjEJZiLBu98DJhNK9VztyEea5ReI298vVXJfKd6XgOIHzWD/OE5ydhMpq?=
 =?us-ascii?Q?isNgiukuQi3Uy31sQWGZecw2cPlICWSvwGQj8kwXsRkJLF+xOsi5wYKirR2e?=
 =?us-ascii?Q?GkaMSAnTR0gAPmaX+aMPjoTV0HlMsMQ+IO6ta6lEoxoSiiuoR9UXgDsBWvIN?=
 =?us-ascii?Q?4N2lhgtApZJEolhtV9Umc+6ts8P5rlZmDkSp88vVvOLrkVFuAjWGtmOYjqhx?=
 =?us-ascii?Q?ZTb7UC9ji9qvOvMdKjLq8L/scWbfBgvmfcut5xdJdyzjTf7ahfHJKJ6vVmuC?=
 =?us-ascii?Q?50HfjPLunywU+nfgPoGJmFAP75ttbrS3JJFJKlednAqVZcJRSUQT/pIRCRg6?=
 =?us-ascii?Q?xzoGHRkgf2e+jWuuH8py4/2V6mGToMz4KXJVM4GA8RTCfV8saj+xwTiM91v6?=
 =?us-ascii?Q?5bytt9YIzWEwyEnAGhn8zWhslDQRR4+BC0+JET/rxFWFAdckXRB4ol1pSeMB?=
 =?us-ascii?Q?vmRWqDiJ1ZNK6wWgzuM8LKNwQESaKczpwlQUkC2GSJ6o1lrheiTa1WzKGF1E?=
 =?us-ascii?Q?g7gKUVTUBNV8AdK7ovOOzYtJXHuBdLO0MlfFC9dFOJ6jaoarIVpCHtBZgvVk?=
 =?us-ascii?Q?6gP+aLjQdYuJQTr894PNhnNy0R2HGc+WfBGBIyzHrXeWYx5J4C18wXs/KNGF?=
 =?us-ascii?Q?oRoEO99zcYPiWy7fF5EXT6l5H/Je579zh/OJrA2fS4flXiQgpWnSS+biwYbj?=
 =?us-ascii?Q?W4dSpya1o8uwJfcii0xXCMbbeZal9bsjG2NHnzGizA=3D=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d1d6ff7a-9615-475b-f03a-08dab9d06c89
X-MS-Exchange-CrossTenant-AuthSource: OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2022 17:10:06.2935
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSZP286MB2094
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series of patches adds related nodes that enable Radxa's M.2
E key Wi-Fi/BT combo module. I2S2 is enabled but not used in current
series, waiting for future patches to enable Bluetooth HFP over PCM.

Signed-off-by: Shengyu Qu <wiagn233@outlook.com>

Shengyu Qu (3):
  arm64: dts: rockchip: RK356x: Add I2S2 device node
  arm64: dts: rockchip: Add I2S2 node for RADXA Rock 3A
  arm64: dts: rockchip: Add nodes for SDIO/UART Wi-Fi/Bluetooth modules
    to Radxa Rock 3A

 .../boot/dts/rockchip/rk3568-rock-3a.dts      | 74 +++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 22 ++++++
 2 files changed, 96 insertions(+)

-- 
2.25.1

