Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB9D14CF4A5
	for <lists+devicetree@lfdr.de>; Mon,  7 Mar 2022 10:20:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236398AbiCGJVC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 04:21:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236401AbiCGJUr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 04:20:47 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 016FF50E20
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 01:19:36 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id i8so22100738wrr.8
        for <devicetree@vger.kernel.org>; Mon, 07 Mar 2022 01:19:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=9VDgvD8hgLbmfBQ2zpnnO+0UA2G5Bd0GMuXy+xL9DLE=;
        b=kxG0AOY86sXrBpEmaWKRdNzoBJU4gaafM8rFPgSWHPyRTNLmVo+9jqlR0OBm3LSYuA
         7l/JZsRbjwASKTUnAfyQeaXOG9tzCngV3yudjo/GsrY1xkU9s/rxr2yxyZ8S+JMd/Yu1
         0YMZYkAK5T1B5MHGnm4VBYr9w1Ad1joSwJTwxwo3XUj9I9oMQm52RYEen6Bb1JF45cRb
         AOPhwCzf4n4tKvPHW3p2dv5M/iVGJkAd2tb0JKB7BbP0Dt75+i5FD4httw+5IqpVXpex
         PhlpxKkUwFFmXMRA/dyE4KSa+wLCg3Oa9igrp9+vGqummjizOvn3H7y30pcYcI53KZud
         1ldg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=9VDgvD8hgLbmfBQ2zpnnO+0UA2G5Bd0GMuXy+xL9DLE=;
        b=1T6/bY4WrXoo0NUF/wCm0C4BHpIGQbgt9mdt8d6qZQIDLdPmQhkGf8AiBfYicYHMsP
         94ectde+4f5TFJ1clq9W22fjsz5Tcn3pJDnnjMqSTjcUgBuBybCQWr1OAYX5jGt2Craa
         nuvs0Y+aDVtVo/HAoQV7HttPomsqAHQTz9YtFb9hcyWDQxfJvDnXDu4RbMJrkr6E3Wk0
         xPL+gGwLfOIoveWjlq7PXYLe/aEtsRpWjD2W52nMZJGJIpiIib7jwbf4jrolrZTCzOnz
         215st4xvrHAaCMduWdIrsRgyYW76wmruDwuF5jE4a6F8WH59UVTWtKZNc8bcImgDvI65
         x1Ow==
X-Gm-Message-State: AOAM532OGFFxtvaB1WbyAokoZKUnxbeDVZtuUNXdEHNWpnRbGYn3Bp5m
        a0WVnE4J4x0VkR3KFOCEwL5Srg==
X-Google-Smtp-Source: ABdhPJw+ypTz3r2S5HKUX8p6+AeQ61RLKFg/YGgOcFB4jHbUfNirM8akMekPBR4Uvi6ybhQjjP+KKw==
X-Received: by 2002:a5d:6f15:0:b0:1f1:f305:df0d with SMTP id ay21-20020a5d6f15000000b001f1f305df0dmr3756472wrb.504.1646644775533;
        Mon, 07 Mar 2022 01:19:35 -0800 (PST)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id n5-20020a5d5985000000b001f0122f63e1sm5431000wri.85.2022.03.07.01.19.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Mar 2022 01:19:35 -0800 (PST)
Date:   Mon, 7 Mar 2022 09:19:32 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
        Javier Martinez Canillas <javier@dowhile0.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 2/3] dt-bindings: mfd: maxim,max77802: convert to
 dtschema
Message-ID: <YiXOJMUz9fmuK7pT@google.com>
References: <20220111175430.224421-1-krzysztof.kozlowski@canonical.com>
 <20220111175430.224421-3-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220111175430.224421-3-krzysztof.kozlowski@canonical.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 11 Jan 2022, Krzysztof Kozlowski wrote:

> Convert the MFD part of Maxim MAX77802 PMIC to DT schema format.  The
> example DTS was copied from existing DTS (exynos5800-peach-pi.dts), so
> keep the license as GPL-2.0-only.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/mfd/max77802.txt      |  25 ---
>  .../bindings/mfd/maxim,max77802.yaml          | 194 ++++++++++++++++++
>  MAINTAINERS                                   |   2 +-
>  3 files changed, 195 insertions(+), 26 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mfd/max77802.txt
>  create mode 100644 Documentation/devicetree/bindings/mfd/maxim,max77802.yaml

Applied, thanks.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
