Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CD7511DCE6F
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2020 15:46:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729567AbgEUNqi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 May 2020 09:46:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729413AbgEUNqi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 May 2020 09:46:38 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC967C05BD43
        for <devicetree@vger.kernel.org>; Thu, 21 May 2020 06:46:36 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id h17so6701611wrc.8
        for <devicetree@vger.kernel.org>; Thu, 21 May 2020 06:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=ioC6Q3HVvwh9td7JcekYBXwgG6Rm0JWudJ5rZTXChDU=;
        b=Z/tzAhAz8W/eG2mYxcKFp8KKWJhs36XabdHfyuvXnPY8DOreXETPs/WweazwIgydiJ
         jpbDx3OyuHOM1EtBdf1/4JLco99/fbJ06XTQ32t3r8hNyvFhLtEUM/0lGWROiBSNYLTc
         ExFC7STIDBPFVHvsLzXEMa9T35z6/KZzKV7Uk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ioC6Q3HVvwh9td7JcekYBXwgG6Rm0JWudJ5rZTXChDU=;
        b=C4ljq0Mzjigzk7U4NLmZCbLbPdLK6Pil+y1Uvl54mFuivqJkA43CmGjG9X4OA6XDVh
         mNI4LFUov7kYTOfK7Eyi/nMADXQA2mIbtKK+J293utlkZr8qb8dAMD9hQAvsKppKCMW1
         Vp/XMgUi90SCAyo2uDf1q91zhkYOLCqxiENa9wB5etm/abP+FsN8FGPbhrEzJrhgj/6o
         Mzt7/sa5sV1n2qRab3dU5c4sSEYViy4Ts65o0X7nBohywtjnV9hCfUelcyPy4A4zhT26
         dXMmlEYz9Ret71qi8q4iJsD89hYolJzJsxKmdhARkF4xs8H9xPCVEoSznSr5/pgxmxpy
         F3Uw==
X-Gm-Message-State: AOAM531DToanug8Z6aex9SMnVu4Y5v5wO+RYaDcHZgEcYru30kZsXpaO
        vTiFo55Jt1Q+PPJLlv+y6GflXw==
X-Google-Smtp-Source: ABdhPJw4SaKtpUrlRa8kqBZdL7Myt7YbEIE8Xk1YTd7NT9wAik061SrpazfKJ0RlkFO65Y19ocCOGA==
X-Received: by 2002:adf:9507:: with SMTP id 7mr4462650wrs.63.1590068795524;
        Thu, 21 May 2020 06:46:35 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com. [35.190.215.205])
        by smtp.gmail.com with ESMTPSA id g69sm1720399wmg.15.2020.05.21.06.46.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 May 2020 06:46:35 -0700 (PDT)
Date:   Thu, 21 May 2020 13:46:33 +0000
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
Subject: Re: [PATCH v8 02/14] media: platform: Improve queue set up flow for
 bug fixing
Message-ID: <20200521134633.GB209565@chromium.org>
References: <20200403094033.8288-1-xia.jiang@mediatek.com>
 <20200403094033.8288-3-xia.jiang@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200403094033.8288-3-xia.jiang@mediatek.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 03, 2020 at 05:40:21PM +0800, Xia Jiang wrote:
> Add checking created buffer size follow in mtk_jpeg_queue_setup().
> 
> Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> ---
> v8: no changes
> ---
>  drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz
