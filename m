Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1824E481474
	for <lists+devicetree@lfdr.de>; Wed, 29 Dec 2021 16:27:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240522AbhL2P1k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Dec 2021 10:27:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240474AbhL2P1k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Dec 2021 10:27:40 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8CB4C061746
        for <devicetree@vger.kernel.org>; Wed, 29 Dec 2021 07:27:39 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id w20so36110508wra.9
        for <devicetree@vger.kernel.org>; Wed, 29 Dec 2021 07:27:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=WHa8Jyh6c89t9dPID2nZm5LqqV4uIWhGTO8DKv0H6Ao=;
        b=PJOEOwqEqa2fEdtdWRkd1eiOel6ilsVpbyFJdZbhB7fzeELs8O2xsQIssnE4UEh+I7
         Lcl7EhwhdzV43KdE9doEGv/HmUAQ+IGnSDMS/H+41qwp7iTXj0uLSmIvfMLFCqTHCYpx
         8VFArzE0XbPkdNQ6ml8Fn9n+2LeZ8Kj3+JZgzuqtkVq+naSaO9wRfXB4TPKO3R8eNoY2
         lf3AOIhjJwlxHzRWCwql522offjA2wXLMsNG1zyTgS7Cwqqx3J22RhJkQVk1lHGFd44B
         uWXeaL8T7UQhehfYTJ/pR09w9TYV5PjxzgqpKtSm6Y4lnNrLapgSWFsjejGtfImF+4d2
         9Mlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=WHa8Jyh6c89t9dPID2nZm5LqqV4uIWhGTO8DKv0H6Ao=;
        b=KPHQb/lWjEwafFNEEKP9mi5iz9dKd1E88ntaXQFQQUemVGqEjUPxxU+JM71c19XlGB
         C3fPD9Sa+/zSmnh5mSfmeootf6EjHlRAqgcVqaw8OBuB3vZf79npzmnAR68k8foI7w2Y
         RpuLYiixxkIbxEUYeKdfXank9PxiXR6YjjgTj8Qzq+PHHPMMl1/a2w6eX4YyhuA6qp/s
         bsAV46MNKcWaabQ+DfKJ0epUapjULS/XiINHZ1vo1yGLRcdFnE/xhCuv0ejTRqipWb6l
         xZ6M13+KZjPWwOu1ylZmOzy7nmJ+HapurzTOwaYBmxmAHUtfkd3+ZWXvrtkPPwW5Tqfc
         g4dA==
X-Gm-Message-State: AOAM530+PilEaKPCgs6D2+/cbedxwc3b01Fyj1KtsYo6TSIqMXNQTRvC
        EX8RAiQHRt4Xd9DGcSHoSYJimSmK35Pwjw==
X-Google-Smtp-Source: ABdhPJxUsRB6IangB9deRG2yXTmRk0Pg7TrNIFOe0nWjvnXVOUPrpq4N2LGQiDWxSUY8ra+GTM++8w==
X-Received: by 2002:a05:6000:1112:: with SMTP id z18mr20750612wrw.129.1640791658229;
        Wed, 29 Dec 2021 07:27:38 -0800 (PST)
Received: from google.com ([2.31.167.18])
        by smtp.gmail.com with ESMTPSA id g6sm21576891wri.67.2021.12.29.07.27.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Dec 2021 07:27:37 -0800 (PST)
Date:   Wed, 29 Dec 2021 15:27:35 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Alexandre Ghiti <alexandre.ghiti@canonical.com>
Cc:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
        Support Opensource <support.opensource@diasemi.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-rtc@vger.kernel.org,
        linux-watchdog@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: mfd: Fix typo "DA9093" -> "DA9063"
Message-ID: <Ycx+Z4qpbDSIqBSX@google.com>
References: <20211216164037.2888316-1-alexandre.ghiti@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211216164037.2888316-1-alexandre.ghiti@canonical.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 16 Dec 2021, Alexandre Ghiti wrote:

> The device described is the "DA9063", not "DA9093", so fix this typo.
> 
> Signed-off-by: Alexandre Ghiti <alexandre.ghiti@canonical.com>
> ---
>  Documentation/devicetree/bindings/mfd/da9063.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
