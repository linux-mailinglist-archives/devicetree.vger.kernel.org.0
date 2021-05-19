Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A8F95388DFA
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 14:26:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232380AbhESM1T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 08:27:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232016AbhESM1T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 08:27:19 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A696AC061760
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 05:25:58 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id l18-20020a1ced120000b029014c1adff1edso3315458wmh.4
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 05:25:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=xLrYWL3G0yLTjLat+7q2Hd3GDDWtBuIS0NmnLafhHYU=;
        b=M+H82Kh+oXdkQoTtxNiRUTXDJVu7UvoL0s1lNxr/+mj4wI9o3798Kfje3T7ITTebTS
         Delp6ZcQlQgdBeKecQIrVfu6sNt6s9bKSY1JgqslFlXvhZ6jxZ3AWTHfIoW75GcuKzXJ
         g7tM0s+YS6YpJy1z9FKF9o8RscJqt97Jkzn00n7uxjAbTJxq6srRG52eqSF/hh0a4839
         n2mfu046pf421l8eXRzeZ1ySHTP6hDM8DFEkRYaBla02t5yUvnNwfjOC9udcZe19wYbn
         jIobdU10Vcz0BF36X2dcNnC+HuXNHyVSaNeXe6ypp0Rrhua3VqU3m+5GyWhqIl8fORUT
         hyuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=xLrYWL3G0yLTjLat+7q2Hd3GDDWtBuIS0NmnLafhHYU=;
        b=UD4zG8+X1N97h4A2L7yRady5rutF/550HqBKyjzsI67pFeP+pWcNUEVY7n405ZjBo6
         5R/JLg2VdSPEIywkURKawLJRcjElvPCsU5j+09Cbi5cFyYG0+H9NvPbejQe2rmemBCP/
         DvjeSJK2P8226dn/LNFSHoscDc6r1MsqpXk+nFoY5dj18Mp6cJIcWFEeO54IJnTE9t5j
         qBwVROgS2GBvsdxhQRL6nbrHODC2R8BgRmhocc+tjLWU1+FtNqrW0TpHgqnBIk26DMMS
         TBowBDHtjgaKVODUiEjTN4r08i63T6T8FqPh86jbeg5UL6WUfcVgPDjJzZ5UE0Cc6YLW
         TrWg==
X-Gm-Message-State: AOAM530OgJt09ET635qmeveQvuQLqd65GvoNn67GQFHGq1/3/wc7Fh4Z
        I16zsokIfBb3VMM9tSeb43CifBu6SAVICw==
X-Google-Smtp-Source: ABdhPJwH5U+g3jgVW/9AUcDf/PS58Vd6j9YmQgA84ajaHByLY/1KPS4wN1q569g8eds+7T4LjC4kzg==
X-Received: by 2002:a05:600c:379a:: with SMTP id o26mr11196266wmr.86.1621427157275;
        Wed, 19 May 2021 05:25:57 -0700 (PDT)
Received: from dell ([91.110.221.215])
        by smtp.gmail.com with ESMTPSA id p6sm9293120wma.4.2021.05.19.05.25.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 May 2021 05:25:56 -0700 (PDT)
Date:   Wed, 19 May 2021 13:25:54 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Luca Ceresoli <luca@lucaceresoli.net>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Keerthy <j-keerthy@ti.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] mfd: lp87565: handle optional reset pin
Message-ID: <20210519122554.GB2415519@dell>
References: <20210226142852.19632-1-luca@lucaceresoli.net>
 <20210226142852.19632-2-luca@lucaceresoli.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210226142852.19632-2-luca@lucaceresoli.net>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 26 Feb 2021, Luca Ceresoli wrote:

> Optionally handle the NRST pin (active low reset) in order to start from a
> known state during boot and to shut down the chip when rebooting.
> 
> Signed-off-by: Luca Ceresoli <luca@lucaceresoli.net>
> ---
>  drivers/mfd/lp87565.c       | 27 +++++++++++++++++++++++++++
>  include/linux/mfd/lp87565.h |  1 +
>  2 files changed, 28 insertions(+)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
