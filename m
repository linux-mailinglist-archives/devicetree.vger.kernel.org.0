Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1B54C439413
	for <lists+devicetree@lfdr.de>; Mon, 25 Oct 2021 12:52:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230505AbhJYKzD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Oct 2021 06:55:03 -0400
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168]:20228 "EHLO
        mx0b-001ae601.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232837AbhJYKzB (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 25 Oct 2021 06:55:01 -0400
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
        by mx0b-001ae601.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 19P5nh0V025457;
        Mon, 25 Oct 2021 05:52:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=PODMain02222019;
 bh=COzU+DyRZ9QkDqJIWvOLk8FKEQMEKdMfeXVfd1Ev01k=;
 b=fLMuPgOZ0zXJRCAc58oQ5LiLp+vaB8/3kbIW4XSexBhS8dJfdjxW8hv0HxumF677jPUU
 h6g0Ak9GHQeL2wVF5A5Vp8/mLECNClBDj3FwV10o9vn0BS6eNbXV0CEaTex/hoCwXSLM
 OOk3OJ5cj1Zg0Fq72uqETJi0/MOQ5haMWubzVbbAg9gTNMzxEpcA+zrJ5S+yJRhQ0mG4
 KBl44aEa5OAgasIbxR/W+giC3gthwGjgN+wF4VKq8D9mGehfBfSfFjJd+6jVjCQ3Xwwt
 5nNgYXWlOyj7IulbRfON3P4rzh/d7+qeGDYRpEY7Ykxdxq594ptm3lmpFWDch8z541AD hg== 
Received: from ediex01.ad.cirrus.com ([87.246.76.36])
        by mx0b-001ae601.pphosted.com with ESMTP id 3bwn2mrasg-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
        Mon, 25 Oct 2021 05:52:23 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.7; Mon, 25 Oct
 2021 11:52:21 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.7 via Frontend
 Transport; Mon, 25 Oct 2021 11:52:21 +0100
Received: from ediswmail.ad.cirrus.com (ediswmail.ad.cirrus.com [198.61.86.93])
        by ediswmail.ad.cirrus.com (Postfix) with ESMTP id ACF3811DA;
        Mon, 25 Oct 2021 10:52:21 +0000 (UTC)
Date:   Mon, 25 Oct 2021 10:52:21 +0000
From:   Charles Keepax <ckeepax@opensource.cirrus.com>
To:     Geert Uytterhoeven <geert+renesas@glider.be>
CC:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Adam Ford <aford173@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>,
        <patches@opensource.cirrus.com>, <alsa-devel@alsa-project.org>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 2/2] ASoC: dt-bindings: wlf,wm8962: Convert to json-schema
Message-ID: <20211025105221.GC28292@ediswmail.ad.cirrus.com>
References: <cover.1634565154.git.geert+renesas@glider.be>
 <b0868d2f62fd57499c79d96298e99e5f9e4fbc76.1634565154.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <b0868d2f62fd57499c79d96298e99e5f9e4fbc76.1634565154.git.geert+renesas@glider.be>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Proofpoint-GUID: 9Ynasz0jTxbC0NQ4gREwOUEo3ICyj2O-
X-Proofpoint-ORIG-GUID: 9Ynasz0jTxbC0NQ4gREwOUEo3ICyj2O-
X-Proofpoint-Spam-Reason: safe
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 18, 2021 at 03:59:03PM +0200, Geert Uytterhoeven wrote:
> Convert the Wolfson WM8962 Ultra-Low Power Stereo CODEC Device Tree
> binding documentation to json-schema.
> 
> Add missing *-supply and port properties.
> Update the example.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---

Acked-by: Charles Keepax <ckeepax@opensource.cirrus.com>

Thanks,
Charles
