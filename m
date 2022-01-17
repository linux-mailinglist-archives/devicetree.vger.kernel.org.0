Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 60548490F63
	for <lists+devicetree@lfdr.de>; Mon, 17 Jan 2022 18:26:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233897AbiAQR0l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jan 2022 12:26:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233868AbiAQR0l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jan 2022 12:26:41 -0500
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com [IPv6:2607:f8b0:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C037C06161C
        for <devicetree@vger.kernel.org>; Mon, 17 Jan 2022 09:26:41 -0800 (PST)
Received: by mail-pg1-x52f.google.com with SMTP id f8so11493686pgf.8
        for <devicetree@vger.kernel.org>; Mon, 17 Jan 2022 09:26:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=9xoC5BsgBs/Mu4qr+hvIn82GqzQBroS+8rFaa/f2Y/Q=;
        b=dAYvjWk1j+16Hngzm2LLt+t7e+CbrlYiMl4l4BmVmHKl2cbhj0iER34yXKF/X3bwGW
         Qr5VUfV5ZxX0PyqVwyZSLOJuU82BuGOipjVoVD2fdcluplrY9NGJ8XkBHiqsNueKrjI4
         WVvWljGrn7QsFeKYApaJw4uO0IajmBOQ1EsdVjXaiA81MRnTAnyBgG8B/t0G6W2FMr+U
         uu22lpYcvFc0WzKKSciststJXXRh+sDHBDOpcZfFncQzOx50NzGsWMCujhd2pvtTmemW
         4A98ORWnlHXEzY+6l+1Ss9H48dp9XalcXo28uTEC8KE/mHx78E+PGoZVlfV7YsXZzq46
         j/fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=9xoC5BsgBs/Mu4qr+hvIn82GqzQBroS+8rFaa/f2Y/Q=;
        b=YpdB+jkAFqUzmADX52XNo8vyeM9PSj64Xauh9ppxvmgvy9ibZ0dpPeCcO/9Gc3rfvs
         nTo0ab6zN7UBKKl0BUhw4/ZVyYIpLpE3fobm7M8QoUKOpZ90bIUAiPhWtWtJ48xDbOJk
         BtpicdGRcFesxIR9mH4KMSfNQLqeSEJdTcZf8dTIMICIR/g6o8aA5oTZx5/dn/I0OXO1
         y3rUUc7Nxj+Xki1L4kGywZY86sr0i4pQSQkmIb+kvcgY6RJMHUSBH3F7Py/K+NDVtxVz
         CktIqRPSzVvbanDbDLXjn5EMOLnERwxfozyzLse24kS+54l6BA9rpkj9/5zt8ASvAJkZ
         Dc2w==
X-Gm-Message-State: AOAM532MqRL+q8rRGHkoPL/YHZ9vwYodv/QhZRluABpevtDLCpm/cULQ
        /cRrFLXalTSwQJUun0XZ/5xkLg==
X-Google-Smtp-Source: ABdhPJwVHQsaIzkL9JzjnuMFHxnugQ0rALeKq6btNIsXwiYFKnL0G1gx7VsQK7B3fGJ4eP7Cw23AjA==
X-Received: by 2002:a63:7e14:: with SMTP id z20mr19653366pgc.194.1642440400571;
        Mon, 17 Jan 2022 09:26:40 -0800 (PST)
Received: from p14s (S0106889e681aac74.cg.shawcable.net. [68.147.0.187])
        by smtp.gmail.com with ESMTPSA id l18sm14832167pfu.63.2022.01.17.09.26.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jan 2022 09:26:39 -0800 (PST)
Date:   Mon, 17 Jan 2022 10:26:37 -0700
From:   Mathieu Poirier <mathieu.poirier@linaro.org>
To:     "allen-kh.cheng" <allen-kh.cheng@mediatek.com>
Cc:     Ohad Ben-Cohen <ohad@wizery.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Tinghan Shen <tinghan.shen@mediatek.com>,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-remoteproc@vger.kernel.org
Subject: Re: [PATCH v4 0/2] Add SCP support for mt8186
Message-ID: <20220117172637.GB1119324@p14s>
References: <20220105094125.6917-1-allen-kh.cheng@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220105094125.6917-1-allen-kh.cheng@mediatek.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 05, 2022 at 05:41:23PM +0800, allen-kh.cheng wrote:
> From: Allen-KH Cheng <Allen-KH.Cheng@mediatek.com>
> 
> changes since v3:
>  - use rproc-next
> 
> changes since v2:
>  - remove redundant SoB
> 
> changes since v1:
>  - use mt8192_power_on_sram() helper
>  - add MT8186_SCP_L1_SRAM_PD_P1 in mtk_common.h
>  - add MT8186_SCP_L1_SRAM_PD_P2 in mtk_common.h
> 
> Based on rproc-next
> 
> Allen-KH Cheng (2):
>   dt-bindings: remoteproc: mediatek: Add binding for mt8186 scp
>   remoteproc: mediatek: Support mt8186 scp
> 
>  .../bindings/remoteproc/mtk,scp.yaml          |  1 +
>  drivers/remoteproc/mtk_common.h               |  3 ++
>  drivers/remoteproc/mtk_scp.c                  | 35 +++++++++++++++++++
>  3 files changed, 39 insertions(+)

Both patches in this set are giving me a checkpatch warning that is impossible
to miss.  I deleting this patchset from my queue.   

> 
> -- 
> 2.18.0
> 
