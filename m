Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5228B460BAB
	for <lists+devicetree@lfdr.de>; Mon, 29 Nov 2021 01:32:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229739AbhK2Af3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 Nov 2021 19:35:29 -0500
Received: from mail-qk1-f180.google.com ([209.85.222.180]:46607 "EHLO
        mail-qk1-f180.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229571AbhK2Ad2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 Nov 2021 19:33:28 -0500
Received: by mail-qk1-f180.google.com with SMTP id a11so20985732qkh.13
        for <devicetree@vger.kernel.org>; Sun, 28 Nov 2021 16:30:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=XVaVA291s9c2a18GIJWxFML/McxidosoIY0RR4fMRJU=;
        b=DJk21R+rQHXnGh1MNAYs+TKLkYqVmfNA7/lkDRBmt4/rqzt5eTVEeTxqG4PjMyKyTo
         /mR2/FgyS474TtTbzj3KWX47z+KQCBJYmOXI7FUu4FMt1uHD483vK7/02HOCxe+Nj5rF
         9zIxK0MuASMMrxjtgQnPyV2kJ8cQniMyrRaPByPXO8Oo/tZw5UqpJycXQ3/yPJddHmp+
         Yn0RTWfT4LOagMWlCmKMjhbnDtwh5LH/frJSohZM3IBBlmpiuOYbGf2VjnrbzdJvXWjw
         cU+P2WT57kAsFfTGgWVGB5deBMgZO0yA1X9Y/MxoQlTD3hcDXZ4ywkQNRzvlU8RMlND6
         5UCw==
X-Gm-Message-State: AOAM5303DsVsjZUvwyld19XnJkGt+GZJ1UXcXcYna2XkQiOwUBy5JhxL
        gtemgMi8DBfJUG0DpaByDw==
X-Google-Smtp-Source: ABdhPJy84wZGEQdKqBS96phc3Uxb765yWvE+Hs2XEgt450z1Tp6Rt3ZZ02FYAZdDuRGV/9NJIVTvGw==
X-Received: by 2002:a05:620a:460e:: with SMTP id br14mr27737028qkb.533.1638145811740;
        Sun, 28 Nov 2021 16:30:11 -0800 (PST)
Received: from robh.at.kernel.org ([172.58.99.229])
        by smtp.gmail.com with ESMTPSA id u9sm7615754qta.17.2021.11.28.16.30.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Nov 2021 16:30:10 -0800 (PST)
Received: (nullmailer pid 2887206 invoked by uid 1000);
        Mon, 29 Nov 2021 00:27:55 -0000
Date:   Sun, 28 Nov 2021 18:27:55 -0600
From:   Rob Herring <robh@kernel.org>
To:     Evgeny Boger <boger@wirenboard.com>
Cc:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v3 2/3] dt-bindings: net: support for Allwinner R40 EMAC
 controller
Message-ID: <YaQei9KHvsuS9SGc@robh.at.kernel.org>
References: <20211121195337.230475-1-boger@wirenboard.com>
 <20211121195337.230475-3-boger@wirenboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211121195337.230475-3-boger@wirenboard.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Nov 21, 2021 at 10:53:36PM +0300, Evgeny Boger wrote:
> R40 and A10/A20 share the same EMAC IP.
> However, on R40 the EMAC is gated by default, so reset

asserted rather than gated here too.

Otherwise,

Reviewed-by: Rob Herring <robh@kernel.org>

> property is required.
> 
> Signed-off-by: Evgeny Boger <boger@wirenboard.com>
> ---
>  .../net/allwinner,sun4i-a10-emac.yaml         | 20 ++++++++++++++++++-
>  1 file changed, 19 insertions(+), 1 deletion(-)
