Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E0C63F9DAE
	for <lists+devicetree@lfdr.de>; Fri, 27 Aug 2021 19:27:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236996AbhH0RUA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Aug 2021 13:20:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236088AbhH0RT7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Aug 2021 13:19:59 -0400
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2F65C0613CF
        for <devicetree@vger.kernel.org>; Fri, 27 Aug 2021 10:19:10 -0700 (PDT)
Received: by mail-ot1-x32e.google.com with SMTP id g66-20020a9d12c8000000b0051aeba607f1so8787063otg.11
        for <devicetree@vger.kernel.org>; Fri, 27 Aug 2021 10:19:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=LUINJeVF8Mv+Qni9gSoxQ0tMUJKZ5DY+dY1yDHy05KU=;
        b=wXzAoFu3YPB/qKtRMuy9NS/vw+iY8qqKSMhL91DwkH3fx1VFILrLHQtvDJmfVw/vWt
         u0Gmea/jMmYkBs0l2KLAt0hNR6cljTmPyyig+3a8NslpVjwrpPlq/V5HKevdiWunMVAL
         5dYm2M2SZOdSfBVuIJwiptec/K/PECRi7UdwO+40h2rvwcR4JLB8PISkchwuwfkkmICf
         LMlN97nC/yJnI43xCuUk2ZX2f3sSe5el182ghH6U7YLnuVBQgALrCZERCZN1HTeZtCLz
         gE/n61OXCM0PdihuljqD6O/yjb8PoVAPYXmmW+ePkLzJ1THBUJhVV9Td6wGBA/sa2z1B
         Wjtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=LUINJeVF8Mv+Qni9gSoxQ0tMUJKZ5DY+dY1yDHy05KU=;
        b=YOFsaSE6WAKcqkxsp8s8tF5FDZQDBDjC/Vx+g+oIXnw9/rhHqM2NuwaR5lEUG5aYyf
         TlGs/b2dH+YikQACc8O3iHVF0L/4ytflT+BdCqL7IXDiX3DkcJkQ6sKTK0odemf9oEwX
         xh0WRzaHlO5MuL1yJpwBpDJjCsVvMVHAiBHVBgVNECaZgB47hRfQajXsxKTaoe0B9kUW
         vGvv1/qX3U8uJTS2wD/0CiJd8bnWoFxRfbTJOE3qMBXxVGBbULsSah83CWYpn9ZqwYBz
         uXjOsT6V+gWIy/97E9g+3HXMBagTV/C94brU7olPZvlcv2VMcNASnNNRHovkI4zkY2/4
         OrlQ==
X-Gm-Message-State: AOAM532f5sjjiIjl4YIKA4luSUvrar41O/fCQlT5p+jpbqeoQwheZQwx
        BTrknlX5gBrv79KXPJvjPtv62g==
X-Google-Smtp-Source: ABdhPJzpZGHJr2Nwej0U+Rd/3Jh75eu1bT9hRrxL9fP6KKzmFMhs9Syiz/V9cJhMDnuwNkWiUOuqsQ==
X-Received: by 2002:a05:6830:314b:: with SMTP id c11mr9064499ots.169.1630084750178;
        Fri, 27 Aug 2021 10:19:10 -0700 (PDT)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id m20sm1461021oiw.46.2021.08.27.10.19.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Aug 2021 10:19:09 -0700 (PDT)
Date:   Fri, 27 Aug 2021 10:20:23 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Kuogee Hsieh <khsieh@codeaurora.org>
Cc:     robdclark@gmail.com, sean@poorly.run, swboyd@chromium.org,
        vkoul@kernel.org, agross@kernel.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, abhinavk@codeaurora.org,
        aravindh@codeaurora.org, mkrishn@codeaurora.org,
        kalyan_t@codeaurora.org, rajeevny@codeaurora.org,
        freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sc7280: fix display port phy base
 address offset
Message-ID: <YSke10cPLS9QlKKZ@ripper>
References: <1630083316-2028-1-git-send-email-khsieh@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1630083316-2028-1-git-send-email-khsieh@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri 27 Aug 09:55 PDT 2021, Kuogee Hsieh wrote:

So the order was mixed up, 0x088eaa00 got the wrong length and you got
one hardware block too many in there?

> Fixes: 9886e8fd8438 ("arm64: dts: qcom: sc7280: Add USB related nodes")
> Signed-off-by: Kuogee Hsieh <khsieh@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index c29226b..77b0b4e 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -2918,15 +2918,11 @@
>  			dp_phy: dp-phy@88ea200 {
>  				reg = <0 0x088ea200 0 0x200>,
>  				      <0 0x088ea400 0 0x200>,
> -				      <0 0x088eac00 0 0x400>,
> +				      <0 0x088eaa00 0 0x200>,
>  				      <0 0x088ea600 0 0x200>,
> -				      <0 0x088ea800 0 0x200>,
> -				      <0 0x088eaa00 0 0x100>;
> +				      <0 0x088ea800 0 0x200>;
>  				#phy-cells = <0>;
>  				#clock-cells = <1>;
> -				clocks = <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
> -				clock-names = "pipe0";
> -				clock-output-names = "usb3_phy_pipe_clk_src";

This is not "base address offset", please fix $subject.


Looking at this makes me feel that the dp-phy node was copy-pasted from
the usb3-node and that this patch corrects a copy-paste issue. Seems
like this would be an excellent thing to write in a commit message.

Thanks,
Bjorn

>  			};
>  		};
>  
> -- 
> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project
> 
