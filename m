Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 07FDB4C38ED
	for <lists+devicetree@lfdr.de>; Thu, 24 Feb 2022 23:43:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235588AbiBXWnZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Feb 2022 17:43:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234725AbiBXWnY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Feb 2022 17:43:24 -0500
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F4D2177D19
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 14:42:54 -0800 (PST)
Received: by mail-oo1-f46.google.com with SMTP id x6-20020a4a4106000000b003193022319cso4048458ooa.4
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 14:42:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=umB9yAeuY31ST5Z4+hFHkjF0GD+Hu+TObWrQZ6jCCZ0=;
        b=ZpFmy64B47nl4O+wWUKOGtsmBB0pZzTD9lnOct72ylYd/kE+E9D2g8t4fIhoSZh38i
         mKKupxTBV8/51O1GA+LrOrNaVZXrgULLsLJgTpeQO4UV7dI5bkwTEgAkRf1miofamFpg
         iNjcOfiZ/C+v60el0bPR7zd2UvkxuMN8jOdwUv+23VqRvHtQxQO6TYHb/u1SyZ7Yzc+L
         Y+c6TUECdQkG3J59VEvoVn7xqKdBLR4KjhfFwABxTe57WLDKtDK6skv60YXk00RFl3jp
         KgD49EbZbEhQZjfLuJRA4MWX28KZtaogzxajbrBSR/gF7fPUjS+WSZc0tO6I/rsqCtFV
         k/ZA==
X-Gm-Message-State: AOAM530oAIOeB/9fYlPKu1N5kflLMhyxmcLrngbbSzHjG+sQpOcZ/bz/
        eloJOkcb3cUIzXbprghXINSOdEhKyw==
X-Google-Smtp-Source: ABdhPJycE04S548CoykfCRSkjqLayOGIOoiW6r1HdJF3EiI0U2siDvmXO1Jo5fo6vbH/haJidkOpiA==
X-Received: by 2002:a05:6870:3c06:b0:d2:c68f:a900 with SMTP id gk6-20020a0568703c0600b000d2c68fa900mr146032oab.33.1645742573462;
        Thu, 24 Feb 2022 14:42:53 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id h3-20020a4aa9c3000000b003181c02e7ccsm264965oon.47.2022.02.24.14.42.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Feb 2022 14:42:52 -0800 (PST)
Received: (nullmailer pid 3728887 invoked by uid 1000);
        Thu, 24 Feb 2022 22:42:51 -0000
Date:   Thu, 24 Feb 2022 16:42:51 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Jonas Karlman <jonas@kwiboo.se>, Sam Ravnborg <sam@ravnborg.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>,
        dri-devel@lists.freedesktop.org, Maxime Ripard <maxime@cerno.tech>,
        Neil Armstrong <narmstrong@baylibre.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH V3 02/12] dt-bindings: display: bridge: tc358867:
 Document DSI data-lanes property
Message-ID: <YhgJ6wcLtrq5QZYE@robh.at.kernel.org>
References: <20220224195817.68504-1-marex@denx.de>
 <20220224195817.68504-3-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220224195817.68504-3-marex@denx.de>
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

On Thu, 24 Feb 2022 20:58:07 +0100, Marek Vasut wrote:
> It is necessary to specify the number of connected/used DSI data lanes when
> using the DSI input port of this bridge. Document the 'data-lanes' property
> of the DSI input port.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Jonas Karlman <jonas@kwiboo.se>
> Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
> Cc: Maxime Ripard <maxime@cerno.tech>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org
> ---
> V3: - New patch
> ---
>  .../display/bridge/toshiba,tc358767.yaml       | 18 +++++++++++++++++-
>  1 file changed, 17 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
