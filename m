Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E85364207B0
	for <lists+devicetree@lfdr.de>; Mon,  4 Oct 2021 10:59:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231414AbhJDJBo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Oct 2021 05:01:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229716AbhJDJBn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Oct 2021 05:01:43 -0400
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com [IPv6:2607:f8b0:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12E17C061749
        for <devicetree@vger.kernel.org>; Mon,  4 Oct 2021 01:59:55 -0700 (PDT)
Received: by mail-pg1-x533.google.com with SMTP id 66so15472415pgc.9
        for <devicetree@vger.kernel.org>; Mon, 04 Oct 2021 01:59:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=xctOnjrfnqdPEoa3tip3/LlkAqa1IsoEyPkzXNFOgl4=;
        b=vD0cU/s1vm+3nN3lc+qpbOlY1NZ1fr0ctroE7oqMauOwCiUPyYuFmJq2iHdj2yHSx9
         EiHX3gnukAK5oNEdfYHdgNjabX0okaUXHKZV0xiX2RaGT2lLxg1fYfi//6zJGwUdt+SY
         6BOCQO3a9i70wemWlftieZo7eGP2Wr3PQ1ffejuZ3hT7lGtrevzshVjLoXv7AcKUJpli
         CGZSFFeFtfihedDziaakSFO46idMianbhp9G9y+bwfSdj8uOL7ppMkYEu7t8FlVnmkTn
         P36E16bLWmXY5v5vwxtlsKffKjhKBwedcJx4nIH4iyzzaXuacMz9J59SzoxdFULOmpYF
         QDMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=xctOnjrfnqdPEoa3tip3/LlkAqa1IsoEyPkzXNFOgl4=;
        b=mRBI5x0vhxgz+6iY2YKAZxkOiaW0O1V4FidrqcHAH6awypzDUuuXtKSt4loMEZ4EhJ
         A5IRHgiwzDsm94nzdS/gZyjYbyhoHM7WeCf4h8RmqwwRjDziQd+9IjFvuGxNtiltoGe3
         1Am3F9vNpmPW+GGjt+Hv9vQ5LuOzRzQ7R/g9G2a8eVld30AAHMj28jTp/XpjdCMv98+p
         J+HOB2ufuS5jWoD0zPCG0dOyis+3dRkxjQv97TW2wWLxJRxpVC6EU97SucgK8tOWNuZR
         ClbLyMD6Yg9pOwCgh5SEiDTFw3s3Mt5haawvjVUHlrSzdVRcD+YOLQbahkDH501rNjj/
         gPSw==
X-Gm-Message-State: AOAM533evEpNRTAerGWcLYO87n4dM6ftCOoDLrDAtv0tz2IVoAUVOxwH
        vhquQz++KXRlxf4B7RpPD9Q20Q==
X-Google-Smtp-Source: ABdhPJwSNvRu3CTp59vBuvr4RaMFcbMupvPQgnOOoX2hPpfzNEnqMHeDbG4cz+HBTly8u85sYIveag==
X-Received: by 2002:a63:a03:: with SMTP id 3mr9931268pgk.326.1633337994442;
        Mon, 04 Oct 2021 01:59:54 -0700 (PDT)
Received: from localhost ([122.171.247.18])
        by smtp.gmail.com with ESMTPSA id d24sm13622896pgv.52.2021.10.04.01.59.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Oct 2021 01:59:53 -0700 (PDT)
Date:   Mon, 4 Oct 2021 14:29:52 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc:     rafael@kernel.org, robh+dt@kernel.org, bjorn.andersson@linaro.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: cpufreq: cpufreq-qcom-hw: Convert to YAML
 bindings
Message-ID: <20211004085952.3k7efa3lxlll3ivy@vireshk-i7>
References: <20211004044317.34809-1-manivannan.sadhasivam@linaro.org>
 <20211004070531.sexvnqmnkoe4j6a2@vireshk-i7>
 <20211004072222.GE16442@workstation>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211004072222.GE16442@workstation>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04-10-21, 12:52, Manivannan Sadhasivam wrote:
> On Mon, Oct 04, 2021 at 12:35:31PM +0530, Viresh Kumar wrote:
> > On 04-10-21, 10:13, Manivannan Sadhasivam wrote:
> > > Convert Qualcomm cpufreq devicetree binding to YAML.
> > > 
> > > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > > Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
> > > Reviewed-by: Rob Herring <robh@kernel.org>
> > 
> > I am not sure if Rob ever gave this.
> > 
> 
> I'm not fooling you :)
> https://patchwork.kernel.org/project/linux-pm/patch/20210701105730.322718-5-angelogioacchino.delregno@somainline.org/#24312445

I did read that email but somehow missed the RBY :)

-- 
viresh
