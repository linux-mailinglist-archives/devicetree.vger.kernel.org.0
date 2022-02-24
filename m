Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EC6F24C27DA
	for <lists+devicetree@lfdr.de>; Thu, 24 Feb 2022 10:16:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232686AbiBXJPl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Feb 2022 04:15:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232698AbiBXJPk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Feb 2022 04:15:40 -0500
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15F3223BF17
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 01:15:11 -0800 (PST)
Received: by mail-pl1-x635.google.com with SMTP id e13so1161829plh.3
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 01:15:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=WRVIFs33r3ON7s1O5MK2VQ5yAl5/kACrQl2hNe16evw=;
        b=GCPGvdX/eISdLly2vk3dhEEi+lVSWWrO4ahjSb7Lt4tn45dcNW2r6lrkWgQEsaHWX8
         y2DYlh84/4V3i7EemGnX2oFVBHVCxK2n2VZRcux/SDYFVrQiGZ8W7OXeWVnkXb6hxFQj
         nR5FceRzgms6kc9qesmO9rpcFUz7X5S9molA5Zj+qPZ4NDCrm7v1y9fJzwbl3CTF1QS0
         sPHWAwzXs0JEMH61MwV24mYzvbwdyoMsvfFtO9StDtAsynaIwWdmoyev7pJeCfl4OuJP
         U6yfgmSOSeMqYG4VyLqa0m8X/2UXAh5F4hYkRCq8kjUrRLwj1G2oe1rp2bCTp/m5n+Bh
         2cHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=WRVIFs33r3ON7s1O5MK2VQ5yAl5/kACrQl2hNe16evw=;
        b=UcqJ0rWzT0+ejnlMVkGLgwakDvo5vhMdyPuYjNwRXOvtKoxB2baNFfha6yK3Q5lDwW
         fOQoRbGSOfB1TpXS39GKK904D7amzG81zx2lrV0iwx4CnHuuKvZQlwOvAjvvkhPAp3hg
         6/v6o0bbNY+RaxctMi4UUQxg+3Ea7F1sCkKZrjCNnwI7zqG0oPEZ9mq/yebwDA6Kdpby
         JKP14zu6REfVKqAo4YVAQjw6ZmIm25tC3IFgfeqpRQ1s1msRrjbqkbTi3XcUkL5qSOQz
         FeYvSyj4+Yq3DVZt9dWxyZDA0blQDE//E1xmne3pYV8+rmxDFz8sLlJVzB30vod/tQ5z
         l6rg==
X-Gm-Message-State: AOAM5306Rp8AqjdtDfJewalvO3ZfzbH0OlzdUscxMJQ00lCBA4Q5sknB
        T3ZyGtXzRjy5+iYqGptNXricFg==
X-Google-Smtp-Source: ABdhPJxDumVEcgQbj8SI+qzLPCB1IEGyK0sHFknDJM7Kt/qk4jg1FEeJP0d6CydRNEOVFq9rQyOjRg==
X-Received: by 2002:a17:902:7403:b0:14f:9f55:f9e6 with SMTP id g3-20020a170902740300b0014f9f55f9e6mr1917652pll.21.1645694110595;
        Thu, 24 Feb 2022 01:15:10 -0800 (PST)
Received: from localhost ([223.184.83.228])
        by smtp.gmail.com with ESMTPSA id t22sm2905028pfg.92.2022.02.24.01.15.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Feb 2022 01:15:10 -0800 (PST)
Date:   Thu, 24 Feb 2022 14:45:08 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Lukasz Luba <lukasz.luba@arm.com>
Cc:     linux-kernel@vger.kernel.org, dietmar.eggemann@arm.com,
        rafael@kernel.org, daniel.lezcano@linaro.org, nm@ti.com,
        sboyd@kernel.org, mka@chromium.org, dianders@chromium.org,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org
Subject: Re: [PATCH v3 4/4] Documentation: EM: Describe new registration
 method using DT
Message-ID: <20220224091508.fp7emu2zyhavkfkt@vireshk-i7>
References: <20220224081131.27282-1-lukasz.luba@arm.com>
 <20220224081131.27282-5-lukasz.luba@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220224081131.27282-5-lukasz.luba@arm.com>
User-Agent: NeoMutt/20180716-391-311a52
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24-02-22, 08:11, Lukasz Luba wrote:
> The new registration method allows to get power values from the DT OPP
> definition. The new OPP entry property "opp-microwatt" contains total
> power expressed in micro-Watts. Align the EM documentation with this
> new possible registration method of 'advanced' EM.
> 
> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
> ---
>  Documentation/power/energy-model.rst | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/Documentation/power/energy-model.rst b/Documentation/power/energy-model.rst
> index 5ac62a7b4b7c..719253fd5215 100644
> --- a/Documentation/power/energy-model.rst
> +++ b/Documentation/power/energy-model.rst
> @@ -113,6 +113,16 @@ to: return warning/error, stop working or panic.
>  See Section 3. for an example of driver implementing this
>  callback, or Section 2.4 for further documentation on this API
>  
> +Registration of 'advanced' EM using DT

I am not really sure if this should be called *Advanced*. Just call it
registration of EM using DT.

> +~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> +
> +The 'advanced' EM can also be registered using OPP framework and information
> +in DT "operating-points-v2". Each OPP entry in DT can be extended with a
> +property "opp-microwatt" containing micro-Watts power value. This OPP DT
> +property allows a platform to register EM power values which are reflecting
> +total power (static + dynamic). These power values might be coming directly
> +from experiments and measurements.
> +
>  Registration of 'simple' EM
>  ~~~~~~~~~~~~~~~~~~~~~~~~~~~
>  
> -- 
> 2.17.1

-- 
viresh
