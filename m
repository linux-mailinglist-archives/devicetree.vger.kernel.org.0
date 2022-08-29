Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E7D85A4078
	for <lists+devicetree@lfdr.de>; Mon, 29 Aug 2022 02:46:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229446AbiH2Aqk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 Aug 2022 20:46:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229513AbiH2Aqj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 Aug 2022 20:46:39 -0400
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BB6613FAB
        for <devicetree@vger.kernel.org>; Sun, 28 Aug 2022 17:46:38 -0700 (PDT)
Received: by mail-ot1-f44.google.com with SMTP id h20-20020a056830165400b00638ac7ddba5so4934238otr.4
        for <devicetree@vger.kernel.org>; Sun, 28 Aug 2022 17:46:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=message-id:date:subject:references:in-reply-to:cc:to:from
         :x-gm-message-state:from:to:cc;
        bh=jG76vHCaDSfTC668k+E6lh3DddsaHQtM+f7tt8B3rco=;
        b=A50mBXST5aZ/ePwGEpj6sXE5+sS/UX+8VHGIZ/XpFFP/Zl8W4bZtK0BQE1OSpF5lGN
         OZ81BppbRP6PEntGn0DHMmxmgtj6ReMvNqCvqvzyxY1jTS58/Jt3Cf9YSAD7G8x6h9he
         QofBK9hDRe6dyvWJCzRu/r72p6VD832FKrHQkq1wmJ97cB7KPlP+QB4diBy1y191+4FS
         fEcdKXkURnGP8b6xYNX3E2DAOZ9gC7MwepaKzm+ao3B0KIG84rUbOpXlmSq88k3fij0G
         i8FvWSe7mT9hlL2oGHtXVMyOvAaZ2zXrE/PecPs5eS3ttHWPuFuLiS6pKunpjlyqcwtr
         auzw==
X-Gm-Message-State: ACgBeo3VLgT1bCGn6PRHDb/r/s4B2gEj0YHIOYHlSrRE3EU2eTIjPxVD
        4oXZAvJXQcr8vj9IWZ+VDQ==
X-Google-Smtp-Source: AA6agR7Jxjc+RWeZEYuKslOFfZDus4+k/GRobiiixwqr222gj8+gqdOoCtWhPtDKhkbOm+ioR+HMbQ==
X-Received: by 2002:a05:6830:1281:b0:636:d7e9:1906 with SMTP id z1-20020a056830128100b00636d7e91906mr5656718otp.116.1661733997747;
        Sun, 28 Aug 2022 17:46:37 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id be36-20020a05687058a400b0010c0d04eb00sm5568174oab.2.2022.08.28.17.46.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Aug 2022 17:46:37 -0700 (PDT)
Received: (nullmailer pid 75735 invoked by uid 1000);
        Mon, 29 Aug 2022 00:46:36 -0000
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Marek Vasut <marex@denx.de>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Kieran Bingham <kieran.bingham@ideasonboard.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        devicetree@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
        Robert Foss <robert.foss@linaro.org>,
        dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
        Liu Ying <victor.liu@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        patchwork-lst@pengutronix.de, kernel@pengutronix.de,
        Jonas Karlman <jonas@kwiboo.se>,
        Andrzej Hajda <andrzej.hajda@intel.com>
In-Reply-To: <20220826192424.3216734-1-l.stach@pengutronix.de>
References: <20220826192424.3216734-1-l.stach@pengutronix.de>
Subject: Re: [PATCH 1/4] dt-bindings: display: imx: add binding for i.MX8MP HDMI TX
Date:   Sun, 28 Aug 2022 19:46:36 -0500
Message-Id: <1661733996.323919.75734.nullmailer@robh.at.kernel.org>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 26 Aug 2022 21:24:21 +0200, Lucas Stach wrote:
> The HDMI TX controller on the i.MX8MP SoC is a Synopsys designware IP
> core with a little bit of SoC integration around it.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Tested-by: Marek Vasut <marex@denx.de>
> ---
>  .../bindings/display/imx/fsl,imx8mp-hdmi.yaml | 74 +++++++++++++++++++
>  1 file changed, 74 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.example.dtb: hdmi@32fd8000: clock-names:2: 'cec' was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.example.dtb: hdmi@32fd8000: clock-names:3: 'pix' was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.example.dtb: hdmi@32fd8000: clock-names:4: 'fdcc' was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

