Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D5EEE648A15
	for <lists+devicetree@lfdr.de>; Fri,  9 Dec 2022 22:32:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229745AbiLIVcZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Dec 2022 16:32:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229691AbiLIVcY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Dec 2022 16:32:24 -0500
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B02379CBF
        for <devicetree@vger.kernel.org>; Fri,  9 Dec 2022 13:32:24 -0800 (PST)
Received: by mail-ot1-f46.google.com with SMTP id db10-20020a0568306b0a00b0066d43e80118so3597929otb.1
        for <devicetree@vger.kernel.org>; Fri, 09 Dec 2022 13:32:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RXUif5e59SXbS4ZVXjasOFVg8LGqYqJhBBmQt/Ekbr4=;
        b=CwXidTTUc/QAPeUW/3b/GgJToaEu/jJL2FJfmOyBabro0/uieft33PZ4rsfpXsaXzU
         TNAo1B/TRiS7qEIYNdGhc4mfQDlTeUHIAcxaKtuVwqNavrbkipvp6Pgm4EscT0XBNpdM
         bCW/IvwCtioLKlrpSFBdux5PE/cSmrKwht7a4kh+LV0gNmbpdoEch2XVxSQlthiNEnZD
         zSu/bLQb7HiEftpOi+gIfrfh/GHW2Pkx+GjDUq10nSxJjG/f+yOLGgYIc/esbIkzp6H/
         +AB8aUjPEQWQOd3cpukXOhMsuY7ySr0xk8qLoZEKmcChr5DQgcMfRPvxK7b0+Ww6v7ca
         WVuA==
X-Gm-Message-State: ANoB5plIpmy4Yb99l9buG90ohcdZTyI6pY1m4SUPibtc808s+EuAY5Z7
        O8L0dj0P0iUbQEgiL7luyQ==
X-Google-Smtp-Source: AA0mqf5wT/8wkhk4uJ4lkX6HXdEFjCt39r1ji6QLYrsb4qByaS9GHRkSegVYNULG3OV2rh0FyjHKYA==
X-Received: by 2002:a05:6830:11d9:b0:670:74de:ed3e with SMTP id v25-20020a05683011d900b0067074deed3emr3377591otq.16.1670621543461;
        Fri, 09 Dec 2022 13:32:23 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id w7-20020a9d5a87000000b0066c49ce8b77sm1012144oth.77.2022.12.09.13.32.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Dec 2022 13:32:22 -0800 (PST)
Received: (nullmailer pid 3882278 invoked by uid 1000);
        Fri, 09 Dec 2022 21:32:22 -0000
Date:   Fri, 9 Dec 2022 15:32:22 -0600
From:   Rob Herring <robh@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marek Vasut <marex@denx.de>, David Airlie <airlied@gmail.com>
Subject: Re: [PATCH v3 1/1] dt-bindings: lcdif: Fix constraints for imx8mp
Message-ID: <167062154068.3882174.8931883659376870009.robh@kernel.org>
References: <20221208140840.3227035-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221208140840.3227035-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Thu, 08 Dec 2022 15:08:40 +0100, Alexander Stein wrote:
> i.MX8MP uses 3 clocks, so soften the restrictions for clocks & clock-names.
> This SoC requires a power-domain for this peripheral to use. Add it as
> a required property.
> 
> Fixes: f5419cb0743f ("dt-bindings: lcdif: Add compatible for i.MX8MP")
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
> Changes in v3:
> * Removed power-domains minItems: 1 constraint
> 
> Changes in v2:
> * Squash both patches into one
> * Split the conditionals from fsl,imx6sx-lcdif
> * Mark power-domains as required for fsl,imx8mp-lcdif
> * Ignored the A-b & R-b due to reorganization
> 
>  .../bindings/display/fsl,lcdif.yaml           | 29 ++++++++++++++++++-
>  1 file changed, 28 insertions(+), 1 deletion(-)
> 

Applied, thanks!
