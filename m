Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 36A11428E6E
	for <lists+devicetree@lfdr.de>; Mon, 11 Oct 2021 15:44:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230331AbhJKNqK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Oct 2021 09:46:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231577AbhJKNqK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Oct 2021 09:46:10 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17778C061570
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 06:44:10 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id v17so56345441wrv.9
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 06:44:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=A7TD3sEyqxQ0X3DP82vXK523PsJpNS15uJqkN1lKgwU=;
        b=3zqPHeCtiwGU0NHoNjgSWw1LEyR7aqUxglAy8cIU+b094JEYM0sP3n7hHVL8CHf8nf
         HXC7RzLd5409ZeHqe4WfAkl8+ylkyCktx0NxqRi9D1QWKjuKmpQLm4NvCB/rTmW6VTww
         fZVqtW4tUfmosRfRn1aKa6Zwhdrejx1Kss9q66Z0cy861o1qtj3cxjjChvdPe6xt39D2
         ifqCf68cXpW8HZCB439PpsWeH1v6vjNauAHUACGGo2NF4fC00VStBvLj0M3BjEsyqOmN
         cWHAPcE3qAbe5n2yj9eESC8xYQfxjfNpFkUAEdC6Bco+cQ7XIhA5bqV9BpMDf4iTjsiX
         JkZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=A7TD3sEyqxQ0X3DP82vXK523PsJpNS15uJqkN1lKgwU=;
        b=Xy+b/5l846S97UWvDV4iR1uYnW1SC5smqwH9eANZVRtDUcIhqq67ocMaZLZMzJ0FWd
         7o84sVkV5/nfaFqTDutFtHDGdqY3GT4p24MTrux1PDusOEcI2N97clwJAaQ5notGLgN4
         ALXaHxJPoCeum0sLs/Q05xtPdf0IvLQlk5XWPhyiTU9iTC1vpfAEw3PbpG54RAhVCKc1
         F7Q7JRlsDqhsi0avrJEAqQVlU7WVLnvnLTkMW/D1llb8xRgolgYh2bmOPoaROBe3yCAB
         JUzWilBrR8VNosgvcroiwqrhFhLhSHpIQiZ2LKvRqJtOlP4YCBXbhb+kaw/53yiWRxcW
         a/Sg==
X-Gm-Message-State: AOAM530J2eYvovuTedU9Z84mfd16Pd1Y55XvS1SbIltw8CICYJSYeTKW
        sForP88IPZGf+SUwDs6Hp8PB4w==
X-Google-Smtp-Source: ABdhPJydwj7M4z6iZA4YhZBGnqu/rkJnC9o3iN/3pp6K1plBVfMpdwPh8RRzmYY7BkzkRRwnEu23eA==
X-Received: by 2002:adf:e292:: with SMTP id v18mr759164wri.369.1633959848748;
        Mon, 11 Oct 2021 06:44:08 -0700 (PDT)
Received: from blmsp ([2a02:2454:3e6:c900::97e])
        by smtp.gmail.com with ESMTPSA id v23sm7653201wmj.4.2021.10.11.06.44.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Oct 2021 06:44:08 -0700 (PDT)
Date:   Mon, 11 Oct 2021 15:44:07 +0200
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Rob Herring <robh@kernel.org>
Cc:     linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
        linux-mediatek@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        dri-devel@lists.freedesktop.org,
        Philipp Zabel <p.zabel@pengutronix.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v4 2/7] dt-bindings: mediatek,dp: Add Display Port binding
Message-ID: <20211011134407.t57ajlzrcequ2ln4@blmsp>
References: <20211011094624.3416029-1-msp@baylibre.com>
 <20211011094624.3416029-3-msp@baylibre.com>
 <1633959378.253312.504945.nullmailer@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1633959378.253312.504945.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Oct 11, 2021 at 08:36:18AM -0500, Rob Herring wrote:
> On Mon, 11 Oct 2021 11:46:19 +0200, Markus Schneider-Pargmann wrote:
> > This controller is present on several mediatek hardware. Currently
> > mt8195 and mt8395 have this controller without a functional difference,
> > so only one compatible field is added.
> > 
> > The controller can have two forms, as a normal display port and as an
> > embedded display port.
> > 
> > Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> > ---
> >  .../display/mediatek/mediatek,dp.yaml         | 89 +++++++++++++++++++
> >  1 file changed, 89 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
> > 
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> Documentation/devicetree/bindings/display/mediatek/mediatek,dp.example.dts:20:18: fatal error: dt-bindings/power/mt8195-power.h: No such file or directory
>    20 |         #include <dt-bindings/power/mt8195-power.h>
>       |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> compilation terminated.
> make[1]: *** [scripts/Makefile.lib:385: Documentation/devicetree/bindings/display/mediatek/mediatek,dp.example.dt.yaml] Error 1
> make[1]: *** Waiting for unfinished jobs....
> make: *** [Makefile:1441: dt_binding_check] Error 2

Yes, mt8195-power.h is unfortunately not merged yet.

Thanks,
Markus

> 
> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.ozlabs.org/patch/1539195
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
