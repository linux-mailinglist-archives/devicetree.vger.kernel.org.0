Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F2D4D9BC38
	for <lists+devicetree@lfdr.de>; Sat, 24 Aug 2019 08:29:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726924AbfHXG3Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Aug 2019 02:29:25 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:39043 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726865AbfHXG3Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Aug 2019 02:29:25 -0400
Received: by mail-pf1-f196.google.com with SMTP id y200so393908pfb.6
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2019 23:29:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=lk3/fdWNHGpXSG4wNNd4Z51nWhNqtO7vua0PVil2X8k=;
        b=MmZFw4++6ajNtGcDjnTyEZX45owjmCdZ77MjxfCiLNnUI6FmuFS/kri/kbpAgTsdzS
         cbmA9XAWRXj9gfAsdppqv/ff/ZeRU7OAmyY2sLRehhuBXaRkxR5jGUl0UFL6zkuQHni0
         zxoPgS3ZxJ7tFveYa+1FM5lF8srYTmrTqv3kPOhfO7S9UxwXylkR14GzFHwvVQm7pXOS
         Nae34H7jXleGz0JuV2eEYKgAS3iu61sZHrhcV8OjMKr6/eMQb6/M0cnaJgDKBw+yqVzM
         TAS3vluUriOA9JL5s8zEqc92AGJXaaEXBJ8qjWeNMj+PxdX1mlEKh8h54TNcFgtodkBJ
         HyIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=lk3/fdWNHGpXSG4wNNd4Z51nWhNqtO7vua0PVil2X8k=;
        b=QSVllnI1OIMXSG6S6ehSaqIvYfiBr6ssHg/uOSythtoooSNQcT9e9u7lgPyZ7A0Bg4
         9GXTTfyWFWb3QLM+jahl+DDRY8a0Ik2zblyP6k/oARDqSjtTryzCfkfjGEDDMZOD2IqQ
         r1faY4sdxaDTsUNACXpOi4Ygbl4qic3KU4MgBdc43YpnzIknKbZj0r3EqD4eL4CAtpRe
         gnid8DmSwpbL0KHUqqY/JDStyIPFPaDEEPw+QKTmwCpSzJqsRQxxoVOL/L4nNOJxcCNP
         Namw69mEGaKV4cz91Wo68qa301T0numeDzsbKuNZmvs4GqYLDkLVxWovka3oaBxsJwCI
         zUzw==
X-Gm-Message-State: APjAAAXRQh2GklD2RE7nFzA/cJzJsziFEz0zdK8Mha2R4o/zw8DakAJU
        eJ4sXVjqcul6/Z0QUsUQ2ZTHUwCmbJo=
X-Google-Smtp-Source: APXvYqzP5aW10UjB6WQjHdGXFspmjnPMEW+2ogI0RPCqFngLxhyRS7aAGs3AqLaugeVz1K62+sqiHA==
X-Received: by 2002:a17:90a:ab01:: with SMTP id m1mr8623968pjq.69.1566628164813;
        Fri, 23 Aug 2019 23:29:24 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id w129sm8673188pfd.89.2019.08.23.23.29.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2019 23:29:24 -0700 (PDT)
Date:   Fri, 23 Aug 2019 23:31:15 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Vinod Koul <vkoul@kernel.org>
Cc:     Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/4] clk: qcom: clk-rpmh: Convert to parent data scheme
Message-ID: <20190824063115.GW26807@tuxbook-pro>
References: <20190822170140.7615-1-vkoul@kernel.org>
 <20190822170140.7615-3-vkoul@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190822170140.7615-3-vkoul@kernel.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 22 Aug 10:01 PDT 2019, Vinod Koul wrote:

> Convert the rpmh clock driver to use the new parent data scheme by
> specifying the parent data for board clock.
> 
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---
>  drivers/clk/qcom/clk-rpmh.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/clk/qcom/clk-rpmh.c b/drivers/clk/qcom/clk-rpmh.c
> index c3fd632af119..0bced7326a20 100644
> --- a/drivers/clk/qcom/clk-rpmh.c
> +++ b/drivers/clk/qcom/clk-rpmh.c
> @@ -95,7 +95,10 @@ static DEFINE_MUTEX(rpmh_clk_lock);
>  		.hw.init = &(struct clk_init_data){			\
>  			.ops = &clk_rpmh_ops,				\
>  			.name = #_name,					\
> -			.parent_names = (const char *[]){ "xo_board" },	\
> +			.parent_data =  &(const struct clk_parent_data){ \
> +					.fw_name = "xo_board",		\
> +					.name = "xo_board",		\

Iiuc .name here refers to the global clock namespace and .fw_name refers
to the device_node local name space. As such I really prefer this to be:

  .fw_name = "xo",
  .name = "xo_board",

This ensures the backwards compatibility (when using global lookup),
without complicating the node-local naming.

Regards,
Bjorn

> +			},						\
>  			.num_parents = 1,				\
>  		},							\
>  	};								\
> @@ -110,7 +113,10 @@ static DEFINE_MUTEX(rpmh_clk_lock);
>  		.hw.init = &(struct clk_init_data){			\
>  			.ops = &clk_rpmh_ops,				\
>  			.name = #_name_active,				\
> -			.parent_names = (const char *[]){ "xo_board" },	\
> +			.parent_data =  &(const struct clk_parent_data){ \
> +					.fw_name = "xo_board",		\
> +					.name = "xo_board",		\
> +			},						\
>  			.num_parents = 1,				\
>  		},							\
>  	}
> -- 
> 2.20.1
> 
