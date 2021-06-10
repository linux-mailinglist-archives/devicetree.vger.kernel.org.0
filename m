Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6B2423A303B
	for <lists+devicetree@lfdr.de>; Thu, 10 Jun 2021 18:09:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230160AbhFJQLj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Jun 2021 12:11:39 -0400
Received: from mail-oi1-f170.google.com ([209.85.167.170]:33355 "EHLO
        mail-oi1-f170.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229802AbhFJQLi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Jun 2021 12:11:38 -0400
Received: by mail-oi1-f170.google.com with SMTP id t140so2704033oih.0
        for <devicetree@vger.kernel.org>; Thu, 10 Jun 2021 09:09:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=GhsPTw5SnruFBaMx+M1r90LoKZoI0cqIaAa/EWKANFU=;
        b=J8V3kr1OtlCfj6Azu8IT4KvN6saHG1muJdPt2jt9wVcrYuIs/WIRJRLqDOsX74eGUO
         RduPwvrBM18OJKYpUuPsYwqx8VoGdZx7YbGiDYpbxAYBbUzUvEUqGLO4y2Yh82DZAAiZ
         HK+AF4M3j+Hlpvw16AJYwJFdVSnyTM2NHJXSIaLOdf0Y+i4KS5bym1Ur67aVC8tJ6BBR
         l4zFMdEZvmRs5ubbjlgOk+zb1w/4M5oHPKrqeewQF46pPKfGxEE9lp+SUaheUoaFKU4E
         9g1+YBivTmuLlIdrIqW5k6eWiWE61Rr0y/BW7Kz6an4G4LQUvUa1AIKpC6s1CnaObuJA
         qIgQ==
X-Gm-Message-State: AOAM531fyGJC/KCoakMjChdKNu2C9osRXyn+hn293xHZm8z/IU7Ae4Xp
        BXpbqrgI9ta80lVo/rKToQ==
X-Google-Smtp-Source: ABdhPJzijwvKaGNoxrqiumLhAiSoTM8eRnIU14P7RCNKjv9VMAPg2uOgjRkqg1TCeOQoy7kCTCAb7Q==
X-Received: by 2002:aca:4b93:: with SMTP id y141mr10926946oia.86.1623341382059;
        Thu, 10 Jun 2021 09:09:42 -0700 (PDT)
Received: from robh.at.kernel.org ([172.58.99.113])
        by smtp.gmail.com with ESMTPSA id k14sm606556ooi.21.2021.06.10.09.09.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jun 2021 09:09:41 -0700 (PDT)
Received: (nullmailer pid 1898690 invoked by uid 1000);
        Thu, 10 Jun 2021 16:09:36 -0000
Date:   Thu, 10 Jun 2021 11:09:36 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-stm32@st-md-mailman.stormreply.com,
        dri-devel@lists.freedesktop.org,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Philippe Cornu <philippe.cornu@st.com>,
        Rob Herring <robh+dt@kernel.org>,
        Vincent Abriou <vincent.abriou@st.com>,
        Antonio Borneo <antonio.borneo@st.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Yannick Fertre <yannick.fertre@st.com>,
        Biju Das <biju.das.jz@bp.renesas.com>, ch@denx.de,
        Andrzej Hajda <a.hajda@samsung.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH V5 1/2] dt-bindings: display: bridge: lvds-codec:
 Document pixel data sampling edge select
Message-ID: <20210610160936.GA1898277@robh.at.kernel.org>
References: <20210602203608.419192-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210602203608.419192-1-marex@denx.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 02 Jun 2021 22:36:07 +0200, Marek Vasut wrote:
> The OnSemi FIN3385 Parallel-to-LVDS encoder has a dedicated input line to
> select input pixel data sampling edge. Add DT property "pclk-sample", not
> the same as the one used by display timings but rather the same as used by
> media, to define the pixel data sampling edge.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Andrzej Hajda <a.hajda@samsung.com>
> Cc: Antonio Borneo <antonio.borneo@st.com>
> Cc: Benjamin Gaignard <benjamin.gaignard@st.com>
> Cc: Biju Das <biju.das.jz@bp.renesas.com>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Philippe Cornu <philippe.cornu@st.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Vincent Abriou <vincent.abriou@st.com>
> Cc: Yannick Fertre <yannick.fertre@st.com>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> To: dri-devel@lists.freedesktop.org
> ---
> V4: New patch split from combined V3
> V5: Move the pclk-sample into port@0 endpoint
> ---
>  .../bindings/display/bridge/lvds-codec.yaml   | 24 +++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
