Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3264A421DB7
	for <lists+devicetree@lfdr.de>; Tue,  5 Oct 2021 06:51:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231730AbhJEExr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Oct 2021 00:53:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231740AbhJEExq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Oct 2021 00:53:46 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 751FEC061753
        for <devicetree@vger.kernel.org>; Mon,  4 Oct 2021 21:51:56 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id k23so2251386pji.0
        for <devicetree@vger.kernel.org>; Mon, 04 Oct 2021 21:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=kxVX01zuZBUirai+6B2SoPW2CcwR7nx7sC9W6AGzh80=;
        b=FDxjPWLHmD+ysuPDGN5rV1T1RisFrf+gKFZ1DefEurFe4WUBwMptd9Skz5j5TVfodP
         +VJk7KLuG1fEbOpa9leAJiB/x9xB/mtq+nZraW50TPfko2n5hja+tajEY1Me11wqijEI
         +rS7WtIeET4qMfZa2SUmk1mrIFnXlhsD2LCeuWNCxJ5BAWTu0QY4Ol1at8ptlpGoLW9t
         Ckp5YNH9UXKpVYXlezaCra9To4TmUT8ELdf71lSJAZ/KJ2bAb2Wtk/R2UkVf/rN5KBG4
         NAdII8dCKVR27UojQVi7FH2k51ZQyTsGfULV50rpGlWr9t5WsZVysj+RIi3VBLJ87XI5
         4HaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=kxVX01zuZBUirai+6B2SoPW2CcwR7nx7sC9W6AGzh80=;
        b=gachpv5sc7MkeH1/B7MVF37LhzUFPyKmlLjxLg36o6Lt9sObd/eYfIbNAKQFYYpxnN
         AnjU/pLb/3COQ5yR3OAKWvfbZA8uNgbEti9+IBU6agM1jCU8VGL5Aka+iMW7ttSEBqQo
         LaH5BLn3bgrmRKEWLyqF73ljtySn5WlvT78HJA7sfaOM481TBZT8El3Mhvu0ODbM+KIo
         Q5grhG7XM+4QO5Vtp9R2jKp2mHhlh2Z1+2ZSe6kilKKSg7Sc5V4wC/TPZccHS6UMX3EC
         cwU1U6z5kQFVHm8M9ua+yWICaoWDcHgBI8vFvir7BOS+GNRmKuP1+E0Xoxx0Si4ogC4e
         JD5A==
X-Gm-Message-State: AOAM533LfHM1bEprivP8i1Tt7B9H7+SQ8ZqR6WdVd2i6Q6/+ocWEx+Hs
        9ZR2sggVz4cxWPNT1/CxyxkTFQz/w0Xo
X-Google-Smtp-Source: ABdhPJyF8IV3fNnaMskmP23kUjDD9683cDHaAVdrho93/FUHhfnPDaFKyxL91l6eQ0xOL6HWpeuMZA==
X-Received: by 2002:a17:90a:4207:: with SMTP id o7mr1297339pjg.192.1633409515689;
        Mon, 04 Oct 2021 21:51:55 -0700 (PDT)
Received: from workstation ([120.138.13.79])
        by smtp.gmail.com with ESMTPSA id x35sm5006826pfh.52.2021.10.04.21.51.52
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 04 Oct 2021 21:51:55 -0700 (PDT)
Date:   Tue, 5 Oct 2021 10:21:51 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Viresh Kumar <viresh.kumar@linaro.org>, rafael@kernel.org,
        robh+dt@kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: cpufreq: cpufreq-qcom-hw: Convert to YAML
 bindings
Message-ID: <20211005045151.GB4195@workstation>
References: <20211004044317.34809-1-manivannan.sadhasivam@linaro.org>
 <20211004070531.sexvnqmnkoe4j6a2@vireshk-i7>
 <20211004072222.GE16442@workstation>
 <YVszd2UMw9F5LqWC@ripper>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YVszd2UMw9F5LqWC@ripper>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 04, 2021 at 10:01:43AM -0700, Bjorn Andersson wrote:
> On Mon 04 Oct 00:22 PDT 2021, Manivannan Sadhasivam wrote:
> 
> > On Mon, Oct 04, 2021 at 12:35:31PM +0530, Viresh Kumar wrote:
> > > On 04-10-21, 10:13, Manivannan Sadhasivam wrote:
> > > > Convert Qualcomm cpufreq devicetree binding to YAML.
> > > > 
> > > > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > > > Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
> > > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > 
> > > I am not sure if Rob ever gave this.
> > > 
> > 
> > I'm not fooling you :)
> > https://patchwork.kernel.org/project/linux-pm/patch/20210701105730.322718-5-angelogioacchino.delregno@somainline.org/#24312445
> > 
> > > > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > > 
> > > Why double signed off ?
> > > 
> > 
> > Ah, it came while I applied the patch from Angelo's series. If you want
> > I can send a new version removing one or you can do that while applying.
> > 
> 
> If you wrote the patch, then Angelo handled it, then you handled it
> again the double S-o-b captures that nicely.
> 
> Looking it from the other angle, if you remove the first S-o-b, then you
> forgot to signed it off when you authored the original patch and if you
> skip the last S-o-b then you didn't adequately sign off the final
> result.
> 

Makes sense! I'll leave it as it is.

Thanks,
Mani

> Regards,
> Bjorn
> 
> > Let me know.
> > 
> > Thanks,
> > Mani
> > 
> > > -- 
> > > viresh
