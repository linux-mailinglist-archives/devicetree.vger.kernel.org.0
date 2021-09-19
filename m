Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC7B2410901
	for <lists+devicetree@lfdr.de>; Sun, 19 Sep 2021 03:04:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238814AbhISBFY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 18 Sep 2021 21:05:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238775AbhISBFY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 18 Sep 2021 21:05:24 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B1C4C061764
        for <devicetree@vger.kernel.org>; Sat, 18 Sep 2021 18:03:59 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id lb1-20020a17090b4a4100b001993f863df2so10099349pjb.5
        for <devicetree@vger.kernel.org>; Sat, 18 Sep 2021 18:03:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=nUbK1w3vfeG6r13aeQ85yxlK74aSmPTui84TnSezG5Y=;
        b=Slih2eOmcDjK/WcrC4+JD/Jw674JZQHnrtA2F9fmWTGvdeLYwKnk4oPIZR0+o+d5nt
         4OmqXoJqwY7Crf+2I9vFkPJvmfRWCAngkbHVHDU1kbNFcUXEbpuZTEH1eVNO3SPwHhUx
         OMaahnax/xb52yRnpq77dOX46zrd+aBa/9NHt5zNKjb8i7JfQ/6/QGsv+OMjsFGsBP6q
         52VsfwlYxjk2mKMvmIUZzMfgxf8LU/9EVEblOg/bsulE/Wd+EfCsP9scRa0uwzjolCHe
         PMdYneK8JTqVWAe+9Q415dx39SFFt43D1JzxqwbbzbQW3gREccnT/kVWphEOt2wv3hA5
         +kHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=nUbK1w3vfeG6r13aeQ85yxlK74aSmPTui84TnSezG5Y=;
        b=6ish0opPxIR/N19W73Tp5blfEXMbVheQCZq6uuP3NWxeTd1U3uYJqLT4K92S/nABoD
         wq2NYhO6/EHx1MMz/08nSQnKHd7rGenQNXVk2SINbCVLHuqyQ2UzFqlRpZZ9CECtLz7z
         TS+ZT7eicQZFBVt+b833gVGrL2wDgjoxsLxChI7Ki2l/Y/ZJqBWPq1dPWtvcwvmYAF7I
         fl/sYlnjBVw4TpKeQfUZcphQ+74zPuot/WaPU+2peXbA0enGQcYVASJUwhpGfBbqtMRL
         nN6XwzOwaRulDo7KWwxiQDdw7xVIhSXaKOQGpdR10qzs1EqyE5usboFDJr+Ea/UwB50S
         OS1g==
X-Gm-Message-State: AOAM530cKYqq7eX6aSZnKEhoyk/ArOM8aPh2/+brBeguBB2IdvYT0I+f
        5Fj9Zn4tnsAsI0s+/nRxZ7OmoA==
X-Google-Smtp-Source: ABdhPJw+uTDB4aYYZa2fyNkYfVPMVVX/PoU6vtmrY+uxUVK9g+ce6TI5f7MpOppcvEkYJch9vHBnOg==
X-Received: by 2002:a17:902:e88d:b0:13b:67d5:2c34 with SMTP id w13-20020a170902e88d00b0013b67d52c34mr16360436plg.66.1632013438658;
        Sat, 18 Sep 2021 18:03:58 -0700 (PDT)
Received: from dragon (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id a10sm1451409pgd.91.2021.09.18.18.03.56
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 18 Sep 2021 18:03:58 -0700 (PDT)
Date:   Sun, 19 Sep 2021 09:03:51 +0800
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Stephen Boyd <sboyd@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Loic Poulain <loic.poulain@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/2] Add QCM2290 Global Clock Controller driver
Message-ID: <20210919010351.GA9901@dragon>
References: <20210917031638.27679-1-shawn.guo@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210917031638.27679-1-shawn.guo@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Sep 17, 2021 at 11:16:36AM +0800, Shawn Guo wrote:
> The series adds QCM2290 Global Clock Controller driver support.
> 
> Changes for v2:
> - Drop unused gcc_parent_map and gcc_parents to avoid clang
>   unused-const-variable warnings.

Hi Stephen,

Please disregard this version.  I will post v3 to include GDSCs.

Shawn

> 
> Shawn Guo (2):
>   dt-bindings: clk: qcom: Add QCM2290 Global Clock Controller bindings
>   clk: qcom: Add Global Clock Controller driver for QCM2290
> 
>  .../bindings/clock/qcom,gcc-qcm2290.yaml      |   72 +
>  drivers/clk/qcom/Kconfig                      |    7 +
>  drivers/clk/qcom/Makefile                     |    1 +
>  drivers/clk/qcom/gcc-qcm2290.c                | 2965 +++++++++++++++++
>  include/dt-bindings/clock/qcom,gcc-qcm2290.h  |  178 +
>  5 files changed, 3223 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/qcom,gcc-qcm2290.yaml
>  create mode 100644 drivers/clk/qcom/gcc-qcm2290.c
>  create mode 100644 include/dt-bindings/clock/qcom,gcc-qcm2290.h
> 
> -- 
> 2.17.1
> 
