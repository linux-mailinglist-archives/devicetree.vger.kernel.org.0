Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD5EE4D8726
	for <lists+devicetree@lfdr.de>; Mon, 14 Mar 2022 15:43:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240123AbiCNOoV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Mar 2022 10:44:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240218AbiCNOoT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Mar 2022 10:44:19 -0400
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com [209.85.166.51])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D654EB86D
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 07:43:04 -0700 (PDT)
Received: by mail-io1-f51.google.com with SMTP id l18so11187965ioj.2
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 07:43:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=hGkgQaSJozIUZNI68rSI5QT1a7TzoZpCAUHSpxilDZg=;
        b=hr2womT7BunzuhqJlOrD0/uG7ipU2LqbPZGWn6OfsGZ6VhUtnvjPjK89wRRdbjnG8/
         yiPv9RtpFAcUmBhOmTuJS00R5p2hZSjdOlDELCCWa+jQBwNEUywnzaMM4brZOBfRo+nu
         wpc9VWUjXlhVhfWlZVuuNRiZP0tZpuhy4BjL4BbDJ/yLPT7ERQtNXsTYoIY6S8DXoNg7
         7ZDGs3EACBwoeX1Y/NPldvoFYXEHbVGC+39Lu60NlF4nD5YYaN0VNnSjnRkZ5XsvjAgP
         pYPZL7Msd6OgLcVaof9zcTPqKAdLkdUajf8UnnKDRCfVJOfRUIKI3rDwCTlA9FmQmVMU
         15Xw==
X-Gm-Message-State: AOAM5334eR8gPUVZhNyua194AlHam7r75CnRH95alGlO/qSkGkYXGrTU
        BVtUPOFUtJU8TouI/+13qQ==
X-Google-Smtp-Source: ABdhPJxYhgivZ4xYvnFQ019i20pFcHvRbZpwKauyaJmeNR7dgy2QvIq6NWVSt8MIOHsZAl6J8M5kPA==
X-Received: by 2002:a02:604f:0:b0:30f:e6f1:3883 with SMTP id d15-20020a02604f000000b0030fe6f13883mr20955024jaf.266.1647268982613;
        Mon, 14 Mar 2022 07:43:02 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.253])
        by smtp.gmail.com with ESMTPSA id c12-20020a056e02058c00b002c63f71c7dbsm8665092ils.56.2022.03.14.07.43.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Mar 2022 07:43:01 -0700 (PDT)
Received: (nullmailer pid 12509 invoked by uid 1000);
        Mon, 14 Mar 2022 14:42:49 -0000
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Robert Foss <robert.foss@linaro.org>,
        Maxime Ripard <maxime@cerno.tech>,
        Rob Herring <robh+dt@kernel.org>,
        dri-devel@lists.freedesktop.org, Robby Cai <robby.cai@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>
In-Reply-To: <20220313123852.207257-1-marex@denx.de>
References: <20220313123852.207257-1-marex@denx.de>
Subject: Re: [PATCH 1/2] dt-bindings: display: bridge: ldb: Implement simple NXP i.MX8M LDB bridge
Date:   Mon, 14 Mar 2022 08:42:49 -0600
Message-Id: <1647268969.328444.12508.nullmailer@robh.at.kernel.org>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 13 Mar 2022 13:38:51 +0100, Marek Vasut wrote:
> The i.MX8MP contains two syscon registers which are responsible
> for configuring the on-SoC DPI-to-LVDS serializer. Add DT binding
> which represents this serializer as a bridge.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Maxime Ripard <maxime@cerno.tech>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Robby Cai <robby.cai@nxp.com>
> Cc: Robert Foss <robert.foss@linaro.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org
> ---
>  .../bindings/display/bridge/nxp,ldb.yaml      | 99 +++++++++++++++++++
>  1 file changed, 99 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/nxp,ldb.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/display/bridge/nxp,ldb.example.dt.yaml:0:0: /example-0/lvds-ldb: failed to match any schema with compatible: ['fsl,imx8mp-ldb']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1604767

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

