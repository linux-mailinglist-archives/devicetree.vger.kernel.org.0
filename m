Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7416E51A321
	for <lists+devicetree@lfdr.de>; Wed,  4 May 2022 17:06:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351727AbiEDPKL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 May 2022 11:10:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351705AbiEDPKK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 May 2022 11:10:10 -0400
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62155B8C
        for <devicetree@vger.kernel.org>; Wed,  4 May 2022 08:06:34 -0700 (PDT)
Received: by mail-ot1-f45.google.com with SMTP id h10-20020a056830400a00b00605e92cc450so1060853ots.11
        for <devicetree@vger.kernel.org>; Wed, 04 May 2022 08:06:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=CMbN7hS5qpXAJ56hrK4Dy33g9tIzfngyx0mx6oH98LI=;
        b=HnZCBB6c7ROZaQuQ2dfHkjtOzz7qZjV7zBgcPS7/ha1gcQPpIgSAuJp1T2UC3GkPY1
         fusjHyHlZj7OwwKV1fS0+xNDBd+ln8JsD4IUbYaSa0LbzEgm0mXvYty8BYcRvmyDb751
         sH5TcpLYlxrlgo5mfFSyxg1uwV+LgYAFZAtrFYOuIBPp+k9f+QKowFOyJ+ztlx+aCzZP
         ZfeYukiyQIIwt/qy751BR2Qbf+wHFMNQjY23AWnPsALOytn3zBwWGt+14f6RP8iSa1vA
         SNR4wqwveyKHiOLOkAWg/MEgwJKmUWWM8s70oFEtSFyFpAf3O0Eak6qsOHhbV3VpjTSz
         nRXQ==
X-Gm-Message-State: AOAM530GF7099FrFY4HfDVVPvbRMxBz1O7gqF+GAS5qdokXmCT51rCSn
        D1dQkYyM8aU8bW0zJUBndw==
X-Google-Smtp-Source: ABdhPJzimC2Mzz2fvZIGRB0h0xrOBQBahibFvTDdc4eoJHIylylulmbJ3HrZO6H+owbGwvZAVRUU7g==
X-Received: by 2002:a05:6830:1059:b0:606:2f92:4c28 with SMTP id b25-20020a056830105900b006062f924c28mr3411242otp.253.1651676793648;
        Wed, 04 May 2022 08:06:33 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id k14-20020a056820016e00b0035eb4e5a6bcsm6164683ood.18.2022.05.04.08.06.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 May 2022 08:06:33 -0700 (PDT)
Received: (nullmailer pid 1712216 invoked by uid 1000);
        Wed, 04 May 2022 15:06:32 -0000
Date:   Wed, 4 May 2022 10:06:32 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Sam Ravnborg <sam@ravnborg.org>, Robby Cai <robby.cai@nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        robert.foss@linaro.org, Thomas Zimmermann <tzimmermann@suse.de>,
        Maxime Ripard <maxime@cerno.tech>,
        Rob Herring <robh+dt@kernel.org>, Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH] dt-bindings: display: bridge: ldb: Fill in reg property
Message-ID: <YnKWeAu2MxXA7GzV@robh.at.kernel.org>
References: <20220504012601.423644-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220504012601.423644-1-marex@denx.de>
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

On Wed, 04 May 2022 03:26:01 +0200, Marek Vasut wrote:
> Add missing reg and reg-names properties for both 'LDB_CTRL'
> and 'LVDS_CTRL' registers.
> 
> Fixes: 463db5c2ed4ae ("drm: bridge: ldb: Implement simple Freescale i.MX8MP LDB bridge")
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Maxime Ripard <maxime@cerno.tech>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Robby Cai <robby.cai@nxp.com>
> Cc: Robert Foss <robert.foss@linaro.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org
> ---
>  .../bindings/display/bridge/fsl,ldb.yaml         | 16 +++++++++++++++-
>  1 file changed, 15 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
