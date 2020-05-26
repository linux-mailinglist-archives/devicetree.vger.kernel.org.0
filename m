Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E623A1DAEC6
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2020 11:30:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726903AbgETJag (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 May 2020 05:30:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726224AbgETJaf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 May 2020 05:30:35 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69092C061A0E
        for <devicetree@vger.kernel.org>; Wed, 20 May 2020 02:30:35 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id f13so1878769wmc.5
        for <devicetree@vger.kernel.org>; Wed, 20 May 2020 02:30:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=wc6stLd7fv3SlBSmBsX1XmQPwtI3AmwZLYlnJzwyzvw=;
        b=vjazAm37j6JS0ESDLULP7usxUJmcyJXpI1rYanJaiBMEXC47/00EoRJqXccf2I/aHF
         52deqipmXhdXb5EVkrQLE6gsz2A75scUhggoIq6VvVuYAA7SeSN8FKnu783vCaJD+lGl
         oJbe9GifOa2TT59QiErtSRIQDSyNwLbHL8NjtYgFCMfCdYZ2BbiXPnihGjZel5DGTJ/M
         DZSn/NAOoba12f60Dh40Ra2FYgfuafQB0ij5r+w2xW+9dGHHUENhQYIPsJOjfGgi5rzR
         QcJ5mOS1YHLQIjdCS8QMEujcXfs863rcj24FHVj+SWqcI54f2AWW3KDQDQCkFFqDj1gC
         ewqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=wc6stLd7fv3SlBSmBsX1XmQPwtI3AmwZLYlnJzwyzvw=;
        b=ATMDO859jhUj5WS/Qu25MIljxzQxfBfb561iIJHD8wUUk42qaONECl128s9z3xkrLL
         fontmecnAk+7gh30WqA1lJ9aU7gO1Gn9oF9D77WrHCeLIbx6w4ZzO1S4hzEqmTC5ETBW
         UgSIiLwWT3/i3rbx6Ibp/kJ56WWzQJuNJR9YrDC9oVpkXHeyHWKc1YTEVQ6cfYvOwa9k
         201NArs4InZ78HoiYM8I5AgftX0bnwm37/HdqWnuYcb0Pd5BhS+D6E3YYXX/UrFyjVGF
         ynCqyn+i/H2BOWhpHO8pPU5Fb4JtvVWHlVLxAPYrAkXCPXYfnZGSxWeqRvjyp/I7PJSr
         Lr9A==
X-Gm-Message-State: AOAM531xDklZZB0aX96JTTksPdfdlAj/vybljciZ+TGCS5oxRRJpb4Qq
        1tFRSsgeXqiT6550rkhY7ZBb5sUMrpc=
X-Google-Smtp-Source: ABdhPJymBBbiK71tQTEAqr5QIR08/MCj+YzDXrNmdjU7RtZMKMWFmlQRCDMRfe/P26o83I25huuHag==
X-Received: by 2002:a1c:305:: with SMTP id 5mr3772868wmd.60.1589967034154;
        Wed, 20 May 2020 02:30:34 -0700 (PDT)
Received: from dell ([95.149.164.102])
        by smtp.gmail.com with ESMTPSA id x5sm2370385wro.12.2020.05.20.02.30.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2020 02:30:33 -0700 (PDT)
Date:   Wed, 20 May 2020 10:30:31 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Tim Harvey <tharvey@gateworks.com>
Cc:     Jean Delvare <jdelvare@suse.com>,
        Guenter Roeck <linux@roeck-us.net>,
        linux-hwmon@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Robert Jones <rjones@gateworks.com>
Subject: Re: [PATCH v11 1/3] dt-bindings: mfd: Add Gateworks System
 Controller bindings
Message-ID: <20200520093031.GF271301@dell>
References: <1589565428-28886-1-git-send-email-tharvey@gateworks.com>
 <1589565428-28886-2-git-send-email-tharvey@gateworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1589565428-28886-2-git-send-email-tharvey@gateworks.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 15 May 2020, Tim Harvey wrote:

> This patch adds documentation of device-tree bindings for the
> Gateworks System Controller (GSC).
> 
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> v11:
>  - no change
> 
> v10:
>  - no change
> 
> v9:
>  - added Reviewed-by: Rob Herring <robh@kernel.org>
>  - remove allOf: see https://lkml.org/lkml/2020/4/15/1930
>  - encorporate Lee's review comments for item descriptions
> 
> v8:
>  - add register to fan-controller node name
> 
> v7:
>  - change divider from mili-ohms to ohms
>  - add constraints for voltage divider and offset
>  - remove unnecessary ref for offset
>  - renamed fan to fan-controller and changed base prop to reg
> 
> v6:
>  - fix typo
>  - drop invalid description from #interrupt-cells property
>  - fix adc pattern property
>  - add unit suffix
>  - replace hwmon/adc with adc/channel
>  - changed adc type to mode and enum int
>  - add unit suffix and drop ref for voltage-divider
>  - moved fan to its own subnode with base register
> 
> v5:
>  - resolve dt_binding_check issues
> 
> v4:
>  - move to using pwm<n>_auto_point<m>_{pwm,temp} for FAN PWM
>  - remove unncessary resolution/scaling properties for ADCs
>  - update to yaml
>  - remove watchdog
> 
> v3:
>  - replaced _ with -
>  - remove input bindings
>  - added full description of hwmon
>  - fix unit address of hwmon child nodes
> ---
>  .../devicetree/bindings/mfd/gateworks-gsc.yaml     | 196 +++++++++++++++++++++
>  1 file changed, 196 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/gateworks-gsc.yaml

Applied, thanks.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
