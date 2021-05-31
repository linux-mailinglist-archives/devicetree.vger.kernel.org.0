Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 743C83964B0
	for <lists+devicetree@lfdr.de>; Mon, 31 May 2021 18:06:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233380AbhEaQHn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 May 2021 12:07:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230381AbhEaQFm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 May 2021 12:05:42 -0400
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7920DC061246
        for <devicetree@vger.kernel.org>; Mon, 31 May 2021 07:42:25 -0700 (PDT)
Received: by mail-ot1-x32b.google.com with SMTP id u25-20020a0568302319b02902ac3d54c25eso11304852ote.1
        for <devicetree@vger.kernel.org>; Mon, 31 May 2021 07:42:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=qZo5Xl3B/iGBgaTUfAAHoJzK4eNGP09VMkA2WVAMmEA=;
        b=G+irpJZSuBkS7cMmsk66PyJ6PMjD7BPfmYzfGXwe2yjjAyO9YBKNHPmHBrfhZnEkKt
         teLlEfC3Hz6DZJ0P8+Ef+MdWamCQXdjA3qb+c1C9ca/mLXow0MJUrvoI/N9Z5Ed1XbQ5
         rfRFhTAmBXkGCYmKiBCXauu+zXzuYGoNgHKDDQsJWR4gZG4gRf9igb/Q2UDyr45Xly6I
         ZZ24zc+qc0AT6bIbshC6aHbkkncU4TDawmzDdnzGlrk00w3nG33LDl4pECinCR8xUPB7
         OIQsBUi2hzUC1KR6tcm6rxQCA6qdcBiiclUWPRstmH6XwyKVUPKgRfWLLPVhdKRwkoc5
         Z4Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=qZo5Xl3B/iGBgaTUfAAHoJzK4eNGP09VMkA2WVAMmEA=;
        b=aYEjMf4E9fSHYqNqgrlffT9ToICe9hTEMhKvEMLscOoBrwl35+84SaHN+IM5DMFPCj
         J8Mmixuch6Kmfl61Mla687R6NCsRd8Q/cyJT5+zx2Zywgn/mQE5kmn4Fc7ZR+tVGj8np
         jDhvsAf0echwMhrfq+5flKs/ppjMQ+YxlUG0BOzhH1OcgYWLxmlGsD+0oFBsDIrRiqQT
         sjwHDcX18JSVV4fR2fQwG1I8qrtFoOlNO5w2KantkxX8GtLvgz1jYEsptwqRGT25ilqZ
         BxFdAFRt3+QufhE1c/EIidD+ek+SNLhj9whF3CbmASwVEfGqUj1f2AWS7iYSMKwF+Pz/
         rgYQ==
X-Gm-Message-State: AOAM532RmKSWHpCDQfPyie8bMjWj707WQUv5Ka9REVy+09m9zKY3zZO1
        amsyjrTsYbQ4GTo6Pa8AJAFLsw==
X-Google-Smtp-Source: ABdhPJxKFWPIg9XMMPTnU9gnko2xdCi4qQvCCOI6yMaVDo812VQEIZywgAq5RhWPZ9HWgUtz/tIDaQ==
X-Received: by 2002:a9d:4d99:: with SMTP id u25mr4751897otk.248.1622472144886;
        Mon, 31 May 2021 07:42:24 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id e83sm2803421oia.40.2021.05.31.07.42.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 May 2021 07:42:24 -0700 (PDT)
Date:   Mon, 31 May 2021 09:42:22 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Clark <robdclark@gmail.com>,
        Sean Paul <sean@poorly.run>, Rob Herring <robh+dt@kernel.org>,
        Jonathan Marek <jonathan@marek.ca>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v2 3/4] arm64: dts: sdm845: move bus clock to mdp node
 for sdm845 target
Message-ID: <YLT1ziKiesQHEw1B@builder.lan>
References: <20210407150157.801210-1-dmitry.baryshkov@linaro.org>
 <20210407150157.801210-4-dmitry.baryshkov@linaro.org>
 <2dc79aad-33cd-7b17-368f-d52d60d46811@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2dc79aad-33cd-7b17-368f-d52d60d46811@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri 28 May 10:33 CDT 2021, Dmitry Baryshkov wrote:

> On 07/04/2021 18:01, Dmitry Baryshkov wrote:
> > Move the bus clock to mdp device node,in order to facilitate bus band
> > width scaling on sdm845 target.
> > 
> > The parent device MDSS will not vote for bus bw, instead the vote will
> > be triggered by mdp device node. Since a minimum vote is required to
> > turn on bus clock, move the clock node to mdp device from where the
> > votes are requested.
> 
> drm/msm patches were merged through the msm tree (targeting 5.13). Shouldn't
> we also merge these two patches (targeting 5.13 as fixes or 5.14)?
> 

Does the vote for the bus clock result in an improvement or is the
device simply not working without it?

Regards,
Bjorn

> > 
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >   arch/arm64/boot/dts/qcom/sdm845.dtsi | 8 ++++----
> >   1 file changed, 4 insertions(+), 4 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> > index 7395ef20b90e..55704804c2ca 100644
> > --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> > @@ -4136,9 +4136,8 @@ mdss: mdss@ae00000 {
> >   			power-domains = <&dispcc MDSS_GDSC>;
> >   			clocks = <&gcc GCC_DISP_AHB_CLK>,
> > -				 <&gcc GCC_DISP_AXI_CLK>,
> >   				 <&dispcc DISP_CC_MDSS_MDP_CLK>;
> > -			clock-names = "iface", "bus", "core";
> > +			clock-names = "iface", "core";
> >   			assigned-clocks = <&dispcc DISP_CC_MDSS_MDP_CLK>;
> >   			assigned-clock-rates = <300000000>;
> > @@ -4166,11 +4165,12 @@ mdss_mdp: mdp@ae01000 {
> >   				      <0 0x0aeb0000 0 0x2008>;
> >   				reg-names = "mdp", "vbif";
> > -				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
> > +				clocks = <&gcc GCC_DISP_AXI_CLK>,
> > +					 <&dispcc DISP_CC_MDSS_AHB_CLK>,
> >   					 <&dispcc DISP_CC_MDSS_AXI_CLK>,
> >   					 <&dispcc DISP_CC_MDSS_MDP_CLK>,
> >   					 <&dispcc DISP_CC_MDSS_VSYNC_CLK>;
> > -				clock-names = "iface", "bus", "core", "vsync";
> > +				clock-names = "gcc-bus", "iface", "bus", "core", "vsync";
> >   				assigned-clocks = <&dispcc DISP_CC_MDSS_MDP_CLK>,
> >   						  <&dispcc DISP_CC_MDSS_VSYNC_CLK>;
> > 
> 
> 
> -- 
> With best wishes
> Dmitry
