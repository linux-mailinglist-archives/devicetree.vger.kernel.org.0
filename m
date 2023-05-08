Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 204AB6F9DE4
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 04:56:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229986AbjEHC4P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 May 2023 22:56:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229540AbjEHC4O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 May 2023 22:56:14 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDA927A9A
        for <devicetree@vger.kernel.org>; Sun,  7 May 2023 19:56:11 -0700 (PDT)
Received: from pendragon.ideasonboard.com (softbank126090219015.bbtec.net [126.90.219.15])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 05565814;
        Mon,  8 May 2023 04:56:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1683514564;
        bh=zi7eQEXQVrOWQsyGQ9HJXULG4BxYJwJfa1AP77p/a2Q=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=t6z8EjCsVlvBUWqvT862M0oAk3ksGVBKv5NvmCeuoplsuRJ6LGObnbNFvjggnRj7n
         d9x3tPffl2sFrbS4DXBdooObYEUS/lnHzGJQlkyR/CWiKl5Bzd0LaaY72vQpdO8pq1
         Eqsxm80H6PRLpuWvKPUUk2kaNWxw30jW3ShgS2oY=
Date:   Mon, 8 May 2023 05:56:23 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        David Airlie <airlied@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Jonas Karlman <jonas@kwiboo.se>, devicetree@vger.kernel.org,
        freedreno@lists.freedesktop.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        dri-devel@lists.freedesktop.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>
Subject: Re: [PATCH 1/3] dt-bindings: display: hdmi-connector: add hdmi-pwr
 supply
Message-ID: <20230508025623.GS23514@pendragon.ideasonboard.com>
References: <20230507201218.2339014-1-dmitry.baryshkov@linaro.org>
 <20230507201218.2339014-2-dmitry.baryshkov@linaro.org>
 <168349474255.3488452.11372136807020227216.robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <168349474255.3488452.11372136807020227216.robh@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Sun, May 07, 2023 at 04:25:44PM -0500, Rob Herring wrote:
> On Sun, 07 May 2023 23:12:16 +0300, Dmitry Baryshkov wrote:
> > Follow the dp-connector example and add hdmi-pwr supply to drive the 5V
> > pin of the HDMI connector (together with some simple glue logic possibly
> > attached to the connector).
> > 
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  .../devicetree/bindings/display/connector/hdmi-connector.yaml  | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):

The issues below don't seem to be related to Dmitry's patch, are they ?

> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/i2c/ovti,ov2685.example.dtb: camera-sensor@3c: port:endpoint:data-lanes: [[1]] is too short
> 	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/i2c/ovti,ov2685.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/rockchip-isp1.example.dtb: camera@3c: port:endpoint:data-lanes: [[1]] is too short
> 	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/i2c/ovti,ov2685.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-ep.example.dtb: pcie-ep@33800000: Unevaluated properties are not allowed ('assigned-clock-parents', 'assigned-clock-rates', 'assigned-clocks' were unexpected)
> 	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-ep.yaml
> 
> doc reference errors (make refcheckdocs):
> Documentation/usb/gadget_uvc.rst: Documentation/userspace-api/media/v4l/pixfmt-packed.yuv.rst
> MAINTAINERS: Documentation/devicetree/bindings/pwm/pwm-apple.yaml
> 
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230507201218.2339014-2-dmitry.baryshkov@linaro.org
> 
> The base for the series is generally the latest rc1. A different dependency
> should be noted in *this* patch.
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your schema.

-- 
Regards,

Laurent Pinchart
