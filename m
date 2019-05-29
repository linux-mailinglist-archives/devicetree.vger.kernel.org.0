Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9F2EE2D968
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2019 11:48:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726005AbfE2Jsb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 May 2019 05:48:31 -0400
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25]:51628 "EHLO
        mx0b-001ae601.pphosted.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725861AbfE2Jsb (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 29 May 2019 05:48:31 -0400
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
        by mx0a-001ae601.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id x4T9dYYn017888;
        Wed, 29 May 2019 04:48:15 -0500
Authentication-Results: ppops.net;
        spf=none smtp.mailfrom=ckeepax@opensource.cirrus.com
Received: from mail4.cirrus.com ([87.246.98.35])
        by mx0a-001ae601.pphosted.com with ESMTP id 2sq340mmgp-1;
        Wed, 29 May 2019 04:48:15 -0500
Received: from EDIEX01.ad.cirrus.com (ediex01.ad.cirrus.com [198.61.84.80])
        by mail4.cirrus.com (Postfix) with ESMTP id 6B819611C8AC;
        Wed, 29 May 2019 04:49:02 -0500 (CDT)
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Wed, 29 May
 2019 10:48:14 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.1591.10 via Frontend
 Transport; Wed, 29 May 2019 10:48:14 +0100
Received: from ediswmail.ad.cirrus.com (ediswmail.ad.cirrus.com [198.61.86.93])
        by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 7EFE645;
        Wed, 29 May 2019 10:48:14 +0100 (BST)
Date:   Wed, 29 May 2019 10:48:14 +0100
From:   Charles Keepax <ckeepax@opensource.cirrus.com>
To:     "Rafael J. Wysocki" <rafael@kernel.org>
CC:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Lee Jones <lee.jones@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..." 
        <alsa-devel@alsa-project.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        <patches@opensource.cirrus.com>
Subject: Re: [PATCH 1/6] device property: Add new array helper
Message-ID: <20190529094814.GH28362@ediswmail.ad.cirrus.com>
References: <20190528154312.14435-1-ckeepax@opensource.cirrus.com>
 <CAJZ5v0h28OAiT7KP=TLu069hNvYjCLoFndS+zx7_iE+jKfOF2w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <CAJZ5v0h28OAiT7KP=TLu069hNvYjCLoFndS+zx7_iE+jKfOF2w@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905290065
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 28, 2019 at 07:01:38PM +0200, Rafael J. Wysocki wrote:
> On Tue, May 28, 2019 at 5:43 PM Charles Keepax
> <ckeepax@opensource.cirrus.com> wrote:
> >
> > It is fairly common to want to read an integer array property
> > that is composed of an unknown number of fixed size integer
> > groups. For example, say each group consists of three values
> > which correspond to the settings for one input on the device
> > and the driver supports several chips with different numbers
> > of inputs.
> >
> > Add a new helper function to provide this functionality, it
> > differs for the existing helpers in that it allows reading a
> > smaller number of values than the full array size and checks
> > that the number of values read is a multiple of the group size.
> 
> As a rule, you need also CC all of the device property framework
> changes to linux-acpi@vger.kernel.org, so please resend the series
> with that taken into account.
> 

Sorry will resend with them included.

Thanks,
Charles
