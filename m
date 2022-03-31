Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CED934EE4ED
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 01:52:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232742AbiCaXyn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 19:54:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229912AbiCaXyn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 19:54:43 -0400
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22B3224A8AE
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 16:52:54 -0700 (PDT)
Received: by mail-ot1-f49.google.com with SMTP id k25-20020a056830151900b005b25d8588dbso1014005otp.4
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 16:52:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=QtLleTaHCucGPsRaBTO86s6P+Sr59PZKXVV2CO1MOzI=;
        b=sQw2t01Upe1XnUSK1enNsrJFX/Y9Vj07eo+hb5znSxi8pEi3KCgI8G7SxHesEmnRjQ
         34ULiadQej+2EAj+LOlEqiLKkR8X83SsCyMGKdtsresfi3N9kgvodaOhj/tnwGQxuaLP
         9L+rZKLsxNeaUJELip6w1TkNigLhPvNZR+P/oVUJQqq7wGT/VGVGL4cFR3sgx8hxiTXO
         rvVOJbW4jFDMy/byYOllUTY63hw5gb9cQbraNinmLLr0epykQrY2JVu0z3k0LqzzTlSA
         BD3ZPgC0MDZ1MrwI6bW9v1+QZXUTPBCI8Ccm6zQJpPJ/3cI6mXsdYkFhQN7sZIfbnfMu
         uyPA==
X-Gm-Message-State: AOAM5310LcVz6m5awPqi23RFFYvO4G7mjD7yKjFQXY9rEX3JF5groGh7
        gOsLDOqvjbXBeweB8uEdmqhwAvGPxg==
X-Google-Smtp-Source: ABdhPJyX8xvZxfDgWuF9nXNoW7PdIaVk5mK36vc6rmjM3if5pWl4svyYXlRWWFyKrZa+wn8F80OdFg==
X-Received: by 2002:a9d:75cd:0:b0:5c9:61fa:3a42 with SMTP id c13-20020a9d75cd000000b005c961fa3a42mr6614511otl.15.1648770773424;
        Thu, 31 Mar 2022 16:52:53 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id e22-20020a9d5616000000b005ceb68be2f6sm280208oti.63.2022.03.31.16.52.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Mar 2022 16:52:52 -0700 (PDT)
Received: (nullmailer pid 1730141 invoked by uid 1000);
        Thu, 31 Mar 2022 23:52:52 -0000
Date:   Thu, 31 Mar 2022 18:52:52 -0500
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Daniel Vetter <daniel.vetter@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        Jagan Teki <jagan@amarulasolutions.com>,
        Marek Vasut <marex@denx.de>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Robert Foss <robert.foss@linaro.org>,
        Frank Rowand <frowand.list@gmail.com>,
        dri-devel@lists.freedesktop.org
Subject: Re: [PATCH] dt-bindings: display: bridge: Drop requirement on input
 port for DSI devices
Message-ID: <YkY+1IZtQ8oSi7wR@robh.at.kernel.org>
References: <20220323154823.839469-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220323154823.839469-1-maxime@cerno.tech>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 23 Mar 2022 16:48:23 +0100, Maxime Ripard wrote:
> MIPI-DSI devices, if they are controlled through the bus itself, have to
> be described as a child node of the controller they are attached to.
> 
> Thus, there's no requirement on the controller having an OF-Graph output
> port to model the data stream: it's assumed that it would go from the
> parent to the child.
> 
> However, some bridges controlled through the DSI bus still require an
> input OF-Graph port, thus requiring a controller with an OF-Graph output
> port. This prevents those bridges from being used with the controllers
> that do not have one without any particular reason to.
> 
> Let's drop that requirement.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../devicetree/bindings/display/bridge/chipone,icn6211.yaml      | 1 -
>  .../devicetree/bindings/display/bridge/toshiba,tc358762.yaml     | 1 -
>  2 files changed, 2 deletions(-)
> 

I tend to agree with port@0 not being needed and really like 
consistency.

Reviewed-by: Rob Herring <robh@kernel.org>
