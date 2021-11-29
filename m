Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5147446161F
	for <lists+devicetree@lfdr.de>; Mon, 29 Nov 2021 14:20:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229824AbhK2NXn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Nov 2021 08:23:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1377631AbhK2NVM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Nov 2021 08:21:12 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B79AC07E5F9
        for <devicetree@vger.kernel.org>; Mon, 29 Nov 2021 04:03:16 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id i5so36256294wrb.2
        for <devicetree@vger.kernel.org>; Mon, 29 Nov 2021 04:03:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=9Dc/iG+ktAxKNzmT8TfQ9f8djyDVfbbGG7SZtfMUUC0=;
        b=D6KK2C4hTMnF9Ds8wmygY9WOGFq+Z+eOzalBiPuUVUVl0PQzqQEp6tKvT8EDRdquPd
         oVCqAXXOOSL6hrmjrBWoG8tLAVhlDgB3f112bHxQcTeIQ5gzJ0KtqRw/lPAbkuVW5BP9
         SvN9lmOtg2XRyd3Jbadqp7uHxi4pXpB6upAbYzoJuIoXjhDmtypiK3wvLWEZoJi3Znn6
         70dBOFUyFPXNTZH4PW3MYdzfKBsczBRKRQ6Wq+8et6l0A1f5fJRJkKLWybmgYozxejYS
         VEKYHvXzWfAdO79pUw2P9IkJE55g6+6TGyLpOanPweuWgGQCJfym7UtGbQzpZyVT5fVt
         CZCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=9Dc/iG+ktAxKNzmT8TfQ9f8djyDVfbbGG7SZtfMUUC0=;
        b=5APJJUXVNERkrhslaFarsyLJRaNmtTn5UJt8aB1et1p4abHc6fEczqB4RcEwRX+OXW
         QKNjjrilQaC4tduoIPiJL0I3VVMti/bSZJKt9Tc+Mq2+SEfPiaGzsD5xzeOvg5+i264J
         2DFBvmiUeX8mDlhu9OeQXBh/t7HUEQrFV5bKRkyRuA/A2mlxXFGc2NHI/BsZ6X5gfDSV
         LkKyaoGhCDBJdjJohm79phGXuYfHZBbGvzReGop1lHletnFt9+rp1nWuRM0ZU7O/mgMW
         Tia1Yjj14kAE0LAtwFMKr17XfucD6FNHej6WEyepur2rrIfWQKPtwUbZU9nR2PaLsIFX
         Kcgg==
X-Gm-Message-State: AOAM533EzRjqqvtghGyHPJhgWEENPI3ZkVg5GazOQnXYogNBPERYBz6Y
        5Z/5VtcI6h8Z8aFXzyxD0zneVA==
X-Google-Smtp-Source: ABdhPJwhYvYhaxhwlxS+w6L0D3y8AaCDYKbNspMO1hyFG4E8A5s290sdFXWWgRPk7ZVy3MGQrWy1vA==
X-Received: by 2002:a5d:63ca:: with SMTP id c10mr33559892wrw.124.1638187395188;
        Mon, 29 Nov 2021 04:03:15 -0800 (PST)
Received: from google.com ([2.31.167.18])
        by smtp.gmail.com with ESMTPSA id n32sm24506264wms.1.2021.11.29.04.03.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Nov 2021 04:03:14 -0800 (PST)
Date:   Mon, 29 Nov 2021 12:03:12 +0000
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
Subject: Re: [PATCH RESEND 4/4] MAINTAINERS: bd70528: Drop ROHM BD70528
 drivers
Message-ID: <YaTBgOBbUsm5uVY3@google.com>
References: <cover.1637066805.git.matti.vaittinen@fi.rohmeurope.com>
 <90b0565c0eb9429b0962f08d45292a5a9ebe5cea.1637066805.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <90b0565c0eb9429b0962f08d45292a5a9ebe5cea.1637066805.git.matti.vaittinen@fi.rohmeurope.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 16 Nov 2021, Matti Vaittinen wrote:

> The only known BD70528 use-cases are such that the PMIC is controlled
> from separate MCU which is not running Linux. I am not aware of
> any Linux driver users. Furthermore, it seems there is no demand for
> this IC.
> 
> Ease the maintenance burden and drop the driver.
> 
> Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
> ---
>  MAINTAINERS | 8 --------
>  1 file changed, 8 deletions(-)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
