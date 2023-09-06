Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C44B7943A1
	for <lists+devicetree@lfdr.de>; Wed,  6 Sep 2023 21:14:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242790AbjIFTOy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Sep 2023 15:14:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240288AbjIFTOt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Sep 2023 15:14:49 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3A89185
        for <devicetree@vger.kernel.org>; Wed,  6 Sep 2023 12:14:45 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 294B5C433C7;
        Wed,  6 Sep 2023 19:14:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1694027685;
        bh=cvWljlbGuz9htPd1kRagzV1CLuk4G4aC/a8YJLwHfek=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=Vd/4UN5S8rx+FxnQ8NBHwQ7683Z6AMcS5b2DEiAMjl6pYnLnmVxpUoEiLq4ynkC19
         bPxyz6fiibeOkQ/x8tq50dIA3snDqN0+jJMAl9nPAGHsprRtrXKtyTdRPVaHRZio+e
         BFZkCHy088xACsuW7W17yTLu5S9dG93P3y5alTUWvm0hwVS1NNZ0GuvNeyOOFo8Lst
         5//3igiQDqIOQPwDu25TpfoxpIaAESzqAtJ+rZ3BntRrUCD3ZuNUy8goseXWsyrB/2
         Hnc8erbcRHNYcmAI/p6OmAT7cFG7y1nK8HXo+xxwxyrlyFoAESwE+E3dkaW3NaIdjj
         qpUEBkGcx1d9Q==
Received: (nullmailer pid 163960 invoked by uid 1000);
        Wed, 06 Sep 2023 19:14:42 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
MIME-Version: 1.0
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Vinod Koul <vkoul@kernel.org>,
        linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-phy@lists.infradead.org,
        Luca Ceresoli <luca.ceresoli@bootlin.com>,
        devicetree@vger.kernel.org,
        Richard Leitner <richard.leitner@skidata.com>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>
In-Reply-To: <20230906184211.1857585-1-l.stach@pengutronix.de>
References: <20230906184211.1857585-1-l.stach@pengutronix.de>
Message-Id: <169402768295.163944.9865349368413012631.robh@kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: add binding for the i.MX8MP
 HDMI PHY
Date:   Wed, 06 Sep 2023 14:14:42 -0500
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Wed, 06 Sep 2023 20:42:10 +0200, Lucas Stach wrote:
> Add a DT binding for the HDMI PHY found on the i.MX8MP SoC.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
> v2:
> - drop minItems from clocks
> - add description
> ---
>  .../bindings/phy/fsl,imx8mp-hdmi-phy.yaml     | 66 +++++++++++++++++++
>  1 file changed, 66 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml: title: 'Freescale i.MX8MP HDMI PHY binding' should not be valid under {'pattern': '([Bb]inding| [Ss]chema)'}
	hint: Everything is a binding/schema, no need to say it. Describe what hardware the binding is for.
	from schema $id: http://devicetree.org/meta-schemas/base.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230906184211.1857585-1-l.stach@pengutronix.de

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.

