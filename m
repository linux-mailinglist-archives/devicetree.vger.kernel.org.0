Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 86F892A2BBD
	for <lists+devicetree@lfdr.de>; Mon,  2 Nov 2020 14:43:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725852AbgKBNn3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Nov 2020 08:43:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725836AbgKBNn3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Nov 2020 08:43:29 -0500
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7307C061A48
        for <devicetree@vger.kernel.org>; Mon,  2 Nov 2020 05:43:28 -0800 (PST)
Received: by mail-wm1-x341.google.com with SMTP id 205so1800362wma.4
        for <devicetree@vger.kernel.org>; Mon, 02 Nov 2020 05:43:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=mfKBeD4fiXTCoEtzR3WkNNJyJEURTLKGrVDQO6IkliM=;
        b=cVkQJTnCjfBar8bMUhCyQlY6NBjef7UxGui8W+iKgFzgtMfWzOKQPVzwUgSwmzU0th
         P9Fk9hSPwRk3llvxISfb4gdJ1oLahMM1fmJ7zNVDMNx2hFWSOKyIV77SJnCdibWP6suU
         JFerKCnRMv1SPia1lvVdFKHdFAbdXBe6Nt2o8w3Vvvdze7WlRSatKlm2uY1hbQ7BXT3P
         5n4ZUHFTjFoA+l+/4AHonvxZjbP7xgBiMRErE2K/lPInLr6NVqyVJ38ehkyOVbbN/9we
         v8F/mNfoXaPnLwGVCFxjOX+yO+x75jqKUzcJ8I0wM79PZDup5JBSReJcWPZXfOle1/75
         83Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=mfKBeD4fiXTCoEtzR3WkNNJyJEURTLKGrVDQO6IkliM=;
        b=ZNAjcEOEY1iwPOUlmBJcYJdhMGp/nB31XjUb5Vtd0Ak0DwTM2oWQ/KOvSkpxWgtZ1a
         GLHuIr/4rCAC/sKkgh9973ClN1mrTK7LQbAuP4kgUNikv/ZIXyGqFuMssz5fenQRDsJ7
         0iDU7JkQLLPQlLYQMq8+oRAF/nrNNg5u4YMvEoljAk7q0z5ysH0VXeho2rdOAvcqlHS1
         e8ndTOpVzqAhsjjgA+9UfJLsHker55Kfzy4iLg2nAi4j3fbjOLhukXbW3CQh5Fqn8z9Z
         SORNiX3A6iU3F1F8TW/nm4HMZeP3txl8Lxhzv9CXPtirFr78wZelRB2UxNYNtBTx1dJt
         b5Sg==
X-Gm-Message-State: AOAM5313okprYMiSyGG5+54fblctnXwdBFVasjZFnYgRlDpxARCdq98F
        H36O+gXDO/Xe2EkVyJZ14rnXEw==
X-Google-Smtp-Source: ABdhPJz0K6pXqtJ2PhgnwSFED6vdeFbe2TdR5EYo4AZ7bBruyE3BYiACCQ8EYnThnBVbjiO57E5gnw==
X-Received: by 2002:a1c:4b04:: with SMTP id y4mr5834274wma.93.1604324607307;
        Mon, 02 Nov 2020 05:43:27 -0800 (PST)
Received: from google.com ([2a00:79e0:d:210:f693:9fff:fef4:a7ef])
        by smtp.gmail.com with ESMTPSA id k84sm9970495wmf.42.2020.11.02.05.43.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2020 05:43:26 -0800 (PST)
Date:   Mon, 2 Nov 2020 13:43:23 +0000
From:   Quentin Perret <qperret@google.com>
To:     Lukasz Luba <lukasz.luba@arm.com>
Cc:     linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-doc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
        amitk@kernel.org, corbet@lwn.net, daniel.lezcano@linaro.org,
        Dietmar.Eggemann@arm.com, morten.rasmussen@arm.com,
        dianders@chromium.org, mka@chromium.org, rnayak@codeaurora.org,
        rafael@kernel.org, sudeep.holla@arm.com, viresh.kumar@linaro.org,
        sboyd@kernel.org, nm@ti.com
Subject: Re: [PATCH v3 1/4] PM / EM: Add a flag indicating units of power
 values in Energy Model
Message-ID: <20201102134323.GA2221764@google.com>
References: <20201019140601.3047-1-lukasz.luba@arm.com>
 <20201019140601.3047-2-lukasz.luba@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201019140601.3047-2-lukasz.luba@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Monday 19 Oct 2020 at 15:05:58 (+0100), Lukasz Luba wrote:
> diff --git a/include/linux/energy_model.h b/include/linux/energy_model.h
> index b67a51c574b9..2c31d79bb922 100644
> --- a/include/linux/energy_model.h
> +++ b/include/linux/energy_model.h
> @@ -29,6 +29,8 @@ struct em_perf_state {
>   * em_perf_domain - Performance domain
>   * @table:		List of performance states, in ascending order
>   * @nr_perf_states:	Number of performance states
> + * @milliwatts:		Flag indicating the power values are in milli-Watts
> + *			or some other scale.
>   * @cpus:		Cpumask covering the CPUs of the domain. It's here
>   *			for performance reasons to avoid potential cache
>   *			misses during energy calculations in the scheduler
> @@ -43,6 +45,7 @@ struct em_perf_state {
>  struct em_perf_domain {
>  	struct em_perf_state *table;
>  	int nr_perf_states;
> +	bool milliwatts;
>  	unsigned long cpus[];
>  };

Make that an int please, sizeof(bool) is impdef.

With that:

Reviewed-by: Quentin Perret <qperret@google.com>
