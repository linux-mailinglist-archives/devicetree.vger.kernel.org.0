Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 900AC5F2EA3
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 12:11:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229741AbiJCKL5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 06:11:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229611AbiJCKL5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 06:11:57 -0400
Received: from mx0b-001ae601.pphosted.com (mx0b-001ae601.pphosted.com [67.231.152.168])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34BEC64E1
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 03:11:54 -0700 (PDT)
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
        by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 2934p18E020482;
        Mon, 3 Oct 2022 05:11:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=PODMain02222019;
 bh=n5LGYOREL1aloKOXwK1xFi56trDtQEsdEl6TJRf3ODk=;
 b=B+vZ0WtX+C0ChilaoM5pPckMpmbGajAjuFVZB9iOmOisKiAOAUKuW7JZz99lhLGxS0TR
 4GsveCOBN15ApLT/nBgJGDhlVLHJVcpCJTeIWYeZboWmzgnF8J3iZg/v8kqq4iX2mhJS
 e52EB9w/nKRH1guEM0W74WpbyIgxpU1OcIw4RzIoAhU03vlBY/SKf5DTGZJDq6dftUqF
 UXsDFgBI4pTkl1U7VCjLPzXpGjMm+omfCcvChz6zMtruNua/pORPSIvhKysu74Z67sj0
 afaEgJGZIk3jKhrxxtwGXOGWCzAIQqJSJjLvzsN9zUeWUnWYAaGU6rIfiKLW8KgdpM1D wA== 
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
        by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3jxhyq21st-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Mon, 03 Oct 2022 05:11:09 -0500
Received: from ediex01.ad.cirrus.com (198.61.84.80) by ediex02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.12; Mon, 3 Oct
 2022 05:11:08 -0500
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by ediex01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.2.1118.12 via Frontend
 Transport; Mon, 3 Oct 2022 05:11:08 -0500
Received: from ediswmail.ad.cirrus.com (ediswmail.ad.cirrus.com [198.61.86.93])
        by ediswmail.ad.cirrus.com (Postfix) with ESMTP id E37EA3563;
        Mon,  3 Oct 2022 10:11:07 +0000 (UTC)
Date:   Mon, 3 Oct 2022 10:11:07 +0000
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
Subject: Re: [PATCH v2 1/3] ASoC: dt-bindings: add schema for WM8961
Message-ID: <20221003101107.GY92394@ediswmail.ad.cirrus.com>
References: <20221003032414.248326-1-doug@schmorgal.com>
 <20221003032414.248326-2-doug@schmorgal.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221003032414.248326-2-doug@schmorgal.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Proofpoint-GUID: jqSaYTFqTdZym9BrcxVJOIUxXyScI7Ed
X-Proofpoint-ORIG-GUID: jqSaYTFqTdZym9BrcxVJOIUxXyScI7Ed
X-Proofpoint-Spam-Reason: safe
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Oct 02, 2022 at 08:24:12PM -0700, Doug Brown wrote:
> Create a simple DT schema for the existing Wolfson WM8961 driver so that
> DT support can be added to the driver.
> 
> Signed-off-by: Doug Brown <doug@schmorgal.com>
> ---

Acked-by: Charles Keepax <ckeepax@opensource.cirrus.com>

Thanks,
Charles
