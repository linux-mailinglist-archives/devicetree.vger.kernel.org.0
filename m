Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D11D54E87D
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 19:15:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378002AbiFPRPE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jun 2022 13:15:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1378015AbiFPRPE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jun 2022 13:15:04 -0400
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8197217586
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 10:15:03 -0700 (PDT)
Received: by mail-io1-f53.google.com with SMTP id y79so2147541iof.2
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 10:15:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Wsz4Wv9OOV7UVprXOZZGgHXUiNROQ+LQtSUQCCdiHiY=;
        b=QpeqUyPx4UyTBGKIIelSq77mYAME9htY6xrJonx5jQ6G8Y+ZUYlvZ8qYoRrH9vBUWK
         vIOOZWk9rywhLDMNwT8nETuVNP6qccoIUDhi/zsXgYA90/1FgiduScVXSSb2H+YiPK/Q
         FAIYZEwKarXIL+e1ZycSzNAYQ9EKP/KeRgHVWpUMyKX2g+mKUHgHY7ZR4TVDSu1Tmo4/
         suYaP9lN10rg/R0waUvZYc9H8GC892ycXQWEasfoXmTojEH0dYqtREK4Jzn0Quy9jwPc
         kTuAfzAdstvIQB0RyjcYMr1a4H9OeJsGnu4nIlNUT1S+z1jD73AFzt1HqeZZdx151Zb8
         /jPQ==
X-Gm-Message-State: AJIora8i4TyBAtIoXpFt8YOJfJ7Vsz7CZ/rsIY8AUOE1yrhep/2QlETp
        xGPS8y+6tyEcCunqutIk+Q==
X-Google-Smtp-Source: AGRyM1uuYTX2p7W3F/DM+dxbOiXkzdq0efjOmqM7mjJohPWXpC/0l78Fg02V+GP1iIxVyeBgYcmVZw==
X-Received: by 2002:a05:6638:1342:b0:331:e382:b0af with SMTP id u2-20020a056638134200b00331e382b0afmr3409052jad.32.1655399702631;
        Thu, 16 Jun 2022 10:15:02 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id i21-20020a02ca15000000b0032b3a7817b3sm1091325jak.119.2022.06.16.10.15.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jun 2022 10:15:02 -0700 (PDT)
Received: (nullmailer pid 3665201 invoked by uid 1000);
        Thu, 16 Jun 2022 17:15:00 -0000
Date:   Thu, 16 Jun 2022 11:15:00 -0600
From:   Rob Herring <robh@kernel.org>
To:     Bastian Krause <bst@pengutronix.de>
Cc:     devicetree@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>,
        Rob Herring <robh+dt@kernel.org>, kernel@pengutronix.de,
        David Airlie <airlied@linux.ie>,
        Yannick Fertre <yannick.fertre@st.com>,
        dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: display: simple: add Ampire
 AM-800600P5TMQW-TB8H panel
Message-ID: <20220616171500.GA3665131-robh@kernel.org>
References: <20220610111511.1421067-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220610111511.1421067-1-bst@pengutronix.de>
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

On Fri, 10 Jun 2022 13:15:10 +0200, Bastian Krause wrote:
> Add Ampire AM-800600P5TMQW-TB8H 8" TFT LCD panel compatible string.
> 
> Signed-off-by: Bastian Krause <bst@pengutronix.de>
> ---
>  .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
