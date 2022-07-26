Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29760580FC3
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 11:21:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237911AbiGZJVj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 05:21:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237961AbiGZJVi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 05:21:38 -0400
Received: from mx0b-001ae601.pphosted.com (mx0b-001ae601.pphosted.com [67.231.152.168])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9F112FFCE
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 02:21:37 -0700 (PDT)
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
        by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 26Q5xlKR018505;
        Tue, 26 Jul 2022 04:21:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=PODMain02222019;
 bh=qL9VQHI6gHzerfDG4MXQcGSbkPxboMLFC/IpYFesMYs=;
 b=DvKXLvHYwJVrQWdSRifJIE9+BxaquQTUgjWEGM4ehWgRIiCW3UjbgI11WN4KxmiiAb3J
 uPaM6tipShonTeEz/Juh+He0WVVPq7mbllDzKqV+XNE4ZzdL9sH9u+/CUE+E69yxHEYn
 lR9LtiuQNIsbq64xnCr2iZzLV2tNhG0dXp2emXXR9sjcTGox8WgGTVldY/ZMgAMBYlhG
 0fF7Y/sGEE9Np13hyKwfqR6IDjTcEnShHkxzYcBTDIf3hz9XOH16YHhRgI9TkaICUoT4
 CZ68TKcg50huLZEAhvRjQ9UsYn+k7XdysYVkz/oQILy9qisdRZNYwVrtdbt5FXN37PB+ Aw== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
        by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3hgddp37sa-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 26 Jul 2022 04:21:00 -0500
Received: from ediex01.ad.cirrus.com (198.61.84.80) by ediex01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.9; Tue, 26 Jul
 2022 04:20:58 -0500
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by
 anon-ediex01.ad.cirrus.com (198.61.84.80) with Microsoft SMTP Server id
 15.2.1118.9 via Frontend Transport; Tue, 26 Jul 2022 04:20:58 -0500
Received: from ediswmail.ad.cirrus.com (ediswmail.ad.cirrus.com [198.61.86.93])
        by ediswmail.ad.cirrus.com (Postfix) with ESMTP id B3D78B06;
        Tue, 26 Jul 2022 09:20:58 +0000 (UTC)
Date:   Tue, 26 Jul 2022 09:20:58 +0000
From:   Charles Keepax <ckeepax@opensource.cirrus.com>
To:     Zhu Ning <zhuning0077@gmail.com>
CC:     <alsa-devel@alsa-project.org>,
        <pierre-louis.bossart@linux.intel.com>, <tiwai@suse.com>,
        <broonie@kernel.org>, <devicetree@vger.kernel.org>,
        <robh@kernel.org>, David Yang <yangxiaohua@everest-semi.com>,
        Zhu Ning <zhuning@everest-semi.com>
Subject: Re: [PATCH v2 1/2] ASoC: codecs: add support for ES8326
Message-ID: <20220726092058.GG92394@ediswmail.ad.cirrus.com>
References: <20220726082505.125267-1-zhuning0077@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220726082505.125267-1-zhuning0077@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Proofpoint-GUID: H_y6NjnjQwwRj69qykbYqBPLToxbXjja
X-Proofpoint-ORIG-GUID: H_y6NjnjQwwRj69qykbYqBPLToxbXjja
X-Proofpoint-Spam-Reason: safe
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 26, 2022 at 04:25:05PM +0800, Zhu Ning wrote:
> The ES8326 codec is not compatible with ES8316 and requires a dedicated driver.
> 
> Signed-off-by: David Yang <yangxiaohua@everest-semi.com>
> Signed-off-by: Zhu Ning <zhuning@everest-semi.com>
> -----
> +static const struct snd_soc_component_driver soc_component_dev_es8326 = {
> +	.probe		= es8326_probe,
> +	.remove		= es8326_remove,
> +	.resume		= es8326_resume,
> +	.suspend	= es8326_suspend,
> +	.set_bias_level = es8326_set_bias_level,
> +	.set_jack	= es8326_set_jack,
> +	.dapm_widgets	= es8326_dapm_widgets,
> +	.num_dapm_widgets	= ARRAY_SIZE(es8326_dapm_widgets),
> +	.dapm_routes		= es8326_dapm_routes,
> +	.num_dapm_routes	= ARRAY_SIZE(es8326_dapm_routes),
> +	.controls		= es8326_snd_controls,
> +	.num_controls		= ARRAY_SIZE(es8326_snd_controls),
> +	.use_pmdown_time	= 1,
> +	.endianness		= 1,
> +	.non_legacy_dai_naming	= 1,

The non_legacy_dai_naming flag has been removed, you will get
this behaviour by default now.

Thanks,
Charles
