Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7AFFF5F2EA8
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 12:13:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229549AbiJCKNK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 06:13:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229611AbiJCKNJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 06:13:09 -0400
Received: from mx0b-001ae601.pphosted.com (mx0b-001ae601.pphosted.com [67.231.152.168])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BA9914089
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 03:13:08 -0700 (PDT)
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
        by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 2936CCm8000542;
        Mon, 3 Oct 2022 05:12:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=PODMain02222019;
 bh=3pq2w83fAQz6lG7yf/bYiQNWBrKnuniVMi/7oU9hWOA=;
 b=X/q7mn0UK0JNbpErBcYSbo6qSmU9wRixQ7YDTIEunVtmWMiOAG3chSVkGu+xhdJ8iYwH
 d06pfwfBSc3ZPj17dotzWshpEas+WD94/pOc8lCzeFAp85TfeU4VjPZZidWbJ3yMWHCA
 xQcnirFPFwHET0ggof1ma5Geuzzast/e6wwqL6+cAFQkE0OM+sDjRrWoHDJwxVWpTPhh
 Z2G5/aTB2sK/OgMJZgZnkp7JcTvFH5eZNu1McSD95x6prqth8yw5MEntSvN67LzRwGvp
 hsIlcJu26WAQmARnv1GlpvULitpVYhLFKj0Ucf9IkY/UGzPUlupxMTfHHKYjlRpGZwIo BQ== 
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
        by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3jxhyq21tt-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Mon, 03 Oct 2022 05:12:26 -0500
Received: from ediex02.ad.cirrus.com (198.61.84.81) by ediex02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.12; Mon, 3 Oct
 2022 05:12:25 -0500
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by
 anon-ediex02.ad.cirrus.com (198.61.84.81) with Microsoft SMTP Server id
 15.2.1118.12 via Frontend Transport; Mon, 3 Oct 2022 05:12:25 -0500
Received: from ediswmail.ad.cirrus.com (ediswmail.ad.cirrus.com [198.61.86.93])
        by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 68EB115A3;
        Mon,  3 Oct 2022 10:12:25 +0000 (UTC)
Date:   Mon, 3 Oct 2022 10:12:25 +0000
From:   Charles Keepax <ckeepax@opensource.cirrus.com>
To:     Doug Brown <doug@schmorgal.com>
CC:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        <patches@opensource.cirrus.com>, <alsa-devel@alsa-project.org>,
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH v2 3/3] ASoC: codecs: allow WM8961 to be selected by the
 user
Message-ID: <20221003101225.GA92394@ediswmail.ad.cirrus.com>
References: <20221003032414.248326-1-doug@schmorgal.com>
 <20221003032414.248326-4-doug@schmorgal.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221003032414.248326-4-doug@schmorgal.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Proofpoint-GUID: V1-YgdPbklRz4biBRefDHAKPqU6SbQA_
X-Proofpoint-ORIG-GUID: V1-YgdPbklRz4biBRefDHAKPqU6SbQA_
X-Proofpoint-Spam-Reason: safe
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Oct 02, 2022 at 08:24:14PM -0700, Doug Brown wrote:
> Allow the WM8961 driver to be enabled independently now that it is
> usable with devicetree.
> 
> Signed-off-by: Doug Brown <doug@schmorgal.com>
> ---

Acked-by: Charles Keepax <ckeepax@opensource.cirrus.com>

Thanks,
Charles
