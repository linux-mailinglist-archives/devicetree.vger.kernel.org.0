Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 19BA01DD2A1
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2020 18:02:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728266AbgEUQC3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 May 2020 12:02:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726808AbgEUQC3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 May 2020 12:02:29 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A406C061A0F
        for <devicetree@vger.kernel.org>; Thu, 21 May 2020 09:02:29 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id z72so6913925wmc.2
        for <devicetree@vger.kernel.org>; Thu, 21 May 2020 09:02:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=FFgD33+aNouNGQWGPAQ82q8pOVxArb54Ymtj9k6c/CI=;
        b=IGMUFSuZHglbq89dE4lbiHY6u0LsaqFDfzsLsjDKYGX4etHufoYeD8MS2j3VMbQ2PM
         QYQ2wFMBSsxWjwvI7O4lhXaSNIwjtur44RocetRNs9sxRMWwWs7HxhKmb6El1eqr43uc
         qj5WC8JdzADa1cvKlTb2t6+rKtlh1XdmkFwVg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=FFgD33+aNouNGQWGPAQ82q8pOVxArb54Ymtj9k6c/CI=;
        b=Wer3ibd8oP05Fnw7AYgQa+/VKtuf+7PezOzGEvoXEh8nMLjTbVvX8PzaJbE+NTc+iG
         qjD40Np/t0DsRYVw9CF+9y7acTSliLS1NHmWq/QQh2DNzB6H1KDXsCxF7JF1yk7M3ApI
         yuWZPsWbA8GX8Krt3rsJdAZTsvQduLSwoG6p0tLxTXC9ThiOwXqEtrt4e/9XT9gmjkjd
         jDkcbP2q0f7kMLyPxRvqg8c5+1pwjICoNGbBgbSFXn70225mhD6v5cdEKRdcx9cG7KBU
         iYLolqiEjTvaH0lWSp6UsP408r1AmaIjAleRIjhVmkDJBJUwx0xtLNTr7/es1oSCsVkv
         lLsA==
X-Gm-Message-State: AOAM5329wa66Zr3qwt0/SJOus5tKIBSn3TfE7aUYseAJUMPQhtANOQBc
        3LGMCsrp87QXVXTtc3vwat4lCQ==
X-Google-Smtp-Source: ABdhPJyvZZpk19V7dcx34aHKaL1bXMZY4n4ffWiVEXRuCg9hQzx9AwjLNVAy7P/eRQEZ4BCf3LkRUw==
X-Received: by 2002:a7b:c207:: with SMTP id x7mr9976002wmi.79.1590076948087;
        Thu, 21 May 2020 09:02:28 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com. [35.190.215.205])
        by smtp.gmail.com with ESMTPSA id x10sm7147943wrn.54.2020.05.21.09.02.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 May 2020 09:02:27 -0700 (PDT)
Date:   Thu, 21 May 2020 16:02:26 +0000
From:   Tomasz Figa <tfiga@chromium.org>
To:     Xia Jiang <xia.jiang@mediatek.com>
Cc:     Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rick Chang <rick.chang@mediatek.com>,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        srv_heupstream@mediatek.com, senozhatsky@chromium.org,
        mojahsu@chromium.org, drinkcat@chromium.org,
        maoguang.meng@mediatek.com, sj.huang@mediatek.com
Subject: Re: [PATCH v8 13/14] media: platform: Rename jpeg dec file name
Message-ID: <20200521160226.GK209565@chromium.org>
References: <20200403094033.8288-1-xia.jiang@mediatek.com>
 <20200403094033.8288-14-xia.jiang@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200403094033.8288-14-xia.jiang@mediatek.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Xia,

On Fri, Apr 03, 2020 at 05:40:32PM +0800, Xia Jiang wrote:
> Rename the files which are for decode feature. This is preparing
> path since the jpeg enc patch will be added later.
> 
> Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> ---
> v8: no changes
> 
> v7: no changes
> 
> v6: no changes
> 
> v5: no changes
> 
> v4: no changes
> 
> v3: no changes
> 
> v2: no changes
> ---
>  drivers/media/platform/mtk-jpeg/Makefile                      | 2 +-
>  drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c               | 4 ++--
>  .../platform/mtk-jpeg/{mtk_jpeg_hw.c => mtk_jpeg_dec_hw.c}    | 2 +-
>  .../platform/mtk-jpeg/{mtk_jpeg_hw.h => mtk_jpeg_dec_hw.h}    | 2 +-
>  .../mtk-jpeg/{mtk_jpeg_parse.c => mtk_jpeg_dec_parse.c}       | 2 +-
>  .../mtk-jpeg/{mtk_jpeg_parse.h => mtk_jpeg_dec_parse.h}       | 2 +-
>  .../platform/mtk-jpeg/{mtk_jpeg_reg.h => mtk_jpeg_dec_reg.h}  | 0
>  7 files changed, 7 insertions(+), 7 deletions(-)
>  rename drivers/media/platform/mtk-jpeg/{mtk_jpeg_hw.c => mtk_jpeg_dec_hw.c} (99%)
>  rename drivers/media/platform/mtk-jpeg/{mtk_jpeg_hw.h => mtk_jpeg_dec_hw.h} (98%)
>  rename drivers/media/platform/mtk-jpeg/{mtk_jpeg_parse.c => mtk_jpeg_dec_parse.c} (98%)
>  rename drivers/media/platform/mtk-jpeg/{mtk_jpeg_parse.h => mtk_jpeg_dec_parse.h} (92%)
>  rename drivers/media/platform/mtk-jpeg/{mtk_jpeg_reg.h => mtk_jpeg_dec_reg.h} (100%)
> 

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz
