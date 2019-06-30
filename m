Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 863B55AE09
	for <lists+devicetree@lfdr.de>; Sun, 30 Jun 2019 06:03:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725976AbfF3ED1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Jun 2019 00:03:27 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:41790 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725613AbfF3ED1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Jun 2019 00:03:27 -0400
Received: by mail-pg1-f196.google.com with SMTP id q4so2893977pgj.8
        for <devicetree@vger.kernel.org>; Sat, 29 Jun 2019 21:03:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=FottbFd+Y+82l+HM3Qswb2Sq8WrNqq+eO0NHXgs+EzI=;
        b=Jbxz7MfdMmZ9o9WU6TyUqf6ZrfL8RUrvfvoPxbBG22L3Tk4Wp4DfYo+d5qshIfFkE9
         fgBRyvXj3dz2nThbe4d4j5HkIqi5yJKZqqq58a5QkEIa5ucRT5F3Q/RESOgmYITY8I40
         5336Xb0h7bFTtr/NhQA5vU2YWSvUZFBZP7s9FlQUeRlqCPcqmQkagTr3JIx2v6PUz3Y5
         QG74FO1lM5nd/FfBjZJDEvn4mXH25GFuLaBuXo2Rh3w8Oz3yUqYF0Mtmrr/RjPdRbs+l
         DyWY2Oz1E+/p+cFcFnewixFBpL9QEfwc4srdp17MhLaVfLGmWp+vtSHJpldVrahD+6Zf
         3Vkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=FottbFd+Y+82l+HM3Qswb2Sq8WrNqq+eO0NHXgs+EzI=;
        b=d8ZMfghDDYncVsW7Vt3PzLzabplRg2u41eE1XoyMjmuCAjlLpu4nXVAtWZd5AF0mib
         tXgXzu4KsDuLmN+4R0X0OIVTEmzksvZ68SnMhav7ZsCXeRo813WI2ggGJDQarM3dOylA
         SgUQ/K8H6BlIeODcwsKuAu7Kc5zmXC4Rfcwr6nnAoHu6QDtS8fYPRMVrfPR/eSibzpXf
         j0ljTunJyCKRJpBg8naWw9OJ0rzQHEx0VLJzREPHNcgPg4FXCjSbTqXJk55B9ZoLkO08
         ZyPlGY+A/G5DTQ1OmeapqY7f3fyNdK40/QVGv0K4yeqRawWFw2CEKGYBJ9yn8c2VaHyL
         hqTQ==
X-Gm-Message-State: APjAAAXBr8+QJRc7kn8hfR30cjwgocBtQsiXGymrLygohFLxA6mR/Fdg
        AyCLGBUtuwI3B5AV2ZJU0+1hOA==
X-Google-Smtp-Source: APXvYqxVT5FLTspCDUieP0WCVk9yzwrr53RtQxt9iPVStpUeXliigG7L7l0TCjnf4tDvnu5Xv5KGMw==
X-Received: by 2002:a63:f146:: with SMTP id o6mr17077968pgk.179.1561867405996;
        Sat, 29 Jun 2019 21:03:25 -0700 (PDT)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id j15sm6860777pfr.146.2019.06.29.21.03.24
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 29 Jun 2019 21:03:25 -0700 (PDT)
Date:   Sat, 29 Jun 2019 21:03:22 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Fabien Dessenne <fabien.dessenne@st.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Ohad Ben-Cohen <ohad@wizery.com>, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-remoteproc@vger.kernel.org,
        Loic Pallardy <loic.pallardy@st.com>,
        Arnaud Pouliquen <arnaud.pouliquen@st.com>,
        Ludovic Barre <ludovic.barre@st.com>,
        Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v4 0/8] stm32 m4 remoteproc on STM32MP157c
Message-ID: <20190630040322.GH23094@builder>
References: <1557822423-22658-1-git-send-email-fabien.dessenne@st.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1557822423-22658-1-git-send-email-fabien.dessenne@st.com>
User-Agent: Mutt/1.10.0 (2018-05-17)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue 14 May 01:26 PDT 2019, Fabien Dessenne wrote:

> STMicrolectronics STM32MP157 MPU are based on a Dual Arm Cortex-A7 core and a
> Cortex-M4.
> This patchset adds the support of the stm32_rproc driver allowing to control
> the M4 remote processor.
> 

Applied patches 1 through 3, with a few fixes of compile warnings on
data types in dev_dbg, in patch 3.

Thanks,
Bjorn

> Changes since v3:
> -Replaced "st,auto_boot" with "st,auto-boot"
> -Update m4 reg values and align with unit-address
> 
> Changes since v2:
> - Clarified "reg" description
> - Change m4 unit adress to 38000000
> - Renamed "auto_boot" in "st,auto-boot"
> 
> Changes since v1:
> - Gave details about the memory mapping (in bindings).
> - Used 'dma-ranges' instead of 'ranges'.
> - Updated the 'compatible' property.
> - Remove the 'recovery', 'reset-names' and 'interrupt-names' properties.
> - Clarified why / when mailboxes are optional.
> 
> Fabien Dessenne (8):
>   dt-bindings: stm32: add bindings for ML-AHB interconnect
>   dt-bindings: remoteproc: add bindings for stm32 remote processor
>     driver
>   remoteproc: stm32: add an ST stm32_rproc driver
>   ARM: dts: stm32: add m4 remoteproc support on STM32MP157c
>   ARM: dts: stm32: declare copro reserved memories on STM32MP157c-ed1
>   ARM: dts: stm32: enable m4 coprocessor support on STM32MP157c-ed1
>   ARM: dts: stm32: declare copro reserved memories on STM32MP157a-dk1
>   ARM: dts: stm32: enable m4 coprocessor support on STM32MP157a-dk1
> 
>  .../devicetree/bindings/arm/stm32/mlahb.txt        |  37 ++
>  .../devicetree/bindings/remoteproc/stm32-rproc.txt |  63 +++
>  arch/arm/boot/dts/stm32mp157a-dk1.dts              |  52 ++
>  arch/arm/boot/dts/stm32mp157c-ed1.dts              |  52 ++
>  arch/arm/boot/dts/stm32mp157c.dtsi                 |  20 +
>  drivers/remoteproc/Kconfig                         |  15 +
>  drivers/remoteproc/Makefile                        |   1 +
>  drivers/remoteproc/stm32_rproc.c                   | 628 +++++++++++++++++++++
>  8 files changed, 868 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/stm32/mlahb.txt
>  create mode 100644 Documentation/devicetree/bindings/remoteproc/stm32-rproc.txt
>  create mode 100644 drivers/remoteproc/stm32_rproc.c
> 
> -- 
> 2.7.4
> 
