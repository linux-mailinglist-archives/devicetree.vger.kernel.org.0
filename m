Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B9AEC47C7D5
	for <lists+devicetree@lfdr.de>; Tue, 21 Dec 2021 20:55:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230128AbhLUTzB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Dec 2021 14:55:01 -0500
Received: from mail-qk1-f170.google.com ([209.85.222.170]:36419 "EHLO
        mail-qk1-f170.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231406AbhLUTzA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Dec 2021 14:55:00 -0500
Received: by mail-qk1-f170.google.com with SMTP id d21so155772qkl.3
        for <devicetree@vger.kernel.org>; Tue, 21 Dec 2021 11:54:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=6VHYJrOICuCRKXetn+z4zf9kDzOY2t3EaZvz+IrV2KQ=;
        b=S0aTG1nrC3jidv03e7baPvm3A2nrVdUQhNEJGETeS69y2X4CBqaR7MiH1pt/6pZoqo
         mvILe1frxw7GSlYFPNubZFGDcgT3M/kxUMpqWFA2ALO9AgBo2/GCb33ZlEjWWToYRtnM
         JYUUjGI3bYxnhiyDGhwZcBPbPhSJ2L0lae5ED/G6NwUPlT0YqjpImIo4EgAm4wy/ACTo
         +LyaFDf+QIQIlfJFdShI9U+7SJyaLFM77+m9yNPx8Xh7ZsnPb+KKwfr5XOvgwPQfEQTM
         +mFuJPrLtBGCsDdyi4kH0CGahMKJ7NbT3d9aCaSPwwFynMTRFqTWzz6iwLVPOXbN4A/+
         iXLA==
X-Gm-Message-State: AOAM533iracki0iwJWZl7RJtXRw6T4W9IRoIqyLHZmbimXReQbBcchm2
        BTkP/kIEgU/eHlQjk6D0IA==
X-Google-Smtp-Source: ABdhPJz9u8CiTbsAZdEsdJoGvRZNkZDJVEHwD3vNvu4uW5RzFcnzDQJrUHkoaVpUFbZucZMaZSemkw==
X-Received: by 2002:a05:620a:1a10:: with SMTP id bk16mr3213781qkb.258.1640116499347;
        Tue, 21 Dec 2021 11:54:59 -0800 (PST)
Received: from robh.at.kernel.org ([24.55.105.145])
        by smtp.gmail.com with ESMTPSA id v12sm9575968qkl.50.2021.12.21.11.54.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Dec 2021 11:54:58 -0800 (PST)
Received: (nullmailer pid 1644637 invoked by uid 1000);
        Tue, 21 Dec 2021 19:54:57 -0000
Date:   Tue, 21 Dec 2021 15:54:57 -0400
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org
Subject: Re: [PATCH] dt-bindings: display: bridge: lvds-codec: Document TI
 DS90CF364A decoder
Message-ID: <YcIxEffwDTi4LgS1@robh.at.kernel.org>
References: <20211218152309.256183-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211218152309.256183-1-marex@denx.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 18 Dec 2021 16:23:09 +0100, Marek Vasut wrote:
> Add compatible string for TI DS90CF364A, which is another LVDS to DPI
> decoder similar to DS90CF384A, except it is using smaller package and
> only provides 18bit DPI bus.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org
> ---
>  Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
