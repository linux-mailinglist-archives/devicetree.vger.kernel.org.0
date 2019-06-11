Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6721E418F3
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2019 01:34:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2408126AbfFKXej (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jun 2019 19:34:39 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:39395 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2405775AbfFKXej (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jun 2019 19:34:39 -0400
Received: by mail-pg1-f196.google.com with SMTP id 196so7824578pgc.6
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2019 16:34:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=PYi7OJyyBe1ys/czqidCNW9f3WOQhYyPFZsHkuJXNPA=;
        b=G3LzXxLXAw4vYXKvHUWcRG/MhZ5fKb794eouDDluevhnI3x5qsmCIsy2XGINp1UVV3
         Ywe05klg0KGFEsOq0qyd1y8ftTeBG8PTczTdTxIdQo6/Zy1uYlxkadywpliXruv8IcMW
         ZQwbRVNgrcNHF0SQX/78SPsbEBUX4pAsRhheesUpYnamOy+4sO2Q0oFqJNHrmugZ8Rlg
         8pkzDM/LQ8R54O2W9XWud8Lzl67PnrJ/y9dIE3afbF2teAn3ETJQzO6MvAVxZZJXd45Q
         ZFiM7aPAdy3S80Uw8avTmR+SgwRqyNHc2/d/aLcrPe/GSrKt01m+nu25kOrtwzri0u+N
         X+GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=PYi7OJyyBe1ys/czqidCNW9f3WOQhYyPFZsHkuJXNPA=;
        b=KY47MG8WYpB5CjHEjLm02cragrv6KEJAp8/mf3Ry/iknnR6CH3XiXxX6uKaISON1Cn
         3Ut5oLkV3eydGsyk+iDla0hFTb+sxphyEgyJGQrjm3tcXivJwtbiPU4SZkn4FMtkd8ZJ
         +uz2RcDDlcalx2VGx9f+8Vh0MhkdMYECjiogCYSPEy8xjVcPlUa5JYlNZaUieFwg4Fj+
         nc13xXx2eNy8kwjYLysmpOE6h+skuH6l1t4yhTYG4N+xMUEXRVq9GN1846evZyUW9ZoX
         u3S4yt8DB3JbnSGLEx9pBl52FCVmtQP0PQYKQeCdcKctnymsBUX69OPIDywtjgiCdA0O
         ln1Q==
X-Gm-Message-State: APjAAAWe8HF5ufS6HEQ17koot8+pwB2hBVzOBYqBIFT1VyHJ5RH3UrE7
        O+JAHda/gmOlk8xBis2JMtGfDA==
X-Google-Smtp-Source: APXvYqyGxmXuXbklefwmpMUhJYp3BwPcmYTN6Qx9IPoaLvpooS+EkitLHXZagWetvR9Dir91GDYSzg==
X-Received: by 2002:aa7:9825:: with SMTP id q5mr45428166pfl.140.1560296078493;
        Tue, 11 Jun 2019 16:34:38 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id z186sm15605935pfz.7.2019.06.11.16.34.37
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 11 Jun 2019 16:34:37 -0700 (PDT)
Date:   Tue, 11 Jun 2019 16:34:35 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Georgi Djakov <georgi.djakov@linaro.org>
Cc:     robh+dt@kernel.org, agross@kernel.org, vkoul@kernel.org,
        evgreen@chromium.org, daidavid1@codeaurora.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v3 2/5] interconnect: qcom: Add QCS404 interconnect
 provider driver
Message-ID: <20190611233435.GW4814@minitux>
References: <20190611164157.24656-1-georgi.djakov@linaro.org>
 <20190611164157.24656-3-georgi.djakov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190611164157.24656-3-georgi.djakov@linaro.org>
User-Agent: Mutt/1.12.0 (2019-05-25)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue 11 Jun 09:41 PDT 2019, Georgi Djakov wrote:

This looks good, just two minor things.

> diff --git a/drivers/interconnect/qcom/qcs404.c b/drivers/interconnect/qcom/qcs404.c
> new file mode 100644
> index 000000000000..99be0928e2ad
> --- /dev/null
> +++ b/drivers/interconnect/qcom/qcs404.c
> @@ -0,0 +1,539 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2019 Linaro Ltd
> + */
> +
> +#include <dt-bindings/interconnect/qcom,qcs404.h>
> +#include <linux/clk.h>
> +#include <linux/device.h>
> +#include <linux/interconnect-provider.h>
> +#include <linux/io.h>
> +#include <linux/module.h>
> +#include <linux/of_device.h>
> +#include <linux/of_platform.h>
> +#include <linux/platform_device.h>
> +#include <linux/slab.h>
> +
> +#include "smd-rpm.h"

This file and the two functions defined therein doesn't exist until
patch 4, so please move this patch later in the series.

[..]
> diff --git a/include/dt-bindings/interconnect/qcom,qcs404.h b/include/dt-bindings/interconnect/qcom,qcs404.h

I think the preferred way is to have the DT binding headers as part of
the DT binding patch.

Regards,
Bjorn
