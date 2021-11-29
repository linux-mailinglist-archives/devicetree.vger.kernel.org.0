Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7F78F46161B
	for <lists+devicetree@lfdr.de>; Mon, 29 Nov 2021 14:19:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1377262AbhK2NXF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Nov 2021 08:23:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1377250AbhK2NVD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Nov 2021 08:21:03 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C723C07E5F4
        for <devicetree@vger.kernel.org>; Mon, 29 Nov 2021 04:02:55 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id l16so36220474wrp.11
        for <devicetree@vger.kernel.org>; Mon, 29 Nov 2021 04:02:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=Mzuzdt862XtduWs6io8LETGBPfeA1y8iFr1ItmbZvOY=;
        b=yOPpqT8FyMWk66ETTMI1ixUS/Bp8AF42M1pZrYSBRt3rx9r2AaZqvBP/jtAGLTxICp
         p6oghWPlZVb+0n8MTnuFVpdsAPVVAiVb3abBvJWEb9SeFYlYF/rwvcCIQbsDKLP4vb7/
         JMSZuM3G6ahsEXhFQZ5Ie9uSUA4SgT13NsVcojaQRfqy4SVgly8X8hnCcYZOoJjzL0Fm
         ugVgmL73IYbCoxyEjWR+KaJN0vkYforW3VZsS4TiAVfIhyjPPpzq/heUDum63d1XY3Fw
         hf2hEwM1uFSzGNhlwjcgH1DnZq7OlfHksGYYXLHHIERt09BVn8CaerVXcvYL5ioESOd8
         DpeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=Mzuzdt862XtduWs6io8LETGBPfeA1y8iFr1ItmbZvOY=;
        b=I3GXU3Qh7KI0ckPEbIilifQh6YxV+0dij8FDZFCbKAUxMyAex2R0VtayeOtsEd0iG/
         GyvilVtGBm6XJgVqUXizOqLPy/FHc4kitytYDZhep+hS6+FWlAiEU15saN0axhB2bXms
         QUXu28cmacpUgWSUUpYhcZeCCO9HMe0YnKgGx690eEWNpoRs0AC7o3sIKsl7DHsQd5ii
         +RZAhrQ+dEFaPL3olkzASUbCWhzdHKeKNMJek35X9ZuMeOeJmjtzpr9cCsRAjeJTY/A1
         m5EVpcJbuMOgaaK01U1EzZ/wjiRN+fnGXkRCzZiiy8Pd1kmAJQu/s8rS6qV5fIZat/Bb
         u/cA==
X-Gm-Message-State: AOAM530WtaImu6zAHdBrVGd+RoBlHLMn5lNV+mrqEE6l5n0grar/gvD7
        zkqMDeTMyDPcAT9V73kw4SwjyA==
X-Google-Smtp-Source: ABdhPJzZ2jDcntSnu48WN7FcjWPJqDhglRwCHAL5EpuZUcY8GyVrSU1DbbFPbdXOTxTzZvWce0y9sw==
X-Received: by 2002:adf:fd90:: with SMTP id d16mr32786108wrr.385.1638187374100;
        Mon, 29 Nov 2021 04:02:54 -0800 (PST)
Received: from google.com ([2.31.167.18])
        by smtp.gmail.com with ESMTPSA id m20sm22380070wmq.11.2021.11.29.04.02.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Nov 2021 04:02:53 -0800 (PST)
Date:   Mon, 29 Nov 2021 12:02:51 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Cc:     Matti Vaittinen <mazziesaccount@gmail.com>,
        lukas.bulwahn@gmail.com, Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-power@fi.rohmeurope.com
Subject: Re: [PATCH RESEND 2/4] gpio: bd70528 Drop BD70528 support
Message-ID: <YaTBa5Nucx/i4mnc@google.com>
References: <cover.1637066805.git.matti.vaittinen@fi.rohmeurope.com>
 <4eff6bd5eff8afc137dd8c1697cb5c6b2e3aacd2.1637066805.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4eff6bd5eff8afc137dd8c1697cb5c6b2e3aacd2.1637066805.git.matti.vaittinen@fi.rohmeurope.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 16 Nov 2021, Matti Vaittinen wrote:

> The only known BD70528 use-cases are such that the PMIC is controlled
> from separate MCU which is not running Linux. I am not aware of
> any Linux driver users. Furthermore, it seems there is no demand for
> this IC. Let's ease the maintenance burden and drop the driver. We can
> always add it back if there is sudden need for it.
> 
> Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
> Acked-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> ---
>  drivers/gpio/Kconfig        |  11 --
>  drivers/gpio/Makefile       |   1 -
>  drivers/gpio/gpio-bd70528.c | 230 ------------------------------------
>  3 files changed, 242 deletions(-)
>  delete mode 100644 drivers/gpio/gpio-bd70528.c

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
