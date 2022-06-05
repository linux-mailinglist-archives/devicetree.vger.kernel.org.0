Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 84BFD53DE4B
	for <lists+devicetree@lfdr.de>; Sun,  5 Jun 2022 23:09:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242698AbiFEVJv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Jun 2022 17:09:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236184AbiFEVJv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Jun 2022 17:09:51 -0400
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9B7D35AAA
        for <devicetree@vger.kernel.org>; Sun,  5 Jun 2022 14:09:49 -0700 (PDT)
Received: by mail-qk1-f173.google.com with SMTP id o73so4770465qke.7
        for <devicetree@vger.kernel.org>; Sun, 05 Jun 2022 14:09:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=VmVbhNLtb1RBxcowUesmpHLJYJQrkkd5bbnl1V1jqZ0=;
        b=EsRC5Ix6mcE+qWLe+VlLV8rv6f9waBkEZUVkBlAN5Ce3BHFiik1rA/dcEEszyN/vB/
         ITptjSv0YkMBMzlkRh2YKl8ZvT57knC1jpIExuPva+K356oiS+MWt893ISb992YXu+Il
         EwA3Pnuh+IvjstfSv2YgrKxZ2SOxeLKXRNLa7abEBa/REteWnQPDYY9exyNEbIUVgS9Y
         HfOp1pEbEuB0PHwTxM6HSV3n7jQZE5Wldpb81OXuzLCIH5681lch2X2vBsH51XTYjFCv
         gJ0kpK74xHJ31rhBogA74oqxxvVAIvmJcjFYMoWXUZcE5+9h7uBtRBZch+P/rxj59Shp
         eKWg==
X-Gm-Message-State: AOAM532w1yjOQRmiUO7wrK28XZMODTLXYgM2dYaS0qnwbuaramEfEnGU
        oXf3kobKy7cahl+qidPCTVPTrBi9pQ==
X-Google-Smtp-Source: ABdhPJyxMLggMt+PXs1Z/jU6VjA23KSMaMsHvOuucD8iyu4V9ROgt+a7KcL/3ZYWBZH5lcdrsbC4VQ==
X-Received: by 2002:a05:620a:12da:b0:6a6:b06b:2ee3 with SMTP id e26-20020a05620a12da00b006a6b06b2ee3mr4398234qkl.725.1654463388801;
        Sun, 05 Jun 2022 14:09:48 -0700 (PDT)
Received: from robh.at.kernel.org ([2607:fb90:ac97:ac63:b5fd:aa9:8d74:9989])
        by smtp.gmail.com with ESMTPSA id i20-20020a05620a249400b006a6bc598052sm1256098qkn.95.2022.06.05.14.09.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jun 2022 14:09:48 -0700 (PDT)
Received: (nullmailer pid 3522372 invoked by uid 1000);
        Sun, 05 Jun 2022 21:09:45 -0000
Date:   Sun, 5 Jun 2022 16:09:45 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     robert.foss@linaro.org, laurent.pinchart@ideasonboard.com,
        jernej.skrabec@gmail.com, jonas@kwiboo.se,
        krzysztof.kozlowski+dt@linaro.org, sam@ravnborg.org,
        maxime@cerno.tech, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, kernel@pengutronix.de
Subject: Re: [PATCH 2/6] dt-bindings: drm/bridge: ti-sn65dsi83: add
 documentation for reverse lvds lanes
Message-ID: <20220605210945.GA3521050-robh@kernel.org>
References: <20220530150548.1236307-1-m.felsch@pengutronix.de>
 <20220530150548.1236307-3-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220530150548.1236307-3-m.felsch@pengutronix.de>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 30, 2022 at 05:05:45PM +0200, Marco Felsch wrote:
> The TI converter chip can swap the LVDS data lanes in a pre-defined
> manner. This can be useful to improve the layout characteristic.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  .../bindings/display/bridge/ti,sn65dsi83.yaml | 58 ++++++++++++++++++-
>  1 file changed, 56 insertions(+), 2 deletions(-)

Reviewed-by: Rob Herring <robh@kernel.org>
