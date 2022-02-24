Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE4204C38EA
	for <lists+devicetree@lfdr.de>; Thu, 24 Feb 2022 23:42:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233993AbiBXWmp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Feb 2022 17:42:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234725AbiBXWmn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Feb 2022 17:42:43 -0500
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47E0AC7E9F
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 14:42:13 -0800 (PST)
Received: by mail-oi1-f182.google.com with SMTP id x193so5544207oix.0
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 14:42:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=TPgNpyc66QmnNVuY9AEEqHQNq1Atb18rdJ0fs2Kteuw=;
        b=fSgWyzeZZhKhCiu0dsmtKM3YNfDlXWvtoX3e9xPxvjAgmwK5E+cyKSJv+wix03OMxb
         KThSn5epUfQsLUPCPCpEaGU4g/68b7sV7Ja51x9WVx0IafhKfKS0+dN1zV+uXXt0VzbL
         gtFGqOUMEVT5sHfwkez5nDpr7BBWqTHMnL/dokf+ev55s8zVBsJmanR2Yhtb08uKC5A0
         TO3Cyt1yph6IEG1xgHjOowyKRHYGKrU8NDd1n/2ZuH/C5jjy7dUo81ZsKLIRiP8PA/5a
         Kd1DeiCacGORvr48Ax3+g0NU8JZ6OGnjriKYIxUsosMIRKELYt/op64YvmhWPWFJuVkk
         aE8Q==
X-Gm-Message-State: AOAM532Jz0Pv+DOCKJ00kY2ABeDJyZlkeWAioUxk/NUQIlK4jsVzOS22
        sim+Kwgr4B8ESw7SKEUeTA==
X-Google-Smtp-Source: ABdhPJxd1sEAdFyM8rb47906jSUwAsUCKNtBuXPZXHfMFy2eJ+YEnWZKbVwTI9/JvZKJJSJAcTmolw==
X-Received: by 2002:a05:6808:309b:b0:2d5:7c4b:79df with SMTP id bl27-20020a056808309b00b002d57c4b79dfmr181064oib.190.1645742532602;
        Thu, 24 Feb 2022 14:42:12 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id w11-20020a4a274b000000b0031c10e27c1esm302871oow.3.2022.02.24.14.42.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Feb 2022 14:42:11 -0800 (PST)
Received: (nullmailer pid 3727866 invoked by uid 1000);
        Thu, 24 Feb 2022 22:42:11 -0000
Date:   Thu, 24 Feb 2022 16:42:11 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Sam Ravnborg <sam@ravnborg.org>, Maxime Ripard <maxime@cerno.tech>,
        Neil Armstrong <narmstrong@baylibre.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH V3 01/12] dt-bindings: display: bridge: tc358867:
 Document DPI output support
Message-ID: <YhgJwzOg0KUuoAHW@robh.at.kernel.org>
References: <20220224195817.68504-1-marex@denx.de>
 <20220224195817.68504-2-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220224195817.68504-2-marex@denx.de>
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

On Thu, 24 Feb 2022 20:58:06 +0100, Marek Vasut wrote:
> The TC358767/TC358867/TC9595 are all capable of operating in multiple
> modes, DPI-to-(e)DP, DSI-to-(e)DP, DSI-to-DPI. Document support for the
> DPI output port, which can now be connected both as input and output.
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
> V2: - Rebase on next-20220217
> V3: - No change
> ---
>  .../devicetree/bindings/display/bridge/toshiba,tc358767.yaml  | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
