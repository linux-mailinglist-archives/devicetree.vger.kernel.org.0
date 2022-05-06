Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A180551E1C4
	for <lists+devicetree@lfdr.de>; Sat,  7 May 2022 01:40:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1385090AbiEFWns (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 May 2022 18:43:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1444815AbiEFWnq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 May 2022 18:43:46 -0400
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED98561639
        for <devicetree@vger.kernel.org>; Fri,  6 May 2022 15:40:01 -0700 (PDT)
Received: by mail-oi1-f178.google.com with SMTP id v66so9043748oib.3
        for <devicetree@vger.kernel.org>; Fri, 06 May 2022 15:40:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=6BDcq2/11wXT5ygpG8JsCxIz2tjuPiA5pRN86PbS0vI=;
        b=aVhz8opzIEe2FWWqlfd/oh8Yh7sF7PBsTnc0EkpOBXz8b6+Qmo+JCEF7t+fnBkZz3S
         XOMbZgUws4aSOx4vdj4Ky0MZPplyTSz/JVSYYX1vgmmhyzXlkZC/rKp09TY9IwBpQ40y
         0q9WjCjsfiMkWOSR99bvT5D9fHU32pSzNczog26Xo6lTPacqSx9aCXUCqY/dR6J5AWBk
         llB2DSAa6WiDhCOE8UPJfoi8tqXTJBIEDgXlUFJ6LWRoD647III7OUvuim0+C/uuw1sQ
         dWrJVh/xDAqUki4PI6xx3hF6dK+WOFRwo/WjGNAOmuZzsPiLDu8ECgGDzBQi/frbjJqW
         5jTQ==
X-Gm-Message-State: AOAM530tH6gAEUReH9hRqxWuLGYzpMjmZoxqeJy4vM69zBUBygN2l4TK
        dSOnvdK2MjgK6EIX/ZjMdg==
X-Google-Smtp-Source: ABdhPJykNbPqgTnhxpQ3+9FySStpxKn6CnG4HKiaM88MdReBQJlRzfsjbL84a8XB3b8YS+Vagne/ig==
X-Received: by 2002:a54:460b:0:b0:322:7964:1b60 with SMTP id p11-20020a54460b000000b0032279641b60mr2534634oip.16.1651876801265;
        Fri, 06 May 2022 15:40:01 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id k2-20020a056870570200b000edae17a8cesm2166063oap.3.2022.05.06.15.40.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 May 2022 15:40:00 -0700 (PDT)
Received: (nullmailer pid 2407417 invoked by uid 1000);
        Fri, 06 May 2022 22:39:53 -0000
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Marek Vasut <marex@denx.de>, patchwork-lst@pengutronix.de,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        devicetree@vger.kernel.org, Sandor Yu <Sandor.yu@nxp.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Robert Foss <robert.foss@linaro.org>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        linux-phy@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        dri-devel@lists.freedesktop.org,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-arm-kernel@lists.infradead.org,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Philipp Zabel <p.zabel@pengutronix.de>
In-Reply-To: <20220506181034.2001548-6-l.stach@pengutronix.de>
References: <20220506181034.2001548-1-l.stach@pengutronix.de> <20220506181034.2001548-6-l.stach@pengutronix.de>
Subject: Re: [PATCH v0.5 5/9] dt-bindings: phy: add binding for the i.MX8MP HDMI PHY
Date:   Fri, 06 May 2022 17:39:53 -0500
Message-Id: <1651876793.663191.2407416.nullmailer@robh.at.kernel.org>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 06 May 2022 20:10:30 +0200, Lucas Stach wrote:
> Add a DT binding for the HDMI PHY found on the i.MX8MP SoC.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../bindings/phy/fsl,imx8mp-hdmi-phy.yaml     | 62 +++++++++++++++++++
>  1 file changed, 62 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.example.dts:29.45-46 syntax error
FATAL ERROR: Unable to parse input tree
make[1]: *** [scripts/Makefile.lib:364: Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.example.dtb] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1401: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

