Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 40BD011D9DE
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2019 00:19:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730846AbfLLXS0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Dec 2019 18:18:26 -0500
Received: from mail-pf1-f195.google.com ([209.85.210.195]:42505 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730935AbfLLXS0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Dec 2019 18:18:26 -0500
Received: by mail-pf1-f195.google.com with SMTP id 4so255831pfz.9
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2019 15:18:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=eSKr2UvQeHnJ1J34wBZpdetenzi2m5XSJBxN7DNlQ2U=;
        b=SqE7s+D+7uwPKPM01MKY8oSngyBm+MyDtBx3EMaURnZlcRc9cZLVwyPcM9E7RaS0If
         gBJ0ZA82j4XiatzJos4nkUSt7Py3z+m4HhThL/xpPotRmKvTa5E4jQGNKF4jTf/al9ZZ
         YF+aV2W6PXqnl0wi2wEPyXF18+BJt6WuD0yikFEC1bzwk1R3OI8WVWPdgJbg7QN3O/ZW
         BZyYYzpeGJdQEWy35Qry6OSJcq6txJITRM7VUinCyu+VF7csX6LNhWifs2Pia/knUAlY
         /K74fOCw67GjEOSU7RqgY5sM9zri12PDWF1IvaL6O01w6If4EVfREVTMT/PNrEtI++Es
         VUPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=eSKr2UvQeHnJ1J34wBZpdetenzi2m5XSJBxN7DNlQ2U=;
        b=Xrgqn9wm0en7rq65SpYWCKXxhP7pn13Cia8/oG/9v18WLB9+GFfKtG3N4eT6ELtrXx
         vsU0yy5vCEcfRM3KIUOpTEJnxv/F9UQFCKIim9ISJ/OtX+brt0xxCqthor/I3OV43V0J
         imqglNA7ABgSxe3pD+zxvpwf4ex4wM80YH3MqDi/wb1L9iZwSRs3RcxpLkfar3uWGG9t
         iS/Mys5jziOsCNE2LxOQ+7/cWgPGxQJarORIMYQXenGErfxfB25xNx87p1bJHNHePFa7
         0r+VN0anDB/Z7XiHEpTGLpqZH7te7jzHp4UwiqcDYdNSv+HAYDlWogeBdA+EgGGGFnG3
         AKfg==
X-Gm-Message-State: APjAAAWGfIX7RPVwnGs2icz6QyR3XGWriBT4aOGwtRH9g1fvbytAxrvN
        ioemeUrT5LqMyAjuzGIK0Y8erQ==
X-Google-Smtp-Source: APXvYqym66f1Av27Zu/JBw6fk6bxrLmnIsu5jCaB5d3pHu4LOGzJu78o+ZCtv/f7KMpycLd9pd+EYQ==
X-Received: by 2002:aa7:9f94:: with SMTP id z20mr13164035pfr.111.1576192705032;
        Thu, 12 Dec 2019 15:18:25 -0800 (PST)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id p68sm8616675pfp.149.2019.12.12.15.18.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2019 15:18:24 -0800 (PST)
Date:   Thu, 12 Dec 2019 15:18:21 -0800
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Douglas Anderson <dianders@chromium.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Andy Gross <agross@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kiran Gunda <kgunda@codeaurora.org>,
        Rajendra Nayak <rnayak@codeaurora.org>, swboyd@chromium.org,
        mka@chromium.org, Sandeep Maheswaram <sanm@codeaurora.org>,
        Amit Kucheria <amit.kucheria@linaro.org>,
        Maulik Shah <mkshah@codeaurora.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 5/7] arm64: dts: qcom: sc7180: Avoid "memory" for cmd-db
 reserved-memory node
Message-ID: <20191212231821.GP3143381@builder>
References: <20191212193544.80640-1-dianders@chromium.org>
 <20191212113540.5.I4e41d4d872368e2e056db2ec8442ec18d3f7ef08@changeid>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191212113540.5.I4e41d4d872368e2e056db2ec8442ec18d3f7ef08@changeid>
User-Agent: Mutt/1.12.2 (2019-09-21)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 12 Dec 11:35 PST 2019, Douglas Anderson wrote:

> By using "memory" we trigger we trigger the "schemas/memory.yaml"
> rules when we run "dtbs_check" which then complains that we don't have
> a "device_type" of "memory".
> 

I like "memory" here, so we have a whole bunch of these to fix up in
various dts files...

@Rob, should we move away to descriptive node names or to some other
generic name for entries in reseved-memory?

Regards,
Bjorn

> Looking at the "reserved-memory.txt" bindings, subnodes shouldn't just
> be the word "memory".  Presumably using just "cmd-db" should be OK for
> a node name.
> 
> Fixes: e0abc5eb526e ("arm64: dts: qcom: sc7180: Add cmd_db reserved area")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> 
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> index d114feade8e7..9766867abc88 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -61,7 +61,7 @@ reserved_memory: reserved-memory {
>  		#size-cells = <2>;
>  		ranges;
>  
> -		aop_cmd_db_mem: memory@80820000 {
> +		aop_cmd_db_mem: cmd-db@80820000 {
>  			reg = <0x0 0x80820000 0x0 0x20000>;
>  			compatible = "qcom,cmd-db";
>  			no-map;
> -- 
> 2.24.1.735.g03f4e72817-goog
> 
