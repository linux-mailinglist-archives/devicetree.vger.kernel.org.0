Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A8C4940B49C
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 18:28:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229502AbhINQ3l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 12:29:41 -0400
Received: from mail-ot1-f42.google.com ([209.85.210.42]:36824 "EHLO
        mail-ot1-f42.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229497AbhINQ3k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Sep 2021 12:29:40 -0400
Received: by mail-ot1-f42.google.com with SMTP id a20-20020a0568300b9400b0051b8ca82dfcso19303244otv.3
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 09:28:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=EGgkGkw6sjpqBD+M2iuTf7hL6aaQjfg7s6iVInhPuTI=;
        b=8EJ/D0DKRw4LPOAxll/dc0Jyy3AbXSQSm/3JtiNtZ7kO6CvGEj0dfhFarB2ZtEtjBB
         EPxygwR+xoq6Fx+JLfOrHQUxX40SmH4P8UQdItkQ8VaLiYMGhuWqvQpUQZHEUMtdbNvl
         +/Vj07C/rT0w86g4CgoYglEoIVW15vMCvrmXsIzHk4m+bdpqW53mz1lp1uihFOAFd2jn
         BQi75XZugEB8VeiMuHxGtDL6/+nG6P1GeZ/N8IwLGkKSdNr+1N4ziAv4smNTtM0jzt2p
         BvEJTQLuemilLVZ6ZVTqIi+hBV/gxHTGGT4PUmMmrgadJU9bbibgQm7OMxomRaPlgFNP
         Io9g==
X-Gm-Message-State: AOAM530m0QMisMdEvZvYw6AaKHK82ugiCsIQ6j9Dn3rtJdXxM2LheOOB
        c5Ak0grDfawj2qAv4E3IqG9gBFq/lw==
X-Google-Smtp-Source: ABdhPJy3ZJ+m09nXL1kvp7uKJWNHLNcerOaV/h081xvO0OPhpoqy/g/M0Zq0vXy2vdjD8t2K9qU4oA==
X-Received: by 2002:a9d:6a4b:: with SMTP id h11mr15597285otn.143.1631636903112;
        Tue, 14 Sep 2021 09:28:23 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id e2sm2707323ooh.40.2021.09.14.09.28.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Sep 2021 09:28:22 -0700 (PDT)
Received: (nullmailer pid 3511648 invoked by uid 1000);
        Tue, 14 Sep 2021 16:28:20 -0000
Date:   Tue, 14 Sep 2021 11:28:20 -0500
From:   Rob Herring <robh@kernel.org>
To:     Tzung-Bi Shih <tzungbi@google.com>
Cc:     broonie@kernel.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org, robh+dt@kernel.org
Subject: Re: [PATCH v3] ASoC: dt-bindings: mediatek: mt8192: re-add audio afe
 document
Message-ID: <YUDNpN7bHFpMlRAE@robh.at.kernel.org>
References: <20210914091204.2204278-1-tzungbi@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210914091204.2204278-1-tzungbi@google.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 14 Sep 2021 17:12:04 +0800, Tzung-Bi Shih wrote:
> The document was merged as commit 1afc60e00de3 ("dt-bindings:
> mediatek: mt8192: add audio afe document").
> 
> However, [1] revealed that the commit 1afc60e00de3 breaks
> dt_binding_check due to dt-bindings/clock/mt8192-clk.h doesn't
> exist.
> 
> As a temporary fix, commit 7d94ca3c8acd ("ASoC: mt8192: revert
> add audio afe document") reverted commit 1afc60e00de3.
> 
> dt-bindings/clock/mt8192-clk.h is in mainline per commit
> f35f1a23e0e1 ("clk: mediatek: Add dt-bindings of MT8192 clocks").
> Re-adds the document back.
> 
> [1]: https://mailman.alsa-project.org/pipermail/alsa-devel/2020-November/176873.html
> 
> Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
> ---
> Changes from v2 (https://mailman.alsa-project.org/pipermail/alsa-devel/2021-August/189058.html):
> - Simplify the commit message.
> 
> Changes from v1 (https://mailman.alsa-project.org/pipermail/alsa-devel/2021-August/189048.html):
> - Add more context to the commit message.
> 
>  .../bindings/sound/mt8192-afe-pcm.yaml        | 100 ++++++++++++++++++
>  1 file changed, 100 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml
> 

With the indentation fixed,

Reviewed-by: Rob Herring <robh@kernel.org>
