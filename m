Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 217C83E979A
	for <lists+devicetree@lfdr.de>; Wed, 11 Aug 2021 20:24:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229894AbhHKSZQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Aug 2021 14:25:16 -0400
Received: from mail-pl1-f174.google.com ([209.85.214.174]:44644 "EHLO
        mail-pl1-f174.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229655AbhHKSZQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Aug 2021 14:25:16 -0400
Received: by mail-pl1-f174.google.com with SMTP id q2so3759098plr.11
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 11:24:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=uR0s0AU+M7YxxJS85wJoKJfjFhScm/FPYXJ1t4tDEUM=;
        b=IB38QFPwjBKm4rAh3IvORPtvK0f9To25REggaqQCefVUImCvy6GZkRRO0zNpRIRJVx
         D0DnSoKDh9HxHr8DR7kx3Bg4OL6Ag53TJySeKrNuN1ViPqGgqHrT0cvJ4BDBIVhkYAOi
         k4Khx6BGYPvWPmwFVYkfeUbquAyohvcArvF1/BVFXvhG/IqBfxj+VMLGSHENoa8uli1z
         PQ5cp6BbX7/GXo1pZ4ZJpqs1W99YK71GFewLY9aeAOMbXVXbIt1eOLsa7Wcq82tiRtLA
         k85jfADDGpXq/yqwgrisqD/PU9TGW7jQxZr9oy/qdC0xAB7QgD+mPSxr5ajXn6Hz1n1b
         WAqw==
X-Gm-Message-State: AOAM5316Tac1VXat93DGVza81L1Jwz5n7EDQwcnaFn1WMXdRt0sxljtj
        EDKrY9JEowFfsvyB/pDYXQ==
X-Google-Smtp-Source: ABdhPJyGrWyK5wGdhAncfGSofyVJ4NqhVg2p8ntFX0yjQ+DE10PUC1LDoID8zGN8l2MM9cl7QHpKiQ==
X-Received: by 2002:a63:5b24:: with SMTP id p36mr40450pgb.91.1628706292194;
        Wed, 11 Aug 2021 11:24:52 -0700 (PDT)
Received: from robh.at.kernel.org ([208.184.162.215])
        by smtp.gmail.com with ESMTPSA id r3sm195193pff.119.2021.08.11.11.24.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Aug 2021 11:24:51 -0700 (PDT)
Received: (nullmailer pid 39491 invoked by uid 1000);
        Wed, 11 Aug 2021 18:24:47 -0000
Date:   Wed, 11 Aug 2021 12:24:47 -0600
From:   Rob Herring <robh@kernel.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     bgoswami@codeaurora.org, broonie@kernel.org, perex@perex.cz,
        plai@codeaurora.org, tiwai@suse.de, lgirdwood@gmail.com,
        bjorn.andersson@linaro.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org
Subject: Re: [PATCH v3 06/20] ASoC: dt-bindings: replace q6afe-clk with q6dsp
 audio clk bindings
Message-ID: <YRQV74TApmx949vZ@robh.at.kernel.org>
References: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
 <20210803125411.28066-7-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210803125411.28066-7-srinivas.kandagatla@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 03 Aug 2021 13:53:57 +0100, Srinivas Kandagatla wrote:
> DSP Audio clock bindings have been documented with DSP services bindings
> which makes it difficult to reuse them, so pull them out in to a dedicated
> bindings.
> Also as part of this change convert them into yaml format.
> 
> q6afe-clocks were part of q6afe bindings which are deleted in previous patch, this
> patch just adds replacement bindings for clocks in yaml format.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> ---
>  .../sound/qcom,q6dsp-audio-clocks.yaml        | 55 +++++++++++++++++++
>  1 file changed, 55 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/qcom,q6dsp-audio-clocks.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
