Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4E4014004DA
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 20:30:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235692AbhICSbL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 14:31:11 -0400
Received: from mail-oi1-f178.google.com ([209.85.167.178]:37415 "EHLO
        mail-oi1-f178.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235548AbhICSbL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Sep 2021 14:31:11 -0400
Received: by mail-oi1-f178.google.com with SMTP id y128so277678oie.4
        for <devicetree@vger.kernel.org>; Fri, 03 Sep 2021 11:30:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=zXZWn49SeYULR27oPdqfYDxVloOAcpotNgEeaQQkahY=;
        b=oP4aWBBjnHzwT5YvLrkoyTWM6t45VJrv7mFIKf/gnu+iMFrtFxxrY6ygG2YjKIJvZa
         gYtZI/pAtG3VFGtGahEgzEg+TprAO5rp14opkFsWMHTzzw0v5cuRlcrW2/OpcFnn+YZS
         KuGsGPnkhZ1Qc7zr1clBYb3Kty2FOm0WLuR0VWmtUTjzAusma1yvEheW+fzcbjAwkGpU
         WJ2mkErlIIXFaXCi9QUBusBjZR7nOb0eMT3iwtzT1JwFsE2EweHck5ZD9qriAlXfvdDV
         5kG65CeEG1/kXuhZucX0Uwb+kO9oEBX4C9H8gGuHFKGHagrw/w+yG+MAbIBcPmY1LlV5
         Mjcw==
X-Gm-Message-State: AOAM531baR1Z7QgXuhPesHy0uCU1nl9uxxMTvtSnXfW2AFtk97Q7uECR
        nDhjGl1j3mwpIx/3FBsflw==
X-Google-Smtp-Source: ABdhPJx3hL3AJSHZwy0Aq2QOZ9EUcNpzTqI6OvlG/ngaS7zBBifcfepIXOtxa6KBjnYgFOcstVXXaA==
X-Received: by 2002:a05:6808:3a8:: with SMTP id n8mr177425oie.10.1630693810492;
        Fri, 03 Sep 2021 11:30:10 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id f126sm1223209oob.9.2021.09.03.11.30.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Sep 2021 11:30:09 -0700 (PDT)
Received: (nullmailer pid 3239574 invoked by uid 1000);
        Fri, 03 Sep 2021 18:30:08 -0000
Date:   Fri, 3 Sep 2021 13:30:08 -0500
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     devicetree@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        dri-devel@lists.freedesktop.org,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH v2 10/52] dt-bindings: display: Move idk-1110wr to
 panel-lvds
Message-ID: <YTJpsBTz2vp1ZKhH@robh.at.kernel.org>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-11-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210901091852.479202-11-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 01, 2021 at 11:18:10AM +0200, Maxime Ripard wrote:
> The Advantech IDK-2121WR Device Tree binding doesn't really add any
> useful content that is not already present in the panel-lvds binding
> aside from a requirement on the data-mapping.
> 
> Let's move it to the generic panel-lvds binding

I'm concerned this change means we can only have LVDS panel schemas in 
lvds.yaml. Having another LVDS panel schema means 2 things. First, they 
can't have a 'panel-lvds' compatible. That's probably fine. Second, they 
will still need to define 'data-mapping' (unless implied) and will need 
to include it from somewhere. So we still need a common LVDS properties 
schema and panel schema(s).

Rob
