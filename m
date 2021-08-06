Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C50FC3E29D2
	for <lists+devicetree@lfdr.de>; Fri,  6 Aug 2021 13:38:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241722AbhHFLi5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Aug 2021 07:38:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240755AbhHFLi4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Aug 2021 07:38:56 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BF6AC061799
        for <devicetree@vger.kernel.org>; Fri,  6 Aug 2021 04:38:40 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id z4so10664703wrv.11
        for <devicetree@vger.kernel.org>; Fri, 06 Aug 2021 04:38:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=s9wnVnDyd/BCxuk/HASH4KODRxCJv7VlRo5y7kgnv28=;
        b=qJk2DxUF3xFKcfqISlcX5FsEolwmVRPARV1u5OIJr2JkgRn8MxeQrgpdJwgictJQXW
         68MHh5DsUeRKtY7grsf24MV7xFCfhzlIG192rze6AAV/bhP7kl6fotqQeK5N3VRBqLGf
         TLkFsGzO74BAZcl2NPQaVsPyof91VeIkrheYpzMBd1h5DCTbcQCaTez7DlVlOgIsa4G5
         QCTSPib/tvfv+yBnDp69b1NlqIK1JhSy/shdWP0AOeKXaBwQJEu1Vm7qCo3I4+CMeUrG
         IBwq675kfMkljraZull58XzT2wlvm6x2KrXxl/HAddxt+wUxKsIFSStuY+XGKHNSgvMd
         PrdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=s9wnVnDyd/BCxuk/HASH4KODRxCJv7VlRo5y7kgnv28=;
        b=NxMgrjx9MZ6QyWWhbNyAOhT78PEw4qEU5xIj3grJLsOUPOvDZJAQe6g+8sKoE1jwGR
         OBzaT75kHqor/swsaWJwBiV0HFlF32ZWfsrcUnSNzPuYEH8U291ehYxwBl3tBKv4r7lk
         KY//CnIxrQJq/nTLjVPW8MX/4NOmc2+Jiziw+m7utKRNWSgq7ciYKis6QK75JTLWbm6M
         nZDzoyVixbQElmBEQzzzgEhTdh2GDXDvXc17J+r54DNzN0PfZlnkyxbmmJl34EtfoLs9
         AbfEImwCQ1yYW5ReATcueNeh9spKlQx1DZti71DmG2go69Due17JNMutSP4a17iRJsbd
         imtA==
X-Gm-Message-State: AOAM5317bZtET30lenIWqZz3RjB9irbl8AEEhUZ2xUFurOKaqSAx8qQI
        liaCXHUomPRrmW+H69YJZ/O+Jw==
X-Google-Smtp-Source: ABdhPJy3RvWjqo+uo7Q4r/toVYPAJ3vfivdBc8oWppyqpHaF+NSsJEUDyP5mAgQrwCkNPSzB2L393A==
X-Received: by 2002:a5d:6a89:: with SMTP id s9mr10293739wru.309.1628249918939;
        Fri, 06 Aug 2021 04:38:38 -0700 (PDT)
Received: from google.com ([109.180.115.228])
        by smtp.gmail.com with ESMTPSA id l5sm10683955wrc.90.2021.08.06.04.38.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Aug 2021 04:38:38 -0700 (PDT)
Date:   Fri, 6 Aug 2021 12:38:36 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Alistair Francis <alistair@alistair23.me>
Cc:     robh+dt@kernel.org, lgirdwood@gmail.com, broonie@kernel.org,
        linux-imx@nxp.com, kernel@pengutronix.de,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        alistair23@gmail.com
Subject: Re: [PATCH v9 03/12] mfd: simple-mfd-i2c: Save the register client
 data
Message-ID: <YQ0fPEeZGYe7f1cC@google.com>
References: <20210806091058.141-1-alistair@alistair23.me>
 <20210806091058.141-4-alistair@alistair23.me>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210806091058.141-4-alistair@alistair23.me>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 06 Aug 2021, Alistair Francis wrote:

> Signed-off-by: Alistair Francis <alistair@alistair23.me>
> ---
>  drivers/mfd/simple-mfd-i2c.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/mfd/simple-mfd-i2c.c b/drivers/mfd/simple-mfd-i2c.c
> index 583e8c7924af..633a2b28b6cb 100644
> --- a/drivers/mfd/simple-mfd-i2c.c
> +++ b/drivers/mfd/simple-mfd-i2c.c
> @@ -48,6 +48,8 @@ static int simple_mfd_i2c_probe(struct i2c_client *i2c)
>  	if (IS_ERR(regmap))
>  		return PTR_ERR(regmap);
>  
> +	i2c_set_clientdata(i2c, regmap);
> +

No need to store this here.

Just do this in the child device:

     dev_get_regmap(pdev->dev.parent, NULL);

>  	/* If no MFD cells are spedified, use register the DT child nodes instead */
>  	if (!simple_mfd_data || !simple_mfd_data->mfd_cell)
>  		return devm_of_platform_populate(&i2c->dev);

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
