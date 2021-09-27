Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C91D34191CA
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 11:49:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233698AbhI0Jv3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 05:51:29 -0400
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25]:58892 "EHLO
        mx0b-001ae601.pphosted.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S233680AbhI0Jv3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Sep 2021 05:51:29 -0400
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
        by mx0a-001ae601.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 18R5w8Tw023123;
        Mon, 27 Sep 2021 04:49:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=PODMain02222019;
 bh=pOBThfl8krBPbYHuGaRhDAIksQ2f9g1tQS1+l5OEcLE=;
 b=od+VUAW36mZpuzes8lKpkLbaBRWtmuXLghCyd1h67OAu1U/KNk4rWbNATfT23HIm/16Z
 V0rgfztish+TuzaXzb4QvCucUGeJ/zqUD0dbKZAnVandFMvBpArDVA0xph0s1oE1dqI4
 oyZJCPswAyRRZVoagsFXq/XdJh0AsDynlYMlaIRAY9Glz4HBcFVho7Ukbtw6ypDpi3pH
 Jt7Ti648LSY3Ryx7EC9kkM+Pr1gWKP9vE9MzcEtA7PcUScsiSKFYm8aS/MoOIM00LQt1
 fUOsfXRxEJ53R5RsQprg4leh2EC/gsTITu2V2qJCr9w42BDdLv4w3baWcAtLTouRTdf/ Hg== 
Received: from ediex02.ad.cirrus.com ([87.246.76.36])
        by mx0a-001ae601.pphosted.com with ESMTP id 3batd20q8r-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
        Mon, 27 Sep 2021 04:49:37 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.12; Mon, 27 Sep
 2021 10:49:35 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2242.12 via Frontend
 Transport; Mon, 27 Sep 2021 10:49:35 +0100
Received: from ediswmail.ad.cirrus.com (ediswmail.ad.cirrus.com [198.61.86.93])
        by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 43E09B12;
        Mon, 27 Sep 2021 09:49:35 +0000 (UTC)
Date:   Mon, 27 Sep 2021 09:49:35 +0000
From:   Charles Keepax <ckeepax@opensource.cirrus.com>
To:     Geert Uytterhoeven <geert+renesas@glider.be>
CC:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Maxime Ripard <maxime@cerno.tech>,
        <patches@opensource.cirrus.com>, <alsa-devel@alsa-project.org>,
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH] ASoC: dt-bindings: wlf,wm8978: Fix I2C address in example
Message-ID: <20210927094935.GD9223@ediswmail.ad.cirrus.com>
References: <0409470fbe6bba69ec74a3f30681b5fe93a372ba.1632470464.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <0409470fbe6bba69ec74a3f30681b5fe93a372ba.1632470464.git.geert+renesas@glider.be>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Proofpoint-ORIG-GUID: jXzsdFyUasTvIfrQPkBP6TMfP485Th33
X-Proofpoint-GUID: jXzsdFyUasTvIfrQPkBP6TMfP485Th33
X-Proofpoint-Spam-Reason: safe
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Sep 24, 2021 at 10:02:50AM +0200, Geert Uytterhoeven wrote:
> According to the WM8978 datasheet, the address of the device is fixed as
> 0011010 in 2-wire mode.
> 
> Fixes: 5bd5699c494f42a3 ("ASoC: dt-bindings: Add WM8978 Binding")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---

Acked-by: Charles Keepax <ckeepax@opensource.cirrus.com>

Thanks,
Charles
