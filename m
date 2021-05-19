Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 161E73891F1
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 16:51:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354834AbhESOwX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 10:52:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354831AbhESOwV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 10:52:21 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 155D9C061761
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 07:51:02 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id h3-20020a05600c3503b0290176f13c7715so3491657wmq.5
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 07:51:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=9hWo+oUpcm6brp7QVlWP1qMLhPG7on+ugtgTIWdWGgk=;
        b=DkbY+S6Kg6quQSONCtHMXfCOVH4OqhINL2j5T2IQkq270nlPjxKYMOHAvn7NWQh8X3
         Jhma/fsIgCa0KwMhVLvInBhtvcRSi7uxPlGlTwbvO6clzDTUen87CWrbzK5cRjybbWRP
         PhJn84d1pBheNl2WpfksWb0E2d+ClU+7OKVwGil1F+lQanIzMlgNYDRkpjv5F54gFZAF
         JqAdn/Wh9QK5zpJOpgWnqRxeQRToHI85pqtl/YpVaxYF47j9Nz2GikmJ0e3/mhMoEV2F
         Fr0AE4zoSCrxSgKOhdk2qoKqrJ8Bsm9nTRjKH8MfzK/wIo1B8JlgqujcclkxDnRVOdcB
         2MVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=9hWo+oUpcm6brp7QVlWP1qMLhPG7on+ugtgTIWdWGgk=;
        b=onM1V3cZVKI5r5+JUc7/aRiB0L2BeRQ9DQTcIjbojHNcE6NOne3DzsbIMuoD6Y/Lg3
         hh7CR8hMAAby0IuhXefqIFrPAGScpZcIYwH6ME6JRx6P/Z0f8CHBVmUW08dgJBbU/dQ/
         j5Vs+ZH0sJlUALfLPu0PEJPZkrBCSz7biA+fECZaWEUgnQ4OMst64xv+JecvGa5G7hON
         QC4s0tVyyCPBE7NNvdLPtNW0aKl+Mm/hES8HCQfrs7as1eIwCeCLjc6MHJiACUSUn+8C
         WY+E3U+Zs2I7hJRLylGsZAj5Vw608Iaz3a6STSogtYnFSFlGQ2mUZgLHcdsNAkTaL/TV
         iQng==
X-Gm-Message-State: AOAM531N+7K8odaL2BNl8ztkBosOxiGkIwi3SmwUlKx3TJjgh/FH+RKB
        KqK+IyectqX7Wi2dbcj2tzTTJQ==
X-Google-Smtp-Source: ABdhPJxq4yOvrbz4+GMdrRqg0XGhy30GzDMOvEMevBFgiblHVaKtLBRosn/C9Txh2zMPl8KgwasAgQ==
X-Received: by 2002:a05:600c:4f4d:: with SMTP id m13mr12270205wmq.4.1621435860634;
        Wed, 19 May 2021 07:51:00 -0700 (PDT)
Received: from dell ([91.110.221.215])
        by smtp.gmail.com with ESMTPSA id l8sm7188514wry.55.2021.05.19.07.50.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 May 2021 07:51:00 -0700 (PDT)
Date:   Wed, 19 May 2021 15:50:58 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     cy_huang <u0084500@gmail.com>
Cc:     lgirdwood@gmail.com, broonie@kernel.org,
        daniel.thompson@linaro.org, jingoohan1@gmail.com,
        b.zolnierkie@samsung.com, pavel@ucw.cz, robh+dt@kernel.org,
        dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, cy_huang@richtek.com
Subject: Re: [PATCH v7 3/4] mfd: rt4831: Adds DT binding document for Richtek
 RT4831
Message-ID: <20210519145058.GF2549456@dell>
References: <1621262161-9972-1-git-send-email-u0084500@gmail.com>
 <1621262161-9972-3-git-send-email-u0084500@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1621262161-9972-3-git-send-email-u0084500@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 17 May 2021, cy_huang wrote:

> From: ChiYuan Huang <cy_huang@richtek.com>
> 
> Adds DT binding document for Richtek RT4831.
> 
> Signed-off-by: ChiYuan Huang <cy_huang@richtek.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/mfd/richtek,rt4831.yaml    | 90 ++++++++++++++++++++++
>  1 file changed, 90 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/richtek,rt4831.yaml

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
