Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A5D013FD764
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 12:11:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232818AbhIAKMi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 06:12:38 -0400
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25]:44380 "EHLO
        mx0b-001ae601.pphosted.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S232258AbhIAKMi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 06:12:38 -0400
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
        by mx0a-001ae601.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1816KQCe025016;
        Wed, 1 Sep 2021 05:11:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=PODMain02222019;
 bh=1+Whm96Iiw8KuVT7H7CUIcuudZGCHLXA7USDAOOxlFI=;
 b=loh9ZljTOc5bnRh8E4E9o9GaFJAjlHCFso8wlbhbGm5yQZlP5etn2TPaAcGAjx6M71qh
 JJ1LQM6yRlqlBrh7EnmJHo5ajuczARcY+YHcUFRAg9nBByoHAbmoX9Yx05OtvR+mjmy2
 QNn1xLYscgq9cX7mzueMdgqnQUb3AOJ1IGF0v3qg0QmlGhq/n5CoT9LPu8q2NR7v21nW
 ZJeDS2FysbC/gX7jqg/IXzAbaWZNh8tkjysQp+IUUuI4i8bekZS/6jd+UTIs+P1Qw5UD
 dcHMfYRAqm2tQrnR/1Im+WHozonaQCrvY/FO7Dx8pSwdUlpG2p5LjwknCsCeQpEWfH4t jg== 
Received: from ediex02.ad.cirrus.com ([87.246.76.36])
        by mx0a-001ae601.pphosted.com with ESMTP id 3at0y8rebt-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
        Wed, 01 Sep 2021 05:11:15 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.12; Wed, 1 Sep
 2021 11:11:12 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2242.12 via Frontend
 Transport; Wed, 1 Sep 2021 11:11:12 +0100
Received: from ediswmail.ad.cirrus.com (ediswmail.ad.cirrus.com [198.61.86.93])
        by ediswmail.ad.cirrus.com (Postfix) with ESMTP id E0555B10;
        Wed,  1 Sep 2021 10:11:12 +0000 (UTC)
Date:   Wed, 1 Sep 2021 10:11:12 +0000
From:   Charles Keepax <ckeepax@opensource.cirrus.com>
To:     Maxime Ripard <maxime@cerno.tech>
CC:     <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-sunxi@googlegroups.com>, <alsa-devel@alsa-project.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        <patches@opensource.cirrus.com>, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 01/52] ASoC: dt-bindings: Add WM8978 Binding
Message-ID: <20210901101112.GM9223@ediswmail.ad.cirrus.com>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-2-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20210901091852.479202-2-maxime@cerno.tech>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Proofpoint-ORIG-GUID: iZu5PNOFQurste-yltl-SY90sUPXLrZD
X-Proofpoint-GUID: iZu5PNOFQurste-yltl-SY90sUPXLrZD
X-Proofpoint-Spam-Reason: safe
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 01, 2021 at 11:18:01AM +0200, Maxime Ripard wrote:
> Even though we had the wm8978 driver for some time and a number of
> boards using it already, we never had a binding for it. Let's add it
> based on what the driver expects and the boards are providing.
> 
> Cc: alsa-devel@alsa-project.org
> Cc: devicetree@vger.kernel.org
> Cc: Liam Girdwood <lgirdwood@gmail.com>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: patches@opensource.cirrus.com
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> 
> ---

Acked-by: Charles Keepax <ckeepax@opensource.cirrus.com>

Thanks,
Charles
