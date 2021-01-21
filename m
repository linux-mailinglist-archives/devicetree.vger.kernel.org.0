Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 79E302FE203
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 06:50:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727481AbhAUFsz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 00:48:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727648AbhAUFsT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 00:48:19 -0500
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CA8FC0613CF
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 21:47:35 -0800 (PST)
Received: by mail-ot1-x336.google.com with SMTP id v21so583767otj.3
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 21:47:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=So7n4CXW5rfKosTBs+wAYGz48ULvBM4ktYJXBciZ7Dc=;
        b=glVhYP4Hu5qOk9XNH1PetEtPf065rkp8x4wHsjwwkBo4jfTlVvwx0U706YM9o7PlR5
         jBrl2ZnGv2+mtCQkUqkUbXZF4jOYpgKTK2w7nMqOyAM8r6+C9uGiL6L7PejsYpWlskc2
         q7bRCXo5M6tg2AdAtkq3kPcJJlp5mg9D018HK5w39x3c5b2FQ+XvbzDfx2nhkaQKN8II
         9q5JFrFOlXnCOUl+EcPlaDaq8s3YIFMhhugXN/b6aDSNjT53LFqi2QKTJk0CSWfd6Sp+
         9bv7f5wxXfKVh3XEBLOxQskKVuqy6fLBVHSHXIblh64umV+rQT8/x5vdGUxi1rlE07DA
         +XSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=So7n4CXW5rfKosTBs+wAYGz48ULvBM4ktYJXBciZ7Dc=;
        b=FcUKPFEddrC/bHR+MwyVJBKgDOfLXnLPQVoDYa4C4Vepi5SI2gKeFUWrwHmkbIS0SG
         WtUPJI7HihR4hoCaF1BKlCMWmR/jlkOt3R77bem7Uj/LkCNJadeIrhzmhDEuaJy5xdhh
         4NU64wMSUnLQAX1wCvFkZds70eDoMmCaiq/SUjnWLKyDB7C2k+YvXdonnD7tGhN418ii
         Bs6qAi/TRP7YBEsYaev1AM3HvUfGlVo76A1K4fedEGFP0wCIX1NxHZaeXfEm3KKwnJg/
         fl+Nwu9V+ybaG9dJuiqIgn1ozCifWydu4ELacoR10sg7wf5iGpx3XQBQv3N7y9SsfnR/
         9nxw==
X-Gm-Message-State: AOAM532fUsV1/x+Qk7VyUMLErZ9Dg8v9Y4TQuyZKCuHlOcdHKy51f/X0
        PZVMna4dSO+a02Q6QRVcR8hqUQ==
X-Google-Smtp-Source: ABdhPJysvLoMeu7qgenoO6uU13klsr+b3S9kAO++BSTs7ZLhpyiB2MkpLh7oktSJj0YYNOZnAM70Iw==
X-Received: by 2002:a9d:611b:: with SMTP id i27mr4298758otj.352.1611208054744;
        Wed, 20 Jan 2021 21:47:34 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 67sm79061ott.64.2021.01.20.21.47.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jan 2021 21:47:33 -0800 (PST)
Date:   Wed, 20 Jan 2021 23:47:32 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] clk: qcom: gcc: Add global clock controller driver
 for SC8180x
Message-ID: <YAkVdOmy0MTeRQhz@builder.lan>
References: <20210120223556.1610214-1-bjorn.andersson@linaro.org>
 <20210120223556.1610214-2-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210120223556.1610214-2-bjorn.andersson@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed 20 Jan 16:35 CST 2021, Bjorn Andersson wrote:
> diff --git a/drivers/clk/qcom/gcc-sc8180x.c b/drivers/clk/qcom/gcc-sc8180x.c
[..]
> +static struct gdsc emac_gdsc = {
> +	.gdscr = 0x106004,

Seems like I missed squashing the fixup where I subtract the gcc base
address after migrating these from the downstream dts.

As written the platform doesn't boot.

Please let me know if there's any other feedback before I respin v2.

Regards,
Bjorn

> +	.pd = {
> +		.name = "emac_gdsc",
> +	},
> +	.pwrsts = PWRSTS_OFF_ON,
> +	.flags = POLL_CFG_GDSCR,
> +};
