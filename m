Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1567C2FA6C0
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 17:54:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405436AbhARQw0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jan 2021 11:52:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2393209AbhARPNL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jan 2021 10:13:11 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9323BC061757
        for <devicetree@vger.kernel.org>; Mon, 18 Jan 2021 07:12:30 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id c124so13895861wma.5
        for <devicetree@vger.kernel.org>; Mon, 18 Jan 2021 07:12:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=Xo4cfkUgfZMwC1kcTh+R01wsHW/timugPtkqWQyq1DI=;
        b=xD37iht/mX4OjCu50q30WVuJw8ug84GNpWeC1JL2TB7xhU5hKbQfiU1vLzwWbzm7ai
         9orgji42XdrU3QnvTDmdjggPxxvglJGnlz95r2S66iBqvQXcz//CAoJsNahRiV7Ll27i
         NobhaxidQcItjvL5pN4Q3cUtYeq1aJyLnZh8cJHs410I/DANGnS6Yzi3ihw8RWy2lu9d
         COgWWo8U8YpgLefjAnZIz2AzXy55VFULwirjd9/QLhowjQbSyqaH7/nQIzgZ9xjXuFDo
         Dz83tFfdL3S4ksJIFGNd6rIIKjpr4y7TOcJzxXa+qegAMg0OaEPbhlaySUHDN1HqgH9e
         /GVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=Xo4cfkUgfZMwC1kcTh+R01wsHW/timugPtkqWQyq1DI=;
        b=SlyQhzeDP7aGTZD3EoqX8HtW0kAt6ZcGQUJ7fROi+E+nuTJB2qsB0q2nmDMTOtjvGq
         9TcqU/2ichDc3Lz3B+emwhP5tLl1WjLMuk1wdogYxuMOPBRMHKXq9l8OTQBsSYbQPlEw
         QBIKZ2exqppMfEctJAhLvh7glphsQAFcFm6BAtEk3wNoCRHAWpWG9O7fdCChGppnsgNM
         RI6xsM3lys2HFuowuwQQ2yUBQOPRM+spPwiXftZMpugk1xInCkmKPxMgxNGXjDyH20qf
         oi8pES5/Sbao1zAtFXmC07LftllGFexcIPA74SORQXpNC5zh2CEDzPFl8K9+xxnpBzVS
         YzoQ==
X-Gm-Message-State: AOAM5317Kz5mEay5scAFnOgGaJrJZy2bZ1+CHZzxKZoz8hub/u0c0K30
        nq82CPPfQ58yc+LyBYDv/UTKDe87VRU6sYDV
X-Google-Smtp-Source: ABdhPJx4wJ3iWN/75//5uN5rSPB596jGvskqnfTUg7OUGpbWugtg2dTzaLAbLvzLzgowUjrEcYT4CQ==
X-Received: by 2002:a1c:483:: with SMTP id 125mr21070988wme.80.1610982749381;
        Mon, 18 Jan 2021 07:12:29 -0800 (PST)
Received: from dell ([91.110.221.158])
        by smtp.gmail.com with ESMTPSA id u5sm10156512wmg.9.2021.01.18.07.12.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Jan 2021 07:12:28 -0800 (PST)
Date:   Mon, 18 Jan 2021 15:12:27 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc:     Mark Brown <broonie@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Mayulong <mayulong1@huawei.com>,
        Rob Herring <robh+dt@kernel.org>, devel@driverdev.osuosl.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 10/13] mfd: hi6421-spmi-pmic: move driver from staging
Message-ID: <20210118151227.GF4903@dell>
References: <cover.1610975633.git.mchehab+huawei@kernel.org>
 <8a152819ef89c73dd6afb5c2deb5441402fcd2fa.1610975633.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8a152819ef89c73dd6afb5c2deb5441402fcd2fa.1610975633.git.mchehab+huawei@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 18 Jan 2021, Mauro Carvalho Chehab wrote:

> This driver is ready for mainstream. So, move it out of staging.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  .../mfd/hisilicon,hi6421-spmi-pmic.yaml       | 133 +++++++
>  MAINTAINERS                                   |   7 +
>  drivers/mfd/Kconfig                           |  15 +
>  drivers/mfd/Makefile                          |   1 +
>  drivers/mfd/hi6421-spmi-pmic.c                | 342 ++++++++++++++++++
>  drivers/staging/hikey9xx/Kconfig              |  16 -
>  drivers/staging/hikey9xx/Makefile             |   1 -
>  drivers/staging/hikey9xx/hi6421-spmi-pmic.c   | 342 ------------------
>  .../hikey9xx/hisilicon,hi6421-spmi-pmic.yaml  | 133 -------
>  9 files changed, 498 insertions(+), 492 deletions(-)

Could you please resubmit this will the correct flags.

I believe it's the `git format-patch` -M flag that you want.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
