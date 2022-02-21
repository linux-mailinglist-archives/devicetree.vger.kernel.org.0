Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D8F04BD403
	for <lists+devicetree@lfdr.de>; Mon, 21 Feb 2022 03:57:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343910AbiBUCgp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Feb 2022 21:36:45 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:48558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343911AbiBUCgo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Feb 2022 21:36:44 -0500
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4D2C3CA63
        for <devicetree@vger.kernel.org>; Sun, 20 Feb 2022 18:36:22 -0800 (PST)
Received: by mail-io1-f46.google.com with SMTP id e79so14365103iof.13
        for <devicetree@vger.kernel.org>; Sun, 20 Feb 2022 18:36:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=umQRAksOlDGR71CV/7q8w3UM9RPs0j8wImc8BhPZ9oA=;
        b=qHgvmE01AFW5Vbng/Gc10rxtYiVAkPTdGgpHThA839iCCO1EFEZyEplSBG4G0Qn9hV
         NHLkpuSXFT5QARWtZhkH17j9R65Uy5nDEz9Taeb3TUHD9eir05g+ke57EXKVq2WTJPcQ
         yUPLZKD5GueFWwf6RQIHPnk5O38SWAHGDqSmyfiKMJlo4DuJQjdHfgzLb1HTtMxKsw2F
         N5W6H5geKsXUEp52zwZ5HteyN7sgd/DO1/a5DAti3rRIRNoOUFAFST5ImZ1IUF7TrOOr
         OrDpfU/5vLSTL/D3AE9tCgEDYHu6qLl/YHi0AtwhVhfzlqS9PfEJ9D51URGM3nKk5pEb
         rRYg==
X-Gm-Message-State: AOAM532Oyq1MPtYfPALHY5TgOn88CSoJiVyhmE/ouAnTnlisJ7weeaAz
        x5NrkxQKepiVmHP6eIwlDr2gJxnhHQ==
X-Google-Smtp-Source: ABdhPJw1h2mEAUBdneBklmT2HDnqcAjjIDQwaAGq4wonwL7aiRSmCIhy3XOEfVzhxs8L8TNj/DL/ig==
X-Received: by 2002:a05:6602:2dcd:b0:63e:914f:a690 with SMTP id l13-20020a0566022dcd00b0063e914fa690mr13988950iow.87.1645410981908;
        Sun, 20 Feb 2022 18:36:21 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id v23sm2969814ioq.2.2022.02.20.18.36.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Feb 2022 18:36:21 -0800 (PST)
Received: (nullmailer pid 2041541 invoked by uid 1000);
        Mon, 21 Feb 2022 02:36:09 -0000
From:   Rob Herring <robh@kernel.org>
To:     =?utf-8?q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>
Cc:     dri-devel@lists.freedesktop.org, thierry.reding@gmail.com,
        dave.stevenson@raspberrypi.com, maxime@cerno.tech,
        robh+dt@kernel.org, sam@ravnborg.org, david@lechnology.com,
        devicetree@vger.kernel.org
In-Reply-To: <20220218151110.11316-2-noralf@tronnes.org>
References: <20220218151110.11316-1-noralf@tronnes.org> <20220218151110.11316-2-noralf@tronnes.org>
Subject: Re: [PATCH v4 1/3] dt-bindings: display: add bindings for MIPI DBI compatible SPI panels
Date:   Sun, 20 Feb 2022 20:36:09 -0600
Message-Id: <1645410969.355343.2041540.nullmailer@robh.at.kernel.org>
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,PP_MIME_FAKE_ASCII_TEXT,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 18 Feb 2022 16:11:08 +0100, Noralf Trønnes wrote:
> Add binding for MIPI DBI compatible SPI panels.
> 
> v4:
> - There should only be two compatible (Maxime)
> - s/panel-dbi-spi/panel-mipi-dbi-spi/in compatible
> 
> v3:
> - Move properties to Device Tree (Maxime)
> - Use contains for compatible (Maxime)
> - Add backlight property to example
> - Flesh out description
> 
> v2:
> - Fix path for panel-common.yaml
> - Use unevaluatedProperties
> - Drop properties which are in the allOf section
> - Drop model property (Rob)
> 
> Acked-by: Maxime Ripard <maxime@cerno.tech>
> Signed-off-by: Noralf Trønnes <noralf@tronnes.org>
> ---
>  .../display/panel/panel-mipi-dbi-spi.yaml     | 125 ++++++++++++++++++
>  1 file changed, 125 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.example.dt.yaml:0:0: /example-0/spi/display@0: failed to match any schema with compatible: ['sainsmart18', 'panel-mipi-dbi-spi']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1594817

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

