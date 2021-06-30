Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B65E23B7AE1
	for <lists+devicetree@lfdr.de>; Wed, 30 Jun 2021 02:12:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235467AbhF3AOy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Jun 2021 20:14:54 -0400
Received: from onstation.org ([52.200.56.107]:33564 "EHLO onstation.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233056AbhF3AOy (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 29 Jun 2021 20:14:54 -0400
X-Greylist: delayed 560 seconds by postgrey-1.27 at vger.kernel.org; Tue, 29 Jun 2021 20:14:54 EDT
Received: from localhost (c-98-239-145-235.hsd1.wv.comcast.net [98.239.145.235])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: masneyb)
        by onstation.org (Postfix) with ESMTPSA id 4C0F73E976;
        Wed, 30 Jun 2021 00:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=onstation.org;
        s=default; t=1625011385;
        bh=Q51vmm4MSf9FdzBXEeSwltuiGVo/ndPDBJ0OEd2FHGs=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=iAy0rd7ZdHAVKVXr9EoWZViaxABU9BkScSm4vrDh2ZhSAW3MOdWZGb0GCOma0KhHh
         jZ6b+PI5afoMy05jyOrIEYtdciN5a9YIzoJDmcerJyBlMzoI5QZTQRT3BmaQpmAnqN
         qMlLPZ9P27ISmeP4QEDO7f3f9f3vnXnMQr6hWTqA=
Date:   Tue, 29 Jun 2021 20:03:04 -0400
From:   Brian Masney <masneyb@onstation.org>
To:     David Heidelberg <david@ixit.cz>
Cc:     linus.walleij@linaro.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: qcom: apq8064: correct clock names
Message-ID: <20210630000304.GA10034@onstation.org>
References: <20210629161811.44252-1-david@ixit.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210629161811.44252-1-david@ixit.cz>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 29, 2021 at 06:18:11PM +0200, David Heidelberg wrote:
> Prevents dmesg error:
> 
> msm_dsi 4700000.mdss_dsi: dev_pm_opp_set_clkname: Couldn't find clock: -2
> 
> and following kernel oops introduced by
> b0530eb1191 ("drm/msm/dpu: Use OPP API to set clk/perf state").
> 
> Also removes warning about deprecated clock names.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>

Reviewed-by: Brian Masney <masneyb@onstation.org>

