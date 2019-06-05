Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EC31135A5B
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2019 12:17:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727053AbfFEKRx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jun 2019 06:17:53 -0400
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25]:43886 "EHLO
        mx0b-001ae601.pphosted.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726988AbfFEKRw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jun 2019 06:17:52 -0400
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
        by mx0a-001ae601.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id x559xQaX032740;
        Wed, 5 Jun 2019 05:17:41 -0500
Authentication-Results: ppops.net;
        spf=none smtp.mailfrom=ckeepax@opensource.cirrus.com
Received: from mail1.cirrus.com (mail1.cirrus.com [141.131.3.20])
        by mx0a-001ae601.pphosted.com with ESMTP id 2sups14rba-1;
        Wed, 05 Jun 2019 05:17:41 -0500
Received: from EDIEX02.ad.cirrus.com (unknown [198.61.84.81])
        by mail1.cirrus.com (Postfix) with ESMTP id B4464611C8B4;
        Wed,  5 Jun 2019 05:17:40 -0500 (CDT)
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Wed, 5 Jun
 2019 11:17:40 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.1591.10 via Frontend
 Transport; Wed, 5 Jun 2019 11:17:40 +0100
Received: from ediswmail.ad.cirrus.com (ediswmail.ad.cirrus.com [198.61.86.93])
        by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 12A112A1;
        Wed,  5 Jun 2019 11:17:40 +0100 (BST)
Date:   Wed, 5 Jun 2019 11:17:40 +0100
From:   Charles Keepax <ckeepax@opensource.cirrus.com>
To:     <broonie@kernel.org>
CC:     <lgirdwood@gmail.com>, <robh+dt@kernel.org>,
        <mark.rutland@arm.com>, <lee.jones@linaro.org>,
        <rafael@kernel.org>, <gregkh@linuxfoundation.org>,
        <alsa-devel@alsa-project.org>, <devicetree@vger.kernel.org>,
        <patches@opensource.cirrus.com>
Subject: Re: [PATCH v2 3/6] ASoC: madera: Add common support for Cirrus Logic
 Madera codecs
Message-ID: <20190605101740.GN28362@ediswmail.ad.cirrus.com>
References: <20190528154312.14435-1-ckeepax@opensource.cirrus.com>
 <20190528154312.14435-3-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20190528154312.14435-3-ckeepax@opensource.cirrus.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=821 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906050063
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 28, 2019 at 04:43:09PM +0100, Charles Keepax wrote:
> From: Richard Fitzgerald <rf@opensource.cirrus.com>
> 
> The Cirrus Logic Madera codecs are a family of related codecs with
> extensive digital and analogue I/O, digital mixing and routing,
> signal processing and programmable DSPs. This patch adds common
> support code shared by all Madera codecs.
> 
> This patch also adds the pdata to the parent mfd pdata struct.
> Since there is a circular build dependency it's convenient to
> patch them both atomically.
> 
> Signed-off-by: Nariman Poushin <nariman@opensource.cirrus.com>
> Signed-off-by: Nikesh Oswal <Nikesh.Oswal@cirrus.com>
> Signed-off-by: Piotr Stankiewicz <piotrs@opensource.cirrus.com>
> Signed-off-by: Ajit Pandey <ajit.pandey@incubesol.com>
> Signed-off-by: Richard Fitzgerald <rf@opensource.cirrus.com>
> Signed-off-by: Charles Keepax <ckeepax@opensource.cirrus.com>
> ---
> +static int madera_inmux_put(struct snd_kcontrol *kcontrol,
> +			    struct snd_ctl_elem_value *ucontrol)
> +{

Looks like there are still some issues with the inmux handling
here, afraid I will probably need to do a v3 to fix them up.

Thanks,
Charles
