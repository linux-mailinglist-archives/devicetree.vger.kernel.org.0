Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9CAB86F9BE1
	for <lists+devicetree@lfdr.de>; Sun,  7 May 2023 23:25:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230187AbjEGVZs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 May 2023 17:25:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230099AbjEGVZr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 May 2023 17:25:47 -0400
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9EDD118C
        for <devicetree@vger.kernel.org>; Sun,  7 May 2023 14:25:46 -0700 (PDT)
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-6a5eea94963so3535947a34.3
        for <devicetree@vger.kernel.org>; Sun, 07 May 2023 14:25:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683494746; x=1686086746;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=k6ufJ5LnX3H56g7Y6pg/KPKx3t1jKCtHndBxL/t/v/s=;
        b=W0oyTb+44PpEDt/iraxZ9pgXPdR+Ph5+B9dS55q31cGwX29+cnHjl7hKbbucTJUkbk
         ipURRbmcj2P7/xvg068nJvYZD4rgjOlYhB4X1w16F8WEgDI/XH4WxWQQiyVKTP20Rytq
         ngG5hNHRxkzXu8WOYe935ylq7IxjDvHOroa7iB7it4x7GWOiOfsp93uivXh3HS7UBjEv
         214/WAhO927DtyYMCPHIz1WVj4aRmuNQbD9ElGIJRDWWbfbGTZ4oxcudWMuXGrEY7f67
         tLteOO9uycP74QXH/yt+wWULImLMOaK2RLqKnrpYPgmCZmE+7WR7XrmXifh3go4uY9Li
         wDuA==
X-Gm-Message-State: AC+VfDxEJqQpow7fDe9qFo8dxjkTKYTNhX9ilm16p05wrwWp5XT2o3O8
        Gr4mnTzlorOvVWCr8ggEcw==
X-Google-Smtp-Source: ACHHUZ5fb2Ya5VUsmLZ0Bv9b1gjpcOsZSP2K1/2E04n/AqjwfYewnMGgdGSBiJ5URZf5UqIRlhINIA==
X-Received: by 2002:a9d:67d3:0:b0:6a5:f48b:6b6c with SMTP id c19-20020a9d67d3000000b006a5f48b6b6cmr4102050otn.32.1683494745785;
        Sun, 07 May 2023 14:25:45 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id t17-20020a0568301e3100b006a7aaa2d269sm3455844otr.18.2023.05.07.14.25.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 May 2023 14:25:45 -0700 (PDT)
Received: (nullmailer pid 3488547 invoked by uid 1000);
        Sun, 07 May 2023 21:25:44 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
MIME-Version: 1.0
From:   Rob Herring <robh@kernel.org>
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     David Airlie <airlied@gmail.com>, Rob Herring <robh+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        devicetree@vger.kernel.org, freedreno@lists.freedesktop.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        dri-devel@lists.freedesktop.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>
In-Reply-To: <20230507201218.2339014-2-dmitry.baryshkov@linaro.org>
References: <20230507201218.2339014-1-dmitry.baryshkov@linaro.org>
 <20230507201218.2339014-2-dmitry.baryshkov@linaro.org>
Message-Id: <168349474255.3488452.11372136807020227216.robh@kernel.org>
Subject: Re: [PATCH 1/3] dt-bindings: display: hdmi-connector: add hdmi-pwr
 supply
Date:   Sun, 07 May 2023 16:25:44 -0500
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Sun, 07 May 2023 23:12:16 +0300, Dmitry Baryshkov wrote:
> Follow the dp-connector example and add hdmi-pwr supply to drive the 5V
> pin of the HDMI connector (together with some simple glue logic possibly
> attached to the connector).
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../devicetree/bindings/display/connector/hdmi-connector.yaml  | 3 +++
>  1 file changed, 3 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/i2c/ovti,ov2685.example.dtb: camera-sensor@3c: port:endpoint:data-lanes: [[1]] is too short
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/i2c/ovti,ov2685.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/rockchip-isp1.example.dtb: camera@3c: port:endpoint:data-lanes: [[1]] is too short
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/i2c/ovti,ov2685.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-ep.example.dtb: pcie-ep@33800000: Unevaluated properties are not allowed ('assigned-clock-parents', 'assigned-clock-rates', 'assigned-clocks' were unexpected)
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-ep.yaml

doc reference errors (make refcheckdocs):
Documentation/usb/gadget_uvc.rst: Documentation/userspace-api/media/v4l/pixfmt-packed.yuv.rst
MAINTAINERS: Documentation/devicetree/bindings/pwm/pwm-apple.yaml

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230507201218.2339014-2-dmitry.baryshkov@linaro.org

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.

