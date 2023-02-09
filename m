Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3A0468FC97
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 02:21:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231274AbjBIBV2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Feb 2023 20:21:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230029AbjBIBV1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Feb 2023 20:21:27 -0500
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (mail-tyzapc01on2099.outbound.protection.outlook.com [40.107.117.99])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35943B771
        for <devicetree@vger.kernel.org>; Wed,  8 Feb 2023 17:21:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A7/Qz0uLRZpxwez6VT04Yh9dNg9RikPbaA8XFH3yFpBC3V7aTTfb8pxwUqxUTbR44i0/cVlp86DMx1g/7onOTzUFglv8PIYUBN74HZSME748iYHR2/fRSVaGTBK4zLAVZBm8MYKVcR/p4FU52R/PASFNcf1mq+4Hmh0XLNqEPeNXmOaMgKW8S6elLZCgafTo47bXu1dkD3s1mUI9HaWol+DBPFc+/c8upBSdXvxyTlqrwK9stYaJOLfg0fo8F8sX6Hvb6KPtCGF8JFtukJoZUYmUz3YJx0ecVFO773XHy20bpiwxJeGwhqG0OPhhx51oa+PnRsfzOSqQi6xnrwCLvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xlMZVkB52yD1j+REJKziu6aPXh/q6x2zfoAhk3KCvFg=;
 b=FqDnf/6QnhSgcsEnsJXyxgol5kCgcDFRg0Tp+21Jd3fg91WpHnXUa7ArxvTebhKLOJtwrYIYw6UoDrGeJAdr9XnnDr8YMzEybrmCxc8RxK93lYTeYRkUfSDKmg/crkBXnslFhwAdZKcJ6dt4UjxMPSJ2YH3NVwX10msFFpxXRhQEKx0b+ElHWXerHI424+eIQ9+dTRcQZ9Lzv5C6G4QgiZidgz/5F5QrpfvuXh8lxbVC7Pgk3Wb9KM8pP/4hgnNHZtLefiDXultrefOM1g5LHeip6KLQQuuT5VHGw5b2hOBBiqvc/9GMdER2AFEuuS0XREJAITfW7g3Oi1+iZySRsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xlMZVkB52yD1j+REJKziu6aPXh/q6x2zfoAhk3KCvFg=;
 b=HVHFay9O9j7zg/7XXZSvkbbA0rhfPMKA0Gjk4KYIdyiST47zch49sJKTVCex1cIttbP93KolV3rHW77sT2Iso0+L5x/aJfUr2FW/UhrUBEuXR0Yp9xjocnLmlI8tNWjkmBCk+okMuQZ8t5AVc6c9wiCsRXsElLHiygp4Yizt0V4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com (2603:1096:604:194::10)
 by TYCPR01MB10476.jpnprd01.prod.outlook.com (2603:1096:400:304::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.35; Thu, 9 Feb
 2023 01:21:17 +0000
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::4b75:8d8e:d89a:7860]) by OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::4b75:8d8e:d89a:7860%9]) with mapi id 15.20.6086.018; Thu, 9 Feb 2023
 01:21:17 +0000
Message-ID: <87y1p7bpma.wl-kuninori.morimoto.gx@renesas.com>
From:   Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
To:     Rob Herring <robh@kernel.org>, Mark Brown <broonie@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Linux-DT <devicetree@vger.kernel.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        Geert Uytterhoeven <geert@linux-m68k.org>
Subject: [PATCH v2 0/2] ASoC: dt-bindings: renesas,rsnd.yaml: add R-Car Gen4 support
User-Agent: Wanderlust/2.15.9 Emacs/26.3 Mule/6.0
Content-Type: text/plain; charset=US-ASCII
Date:   Thu, 9 Feb 2023 01:21:17 +0000
X-ClientProxiedBy: TY1PR01CA0200.jpnprd01.prod.outlook.com (2603:1096:403::30)
 To OS3PR01MB8426.jpnprd01.prod.outlook.com (2603:1096:604:194::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS3PR01MB8426:EE_|TYCPR01MB10476:EE_
X-MS-Office365-Filtering-Correlation-Id: aaec620a-d57e-41fd-84c8-08db0a3bf18f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FfaC0uwLep2uaTC/J1Wlm2E9LfgAbUzgfu8HK55zaRMP/92Vrn1Fz9W1Q2EKozlXAJHntVyzl5tXvjT0L6e9JZiPTYNqUlvhVR4tw3g516KDUmFCcSPR2fu5mq1QvYIky3k8Saf9CitPSfX5qBITrs4VTVj5AsixkHSS8IPHDKY33pphf+PvNHzMZ0GzyPjuzUBcQXfwyqMo3CM+qiS3ZIlkisoz4BHQ8TPT01jAd3KjOusOCJ4gNA8i7xJrAXCUD78K3r5g+J6iETG5Fib6FkEBqHGAfVkJ2hRvYR199ZdvVLypsCp61cgIoAI/iOnZnW8WJN9zhqDT/sQ+ZKsMb+I86LRv3tgi+mGxmzGY7KZeDvI7LjEmWxQ/HXcd6IKVOaXOHlylsY53pT9NJakHtdqWU+WUVNzVVfLwC5vn3j7twJOuLPV2ST3Gke+JDBsuqm7AbykEetSGU3nLYXdYwJCkeUl8BQdqJdMEUWmmY0DetvWpxjCgEPKB1BnwgD4ozS26w6vIJQ1qHpRx65+o2aFp5EMz9ojBLuE4psrTKVxVBkZVPuxOSE3oVh7LWCtVFNa8NWJW6YtpPdZDQ9ExDNQ5FIg4LqGN9MXoHD3oYTiBscPnCe9aAZx15dOnhamM5qsVRM/fmVLndEvClGmDFBQ+wUUqWSia2JMlLRKXH4oaN3dubxXmzUz/AQlLk3tI/Wm8FpiH+DyEOEov0DKniS7mXg+BPfDu3AU0z39bw/IkB1z+ABkDQm8tYtUYPVXyvprRBm1oBMOBwjfLdLSeiw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS3PR01MB8426.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(346002)(39860400002)(376002)(366004)(136003)(396003)(451199018)(2906002)(36756003)(8936002)(5660300002)(41300700001)(83380400001)(2616005)(66476007)(66556008)(66946007)(4326008)(316002)(38100700002)(6512007)(86362001)(110136005)(186003)(6506007)(54906003)(478600001)(26005)(6486002)(52116002)(966005)(8676002)(38350700002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?X9yJ2UtP/4KeRFf5ggfFS3KSbfpmV56YzC3zmI/qxiGp0grH2cEfmI7yJWCt?=
 =?us-ascii?Q?qw5OkTSDvVXkoSIUvY9fhHAti6HXABlu34pgX3KsHFXLWwTL8ZNbshwiK5iR?=
 =?us-ascii?Q?tLNh4/N8ddxktUxjbNcWMg+Yx51qtPPyGN/+/WbzRf5MA8oSWN+zA7oN2zzF?=
 =?us-ascii?Q?YZCG8p+xwU8Q/fgi7/F0l95PfDKl9xohVv6SnqRfjfgJHmT8gzAvx8XDJZBg?=
 =?us-ascii?Q?sWzvRuGZuJKL4VrWVcSyDA+S+VPp45gZcsInKu5498Bbj8J0T0M4SmZ1Zw2c?=
 =?us-ascii?Q?CxXcwRLMK9qr7rPiHS5owkKS2LWE4kRGEIIF53t16CHrMZQNMLrmbxhbKfnz?=
 =?us-ascii?Q?N1JTsetY6fhyTaYunahNXNRJFvd8gQZ5WVZWD5GXyOVznBxd60VlmCZaWcWz?=
 =?us-ascii?Q?haBhIqyCGK2EARAhgos4LEtU8xIbBj5ddluIXGDoWFz7P+XTxQ/pyd2hoanU?=
 =?us-ascii?Q?aTfrwJpbq6/2FzR+/HvjLTrMi67viveLRMwMeMgQ6tT3hK+DiZKJtVOASrux?=
 =?us-ascii?Q?YHo3gyXOMLVfdgl6cTVxTqQbOAxVX0oksbMV5bnUOLaCfn79kv7NaWQduzmi?=
 =?us-ascii?Q?04UFlDsc9c6WZ6OrEnpB4A6W6P8voM7Owyy9Se2RHkskSjATOi4n0z4xjrqQ?=
 =?us-ascii?Q?HwdBeMjipvyQiO4QtVM8ls4Qu25PHuWXuRcHs5gLrAGUVgSEvGG02IXpf36c?=
 =?us-ascii?Q?t3KZxeBpYPodK+GCfDfk4+ClikIZpoZLgTUve8ReORJ5DamcRpgvwnU13+UB?=
 =?us-ascii?Q?W6awRMWSS8Fj0galyLBhI899ZXLIOgWwkJFxLlbiuhNd/Jnf6smgw6h0hzu+?=
 =?us-ascii?Q?SKCYtL8Qa/jpF45R2LH/PLhqEEBS7x8LZ0bk9xxxD+CHYoFePW769JWYZMfm?=
 =?us-ascii?Q?YFiadguaX3W082ShpAi5Fb0wYhGjJUZasP/SqUaSXoTIQNx5qhF6UP4P38IL?=
 =?us-ascii?Q?OKtSc5gKyIOS3wIvJryuyxdIcEz3SkxxQiPIHWkf8slYFCJLaSZK7bbMJmcq?=
 =?us-ascii?Q?kGSWBbxJjXanXbGBxJ2AcEG5Y8V/ROEhZ7QmrDm62uk9DL+6z17bNhu1wWEI?=
 =?us-ascii?Q?deiqEsHAZZ4gvcZ5jQKPKhg0COpwcA4e9sOY5nnusOj9mOZCSNp8UgEDQ+oB?=
 =?us-ascii?Q?jPfY6aU6f/yZTAa1f65tPng3eMu7vm0ebhratL1DIwJsFHVNO8ADjxFic7dt?=
 =?us-ascii?Q?t3YIYxGpPsf4IcW5PastomLiEt9te8Gb8tfhTpmklhZv2MOeUN2ysUmjnNWq?=
 =?us-ascii?Q?Gv0jK2KawXb8Zv/n56erXkn6JySLGq5iMFsn/B0PuAmiWCWSfG3LMdnCNfZy?=
 =?us-ascii?Q?rTRKq8/+boXE5N8OOn0MCJZIg22Zq4p180MP67zVurCscGsTAo+5RZqnoZ+N?=
 =?us-ascii?Q?208i9W1RGmOdAynwVhOGeO3Wbl2HS3GPZyCmofxNRrlqNpfNJbdjhshAxkJk?=
 =?us-ascii?Q?s6gHnnTK386U7FwFaDLE2NItBtOy4XyFCksXZC0zG/lEdl4wllIihLLhyc5v?=
 =?us-ascii?Q?UErBwuEy2lb1FVLH8a6qr673qNigtB/WIo7aYoYot53Q30kSqoLkLsFzU/Zt?=
 =?us-ascii?Q?aXqYnI2wiqeNi2Mxh5YnESYM3OjY7v9fAzqyzGO2FmjYk7gWeNrDUgBZH3Et?=
 =?us-ascii?Q?MH1uJIi9AwEAY+LlqtY6mKE=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aaec620a-d57e-41fd-84c8-08db0a3bf18f
X-MS-Exchange-CrossTenant-AuthSource: OS3PR01MB8426.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2023 01:21:17.6372
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /4UMBN8+scF7TOukTF7FpbGBbN4nnxfPc84CXR1WsrWcRWqNwQ8PD5lIrLM8uPpncTZ5rSBTvPXj4DWsgphpAgn/X1H4GE6IDv0IoICct5ElW/yw+bOu8yfkFGghrpv1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB10476
X-Spam-Status: No, score=0.6 required=5.0 tests=AC_FROM_MANY_DOTS,BAYES_00,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Hi Mark, Rob, Krzysztof
Cc Geert

These are v2 of R-Car Gen4 support for Renesas sound driver.

I have posted these patches as [RFC], because the schemas
doesn't work correctly for me under certain conditions.
"required: dmas/dma-names" always hits to "if-then" and
never hits to "else" for some reasons. I'm still not sure why...

But to be very strict, actually, this schemas is not mandatory,
because SSI has PIO transfer mode which doesn't need to have
DMA settings.

This patch-set drops "dmas/dma-names" from SSI for now,
and ignore the issue, but it is *not* a wrong schemas.

v1 -> v2
	- tidyup Subject
	- separate patches (drop "dmas/dma-names", add Gen4 support)
	- minItems -> maxItems
	- more git-logs.

Link: https://lore.kernel.org/all/87zg9vk0ex.wl-kuninori.morimoto.gx@renesas.com/#r
Link: https://lore.kernel.org/all/87r0v2uvm7.wl-kuninori.morimoto.gx@renesas.com/#r
Link: https://lore.kernel.org/all/87r0v1t02h.wl-kuninori.morimoto.gx@renesas.com/#r

Kuninori Morimoto (2):
  ASoC: dt-bindings: renesas,rsnd.yaml: drop "dmas/dma-names" from "rcar_sound,ssi"
  ASoC: dt-bindings: renesas,rsnd.yaml: add R-Car Gen4 support

 .../bindings/sound/renesas,rsnd.yaml          | 82 +++++++++++++++----
 1 file changed, 65 insertions(+), 17 deletions(-)

-- 
2.25.1

