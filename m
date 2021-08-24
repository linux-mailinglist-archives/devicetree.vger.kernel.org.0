Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2EA383F6514
	for <lists+devicetree@lfdr.de>; Tue, 24 Aug 2021 19:09:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234345AbhHXRKX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Aug 2021 13:10:23 -0400
Received: from mail-oo1-f44.google.com ([209.85.161.44]:37715 "EHLO
        mail-oo1-f44.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239605AbhHXRIQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Aug 2021 13:08:16 -0400
Received: by mail-oo1-f44.google.com with SMTP id l12-20020a4a94cc0000b02902618ad2ea55so6729935ooi.4
        for <devicetree@vger.kernel.org>; Tue, 24 Aug 2021 10:07:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=x0+Ku3uRYUZNsC66GsbdnR2uZPO2vq9Jho8/8ikUv4w=;
        b=HISu9FYiHtZpdg4IwzWrKO8FdwL2nFJQCqVnpqAZNbetaA9/sTh6XKFTjixQBXqhbZ
         QY2/EzLTJhoNkGo2HEFV5usqfF1rwedkhFpZFdHytwKx0Zml65BABj2kXgyJN4NaiIBb
         XrRRhSTMQgHoCmH380spDM302R5UZ9+V00xVtjYCDklgaVh06T1G7NnyXMw3Hz2nTfDP
         PwFrH4Y8q9wEG/pEAQrqFGv9ydhfCxy2dtSczNcbAhHzfqCL3TuqjlQ2IBEyTYBWFzyu
         rz+HT2w1XPMgTJjQxwLoKr/eh+HsM2Py5hncmcAOkBhD253KF6eiOCqEElnqEOCTYeb8
         SQPQ==
X-Gm-Message-State: AOAM533mcz0U8w20bI0Faj0XoQF+HrTPXbSDSyH8wOAQGrLbsLLlfHDV
        AjTxYHJC3FNz7eXeA6KMig==
X-Google-Smtp-Source: ABdhPJzFcRyrinyVmQXXuVJkq9e3q3DPx8HeY+Xs4gHp1ZiXtcwNhbdUGwNoK/D/cBshzThYrQhing==
X-Received: by 2002:a4a:2549:: with SMTP id v9mr30504371ooe.28.1629824850050;
        Tue, 24 Aug 2021 10:07:30 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id n130sm4521973oif.32.2021.08.24.10.07.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Aug 2021 10:07:29 -0700 (PDT)
Received: (nullmailer pid 639790 invoked by uid 1000);
        Tue, 24 Aug 2021 17:07:28 -0000
Date:   Tue, 24 Aug 2021 12:07:28 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sugar Zhang <sugar.zhang@rock-chips.com>
Cc:     heiko@sntech.de, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, broonie@kernel.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 12/15] ASoC: dt-bindings: rockchip: Add compatible
 strings for more SoCs
Message-ID: <YSUnUHwMDrU748Hs@robh.at.kernel.org>
References: <1629796561-4025-1-git-send-email-sugar.zhang@rock-chips.com>
 <1629796734-4243-2-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1629796734-4243-2-git-send-email-sugar.zhang@rock-chips.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 24 Aug 2021 17:18:51 +0800, Sugar Zhang wrote:
> This patch adds compatible strings for more SoCs.
> 
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> ---
> 
> Changes in v2: None
> 
>  Documentation/devicetree/bindings/sound/rockchip-i2s.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
