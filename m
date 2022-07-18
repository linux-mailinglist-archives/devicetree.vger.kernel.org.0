Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 69C88577F7D
	for <lists+devicetree@lfdr.de>; Mon, 18 Jul 2022 12:18:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234295AbiGRKSx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jul 2022 06:18:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234223AbiGRKSs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jul 2022 06:18:48 -0400
Received: from mx0b-001ae601.pphosted.com (mx0b-001ae601.pphosted.com [67.231.152.168])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1BA01D303
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 03:18:34 -0700 (PDT)
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
        by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 26I7SxkQ019843;
        Mon, 18 Jul 2022 05:18:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=PODMain02222019;
 bh=FcqKSMh01G3bHfXa4jf3Yc87cDilMm6NfbL0ZOGAjVg=;
 b=PoeIVvfeL+hPTz8N/G3c+9bMgIkByVsWINJ5EkWCYgD/h3ucj6YicTqgHXSK6mQ4Ikjq
 gH0iv1gKy0BREXUCW+L3EMb3W06jsDy7Tgt/PiJFF8GNrbGe3WkwGPDB3COuZ58ON6xn
 YKTMuVaaT7+gH/FdcBsft7jTra8EdZq1y0qG4VFgDv1nxWIwDI2k9vPIa6tTijWvqmW9
 K3hbobvZwAXnjqjCl3UOvxKKOfbCO2m8H0mJgo0+M+va55SESu90sRpXfCNjWuNw4cWP
 PJYz32F0qz/KqlS0lF48Vxmay6HNdLj+5zjqwsRs86LezrurQ15LegzbxdsfuUGEIHAh 7g== 
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
        by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3hbsrphr9u-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Mon, 18 Jul 2022 05:18:06 -0500
Received: from ediex01.ad.cirrus.com (198.61.84.80) by ediex02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.9; Mon, 18 Jul
 2022 05:18:04 -0500
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by
 anon-ediex01.ad.cirrus.com (198.61.84.80) with Microsoft SMTP Server id
 15.2.1118.9 via Frontend Transport; Mon, 18 Jul 2022 05:18:04 -0500
Received: from ediswmail.ad.cirrus.com (ediswmail.ad.cirrus.com [198.61.86.93])
        by ediswmail.ad.cirrus.com (Postfix) with ESMTP id A2E89477;
        Mon, 18 Jul 2022 10:18:04 +0000 (UTC)
Date:   Mon, 18 Jul 2022 10:18:04 +0000
From:   Charles Keepax <ckeepax@opensource.cirrus.com>
To:     Zhu Ning <zhuning0077@gmail.com>
CC:     <alsa-devel@alsa-project.org>, <devicetree@vger.kernel.org>,
        <pierre-louis.bossart@linux.intel.com>, <tiwai@suse.com>,
        <broonie@kernel.org>, Zhu Ning <zhuning@everest-semi.com>,
        David Yang <yangxiaohua@everest-semi.com>
Subject: Re: [PATCH v1 1/2] ASoC: codecs: add support for ES8326
Message-ID: <20220718101804.GA106016@ediswmail.ad.cirrus.com>
References: <20220718053237.20146-1-zhuning0077@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220718053237.20146-1-zhuning0077@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Proofpoint-ORIG-GUID: JlbEtdTyCZBR9pJpxpkYU0Urvxh6om4F
X-Proofpoint-GUID: JlbEtdTyCZBR9pJpxpkYU0Urvxh6om4F
X-Proofpoint-Spam-Reason: safe
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 18, 2022 at 01:32:36PM +0800, Zhu Ning wrote:
> The ES8326 codec is not compatible with ES8316 and requires a dedicated driver.
> 
> Signed-off-by: David Yang <yangxiaohua@everest-semi.com>
> Signed-off-by: Zhu Ning <zhuning@everest-semi.com>
> 
> -----
> +static const struct snd_soc_component_driver soc_component_dev_es8326 = {
> +	.probe = es8326_probe,
> +	.remove = es8326_remove,
> +	.resume = es8326_resume,
> +	.suspend = es8326_suspend,
> +	.set_bias_level = es8326_set_bias_level,
> +	.set_jack = es8326_set_jack,
> +
> +	.dapm_widgets = es8326_dapm_widgets,
> +	.num_dapm_widgets = ARRAY_SIZE(es8326_dapm_widgets),
> +	.dapm_routes = es8326_dapm_routes,
> +	.num_dapm_routes = ARRAY_SIZE(es8326_dapm_routes),
> +	.controls = es8326_snd_controls,
> +	.num_controls = ARRAY_SIZE(es8326_snd_controls),
> +};

As this device sits behind an I2S link you need the endianness
flag here to specify that the endian will be lost over the bus.

Thanks,
Charles
