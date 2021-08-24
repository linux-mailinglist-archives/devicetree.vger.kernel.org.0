Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0201A3F647D
	for <lists+devicetree@lfdr.de>; Tue, 24 Aug 2021 19:04:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230374AbhHXRFI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Aug 2021 13:05:08 -0400
Received: from mail-ot1-f41.google.com ([209.85.210.41]:37662 "EHLO
        mail-ot1-f41.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239263AbhHXRC2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Aug 2021 13:02:28 -0400
Received: by mail-ot1-f41.google.com with SMTP id i3-20020a056830210300b0051af5666070so38153207otc.4
        for <devicetree@vger.kernel.org>; Tue, 24 Aug 2021 10:01:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=nUUWA5CRF6HLqmKmoi7Vjo2ILY+GNb621NKyvGmJA8s=;
        b=CzDy4lkE+KO65QBRpk911fXwqDNa8HVzmvLwihkYAN8OjwLTycgqlN8K5VgQ/Q6UIi
         guNO2V0Qn1bO4bFQwTZ5ScngbQVVnAFQZHegmzU1KP6yl+zh920yzxRhVfFW0rQDt6di
         6dgIAIkGNhnrVHFmjyx1GfEzimidoUTQ0iNSr4P4ntH7X5jiAO0IeCRZvSnAMxPMABwU
         X8FQYTwJ91ub9lWcZaT5EmgvsfnbMOa20kfN25uY1qi+w8wfRz1cgqlPa+/fyPAUBQcK
         pV0nSBgjC3nTLJA6Pn4/uv0plk4/Qy61TIrJjPZ1d49VpPMaoA8kvboC9oQRTJvP2TTg
         uAZQ==
X-Gm-Message-State: AOAM5328LkNYw1Iqv94vRk/Pk3KjM9B8x1LCR03XhqMadXtzV/338ABJ
        vwiBVhs+t81/zrDwSFX64g==
X-Google-Smtp-Source: ABdhPJxk3xxIG5/F1f6fBOsunCUzkOVmpUpV1nAU+ih3BbcLVZRf59oAnpIFJdiE4ZUhjqGI5dUqUg==
X-Received: by 2002:a9d:7ccc:: with SMTP id r12mr33420960otn.350.1629824503999;
        Tue, 24 Aug 2021 10:01:43 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id 33sm4499216ott.19.2021.08.24.10.01.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Aug 2021 10:01:42 -0700 (PDT)
Received: (nullmailer pid 630780 invoked by uid 1000);
        Tue, 24 Aug 2021 17:01:41 -0000
Date:   Tue, 24 Aug 2021 12:01:41 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sugar Zhang <sugar.zhang@rock-chips.com>
Cc:     alsa-devel@alsa-project.org, broonie@kernel.org, heiko@sntech.de,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 07/15] ASoC: dt-bindings: rockchip: Document reset
 property for i2s
Message-ID: <YSUl9aqF8AP2Kb8n@robh.at.kernel.org>
References: <1629796561-4025-1-git-send-email-sugar.zhang@rock-chips.com>
 <1629796682-4170-2-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1629796682-4170-2-git-send-email-sugar.zhang@rock-chips.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 24 Aug 2021 17:17:54 +0800, Sugar Zhang wrote:
> This patch documents reset property for i2s.
> 
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> ---
> 
> Changes in v2: None
> 
>  Documentation/devicetree/bindings/sound/rockchip-i2s.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
