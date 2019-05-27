Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1B0642B046
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2019 10:32:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725943AbfE0Icv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 May 2019 04:32:51 -0400
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25]:33078 "EHLO
        mx0b-001ae601.pphosted.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725869AbfE0Icv (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 May 2019 04:32:51 -0400
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
        by mx0a-001ae601.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id x4R8TkHI000652;
        Mon, 27 May 2019 03:32:39 -0500
Authentication-Results: ppops.net;
        spf=none smtp.mailfrom=ckeepax@opensource.cirrus.com
Received: from mail1.cirrus.com (mail1.cirrus.com [141.131.3.20])
        by mx0a-001ae601.pphosted.com with ESMTP id 2sq340hxxp-1;
        Mon, 27 May 2019 03:32:39 -0500
Received: from EDIEX02.ad.cirrus.com (unknown [198.61.84.81])
        by mail1.cirrus.com (Postfix) with ESMTP id 1CAFB611C8BD;
        Mon, 27 May 2019 03:32:39 -0500 (CDT)
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Mon, 27 May
 2019 09:32:38 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.1591.10 via Frontend
 Transport; Mon, 27 May 2019 09:32:38 +0100
Received: from ediswmail.ad.cirrus.com (ediswmail.ad.cirrus.com [198.61.86.93])
        by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 733CF45;
        Mon, 27 May 2019 09:32:38 +0100 (BST)
Date:   Mon, 27 May 2019 09:32:38 +0100
From:   Charles Keepax <ckeepax@opensource.cirrus.com>
To:     Mark Brown <broonie@kernel.org>
CC:     Richard Fitzgerald <rf@opensource.cirrus.com>,
        <lgirdwood@gmail.com>, <robh+dt@kernel.org>,
        <mark.rutland@arm.com>, <lee.jones@linaro.org>,
        <alsa-devel@alsa-project.org>, <devicetree@vger.kernel.org>,
        <patches@opensource.cirrus.com>
Subject: Re: [PATCH 2/5] ASoC: madera: Add common support for Cirrus Logic
 Madera codecs
Message-ID: <20190527083238.GD28362@ediswmail.ad.cirrus.com>
References: <20190524104158.30731-1-ckeepax@opensource.cirrus.com>
 <20190524104158.30731-2-ckeepax@opensource.cirrus.com>
 <20190524145603.GE2456@sirena.org.uk>
 <2f4ab4ff-5b1e-8ef5-3ef7-8dfe413b4b95@opensource.cirrus.com>
 <ae5eee88-0b79-1e58-5812-9e46e5bf3b75@opensource.cirrus.com>
 <20190526121846.GG2456@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20190526121846.GG2456@sirena.org.uk>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=838 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905270060
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, May 26, 2019 at 01:18:46PM +0100, Mark Brown wrote:
> On Fri, May 24, 2019 at 04:24:10PM +0100, Richard Fitzgerald wrote:
> > On 24/05/19 16:21, Richard Fitzgerald wrote:
> > > On 24/05/19 15:56, Mark Brown wrote:
> > > > This will delay both before and after every power up and power down.
> > > > Are you sure that makes sense?
> 
> > > I think that's correct but we can re-check with hardware people.
> > > It's not just a delay, it needs to ensure there are always a
> > > certain number of SYSCLK cycles in the hardware to avoid leaving
> > > certain state machines in limbo.
> 
> That sounds like you might want both _POST_PMU and _POST_PMD but do you
> really need the _PREs as well?

Yeah the requirement from the hardware guys was that we needed a
guard band between changing the SYSCLK state and other things
happening. So it has to happen both before and after the state of
SYSCLK changes. It is certainly far from ideal but it is what it
is.

Thanks,
Charles
