Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CCFEC6A33CB
	for <lists+devicetree@lfdr.de>; Sun, 26 Feb 2023 21:02:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229607AbjBZUCk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Feb 2023 15:02:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229379AbjBZUCj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Feb 2023 15:02:39 -0500
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C67517CE3
        for <devicetree@vger.kernel.org>; Sun, 26 Feb 2023 12:02:38 -0800 (PST)
Received: by mail-il1-f179.google.com with SMTP id i12so2932715ila.5
        for <devicetree@vger.kernel.org>; Sun, 26 Feb 2023 12:02:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=akmCneyUMoB8ho3IxV5YT6+TaNRpqIoh4jeP/iFgTzM=;
        b=FrAxGGm3JVKN1oZI70zR6K78mIpPX9vG8FBy9W2jGlapjMFx6eddPmxVFmJZmzDTOm
         /IxbGNsrkOEwkwk4shO6S4SYh3ZHrmbJpm3xDGAXazh7G9dVxtPMd886B1+bKOivbEDT
         QAQ6uJUoQyKXwf5FnPEff6LD8gUi9jAw62tLrDi8BkGr/VTWidd/JST2lBvGXh5+gg7R
         WOzW/V0/o05lYvzBh3+ifAY7/NJlq6YvoKJqCZ6ENpbNuuUGEQJjiYbjtct8sFZVbbUX
         wB/+FIm6NSO8IkjU+yMgTna/VTSlfyRj3JRBgcJXHpYTXh2gFoRnQFh0eX3QvU8+z3kZ
         +shQ==
X-Gm-Message-State: AO0yUKVqYZ2pltFcahm2gkfh5T3wpJMo1ExT/+Q7t80PAAsJwR/Be8rJ
        mTxYrs0mOYSNWR9lWsHoHBVDmCvBTg==
X-Google-Smtp-Source: AK7set9NcSH7qwXuci8LROpmt4HvuuYoxFWgH8IKSb8xJtVSQoQMqOy7G4TeoDJJ/YuUAsSPj7JkQA==
X-Received: by 2002:a05:6e02:219b:b0:316:d855:fd25 with SMTP id j27-20020a056e02219b00b00316d855fd25mr18185646ila.21.1677441757770;
        Sun, 26 Feb 2023 12:02:37 -0800 (PST)
Received: from robh_at_kernel.org ([2605:ef80:8069:8ddf:ff6b:c94c:94fd:4442])
        by smtp.gmail.com with ESMTPSA id j22-20020a02a696000000b0038a5b48f3d4sm1513448jam.3.2023.02.26.12.02.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Feb 2023 12:02:37 -0800 (PST)
Received: (nullmailer pid 223061 invoked by uid 1000);
        Sun, 26 Feb 2023 20:02:33 -0000
Date:   Sun, 26 Feb 2023 14:02:33 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH] dt-bindings: display: Start the info graphics with HS/VS
 change
Message-ID: <167744116816.210331.16899551131386757148.robh@kernel.org>
References: <20230221200407.16531-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230221200407.16531-1-marex@denx.de>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Tue, 21 Feb 2023 21:04:07 +0100, Marek Vasut wrote:
> The VS signal change is synchronized to HS signal change, start the
> info graphics with that event, instead of having that event occur in
> the middle of it.
> 
> Scope trace of DPI bus with HS/VS active HIGH looks as follows:
>          ________________...__
> VS...___/__         __        \______...
> HS...___/  \_______/  \__...__/  \___...
>         ^                        ^
> 	|                        |
>         |    Used to start here -'
> 	|
> 	'--- Start info graphics here
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: devicetree@vger.kernel.org
> Cc: dri-devel@lists.freedesktop.org
> ---
>  .../bindings/display/panel/panel-timing.yaml  | 46 +++++++++----------
>  1 file changed, 23 insertions(+), 23 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

