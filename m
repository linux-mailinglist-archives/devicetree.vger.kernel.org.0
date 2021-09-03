Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DCC744004E4
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 20:31:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235945AbhICScq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 14:32:46 -0400
Received: from mail-oo1-f49.google.com ([209.85.161.49]:46980 "EHLO
        mail-oo1-f49.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235865AbhICScq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Sep 2021 14:32:46 -0400
Received: by mail-oo1-f49.google.com with SMTP id z1-20020a4a2241000000b0028e8dfb83b4so1752712ooe.13
        for <devicetree@vger.kernel.org>; Fri, 03 Sep 2021 11:31:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=7YUEaLycuiNZIqQPxowaB/DzCRnSBQk4WOtC1nrNe8k=;
        b=RDN+p9GAUQJgL9Nrvw/APRKL2EAv1PpEUywyoP/i3RJsK+T9BT4Ll3GdrvuvwBwyqs
         /l/LphKd93hwV/5NwVSa7DjKkcXai8KNLreLsioxQoNLx4SvG2QejVJV5S54Xkz/oXqA
         H3T9Duvw+IL3+pvCyEQdjRIFDJVE1DJh0eKyzAsUPxd6lD+eQnWfYQtUrP6Fh+6DS/bi
         0F+f1oLbSMzq+4sbzjbF5PeOWGYkQpOvHoCTMBxi/fzVsTyNY3gOZbeCemwTZFZuHRQQ
         AMKgcTzePy/6FsnSFucBdG5siHV7Q49ul3ssQFKDXBb4bsMk2xdNrU+qB6trwoYf5oL5
         8qoQ==
X-Gm-Message-State: AOAM5329exlryc3BBo8yZRjLN2WTFTeugeeqlhb6v33kCza5WeTlSoVm
        fslYwU2p48ahNDYThLrscA==
X-Google-Smtp-Source: ABdhPJyXKhseSCW1zAJyrbWCky6N9IzOhCOmDR1ZhY805AlrcjKlndiol7QkXNptee2ltvQ+cH5Grw==
X-Received: by 2002:a4a:e923:: with SMTP id a3mr4056877ooe.45.1630693906079;
        Fri, 03 Sep 2021 11:31:46 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id z18sm25893oib.27.2021.09.03.11.31.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Sep 2021 11:31:45 -0700 (PDT)
Received: (nullmailer pid 3242167 invoked by uid 1000);
        Fri, 03 Sep 2021 18:31:44 -0000
Date:   Fri, 3 Sep 2021 13:31:44 -0500
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Frank Rowand <frowand.list@gmail.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        Sam Ravnborg <sam@ravnborg.org>, Chen-Yu Tsai <wens@csie.org>,
        devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
        Rob Herring <robh+dt@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>,
        dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 16/52] dt-bindings: display: aa121td01: Remove unused
 vcc-supply
Message-ID: <YTJqECYzHDb26joE@robh.at.kernel.org>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-17-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210901091852.479202-17-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 01 Sep 2021 11:18:16 +0200, Maxime Ripard wrote:
> The Mitsubishi AA121TD01 Device Tree Binding was requiring a vcc-supply
> property. However, neither the existing device trees using that binding,
> nor the driver were actually using that property which is also redundant
> with power-supply. Let's just drop it.
> 
> Cc: dri-devel@lists.freedesktop.org
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../bindings/display/panel/mitsubishi,aa121td01.yaml         | 5 -----
>  1 file changed, 5 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
