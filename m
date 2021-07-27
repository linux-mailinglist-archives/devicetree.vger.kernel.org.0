Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3A0843D7527
	for <lists+devicetree@lfdr.de>; Tue, 27 Jul 2021 14:37:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232127AbhG0MhS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 08:37:18 -0400
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168]:53890 "EHLO
        mx0b-001ae601.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231931AbhG0MhQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 27 Jul 2021 08:37:16 -0400
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
        by mx0b-001ae601.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 16R4SFev022689;
        Tue, 27 Jul 2021 07:36:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=PODMain02222019;
 bh=30u8pmTQU7srqNMjz6DRt4uV+3lRTm4Mp+vqpkBXZC4=;
 b=GxqXf9wShv5rlSgg82glhutBzA8BXGnk1YCixCNNsaaLk4X+o49waInStplC1wKRcH+H
 OhwAYa8igZv9VnAGvc+0G7o+K8WvLu/2Szyi5JeKBFc3cEc6DOl+3lIRCVz8JWI+wbie
 2AYgvO//3dltJBfRv/AIGdmri1cpGLnDeKqqkLJw6eeKg+8knRQTEM3esX3ZoMXMwV8r
 ZquzSxA5fkTajpEeqlGK4GsTdYdKCuJW5Q3ibE/XiN3d3F/ADJfLH17Mu39KT5ZEsOeb
 Q3jjHc+QSpZ94I52kdPEKEpc188OQZ8z2CgARFBAIeGpOX3C33s2WTPFe6ek+LY4GNDs yQ== 
Received: from ediex02.ad.cirrus.com ([87.246.76.36])
        by mx0b-001ae601.pphosted.com with ESMTP id 3a2340gx6a-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
        Tue, 27 Jul 2021 07:36:57 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4; Tue, 27 Jul
 2021 13:21:53 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2242.4 via Frontend
 Transport; Tue, 27 Jul 2021 13:21:53 +0100
Received: from [10.0.2.15] (AUSNPC0LSNW1.ad.cirrus.com [198.61.65.56])
        by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 1E1C22BA;
        Tue, 27 Jul 2021 12:21:53 +0000 (UTC)
Subject: Re: [PATCH 01/54] ASoC: dt-bindings: Add WM8978 Binding
To:     Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>
CC:     <devicetree@vger.kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        <alsa-devel@alsa-project.org>, <patches@opensource.cirrus.com>,
        <linux-sunxi@googlegroups.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        Frank Rowand <frowand.list@gmail.com>,
        <linux-arm-kernel@lists.infradead.org>
References: <20210721140424.725744-1-maxime@cerno.tech>
 <20210721140424.725744-2-maxime@cerno.tech>
 <20210723213251.GA2622319@robh.at.kernel.org>
 <20210726001713.GA8831@sirena.org.uk>
From:   Richard Fitzgerald <rf@opensource.cirrus.com>
Message-ID: <885f19af-32d5-d792-84b2-56afb8fcdf6c@opensource.cirrus.com>
Date:   Tue, 27 Jul 2021 13:21:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210726001713.GA8831@sirena.org.uk>
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: g1gHYKLF0Lw5P5gRo3_hf33OsltMUOdM
X-Proofpoint-GUID: g1gHYKLF0Lw5P5gRo3_hf33OsltMUOdM
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 priorityscore=1501
 impostorscore=0 mlxscore=0 spamscore=0 clxscore=1011 bulkscore=0
 lowpriorityscore=0 phishscore=0 suspectscore=0 adultscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2107140000
 definitions=main-2107270074
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/07/2021 01:17, Mark Brown wrote:
> On Fri, Jul 23, 2021 at 03:32:51PM -0600, Rob Herring wrote:
>> On Wed, Jul 21, 2021 at 04:03:31PM +0200, Maxime Ripard wrote:
> 
>>> Even though we had the wm8978 driver for some time and a number of
>>> boards using it already, we never had a binding for it. Let's add it
>>> based on what the driver expects and the boards are providing.
> 
>>> +maintainers:
>>> +  - Mark Brown <broonie@kernel.org>
> 
>> No one from Wolfson cares about this device?
> 
>> Otherwise,
> 
>> Reviewed-by: Rob Herring <robh@kernel.org>
> 
> Well, Wolfson no longer exists since it was bought by Cirrus but copying
> in the Cirrus people to see if they want to be listed there.
> 

People, ownership, and email addresses can change. It's always best to
check MAINTAINERS to see the current support status. In this case it has
a section to pick up those Wolfson drivers, with the correct email
address. The list email will be monitored by multiple people.

WOLFSON MICROELECTRONICS DRIVERS
L:	patches@opensource.cirrus.com
S:	Supported
<SNIP>
F:	include/sound/wm????.h
<SNIP>
F:	sound/soc/codecs/wm*

