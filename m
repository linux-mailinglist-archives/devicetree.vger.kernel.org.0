Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ACB1C330FE2
	for <lists+devicetree@lfdr.de>; Mon,  8 Mar 2021 14:47:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229848AbhCHNr1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Mar 2021 08:47:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229787AbhCHNrU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Mar 2021 08:47:20 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E225C061760
        for <devicetree@vger.kernel.org>; Mon,  8 Mar 2021 05:47:20 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id a18so11471337wrc.13
        for <devicetree@vger.kernel.org>; Mon, 08 Mar 2021 05:47:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=Rg2+rPZvlt5JyvNmoGA7EhEgv5dkqqZkXqI61WU9+Ic=;
        b=yTMBTA0pQoVui8SpbPRTy7dTvVPWwVpnLxF1yj8WHnTcaJZo27BJPVpQX9bkjM8cWF
         8s1XboSaVQTEwwXvMqR2wSBUUcGnYtWaFzA5Lc0uRJNvJbv0rqjE6ySx7r3U1lPTMwQy
         bdCY/5TdSLzRDDFSiOzEqxC9HjM61GIRUEFZSk37h6OdfMG8xrfaBr2rUcctM/dsWssY
         0oaGbT88BSISyNdJFBoUVoG0FoyBsHu2JqCFZhNAlRXJ9b7T8XJVh0iTRkVDRZc+X7Qj
         3zXQAxWvCEblQ2dShp157xiZU/Fsf8/xlEz9dFf/Lc9Bue84AR+xL5C4sgwXb9cxLgRn
         Ys3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=Rg2+rPZvlt5JyvNmoGA7EhEgv5dkqqZkXqI61WU9+Ic=;
        b=Q0HgtGE/eQngFEOx710ECeb/8GYtEJ72f3coRIkE6G5nLMX5E3OE01j8CByrWtuE4f
         UOaKhCx7nOBwgyEB9gYmc/9Ay7Wog8F6UEu/qkguJxFdEEk/Gpi147uVgeBgusGIVxvW
         v9JuJPWKQ9+0Dmqk2EHN35XB+IpcatxeSQkouIQXdhBhS/CvaHFgcINJzo54JfCCeIz2
         wOpsKje7Ff7BUO/MLjJyXseuuruxIcCC8C8MURlF1wO11hKL0p1F+VHeAuQ6lvNFoF4U
         U9qMeRMnrHuYX42IN9VX/qFv3i3eahIITLF9plsMPFq6fr6iWc0d2XdWyLOg9itLdfaH
         f4Hg==
X-Gm-Message-State: AOAM533gB40OWrJIXt6I8J/Vxul4sSR+yUrhEipGC/v9mhq2zJ84DR3k
        TFSnP26GrsnX7l0R7A6qIRYJSw==
X-Google-Smtp-Source: ABdhPJyBn+F09b90dQGkhPL9NVNBc+re31j0vc4zDAnflmf+zfD/zg8cgpFzHCmgam7RaWq9T1mrSA==
X-Received: by 2002:adf:f351:: with SMTP id e17mr22837409wrp.416.1615211238844;
        Mon, 08 Mar 2021 05:47:18 -0800 (PST)
Received: from dell ([91.110.221.130])
        by smtp.gmail.com with ESMTPSA id p11sm18516435wrs.80.2021.03.08.05.47.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 05:47:18 -0800 (PST)
Date:   Mon, 8 Mar 2021 13:47:16 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Cc:     mazziesaccount@gmail.com, Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-power@fi.rohmeurope.com, linux-watchdog@vger.kernel.org,
        Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Subject: Re: [PATCH v8 6/6] mfd: bd9576: Add safety limit/monitoring registers
Message-ID: <20210308134716.GF4931@dell>
References: <cover.1613031055.git.matti.vaittinen@fi.rohmeurope.com>
 <f9d76bed70a440036b56be8a0928925d12db8463.1613031055.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f9d76bed70a440036b56be8a0928925d12db8463.1613031055.git.matti.vaittinen@fi.rohmeurope.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 11 Feb 2021, Matti Vaittinen wrote:

> ROHM BD9576 contains safety features like over/under voltage detection,
> over curren detection and over temperature detection. Add the
> configuration register information.
> 
> Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
> ---
> 
> Changes since v7:
> 	New patch
> 
>  include/linux/mfd/rohm-bd957x.h | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/include/linux/mfd/rohm-bd957x.h b/include/linux/mfd/rohm-bd957x.h
> index 3f351a1ae4ab..2bd35260ee8e 100644
> --- a/include/linux/mfd/rohm-bd957x.h
> +++ b/include/linux/mfd/rohm-bd957x.h
> @@ -116,6 +116,25 @@ enum {
>  #define BD957X_REG_VOUT4_TUNE		0x59
>  #define BD957X_REG_VOUTL1_TUNE		0x5c
>  
> +#define BD9576_REG_VOUT1_OVD		0x51
> +#define BD9576_REG_VOUT1_UVD		0x52
> +#define BD9576_REG_VOUT2_OVD		0x54
> +#define BD9576_REG_VOUT2_UVD		0x55
> +#define BD9576_REG_VOUT3_OVD		0x57
> +#define BD9576_REG_VOUT3_UVD		0x58
> +#define BD9576_REG_VOUT4_OVD		0x5a
> +#define BD9576_REG_VOUT4_UVD		0x5b
> +#define BD9576_REG_VOUTL1_OVD		0x5d
> +#define BD9576_REG_VOUTL1_UVD		0x5e
> +
> +#define BD9576_MASK_XVD			0x7f
> +
> +#define BD9576_REG_VOUT1S_OCW		0x5f
> +#define BD9576_REG_VOUT1S_OCP		0x60
> +
> +#define BD9576_MASK_VOUT1S_OCW		0x3f
> +#define BD9576_MASK_VOUT1S_OCP		0x3f

Just a quick check, are these meant to be the same value?

If so:

For my own reference (apply this as-is to your sign-off block):

  Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
