Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3B32727EC84
	for <lists+devicetree@lfdr.de>; Wed, 30 Sep 2020 17:27:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730743AbgI3P1c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Sep 2020 11:27:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730961AbgI3P1P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Sep 2020 11:27:15 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 298DCC0613D1
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 08:27:14 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id s13so2141555wmh.4
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 08:27:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=0+ELwapv21GEL6l9w+GEBlH6bPvhJEQ78Iqbr9FNf64=;
        b=bnu2AXO9rs36aRb/7J34MaWoqyLLtn7zSZkuC3mjkJUPnpZ/ubekgTq3T6POhPvzr6
         LsQeXsqfRxkyLwWFwO0z5OY0HnQ0kU08XXRCLsI1ssorbSbnycj5RQq13nsxXnQJrHef
         AOCPhQAUXpyNkBEZ2uk2Plve1/cFpNLg8gP4PZcdryWrFhpdyy7ywFL2vMO17nAJgdfC
         TU2ZxNsmP4NMy9IrDn+9IGpnWEIe1/UcQfA4msy7jnX0S1p2OWFQMVtPu1l/lsSm5msl
         gGNvV6iclq3Yg18Tf5zUoWjyv9gyYnEi+fIXWTLZM+fueqlk7CCXT3uGaOpF5UcCuohX
         SQZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=0+ELwapv21GEL6l9w+GEBlH6bPvhJEQ78Iqbr9FNf64=;
        b=olcYSL5QTVmOifqGaajsnvU6Nelcawtdj0wdkr87nshF/jqcGo5VOoS0XmTggP5Kg4
         DmSlNvn8hLcGUUnETzVKMMMEQl7AyiSpHEQgixS1GfT/hfkc2iTjRlBjuG0zz2jFmn2U
         P0RHftZwpXcO9pqux8a4jdyrkg9fzT5b/ZTJDbtC8s1FaR4VmiA1CzH8nBfIkpVbLCz4
         LsFY3wh4uJes9bFSoGaGUTStkIBbRSxNLu4XrbO1R42FXPi/a+IOOHiVyUEdfnKr/1iu
         fzB3vqbtWrPpT5pZHJ3SLVGAZX2z+Uu9kbloHORlrbvhp2RDuzMZwr3HMN5+Pb/XYkK1
         MVQA==
X-Gm-Message-State: AOAM5338lZ8+4VqXXonlys9pmBePssZVQ2DLx0lv8QF0S+EQgyBTLEd9
        7bHeCt55rJq7F6l0XOHfAjyJaQ==
X-Google-Smtp-Source: ABdhPJxOgE4Haz9/Fvj0UGmKxz7MjaQdNgq625a6MdAAiBCGhMafIvzFOO9vNh10rj0D3WKjRBviNA==
X-Received: by 2002:a05:600c:2118:: with SMTP id u24mr3621915wml.59.1601479632810;
        Wed, 30 Sep 2020 08:27:12 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id n4sm3556018wrp.61.2020.09.30.08.27.11
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2020 08:27:11 -0700 (PDT)
Subject: Re: [PATCH v8 5/7] ASoC: qcom: Add support for lpass hdmi driver
To:     Srinivasa Rao Mandadapu <srivasam@codeaurora.org>,
        agross@kernel.org, bjorn.andersson@linaro.org, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org, plai@codeaurora.org,
        bgoswami@codeaurora.org, perex@perex.cz, tiwai@suse.com,
        rohitkr@codeaurora.org, linux-arm-msm@vger.kernel.org,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     V Sujith Kumar Reddy <vsujithk@codeaurora.org>
References: <1601447977-18115-1-git-send-email-srivasam@codeaurora.org>
 <1601447977-18115-6-git-send-email-srivasam@codeaurora.org>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <c94cf74d-03f6-999e-012f-5d9ef2316d61@linaro.org>
Date:   Wed, 30 Sep 2020 16:27:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1601447977-18115-6-git-send-email-srivasam@codeaurora.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 30/09/2020 07:39, Srinivasa Rao Mandadapu wrote:
> +}
> +
> +static bool lpass_hdmi_regmap_volatile(struct device *dev, unsigned int reg)
> +{
> +	return true;
> +}

I did ask this question in multiple reviews, but never got an answer!
Are all the dp/hdmi port register range really volatile!?



--srini
> +
> +struct regmap_config lpass_hdmi_regmap_config = {
> +	.reg_bits = 32,
> +	.reg_stride = 4,
> +	.val_bits = 32,
> +	.writeable_reg = lpass_hdmi_regmap_writeable,
> +	.readable_reg = lpass_hdmi_regmap_readable,
> +	.volatile_reg = lpass_hdmi_regmap_volatile,
