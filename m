Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3F9F202C74
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2020 21:42:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730220AbgFUTmO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Jun 2020 15:42:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730170AbgFUTmN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 Jun 2020 15:42:13 -0400
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com [IPv6:2607:f8b0:4864:20::1043])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A87B8C061795
        for <devicetree@vger.kernel.org>; Sun, 21 Jun 2020 12:42:12 -0700 (PDT)
Received: by mail-pj1-x1043.google.com with SMTP id d6so7396656pjs.3
        for <devicetree@vger.kernel.org>; Sun, 21 Jun 2020 12:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=edDlfwxS4JG2joqhxuZATnt//vrApPWYWnopz3fBI3E=;
        b=ezrq2yWqYPsw3ZpVM1xyVihsUx8cDb4/foRHKIqz1sPMPQ40Lz6XNPg1SFZo6nfRoB
         glWcvqDrxmrVCSlavgsWO/NHZIlci/FJdzR7Xcvj0ILPEK+Fkx6sV+QiFxtVtfFetKBy
         A4jP/jSmNUnQJlIxTVdHRWU1QzD54OLXgX8bcSEu9f8JzSrBtWSkTedHSOfLgIR6/USJ
         x7d5vhd0sTE7YhBrisw11bYdWq0CCSIgWi04aGKUKEl2gltCTQT1jHJHpoPm90EOD8V4
         vxsL1PPqIC3ZN2Qz+4FQg7HtoMz2tw3yOnYZopzK065xTjV1SJkcUCEb3iFosvPRoALM
         nAYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=edDlfwxS4JG2joqhxuZATnt//vrApPWYWnopz3fBI3E=;
        b=nm955NMuvScBIdom7iym8gNP+Z96brP6pXqrOaW9Btvq5EnGS+IuFASe22jS/GXIwO
         uZ3Mw8NCEohl8/po0mPpjTatVmBQzt2hGMIEAUe8DjVkXLL7qOo1lCeR2j2Na5sN4xKS
         9UFRCzZ2ZXoDasopH/SO/rZMzXw0XOG5KiscvIMvRvzJryGVJ1KDBaxu/roA02AhAibq
         lKeOSUGa198XW/zHQxBvPR9lo8oYGMJkRm4M0JY94hnJPe8/sLfAYuXM3cmtBrfAGFcr
         qRLvYF/s6Mmkbc/VR2MyRtJ4OcI/gA6VYi+cx8YwhBlKyiV+rZJruo+NFevauFpPAJNL
         x4xg==
X-Gm-Message-State: AOAM533LZRsTQZ8OdYi6TGFwItIzhhGaMD2edrm02wMbLt8aQOaLeNcv
        GHcYbTNBJRTeFXKeff93Q6qdVg==
X-Google-Smtp-Source: ABdhPJwnw8fsGrWvq0AXgc6Qqqiw/3R12/3C+LSjSsBVR+N4dN1XxcFxGXTGEs4sNLcYmTxlLftMHA==
X-Received: by 2002:a17:90a:c797:: with SMTP id gn23mr14220135pjb.165.1592768531995;
        Sun, 21 Jun 2020 12:42:11 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id b29sm11986557pfr.159.2020.06.21.12.42.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Jun 2020 12:42:11 -0700 (PDT)
Date:   Sun, 21 Jun 2020 12:39:25 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        "open list:DRM DRIVER FOR MSM ADRENO GPU" 
        <linux-arm-msm@vger.kernel.org>, devicetree@vger.kernel.org,
        Patch Tracking <patches@linaro.org>,
        linaro-kernel@lists.linaro.org
Subject: Re: [PATCH] arm64: dts: qcom: sm8250: add I2C and SPI nodes
Message-ID: <20200621193925.GN128451@builder.lan>
References: <20200606131300.3874987-1-dmitry.baryshkov@linaro.org>
 <20200621072655.GH128451@builder.lan>
 <CAA8EJprHke0=OhpP2WwPtJ-ttzOvx63j5BjHhZL0N1JO6uJZEQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAA8EJprHke0=OhpP2WwPtJ-ttzOvx63j5BjHhZL0N1JO6uJZEQ@mail.gmail.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun 21 Jun 12:05 PDT 2020, Dmitry Baryshkov wrote:

> Hello,
> 
> On Sun, 21 Jun 2020 at 10:29, Bjorn Andersson
> <bjorn.andersson@linaro.org> wrote:
> >
> > On Sat 06 Jun 06:13 PDT 2020, Dmitry Baryshkov wrote:
> >
> > > Much like SDM845 each serial engine has 4 pins attached. Add all
> > > possible I2C and SPI nodes for all 20 serial engines.
> > >
> > > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >
> > This looks good, can you please give me a r-b or a-b on the patch adding
> > the TLMM node so that I can merge the two.
> 
> I don't have it in my mbox, sorry. But anyway for TLMM patch:
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Tested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 

That works :)

Applied this and the TLMM patch.

Thank you,
Bjorn

> -- 
> With best wishes
> Dmitry
