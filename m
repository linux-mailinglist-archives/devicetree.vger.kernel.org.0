Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 835FA4E91AB
	for <lists+devicetree@lfdr.de>; Mon, 28 Mar 2022 11:45:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238862AbiC1JrX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Mar 2022 05:47:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236203AbiC1JrX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Mar 2022 05:47:23 -0400
Received: from mx0b-001ae601.pphosted.com (mx0a-001ae601.pphosted.com [67.231.149.25])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F4192BB08
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 02:45:43 -0700 (PDT)
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
        by mx0a-001ae601.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id 22S8AHCS030605;
        Mon, 28 Mar 2022 04:45:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=PODMain02222019;
 bh=4V20xx4HGJbwaGDxO7BMZFwlL8ORDVBJfgXerNqNSrw=;
 b=KtBN+75GzeG9LeSwmBWbLB/eF3P2Wjza4AaBHaab+kZ/dPWagA8G3CnID7nmk1Nq3u8v
 urBxx6tDZdLbqutIgLiXERvZGVspdcLfDkszwqSfXj+EnYLisljRK2iUNrOlr9u4ptFE
 7Jm2XXqrvUK3PMkiNz9/iv8/UgGveeo6ayUmEfI3tXqNeoywcnxw73uMFG4WHA6531Yq
 F5Pw/BTcPL5Ctvf4N2ehSL20UZyrf09J31dGoPS7/fDTSCNjEx6O6k6iTNDcgbMZOahI
 LRyuNwOYfzFr19YsA7XUT1xMufN6/xKFZvCZ3xGAMMhRac01XiUl7VMA9e+zEZnuEzAL wA== 
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
        by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3f2081ag7e-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
        Mon, 28 Mar 2022 04:45:33 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.24; Mon, 28 Mar
 2022 10:45:31 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.24 via Frontend
 Transport; Mon, 28 Mar 2022 10:45:31 +0100
Received: from ediswmail.ad.cirrus.com (ediswmail.ad.cirrus.com [198.61.86.93])
        by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 444CC46A;
        Mon, 28 Mar 2022 09:45:31 +0000 (UTC)
Date:   Mon, 28 Mar 2022 09:45:31 +0000
From:   Charles Keepax <ckeepax@opensource.cirrus.com>
To:     Mark Brown <broonie@kernel.org>
CC:     Liam Girdwood <lgirdwood@gmail.com>, <alsa-devel@alsa-project.org>,
        <patches@opensource.cirrus.com>, Rob Herring <robh+dt@kernel.org>,
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH v1 6/7] ASoC: wm8731: Convert DT bindings to YAML format
Message-ID: <20220328094531.GZ38351@ediswmail.ad.cirrus.com>
References: <20220325153121.1598494-1-broonie@kernel.org>
 <20220325153121.1598494-7-broonie@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220325153121.1598494-7-broonie@kernel.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Proofpoint-ORIG-GUID: ILZNgPJQrg1-B_S7O0NIrGhwfKVb8Zpf
X-Proofpoint-GUID: ILZNgPJQrg1-B_S7O0NIrGhwfKVb8Zpf
X-Proofpoint-Spam-Reason: safe
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 25, 2022 at 03:31:20PM +0000, Mark Brown wrote:
> Convert the WM8731 DT bindings to YAML format, including addition of
> documentation for the regulator and clock bindings which the driver has
> had for some time but which were not covered in the bindings document.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> ---

Acked-by: Charles Keepax <ckeepax@opensource.cirrus.com>

Thanks,
Charles
