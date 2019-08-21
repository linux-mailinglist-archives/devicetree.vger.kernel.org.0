Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BCF7C975A7
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 11:12:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726541AbfHUJHC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 05:07:02 -0400
Received: from mail-lj1-f196.google.com ([209.85.208.196]:41581 "EHLO
        mail-lj1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726765AbfHUJHC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Aug 2019 05:07:02 -0400
Received: by mail-lj1-f196.google.com with SMTP id m24so1408914ljg.8
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2019 02:07:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=l1PSwAxURmvRpKju1nSZAkhT1kqhpgoMPnKulqMvgaU=;
        b=ldPZ7n1YKnH6urIqEpjgNnB9Yz6A9hu7oUFsROK9+okfYJw31JxfVGrlYrO5EEIfCa
         UohvmNFqTTgOLenwL/KxMl7/Zkm/+uZ0ss3xAZ1mzFZ5idRlcs8PF1Qr6pzRg3CD9q4+
         l46lL0b/b1pbZ0jbxHflmKmNI0MMX0qMkfLrLMxBsk6M/7ofuixSCG/PFt7ypxfXC9nj
         FkTGzf2aPo1ZSbBa4MmUkRTkRRMQJHl0kTiF2QbKQJcNlzvxx2EqKkjBzJwz6oWRJAOt
         /yTUYrTgFGrn1tQ4+9dsq6A0UwFDdkHe97QTPZTdeyNhtrS4o+QWZqKZprCNEsOVodPd
         5Deg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=l1PSwAxURmvRpKju1nSZAkhT1kqhpgoMPnKulqMvgaU=;
        b=QMp8PMqPE5lL9XliJIdcDskZsmpTRCOlNHw5RA80hFT2Qpe9cyiR+aCYiy2QdIW2g5
         SuBGNh0+C8YYOUbc9GCYOOAxPiwSdhMdXJWZqlHIhMdD1mFn9JYbrBo1xq+B0Ve98nXW
         WIxTpFVq3dsH/PkFDj29AWLcNn5el7/fOGEAQS6KMkgK9yV29W5UM7N7sdcYuBTS3k5y
         h1LuP9vaSCnS4oPO8OVgOO1tvdK8Eev9BLb4vRYYb2/KM+U7GtSo/ec4eym4eXGVxpKv
         U0krFriBOn7uUrlKYiu3clT3r/KCmA+cPF9D6Clz+ccfuwWYMFl3HaXYUtxsHSVNrSCN
         FfPA==
X-Gm-Message-State: APjAAAWIxQRf+ZYQRfETz0ij8dJbnbiTB/76SLIMDmKT/K95hTclkzjX
        y3KgHCA3Vu+7gyNf4PUuYqnI9Q==
X-Google-Smtp-Source: APXvYqzG9CVLKmNl0LbqKy5+pIULi7I5nAFbvEiaeMSL2RErmaHBoXceiFNSGmwFYhOr2oazUpYPEA==
X-Received: by 2002:a2e:b00b:: with SMTP id y11mr18017045ljk.159.1566378419968;
        Wed, 21 Aug 2019 02:06:59 -0700 (PDT)
Received: from centauri (ua-84-219-138-247.bbcust.telenor.se. [84.219.138.247])
        by smtp.gmail.com with ESMTPSA id 202sm3182448ljf.102.2019.08.21.02.06.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Aug 2019 02:06:59 -0700 (PDT)
Date:   Wed, 21 Aug 2019 11:06:57 +0200
From:   Niklas Cassel <niklas.cassel@linaro.org>
To:     Vinod Koul <vkoul@kernel.org>
Cc:     Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Sibi Sankar <sibis@codeaurora.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/8] arm64: dts: qcom: sm8150: Add SM8150 DTS
Message-ID: <20190821090657.GA560@centauri>
References: <20190820172351.24145-1-vkoul@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190820172351.24145-1-vkoul@kernel.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 20, 2019 at 10:53:42PM +0530, Vinod Koul wrote:
> This series adds DTS for SM8150, PMIC PM8150, PM8150B, PM8150L and
> the MTP for SM8150.
> 
> Changes in v3:
>  - Fix copyright comment style to Linux kernel style
>  - Make property values all hex or decimal
>  - Fix patch titles and logs and make them consistent
>  - Fix line breaks
> 
> Changes in v2:
>  - Squash patches
>  - Fix comments given by Stephen namely, lowercase for hext numbers,
>    making rpmhcc have xo_board as parent, rename pon controller to
>    power-on controller, make pmic nodes as disabled etc.
>  - removed the dependency on clk defines and use raw numbers
> 
> 
> Vinod Koul (8):
>   arm64: dts: qcom: sm8150: Add base dts file
>   arm64: dts: qcom: pm8150: Add base dts file
>   arm64: dts: qcom: pm8150b: Add base dts file
>   arm64: dts: qcom: pm8150l: Add base dts file
>   arm64: dts: qcom: sm8150-mtp: Add base dts file
>   arm64: dts: qcom: sm8150-mtp: Add regulators
>   arm64: dts: qcom: sm8150: Add reserved-memory regions
>   arm64: dts: qcom: sm8150: Add apps shared nodes
> 
>  arch/arm64/boot/dts/qcom/Makefile       |   1 +
>  arch/arm64/boot/dts/qcom/pm8150.dtsi    |  97 +++++
>  arch/arm64/boot/dts/qcom/pm8150b.dtsi   |  86 +++++
>  arch/arm64/boot/dts/qcom/pm8150l.dtsi   |  80 ++++
>  arch/arm64/boot/dts/qcom/sm8150-mtp.dts | 378 +++++++++++++++++++
>  arch/arm64/boot/dts/qcom/sm8150.dtsi    | 481 ++++++++++++++++++++++++
>  6 files changed, 1123 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/pm8150.dtsi
>  create mode 100644 arch/arm64/boot/dts/qcom/pm8150b.dtsi
>  create mode 100644 arch/arm64/boot/dts/qcom/pm8150l.dtsi
>  create mode 100644 arch/arm64/boot/dts/qcom/sm8150-mtp.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/sm8150.dtsi
> 
> -- 
> 2.20.1
> 

Whole series is:

Reviewed-by: Niklas Cassel <niklas.cassel@linaro.org>
