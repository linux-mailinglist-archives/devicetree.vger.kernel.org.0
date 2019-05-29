Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0391F2DA2C
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2019 12:15:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726015AbfE2KO7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 May 2019 06:14:59 -0400
Received: from mail-oi1-f195.google.com ([209.85.167.195]:40327 "EHLO
        mail-oi1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725874AbfE2KO6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 May 2019 06:14:58 -0400
Received: by mail-oi1-f195.google.com with SMTP id r136so1550154oie.7
        for <devicetree@vger.kernel.org>; Wed, 29 May 2019 03:14:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=EAGedgacrWoeLyu0To12qxT1eO2alYayXGjZrLvwd+k=;
        b=AJ5z3L0kCSDsX8kXY7FSc2jTfD36U/yC4myrub3XWsesly5t1RLKUIYsFwmIk7zsYu
         G/ec1s4wKrkwSBj9pKJFzg44ijlFkepzOOVECZb78w2ln3vLeD60cOOUcrWjhvm/hcJj
         942E4WXbRgAxpZvAmBSkQhzszZ5bK+LHKWUDvfALZUh1KIitzPIV9pDwHwczthbpj6dX
         e6IMh8yRgg27ugsXJVH2tMCQrdblMWGwu8SuiAdRuTkI9USXONsl/TqcoWuCAoCtatnF
         ox3+f8AKTVMwzO+PznlyqLjWcdMeTDySGBYIriLWSXL+bIV/wMyDDeS0qlMUH7F541ct
         m+zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=EAGedgacrWoeLyu0To12qxT1eO2alYayXGjZrLvwd+k=;
        b=jMNMGUB4AwVp9KBDxUZunIjT+p49twrWdFGZDbm6xiTtHqvqsQDL+PjXIWWNKhFB3+
         4koDcmxz1yQveu7QhK908qEkS53rak+61m169KUPrfGEX2wrlaO8mAr3WddK/8JN65Ik
         1lKGWCLDgVVcOPlG+TbMeAHOIfic5EB8co/ItdKdK4V7ZbMk8FhBmkq0c04vyxUOWYuM
         Lg9Ebbzs9BR/cM68YTkXbr1joGtVM1WccRc7qa8GCq7raildPmx0NmWwPsw2p3GHUsp/
         20Br7wNukDSq9IuCsBXF7/pPv9k0Gvnb53aoo78Lugn6kToF/wNcZfCxjU+GuAlCpd4e
         H9cg==
X-Gm-Message-State: APjAAAXbCYZ1QzEFGMON8AWKMdlnEuUvbOFekZjy9KBp0t5nMo9Z/s6Y
        Hcvkw5BL+Murbnwpert/RfJENQ==
X-Google-Smtp-Source: APXvYqzycnDr7LSCH8lljP2nquWhzzkKaVjxa0t7sxxmmSebqcmDYlIZAEK+IFDcl6SuyoXkBJH5LA==
X-Received: by 2002:a54:4f98:: with SMTP id g24mr6026696oiy.99.1559124897777;
        Wed, 29 May 2019 03:14:57 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li808-42.members.linode.com. [104.237.132.42])
        by smtp.gmail.com with ESMTPSA id w24sm5608786otk.74.2019.05.29.03.14.48
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 29 May 2019 03:14:56 -0700 (PDT)
Date:   Wed, 29 May 2019 18:14:45 +0800
From:   Leo Yan <leo.yan@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Mike Leach <mike.leach@linaro.org>,
        Wei Xu <xuwei5@hisilicon.com>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Andy Gross <agross@kernel.org>,
        David Brown <david.brown@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Orson Zhai <orsonzhai@gmail.com>,
        Baolin Wang <baolin.wang@linaro.org>,
        Chunyan Zhang <zhang.lyra@gmail.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc:     Guodong Xu <guodong.xu@linaro.org>,
        Zhangfei Gao <zhangfei.gao@linaro.org>,
        Haojian Zhuang <haojian.zhuang@linaro.org>,
        Chris Healy <cphealy@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
        Lee Jones <lee.jones@linaro.org>,
        Chunyan Zhang <zhang.chunyan@linaro.org>
Subject: Re: [PATCH v2 00/11] dts: Update DT bindings for CoreSight
 replicator and funnel
Message-ID: <20190529101445.GC15808@leoy-ThinkPad-X240s>
References: <20190508021902.10358-1-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190508021902.10358-1-leo.yan@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 08, 2019 at 10:18:51AM +0800, Leo Yan wrote:
> Since the DT bindings consolidatoins for CoreSight replicator and funnel
> is ready for kernel v5.2 merge window [1], this patch set is to update
> the related CoreSight DT bindings for platforms; IIUC, this patch set
> will be safe for merging into kernel v5.2 because the dependency
> patches in [1] will be landed into mainline kernel v5.2 cycle.

[...]

> Leo Yan (11):
>   ARM: dts: hip04: Update coresight DT bindings
>   ARM: dts: imx7s: Update coresight DT bindings
>   ARM: dts: qcom-apq8064: Update coresight DT bindings
>   ARM: dts: ste: Update coresight DT bindings
>   ARM: dts: vexpress-v2p-ca15_a7: Update coresight DT bindings
>   ARM: dts: qcom-msm8974: Update coresight DT bindings
>   arm64: dts: hi6220: Update coresight DT bindings
>   arm64: dts: juno: Update coresight DT bindings
>   arm64: dts: qcom-msm8916: Update coresight DT bindings
>   arm64: dts: sc9836: Update coresight DT bindings
>   arm64: dts: sc9860: Update coresight DT bindings

Gentle ping for maintainers.

Hi Andy, David,

Could you pick up patches 03, 06, 09/11 for QCOM DT bindings?

Hi Sudeep,

Could you pick up patches 05, 08/11 for Arm DT bindings?

Hi Chunyan, Orson, Baolin,

Could you pick up patches 10, 11/11 for Unisoc DT bindings?

Thanks a lot for Shawn and Linus have picked up 02, 04/11 separately.

Thanks,
Leo Yan
