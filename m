Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D3659333A7A
	for <lists+devicetree@lfdr.de>; Wed, 10 Mar 2021 11:44:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230450AbhCJKn6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Mar 2021 05:43:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232425AbhCJKnZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Mar 2021 05:43:25 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8630C06174A
        for <devicetree@vger.kernel.org>; Wed, 10 Mar 2021 02:43:22 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id r15-20020a05600c35cfb029010e639ca09eso10710790wmq.1
        for <devicetree@vger.kernel.org>; Wed, 10 Mar 2021 02:43:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=rsU+poXPdTllS4PKXDMWT0nVCZvcUjovfEdKBIBONHk=;
        b=GbrZ107Exov4pd9ZsNZ5esv5o9Ueu3MGIBr5f1bTaIFX9iDjeNZrqXbdm3rkahEy6V
         ju7CI0ylGSw0461x6iQAhBhgCMg/TIairs2UahjCJdjI7mJgbyq28JQeAzpWbNTlBB06
         7KK9bDgzBu9SK/6oXHL0n/+TTazKdf7iG5OScnEeS09HsRKhTJKjN5YBNZYU7Q3bwfLo
         84OLgH7bziMVNWXoHo6ZkH/1RIAqPcnbvnwoRiQ9jL/g3i2tZEAxQcZc1F5K+zZKS8ub
         ZvS1tv1tZlxyxcvp8immeaG3OFIJA1ijKA3GuUEXCZyZxbQ2wD/trKn3nhpEJZr/OAMS
         mX2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=rsU+poXPdTllS4PKXDMWT0nVCZvcUjovfEdKBIBONHk=;
        b=qqKt63y2hoeDNGnMKXoknWVaO8LzfakE6H16YnSd8if5gUBBN+5r0jVK4G6IvxN1A3
         sc+ZDkkRos2KMYZFoeYsTApuuJWMvFaAaJ3ipxcMuUr74aJmEJS3egZyECdhKHwtGkrS
         PZMSOBK46mZl+jFulFOPDoNgxFEHNtDHUKkjIWZHD8+ZTYc2IH2nH48ADLK2O6XFHjiH
         NpRvePQ0DW5F2W1uiga7ibNHyuMvs76oJ14CRzE+uxZl1l7I+zS3W770PQJwH1dOdiyF
         7ojSXdGf7PavcrHPqZLMbdkUgSyhtovQ0tIUKl7J+TzZJXRzSzY9plHbntausAoCDDwN
         5u3g==
X-Gm-Message-State: AOAM531/72vb89r/CxUe75mJxYnIA4/vizt7UfBGYVLqsBrg4F0tpE6t
        b1L96edZf8JK1bNdygL4yZsSxQ==
X-Google-Smtp-Source: ABdhPJyQ7UF5/2+gHkI5V+DDKgkKUxhX2NrXwpglkxK2ELTTsq9x2rm7JfELxNTCkbMH9OIxXOsPeQ==
X-Received: by 2002:a05:600c:35c1:: with SMTP id r1mr2672631wmq.60.1615373001562;
        Wed, 10 Mar 2021 02:43:21 -0800 (PST)
Received: from dell ([91.110.221.204])
        by smtp.gmail.com with ESMTPSA id r26sm8602527wmn.28.2021.03.10.02.43.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 02:43:21 -0800 (PST)
Date:   Wed, 10 Mar 2021 10:43:18 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Cc:     mazziesaccount@gmail.com, Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-power@fi.rohmeurope.com
Subject: Re: [PATCH v3 11/15] regulator: rohm-regulator: Support SNVS HW
 state.
Message-ID: <20210310104318.GI701493@dell>
References: <cover.1615198094.git.matti.vaittinen@fi.rohmeurope.com>
 <4e9d048689acb3570159e87f31becf39455af3c9.1615198094.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4e9d048689acb3570159e87f31becf39455af3c9.1615198094.git.matti.vaittinen@fi.rohmeurope.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 08 Mar 2021, Matti Vaittinen wrote:

> The ROHM BD71815 supports setting voltage levels/regulator status
> for HW-states "RUN", "SUSPEND", "LPSR" and "SNVS". Add DT parsing
> helper also for SNVS state.
> 
> Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
> ---
>  drivers/regulator/rohm-regulator.c | 6 ++++++

>  include/linux/mfd/rohm-generic.h   | 6 +++++-

For my own reference (apply this as-is to your sign-off block):

  Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>

>  2 files changed, 11 insertions(+), 1 deletion(-)

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
