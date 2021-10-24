Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 839864389D8
	for <lists+devicetree@lfdr.de>; Sun, 24 Oct 2021 17:36:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231138AbhJXPil (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 24 Oct 2021 11:38:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230520AbhJXPik (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 24 Oct 2021 11:38:40 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB422C061745
        for <devicetree@vger.kernel.org>; Sun, 24 Oct 2021 08:36:19 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id g201-20020a1c20d2000000b00327775075f7so2053818wmg.5
        for <devicetree@vger.kernel.org>; Sun, 24 Oct 2021 08:36:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Uo+KZSKbMpCYD2HnQVmUgWBUvnOq/cWI0Zv67K4qsag=;
        b=yu5Z4gfoU+YC7zzBlq9uJ6PXvotAkI9fzmpdOOfZJqkYYQUBQ7/Z/MTdSwgi4nd5jb
         B3dyMlOYGV88bSwN1GoOONZ0UT/2ZqC5ShpiUsJKxBtW6vnCE00UhsZcr8Urk7ytx0/S
         NDdcZXNGmOLXHRjfF6zjYBygT8MkmkWhD/CCxddf844M0hv+4uUkNr4d9WJOAdXOWNI2
         sWAOU5teuRpYkPKTVpSLWSPndpLuaaAaVlhoAbz63sJx/c/IzZtD7mXjtv9bDca89bA5
         1GNLXAbJJLnvKiOAtAE6++GUirONvnRdY8bSlswlBmlY14qE8e7wRWCPqV9F5H+NviO1
         C9Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Uo+KZSKbMpCYD2HnQVmUgWBUvnOq/cWI0Zv67K4qsag=;
        b=ISSkIXs3R9UQ37UfLjbcoCWR42oXb6e9DfyfwrZU7R5NbDJ2lHoPfUnT2rApd/vMB9
         9wNBXlJiI7kgG+khSF+eDb1h+GcnuSBFltSTNAf9B3MzSD1IxyXqdn942vxm1vfu0Cj2
         o/ff3xAbI6D+8bGE+BIhiwJG/kgZTRK8PuHRtmhoJ3XQJGGU6LX+6ZSYCCB+5USsvID3
         sTpQ1AS3Lam9rpm8TNcZiqCcPKjz5KnfT8jJZq8E9xXGmHSUvPdg47W9Ha5lHYzsF5GV
         ech3xNK96uOJqMMekdqp/0mpZRQ/srDzES7HhuFa4ObE32FWbaXEtH124w70hMx8DFL6
         lFJw==
X-Gm-Message-State: AOAM533DqiUE0evbc+q6KagtJUhbowYr4MIqdda/4CAk0vZXuMx/OXr8
        UaaDdfqkaJxP1SxC72RfRJCCCsu3c9jf0Q==
X-Google-Smtp-Source: ABdhPJwwN33lxeowWbuondAurMoTKsZYNPHjpTT6hvtmBIMTKVjY9pcuRTU0VfDorky8HCqiHArLDA==
X-Received: by 2002:a1c:7fd0:: with SMTP id a199mr43354530wmd.96.1635089778344;
        Sun, 24 Oct 2021 08:36:18 -0700 (PDT)
Received: from blmsp ([2a02:2454:3e6:c900:5142:5fbb:5821:5dc3])
        by smtp.gmail.com with ESMTPSA id w7sm7605993wrm.64.2021.10.24.08.36.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Oct 2021 08:36:18 -0700 (PDT)
Date:   Sun, 24 Oct 2021 17:36:17 +0200
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-mediatek@lists.infradead.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH v5 2/7] dt-bindings: mediatek,dp: Add Display Port binding
Message-ID: <20211024153617.inkbrjzqjp4mspyh@blmsp>
References: <20211021092707.3562523-1-msp@baylibre.com>
 <20211021092707.3562523-3-msp@baylibre.com>
 <YXNG8Qy5jAPdWbHY@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <YXNG8Qy5jAPdWbHY@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 22, 2021 at 06:19:13PM -0500, Rob Herring wrote:
> On Thu, 21 Oct 2021 11:27:02 +0200, Markus Schneider-Pargmann wrote:
> > This controller is present on several mediatek hardware. Currently
> > mt8195 and mt8395 have this controller without a functional difference,
> > so only one compatible field is added.
> > 
> > The controller can have two forms, as a normal display port and as an
> > embedded display port.
> > 
> > Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> > ---
> > 
> > Notes:
> >     Changes v4 -> v5:
> >     - Removed "status" in the example
> >     - Remove edp_tx compatible.
> >     - Rename dp_tx compatible to dp-tx.
> > 
> >  .../display/mediatek/mediatek,dp.yaml         | 87 +++++++++++++++++++
> >  1 file changed, 87 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
> > 
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> 
> But can't be applied without the dependent header (or remove the 
> dependency).

Ok, thank you Rob. Maybe I will remove the dependency.

Thanks,
Markus
