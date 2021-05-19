Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3A186389197
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 16:41:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354258AbhESOmg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 10:42:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354455AbhESOmE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 10:42:04 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EAF7C06138D
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 07:39:59 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id z19-20020a7bc7d30000b029017521c1fb75so3619126wmk.0
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 07:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=pUl/PDtyE06AGaUOVVOSgM6u9E5gD62PhUnqij8b4GA=;
        b=Xh0ZPv2ZA0iIOHxdny9BbgczhC75uldbin22zXLJGsUVkzDT74YHAUORAmwunVI7dO
         1ZSInzcNwn5W9OCI+DRtq43J+rHPAQAtjeXWIjjc+YHsMOcfCb0AX0iQNQp3dFx4amAV
         UCiOlSarrf6hGXfWltEp1sZGgA3Z01FCl2ud4avN1JCJRkh2gk3pQL8TH8ZI7Vpk95yn
         CTjj34VwMu3lKXRCgUtd+VGTgePWM+wwOmwvs9RPWA/UVEP37jG4pBSFaxd9UCmUH8+O
         UntqKF3ex/1cubUDxpxD+PkeUQI4oJzkTsjeVqBH/6IJG0HgOlisPxZgiOwTqPnd92Ld
         Jv+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=pUl/PDtyE06AGaUOVVOSgM6u9E5gD62PhUnqij8b4GA=;
        b=oEN7iKwGOHixFMlj+wuywjzZoew/dJ0elRbf3DMiJ5TAPZGoow6GLdIV8zSzFWK65S
         YNhNXgqAUELFpRdPXahB995HrA/bUhqMwH4NZOElF/JAACPRdweLnvz4PT4IR+KUKQTZ
         wPYBZt5jjCpZjJfxy4Wou87stEMJnsmGogy9lFI+ZL2PMT28lP/KT4d/uGxgPE8GHAdv
         dJTp4rnaQBSzbTs+esbUvS8iPuYzGi5UiXBvoCRVBNqnOFw3qQtnJ5DIXJ2HOfwppgjD
         Eoo+wI00WmstFiP8ySslIpAoib/FTvT1Fy6FaoE9kKSdYHt3zQYnXlRNkafVg8Ad8J8R
         bHjg==
X-Gm-Message-State: AOAM531sIvZdP3Piga2oz/FhPRgTYYLLon4ZcLEpOlT3+XHm1q+HuOzt
        IncFfnFXuLHfhrjnAGJfrhRtcA==
X-Google-Smtp-Source: ABdhPJyst0ljQrlv1Es78T/vHYG8kLHpsdD73B7dbX3o4KuF1SW42FcIYG8H6rYBKR+qegLl34td8w==
X-Received: by 2002:a7b:ce8d:: with SMTP id q13mr11355217wmj.109.1621435198003;
        Wed, 19 May 2021 07:39:58 -0700 (PDT)
Received: from dell ([91.110.221.215])
        by smtp.gmail.com with ESMTPSA id w20sm9489272wmc.44.2021.05.19.07.39.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 May 2021 07:39:57 -0700 (PDT)
Date:   Wed, 19 May 2021 15:39:55 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     alsa-devel@alsa-project.org, broonie@kernel.org,
        lgirdwood@gmail.com, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.com, heiko@sntech.de, robh+dt@kernel.org,
        perex@perex.cz, jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v11 3/4] dt-bindings: Add Rockchip rk817 audio CODEC
 support
Message-ID: <20210519143955.GH2415519@dell>
References: <20210515025749.11291-1-macroalpha82@gmail.com>
 <20210515025749.11291-4-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210515025749.11291-4-macroalpha82@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 14 May 2021, Chris Morgan wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Create dt-binding documentation to document rk817 codec.
> New property name of rockchip,mic-in-differential added to control if
> the microphone is in differential mode or not.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Tested-by: Maciej Matuszczyk <maccraft123mc@gmail.com>
> Acked-by: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/mfd/rk808.txt         | 188 ++++++++++++++++++
>  1 file changed, 188 insertions(+)

For my own reference (apply this as-is to your sign-off block):

  Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
