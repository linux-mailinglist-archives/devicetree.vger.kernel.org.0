Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A5729428E69
	for <lists+devicetree@lfdr.de>; Mon, 11 Oct 2021 15:43:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231473AbhJKNpV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Oct 2021 09:45:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234209AbhJKNpF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Oct 2021 09:45:05 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BB8DC061765
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 06:43:05 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id m22so56531128wrb.0
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 06:43:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=LBQ/RlcHRgsJhWdGxR74k8U+6xJLDTMUXocquzJPiJU=;
        b=OSRKb1tR/iscBaaH4Vkfq89LYiA99Wg2MWozP0+JxU5cFEwSuakTotaA5qfjuf0tcn
         wc8nkgQg3BjtGpo6QvjpvCeiE2dxFpXWDKG+QHquCxCgQ8iNDFTXqXnX5kH/W/QPAYy2
         rzpNcqTeyuRiAm9LFnaNn4jJGXEk0bih1SG5sjlcHk5EA27WggxzscALmljLyvSRdbSB
         K7z2/2m6MDDOgDaO2Kv7kH8Xn61JYrZatd20Aqm7yx/oaHGhqdz4vKRaSEFpV8qT+qs3
         b8SSGrk/nx+lG3UB+fe2jCF8KMujidu8X6WCwzFd9uMckL7SXKwR1604Dn7orqrDzoQp
         cOnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=LBQ/RlcHRgsJhWdGxR74k8U+6xJLDTMUXocquzJPiJU=;
        b=79tidYZe1YzZiNab0nqpyFL8l9x8bintIqHtZ3uhj/eDtII/xtw3dnsfVuwz1iurPZ
         h5LwFtHlIIKqq07T0Qp2F0JYbcMM1/jGFO+cm37uL3gNeWGXZ83olhh5YOlosY+VYdS4
         nxc6iHt4ZTaJ9N3GFvw7Fh+qvyfqyqO5kowzJwHmYGPFc7hdLcsa7ul7vAvAEEJRS6BF
         9Ae9WbIMm5LfQ2y/rghIRPjJKMBcvmcOB0JzY6cPdYdK9jt6eI9zXy/l5zgw/pA/57J1
         zCxteUk6ofnZLKL3m3c2hlC1WgiR58ZoaFSUwueHpQhcAeTiO3AMwBBidKXINxT8U/8K
         OEww==
X-Gm-Message-State: AOAM531MuDI5SntMLk0/8j71Rw6hZMMRVvGTWenj6j12PlkkBnY/p+Dj
        Pb+59kNpgVhbp5/5jB9OiU7XZg==
X-Google-Smtp-Source: ABdhPJw80tNA1CtEMAR2DIAqo6RWlGOsP3zsfqN+AHn9A3bpiH1G4WPtqy3EvbLa45r88Y0l+rikmg==
X-Received: by 2002:adf:b19b:: with SMTP id q27mr25056733wra.125.1633959782842;
        Mon, 11 Oct 2021 06:43:02 -0700 (PDT)
Received: from blmsp ([2a02:2454:3e6:c900::97e])
        by smtp.gmail.com with ESMTPSA id f3sm19666735wmb.12.2021.10.11.06.43.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Oct 2021 06:43:02 -0700 (PDT)
Date:   Mon, 11 Oct 2021 15:43:01 +0200
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        linux-mediatek@lists.infradead.org,
        dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org,
        Philipp Zabel <p.zabel@pengutronix.de>,
        devicetree@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>,
        Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH v4 1/7] dt-bindings: mediatek,dpintf: Add DP_INTF binding
Message-ID: <20211011134301.rkkblnj4bfowghu7@blmsp>
References: <20211011094624.3416029-1-msp@baylibre.com>
 <20211011094624.3416029-2-msp@baylibre.com>
 <1633959378.242329.504943.nullmailer@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1633959378.242329.504943.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Oct 11, 2021 at 08:36:18AM -0500, Rob Herring wrote:
> On Mon, 11 Oct 2021 11:46:18 +0200, Markus Schneider-Pargmann wrote:
> > DP_INTF is a similar functional block to mediatek,dpi but is different
> > in that it serves the DisplayPort controller on mediatek SoCs and uses
> > different clocks. Therefore this patch creates a new binding file for
> > this functional block.
> > 
> > Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> > ---
> > 
> > Notes:
> >     Changes v3 -> v4:
> >     - Fixed clock names in the example as the clock patch series is merged into
> >       next now
> >     - Add missing ports decleration to the example
> > 
> >     Changes v1 -> v2:
> >     - Move the devicetree binding from mediatek,dpi into its own binding file.
> > 
> >  .../display/mediatek/mediatek,dpintf.yaml     | 86 +++++++++++++++++++
> >  1 file changed, 86 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dpintf.yaml
> > 
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> Documentation/devicetree/bindings/display/mediatek/mediatek,dpintf.example.dts:21:18: fatal error: dt-bindings/clock/mt8195-clk.h: No such file or directory
>    21 |         #include <dt-bindings/clock/mt8195-clk.h>
>       |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The mt8195 clock series was already merged and is available in
linux-next. I checked with make dt_binding_check before sending.

Thanks,
Markus

> compilation terminated.
> make[1]: *** [scripts/Makefile.lib:385: Documentation/devicetree/bindings/display/mediatek/mediatek,dpintf.example.dt.yaml] Error 1
> make[1]: *** Waiting for unfinished jobs....
> make: *** [Makefile:1441: dt_binding_check] Error 2
> 
> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.ozlabs.org/patch/1539196
> 
> This check can fail if there are any dependencies. The base for a patch
> series is generally the most recent rc1.
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit.
> 
