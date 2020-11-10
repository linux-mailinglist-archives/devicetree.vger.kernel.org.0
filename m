Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F259E2AE19F
	for <lists+devicetree@lfdr.de>; Tue, 10 Nov 2020 22:23:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732074AbgKJVX6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Nov 2020 16:23:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731788AbgKJVX5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Nov 2020 16:23:57 -0500
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com [IPv6:2607:f8b0:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69A98C0613D1
        for <devicetree@vger.kernel.org>; Tue, 10 Nov 2020 13:23:57 -0800 (PST)
Received: by mail-ot1-x342.google.com with SMTP id 79so116767otc.7
        for <devicetree@vger.kernel.org>; Tue, 10 Nov 2020 13:23:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Dr4/3qS1+z62awA2yeRAPJfTGcaaGNWy1JcZr/XX9ak=;
        b=qJB5Zpgh2DcQJip8oRxmUAIY3KCoHWN+gGyc1cjRJrqFsrRT7IZEUXIS2eTD1qiqDm
         V4l6KPbE5UizU6/e1NKrT568+zDu1rUaeRBumZ9RvaQIcoea4qZ3Tz5U492nFn+Ox5l2
         yVyjinHo4CG79Xi8r3Hi0PzCWQqlYV/3DamEfz1wcA80kc16BdTnBWDoMczqW5ylNG1C
         G0TiI9VPDRPDTHpGlXgZz6tfawo/us1B9eWEXyTUrSZI8gCnROFg+xoQQym84nqx/oeq
         Q8/G/AsgIItcP/UY7J6chaaAOMxQaaTTfbqRbahXHYt11Uxs9KO/9/ilwSUdZjrywhRi
         DvGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Dr4/3qS1+z62awA2yeRAPJfTGcaaGNWy1JcZr/XX9ak=;
        b=fVbfUWCo8sqoiTYabtz+Kj5cJxAzUYdndu1jbBKVjJJAkbEZsZelpPMkVn0siEtZFB
         qmeTXf2xTuN4pkSwjbvQ+mUmLmcq5Y279Y+pI7CZTBEywO9urSRUs0ROtNU3cpKSv+ce
         2rzjpSy90MMysPrHQaHIK377iR0biGdXBkYTZik9GyJ3z6pSZUe9AisKkM+3ee8dAm62
         xH0zveprZk1i5akvvTlAOHtukD09hn7JScqmQljm0fro6THaMHWWHsig0t6MjPdeMsPg
         WKZDEFy9r5fGqYVG8wvh1NizgEJB00v2lpgqPBo7Pk2PzF+WplInPNuPKt5xhibHifPa
         g5Lg==
X-Gm-Message-State: AOAM531bpc04f+gZo0DgnIUPZQYQ/FQFC+Won8rfpOYQ8F6PEOmwgNGc
        p98vOfRc9xexPAUDeB2BNiCvbA==
X-Google-Smtp-Source: ABdhPJzJKZ16lT+yRBdEqTcDBQJwsR0BhG8D1cx/opTemZEoXfw4V6Tf/LBN/7cbuzaHSu45NrnbnQ==
X-Received: by 2002:a9d:192d:: with SMTP id j45mr14979829ota.207.1605043436560;
        Tue, 10 Nov 2020 13:23:56 -0800 (PST)
Received: from yoga (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id s4sm34800oov.46.2020.11.10.13.23.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Nov 2020 13:23:55 -0800 (PST)
Date:   Tue, 10 Nov 2020 15:23:53 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Rajendra Nayak <rnayak@codeaurora.org>
Cc:     agross@kernel.org, linus.walleij@linaro.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] pinctrl: qcom: Add sc7280 pinctrl driver
Message-ID: <20201110212353.GD807@yoga>
References: <1604570192-15057-1-git-send-email-rnayak@codeaurora.org>
 <1604570192-15057-2-git-send-email-rnayak@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1604570192-15057-2-git-send-email-rnayak@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 05 Nov 03:56 CST 2020, Rajendra Nayak wrote:
> diff --git a/drivers/pinctrl/qcom/pinctrl-sc7280.c b/drivers/pinctrl/qcom/pinctrl-sc7280.c
[..]
> +static const struct msm_pinctrl_soc_data sc7280_pinctrl = {
> +	.pins = sc7280_pins,
> +	.npins = ARRAY_SIZE(sc7280_pins),
> +	.functions = sc7280_functions,
> +	.nfunctions = ARRAY_SIZE(sc7280_functions),
> +	.groups = sc7280_groups,
> +	.ngroups = ARRAY_SIZE(sc7280_groups),
> +	.ngpios = 176,

I presume the wakeirq_map will come later. Nothing to hold up this patch
for, but please help me remember to not merge the tlmm node with a
wakeup-parent specified before that.


Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn
