Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BAEB6244D5B
	for <lists+devicetree@lfdr.de>; Fri, 14 Aug 2020 19:12:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728180AbgHNRMP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Aug 2020 13:12:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726270AbgHNRMP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Aug 2020 13:12:15 -0400
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com [IPv6:2a00:1450:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6485FC061384
        for <devicetree@vger.kernel.org>; Fri, 14 Aug 2020 10:12:14 -0700 (PDT)
Received: by mail-lf1-x143.google.com with SMTP id b11so5174876lfe.10
        for <devicetree@vger.kernel.org>; Fri, 14 Aug 2020 10:12:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=oTnqLQcun1oAd2jUgg7+f/faki/0xT/2c6vC8h9xpbw=;
        b=N3zwz4kQcVvMDiCWrRIXQz2rRp6Dmu6TWX489BnbDLouEXbPNNxetAQAHQn7vcfPdu
         D9dcGIwxDz5vTquvaVCKu8GwUZ6SxBY5udXv80hJnLBc4vR2jd3e4cGFahp67Xp6XZWE
         mxNwn2EuMvR6D0c6CP82qtNyRQrf2d8koRH03SsRhkmFhZqZWBxAlMQtIJMenvRsPp79
         9bea1KRn3PBOL0pvZXzkH2XhjfiP90TOPxtXA0XCDKHhIlzkJ+CPggG27aaCShGiNEC1
         RnhRYAG3Nx4KQ15TPkWH5lpOwxRJoFnFcRUEEF0+RctAWC1tIcMCmdR4DKvdpiyvkLPf
         VQdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=oTnqLQcun1oAd2jUgg7+f/faki/0xT/2c6vC8h9xpbw=;
        b=aElwQsroCVkfqUxABsHhbRByIcnKXnfOgu6ZBSOvr2hLnGestkKP2mc7aaZ7l7QW8q
         Xl2DG1Mv6Y3jjYexk4tA56Afr0npTBJkDdx8zrkrLIq6MNkv9yjA6mBIxYFqU4rbFdX+
         /P16fexWvCTEfEYRQUKKfguYZ00zpTIsadGB4RlkNqlOKLwjfb3KpMZuZu9P/K0kLGYs
         buQTQnD19i5ghCu71jBr/NmvITqSRey1GwLzZcNJYmLFyt772WPu2PRRXOqK6Yo88VtE
         r7CglDL5PH3FSi9g9/W8Or+ojZhN8FaOAB0wr0qjFOS/jwFTMhPu5k2/rZ6cgaioc6C7
         sijg==
X-Gm-Message-State: AOAM5303AxMRVDP/20GHcSL7Uda3k1a9fjeT8BaGzDZMFpRwv+1jsPuT
        GAV0Gukn9mWyhDRTG4JTy+xFIOW6DHXkYQ==
X-Google-Smtp-Source: ABdhPJwthnbVLKpJB0/hPo/55RCT2z4Bd1DEwwzsboqMb6G7MLrh7IK+1wUoKkMpH/2PdYyI/Fnvuw==
X-Received: by 2002:ac2:5468:: with SMTP id e8mr1656731lfn.83.1597425132894;
        Fri, 14 Aug 2020 10:12:12 -0700 (PDT)
Received: from [192.168.43.7] ([188.162.64.200])
        by smtp.gmail.com with ESMTPSA id q10sm1874788ljh.110.2020.08.14.10.12.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Aug 2020 10:12:12 -0700 (PDT)
Subject: Re: [PATCH v10 2/5] drm/msm/dp: add displayPort driver support
To:     Tanmay Shah <tanmay@codeaurora.org>, swboyd@chromium.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, robdclark@gmail.com
Cc:     linux-kernel@vger.kernel.org, freedreno@lists.freedesktop.org,
        seanpaul@chromium.org, daniel@ffwll.ch, airlied@linux.ie,
        aravindh@codeaurora.org, abhinavk@codeaurora.org,
        khsieh@codeaurora.org, Chandan Uddaraju <chandanu@codeaurora.org>,
        Vara Reddy <varar@codeaurora.org>,
        Guenter Roeck <groeck@chromium.org>
References: <20200812044223.19279-1-tanmay@codeaurora.org>
 <20200812044223.19279-3-tanmay@codeaurora.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Message-ID: <324d61b6-fc26-03ea-f8af-ff74a9767da2@linaro.org>
Date:   Fri, 14 Aug 2020 20:12:09 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200812044223.19279-3-tanmay@codeaurora.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

On 12/08/2020 07:42, Tanmay Shah wrote:
> From: Chandan Uddaraju <chandanu@codeaurora.org>

[skipped]

> +		} else if ((dp_parser_check_prefix("ctrl", clk_name) ||
> +			   dp_parser_check_prefix("stream", clk_name))  &&
> +			   ctrl_clk_index < ctrl_clk_count) {
> +			struct dss_clk *clk =
> +				&ctrl_power->clk_config[ctrl_clk_index];
> +			strlcpy(clk->clk_name, clk_name, sizeof(clk->clk_name));
> +			ctrl_clk_index++;
> +
> +			if (!strncmp(clk_name, "ctrl_link",
> +					strlen("ctrl_link")) ||
> +					!strncmp(clk_name, "stream_pixel",
> +					strlen("ctrl_pixel")))

This should be "stream_pixel", I believe. I don't like macros, but most 
probably it would help here. Also function/brace alignment could be 
better (sorry, it really hides the issue here).


> +				clk->type = DSS_CLK_PCLK;
> +			else
> +				clk->type = DSS_CLK_AHB;
> +		}
> +	}


-- 
With best wishes
Dmitry
