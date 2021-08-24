Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C9E743F6516
	for <lists+devicetree@lfdr.de>; Tue, 24 Aug 2021 19:09:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238861AbhHXRKY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Aug 2021 13:10:24 -0400
Received: from mail-oo1-f41.google.com ([209.85.161.41]:43761 "EHLO
        mail-oo1-f41.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239468AbhHXRJO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Aug 2021 13:09:14 -0400
Received: by mail-oo1-f41.google.com with SMTP id y16-20020a4ad6500000b0290258a7ff4058so6733852oos.10
        for <devicetree@vger.kernel.org>; Tue, 24 Aug 2021 10:08:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=zwubaYFj/lvlyUUP+l/btChNzFkq5suM9jrCNFdviZc=;
        b=FBZM7xxL7Wr51chkg77J8bs2o09Y+CnUVNqWFXTv3snj0FsCnKrSm6zNrMUJwGiOAs
         57XBHShqruf7XOEu/ESBsEK/Ab/P3mZKaYUhhBn0f+W3RrCJuhoCGjmS30REcwFqityf
         B3yFCZc6zUsGRr9wP+NhYmMHFK8EFJaz/wfPDYQfF/efY/rDLTY3WLgi7Pz9SVi8teG+
         uTpj3R5OUeNMRnJ6RkokBBKTnQ+dOi9bwoYU/1IdkPzWf/vj4XfaCfou5ZyGrSZqSIsB
         CBMbpHCqJBMA+9Nea7uA2qu2oN1zskMmk4vc7OxSKhgGTmkCPGUDsVEU3hSCJxpTJVNZ
         w7Pg==
X-Gm-Message-State: AOAM533+A9bbk9nVgtZCgzh8Ifbn8rgK0cnvCTc/lY9Eg7f1W55XVBnw
        s0NHXGgOUfR1VJOB5mhn5Q==
X-Google-Smtp-Source: ABdhPJzLMc7ooV0oFHNXxw248f+31EgtiyHafVjQcBW9XOazHhf59JoPDr8NJbnlA1QzydJ7uQsjNQ==
X-Received: by 2002:a4a:5592:: with SMTP id e140mr20076850oob.59.1629824910169;
        Tue, 24 Aug 2021 10:08:30 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id z26sm4515905oih.3.2021.08.24.10.08.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Aug 2021 10:08:29 -0700 (PDT)
Received: (nullmailer pid 641467 invoked by uid 1000);
        Tue, 24 Aug 2021 17:08:28 -0000
Date:   Tue, 24 Aug 2021 12:08:28 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sugar Zhang <sugar.zhang@rock-chips.com>
Cc:     broonie@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org
Subject: Re: [PATCH v2 15/15] ASoC: dt-bindings: rockchip: i2s: Document
 property TRCM
Message-ID: <YSUnjLfcntDob/sT@robh.at.kernel.org>
References: <1629796561-4025-1-git-send-email-sugar.zhang@rock-chips.com>
 <1629796734-4243-5-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1629796734-4243-5-git-send-email-sugar.zhang@rock-chips.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 24 Aug 2021 17:18:54 +0800, Sugar Zhang wrote:
> This patch documents property 'rockchip,trcm-sync-tx-only/rx-only'
> which is used to specify the lrck.
> 
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> ---
> 
> Changes in v2:
> - split property trcm into single 'trcm-sync-tx-only' and
>   'trcm-sync-rx-only' suggested by Nicolas.
> - drop change-id
> 
>  Documentation/devicetree/bindings/sound/rockchip-i2s.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
