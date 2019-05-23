Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DACE52820C
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2019 18:00:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730949AbfEWQAu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 May 2019 12:00:50 -0400
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168]:44276 "EHLO
        mx0b-001ae601.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1730913AbfEWQAu (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 23 May 2019 12:00:50 -0400
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
        by mx0b-001ae601.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id x4NFtHa9014537;
        Thu, 23 May 2019 11:00:40 -0500
Authentication-Results: ppops.net;
        spf=none smtp.mailfrom=ckeepax@opensource.cirrus.com
Received: from mail4.cirrus.com ([87.246.98.35])
        by mx0b-001ae601.pphosted.com with ESMTP id 2sjefmyd7p-1;
        Thu, 23 May 2019 11:00:40 -0500
Received: from EDIEX02.ad.cirrus.com (ediex02.ad.cirrus.com [198.61.84.81])
        by mail4.cirrus.com (Postfix) with ESMTP id 709E6611C8AC;
        Thu, 23 May 2019 11:01:40 -0500 (CDT)
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Thu, 23 May
 2019 17:00:39 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.1591.10 via Frontend
 Transport; Thu, 23 May 2019 17:00:39 +0100
Received: from ediswmail.ad.cirrus.com (ediswmail.ad.cirrus.com [198.61.86.93])
        by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 2424245;
        Thu, 23 May 2019 17:00:39 +0100 (BST)
Date:   Thu, 23 May 2019 17:00:39 +0100
From:   Charles Keepax <ckeepax@opensource.cirrus.com>
To:     <broonie@kernel.org>
CC:     <mark.rutland@arm.com>, <devicetree@vger.kernel.org>,
        <alsa-devel@alsa-project.org>, <patches@opensource.cirrus.com>,
        <lgirdwood@gmail.com>, <robh+dt@kernel.org>, <lee.jones@linaro.org>
Subject: Re: [alsa-devel] [PATCH 1/5] ASoC: madera: Add DT bindings for
 Cirrus Logic Madera codecs
Message-ID: <20190523160039.GA28362@ediswmail.ad.cirrus.com>
References: <20190523154347.10442-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20190523154347.10442-1-ckeepax@opensource.cirrus.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905230108
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 23, 2019 at 04:43:43PM +0100, Charles Keepax wrote:
> From: Richard Fitzgerald <rf@opensource.cirrus.com>
> 
> The Cirrus Logic Madera codecs are a family of related codecs with
> extensive digital and analogue I/O, digital mixing and routing,
> signal processing and programmable DSPs.
> 
> Signed-off-by: Richard Fitzgerald <rf@opensource.cirrus.com>
> Signed-off-by: Charles Keepax <ckeepax@opensource.cirrus.com>
> ---

Apologies it seems our email system has had some weird issue and
most of the patches in this chain seem to have bounced somewhere
internally.

I will resend once I have had the IT guys have a look.

Thanks,
Charles
