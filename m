Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 03371481036
	for <lists+devicetree@lfdr.de>; Wed, 29 Dec 2021 06:56:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238859AbhL2F4l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Dec 2021 00:56:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238858AbhL2F4l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Dec 2021 00:56:41 -0500
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30A72C06173F
        for <devicetree@vger.kernel.org>; Tue, 28 Dec 2021 21:56:41 -0800 (PST)
Received: by mail-pg1-x531.google.com with SMTP id 8so17671694pgc.10
        for <devicetree@vger.kernel.org>; Tue, 28 Dec 2021 21:56:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=yw8/kl2LGfHC+BRmnmcCo9TSrmmH3aT+nAaekBOiO84=;
        b=Jz2/jPkRYhFOljG62i4B7CbqP2s+5rpiUExqAr3THdm7ApWZCW3quUvQUc6TCbjvXz
         ZS14n6yc5QX7S5//GZczK8jcqzKPY5Zyj+klFtCJZ1s/5NB/NociQFp/J76l+mH64w6j
         vnrH+eOPmptJxsrYRNqWFoE4Edo4GPZq0MjWE/VuxP0VhL/nseetd/yZlI6GiXECgGuY
         VNRFeWWXwryJXwVTH2juslXxwWQn+tPh92CK6Y6p1Rji40oy52SzTwEXxgITl+fvCkjm
         yDjpc50piI01C8nsF6lTsHaNgygcBX82iTuGLucZYsVz+AFNhcyUPnhKP67hEITG4wrG
         TiYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=yw8/kl2LGfHC+BRmnmcCo9TSrmmH3aT+nAaekBOiO84=;
        b=vNfef7ebRY0FTaz8o7qLRgXOmvQ4tZMnu6brbCXunIhxVXI2Pm/7c3WL5RGimMhGDC
         F/7AeY+8T35YALMGu0zT1U79l2JQCI3WQPlLqBhYdFjFjIEuXNk7pIWG53/M6BSra75t
         L/xSQKdXOunJJ2Acn1R8Fd59HHKjVAwI4CV80u66iKIfduyrMscR+AMLI1JH30Go9T4C
         Fh++7kxpXWFTn+L/iUtar52yy6Z0PGt+qdqkxW3x022J6QjHPU1L59v1+fc5D2w7kkl3
         oHNWV7uQ2s8lqOhCnquZqyxxhBE29kBXhn2QSKd16vFttJUGwOVMGEPtrgbuosI8rJRk
         7vqw==
X-Gm-Message-State: AOAM533jUSScwLx4ReMNrTyENvORTxdIgkqDZ8VrUhu5oCCh4cWy13wp
        cH5I/hE2sEuteW3nrBIYh+FHfQ==
X-Google-Smtp-Source: ABdhPJzWVI7pbJHuImaGNh5XJMu92kFHsTAwgUYOuJm6wAZ5cXRl312R6S9VJqBw5q/POmfLp7/urg==
X-Received: by 2002:a63:ab08:: with SMTP id p8mr17578168pgf.617.1640757400456;
        Tue, 28 Dec 2021 21:56:40 -0800 (PST)
Received: from google.com ([2401:fa00:1:10:4dea:2b20:ea89:724b])
        by smtp.gmail.com with ESMTPSA id cx5sm20766657pjb.22.2021.12.28.21.56.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Dec 2021 21:56:40 -0800 (PST)
Date:   Wed, 29 Dec 2021 13:56:35 +0800
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     Yunfei Dong <yunfei.dong@mediatek.com>
Cc:     Alexandre Courbot <acourbot@chromium.org>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Tzung-Bi Shih <tzungbi@chromium.org>,
        Tiffany Lin <tiffany.lin@mediatek.com>,
        Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Tomasz Figa <tfiga@google.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Fritz Koenig <frkoenig@chromium.org>,
        Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Irui Wang <irui.wang@mediatek.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Steve Cho <stevecho@chromium.org>, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, srv_heupstream@mediatek.com,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
Subject: Re: [PATCH v2, 04/12] media: mtk-vcodec: Read max resolution from
 dec_capability
Message-ID: <Ycv4k+xHupjrualp@google.com>
References: <20211228094146.20505-1-yunfei.dong@mediatek.com>
 <20211228094146.20505-5-yunfei.dong@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211228094146.20505-5-yunfei.dong@mediatek.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 28, 2021 at 05:41:38PM +0800, Yunfei Dong wrote:
> From: Yunfei Dong <yunfei.dong@mediatek.corp-partner.google.com>

Just realized this on reviewing the 4th patch of the series.  Please fix it to prevent from showing the line in next version series.

> Supported max resolution for different platforms are not the same: 2K
> or 4K, getting it according to dec_capability.
> 
> Signed-off-by: Yunfei Dong <yunfei.dong@mediatek.com>

Reviewed-by: Tzung-Bi Shih <tzungbi@google.com>
