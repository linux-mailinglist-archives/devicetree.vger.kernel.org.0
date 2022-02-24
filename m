Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 73C6C4C33F1
	for <lists+devicetree@lfdr.de>; Thu, 24 Feb 2022 18:44:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229594AbiBXRoq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Feb 2022 12:44:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232270AbiBXRop (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Feb 2022 12:44:45 -0500
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 793C627AFD3
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 09:44:15 -0800 (PST)
Received: by mail-oi1-f179.google.com with SMTP id q5so3754183oij.6
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 09:44:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=sYEc3J8zhC4BTua/moVP8jL+dOHmRDJ9+6cNZnEjbMo=;
        b=smfrL+T4e79AJXG0h9ognT3bHtmdPRt1kU9+h2eqaM+PdEeoL3GPJ/9dQ0ihAQ0fmG
         J3XDntggzicHZOfZuV1zYL333V6A4+WjhVGh0OjUsn/uLbp8YvIpGVU6dWT3gJPQKfgg
         JcWQD+IcluV3Kq68pm56PPY20L5kDXF1W2Ok2J6UDitNmmi0/mfHTDxernb0BEupVvZV
         GE8Ugf7R2QgT+z2wOThMtnCPbdStpEZk+wSxwGq/cPDQZeoWhR33ZmcpwA3oDG6Z8lg4
         UmyFWAXSFuGNl1cjw11kdrldIzfCL9fxxSFhZgLmW+WIWkA4nR8t+3wP8gsahhmA5YAS
         oKNQ==
X-Gm-Message-State: AOAM532wHRJS9goVcMQjw+Q4qNt+QGSo9ZjJ25C6Xctf59hMSH5fCKnj
        jB9FORtVjnX/K6jAkhC2MkzWZtQyvA==
X-Google-Smtp-Source: ABdhPJzQ5DKFRUfqSFUZ7AFRBvDPVyRCvdQMDJU/tWT4VSDwr6TxKmwQR3Bsq6G4d4TmAUfM5gmQJw==
X-Received: by 2002:a05:6808:1495:b0:2d5:1cf2:4379 with SMTP id e21-20020a056808149500b002d51cf24379mr1963315oiw.230.1645724654741;
        Thu, 24 Feb 2022 09:44:14 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id p16-20020a05680811d000b002d72ec3a921sm30847oiv.21.2022.02.24.09.44.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Feb 2022 09:44:13 -0800 (PST)
Received: (nullmailer pid 3297706 invoked by uid 1000);
        Thu, 24 Feb 2022 17:44:13 -0000
From:   Rob Herring <robh@kernel.org>
To:     =?utf-8?q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>
Cc:     dave.stevenson@raspberrypi.com, david@lechnology.com,
        dri-devel@lists.freedesktop.org, maxime@cerno.tech,
        sam@ravnborg.org, devicetree@vger.kernel.org,
        thierry.reding@gmail.com, robh+dt@kernel.org
In-Reply-To: <20220224152708.14459-2-noralf@tronnes.org>
References: <20220224152708.14459-1-noralf@tronnes.org> <20220224152708.14459-2-noralf@tronnes.org>
Subject: Re: [PATCH v5 1/5] dt-bindings: display: add bindings for MIPI DBI compatible SPI panels
Date:   Thu, 24 Feb 2022 11:44:13 -0600
Message-Id: <1645724653.137826.3297705.nullmailer@robh.at.kernel.org>
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

On Thu, 24 Feb 2022 16:27:04 +0100, Noralf Trønnes wrote:
> Add binding for MIPI DBI compatible SPI panels.
> 
> v5:
> - Add sainsmart18 to compatible items (Rob)
> - Expand write-only description (Sam)
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
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
> Signed-off-by: Noralf Trønnes <noralf@tronnes.org>
> ---
>  .../display/panel/panel-mipi-dbi-spi.yaml     | 127 ++++++++++++++++++
>  1 file changed, 127 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml:68:9: [warning] wrong indentation: expected 10 but found 8 (indentation)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1597203

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

