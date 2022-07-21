Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F35657D412
	for <lists+devicetree@lfdr.de>; Thu, 21 Jul 2022 21:24:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229719AbiGUTX5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jul 2022 15:23:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233095AbiGUTXz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jul 2022 15:23:55 -0400
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com [209.85.166.48])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D08488F28
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 12:23:48 -0700 (PDT)
Received: by mail-io1-f48.google.com with SMTP id q14so2124225iod.3
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 12:23:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=/TlTuh9GJgQKdQdbhy7UptGxxLX8hx6KcJUZFCAATpA=;
        b=eDlYXkI1PYU9bAkd5E8G4fZrcW81jVWoSjW3aK1vOhSWUnn8iryg65Vz37G1Tw3G+y
         ddo4iFEDIizs46dZ0jZ5PORKwCD78mUHSWcHRfAM2D6lUtHQD2keKoHOZUL8R+L4bZL5
         QAHnzU4OdG3kLr8LOSaqByGYWj+ZvozU8qW/wDq4A4S5UEB1K+vPlliVPFFeQrnT56O4
         jXq6BAwRbhXsZWSuqUHrLN6EeAtbbCmWTu/AkiaBOqSOYbu8Sr2NpkrAOIIgQ47N9p5x
         IGMpUoTOIFg8N9NL6uF2OP/TtkzpLK4uBDnRrkuQQ5PLRsTfbdTa0FJcdaCizYfcrzej
         3mcg==
X-Gm-Message-State: AJIora/rvw8Lxdat2b7rdXJbUcvlH8kFM7EgMeSRyejyeH/A5O8wypCA
        Y6DnIyCoh7oYO9w3CzNlkOCTjS5IjA==
X-Google-Smtp-Source: AGRyM1v/2SIconk1vJlvwhmeezGHMoj7yuHsypltVnitbAzNuKCf+hL+v5b0iW7vpgjNPgbcN3o95g==
X-Received: by 2002:a05:6638:138f:b0:341:4711:4c2c with SMTP id w15-20020a056638138f00b0034147114c2cmr37837jad.178.1658431427322;
        Thu, 21 Jul 2022 12:23:47 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id z8-20020a92cb88000000b002dcff50b2b8sm1006727ilo.7.2022.07.21.12.23.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jul 2022 12:23:46 -0700 (PDT)
Received: (nullmailer pid 1783215 invoked by uid 1000);
        Thu, 21 Jul 2022 19:23:45 -0000
Date:   Thu, 21 Jul 2022 13:23:45 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Jagan Teki <jagan@amarulasolutions.com>,
        robert.foss@linaro.org, Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
        Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH] dt-bindings: vendor-prefixes: add Densitron
Message-ID: <20220721192345.GA1783152-robh@kernel.org>
References: <20220721030327.210950-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220721030327.210950-1-marex@denx.de>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 21 Jul 2022 05:03:27 +0200, Marek Vasut wrote:
> Densitron is a manufacturer of LCD panels.
> https://www.densitron.com
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Guido Günther <agx@sigxcpu.org>
> Cc: Jagan Teki <jagan@amarulasolutions.com>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Applied, thanks!
