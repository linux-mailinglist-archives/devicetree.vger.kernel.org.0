Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 760279879C
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2019 01:02:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731313AbfHUXCv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 19:02:51 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:34352 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730022AbfHUXCv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Aug 2019 19:02:51 -0400
Received: by mail-pf1-f193.google.com with SMTP id b24so2476521pfp.1
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2019 16:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=TmDOJvhPrJk/RAKywvPdX5bKVeeqGQtRvXF6G/yD7Ts=;
        b=MryI/zTQcpw1Y7z90icizIK6FBIzgHejqlorJGJcBuRYuCoQgZfYwz2SHvI14xthV2
         VGpADbJLiy9mh9zsJDWpjh39gVW8n7JdqtcVhowxOmr7akF1xhwC5PxJFMeJrxugq3PV
         8qfD2zsEa7wOrXG0R4PyQWoFwKtiN55x8GLWBrK/kooZEJ9mx5pEj75VZyULtSNPfMeQ
         XNjlA/MaESQuoz7S7VZN+l8AZPr2pu80HCZa4rTPHOlQLO93OyacnVz5IuLw/MdcHW23
         bV2XyPnr8orjJbyHvVyEBNnqjtwMCo5SxkCuUXp09n0F7I0hO0UmsrCggXybhKou3Lx4
         ASng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=TmDOJvhPrJk/RAKywvPdX5bKVeeqGQtRvXF6G/yD7Ts=;
        b=fp2cxv80WBuxHZj4y42557pnyxgNmq33+T0ExOaMImk7W5Tf0JhJ9BNSa2oJFCuwJq
         Tl+Rw1201CDNEXGXFy+pCwJk0TPWdzoKZhSRmh/oYULdEAUPyCh8jBKJa+BFrNReUMv+
         1fkoCP8DYj3FAboMf4DY2S84kaLQfkcEFfWJN3HvBKTBeHFRsL82ZPTpyhZxSwuKrSQM
         fh7AwqcG4lSqVwFMRyZ7zEAPVeQmr+2XDjlj1sYRk2aGQLke0TqyTmYBeqMZyGhGGMz6
         UA41ljmI3cs6uAfwNvrty1MDwn9NXCJoFVR4mG4dnJoxsgLmQpz6GnJSQJ9EFAHxUV7a
         grcQ==
X-Gm-Message-State: APjAAAXqJKg45P87ztn5o8a0vi4zJQIztWuYiBKDdio8fGuq8sPCTFkD
        J4UDXpsPBbWTkVjUnQumjEBu6A==
X-Google-Smtp-Source: APXvYqxI+UkypCWR85p3O8GUubkvI6VHaPvdHe/3j4/MwZxP7+qRgAA8AxavnktcihBGMVXybm8JGA==
X-Received: by 2002:a62:7d93:: with SMTP id y141mr38186495pfc.164.1566428570694;
        Wed, 21 Aug 2019 16:02:50 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id d189sm31101011pfd.165.2019.08.21.16.02.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Aug 2019 16:02:50 -0700 (PDT)
Date:   Wed, 21 Aug 2019 16:04:37 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Vinod Koul <vkoul@kernel.org>
Cc:     Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Sibi Sankar <sibis@codeaurora.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 0/8] arm64: dts: qcom: sm8150: Add SM8150 DTS
Message-ID: <20190821230437.GC1892@tuxbook-pro>
References: <20190821184239.12364-1-vkoul@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190821184239.12364-1-vkoul@kernel.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed 21 Aug 11:42 PDT 2019, Vinod Koul wrote:

> This series adds DTS for SM8150, PMIC PM8150, PM8150B, PM8150L and
> the MTP for SM8150.
> 

Applied, with Amit's acks.

> Changes in v4:
>  - Update the address and size cell to 2 and extend ranges and describe DMA
>    space
>  - Fix node location of spmi per sorted address
>  - Add Niklas's review tags
> 
> Changes in v3:
>  - Fix copyright comment style to Linux kernel style
>  - Make property values all hex or decimal
>  - Fix patch titles and logs and make them consistent
>  - Fix line breaks
> 
> Changes in v2:
>  - Squash patches
>  - Fix comments given by Stephen namely, lowercase for hex numbers,
>    making rpmhcc have xo_board as parent, rename pon controller to
>    power-on controller, make pmic nodes as disabled etc.
>  - removed the dependency on clk defines and use raw numbers
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
>  arch/arm64/boot/dts/qcom/sm8150-mtp.dts | 375 ++++++++++++++++++
>  arch/arm64/boot/dts/qcom/sm8150.dtsi    | 482 ++++++++++++++++++++++++
>  6 files changed, 1121 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/pm8150.dtsi
>  create mode 100644 arch/arm64/boot/dts/qcom/pm8150b.dtsi
>  create mode 100644 arch/arm64/boot/dts/qcom/pm8150l.dtsi
>  create mode 100644 arch/arm64/boot/dts/qcom/sm8150-mtp.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/sm8150.dtsi
> 
> -- 
> 2.20.1
> 
