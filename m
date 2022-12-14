Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1457D64D182
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 21:54:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229471AbiLNUyx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 15:54:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229454AbiLNUyw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 15:54:52 -0500
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0E9E2CCB1
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 12:54:51 -0800 (PST)
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-144b21f5e5fso18288578fac.12
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 12:54:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2NWVhPDt3bai2CmCTzNVlqJ9+3C7mStCncIpR+of0G8=;
        b=UGGC4EHYN5A8eX2yQnSEKY9T4uinHAU7uuemgExGFfl79AsR0yBFeSSulRb51vkV5v
         e/FFsVjd3LRxmwxpihUiw8+MweSHrkSTcYuMNyV5emslRfuKo5bvr/TMK6qcgsFVVMvp
         ypHTj/AT8s0vUcMmY3MUqDBkaDYbBBsVLUwcO2SM8my+t3fQ+sYsab6JLhAERLm53zM/
         LZpWjA2PZtPZbYBQszXeOdklWPatdrEdbt4P3NKbHwpctBFxH+74g+Q9bQcz8d5h2sO8
         spZ1vzEILq+uNViybACJqb52w9ETKGbZ34hQhN6vnBOTufmZBz9Bz9sbhx53EUG1Zrsz
         ej3A==
X-Gm-Message-State: ANoB5pk+Tlf1Y2hm4mJls4sONHjQ4Y6qQCkYcNNRzPP/XQicUxqXstKf
        +H0s4TNA6RnuT4/EbjgQuA==
X-Google-Smtp-Source: AA0mqf4tDoGYZCN+ccDysRLD3rxonTZcmw6zo03rWSYki/xa4tp1hflwJOpjopgwXo67XHaQM79yGQ==
X-Received: by 2002:a05:6870:4510:b0:148:3341:5249 with SMTP id e16-20020a056870451000b0014833415249mr7875953oao.22.1671051290977;
        Wed, 14 Dec 2022 12:54:50 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id r19-20020a056870439300b0014474019e50sm3175153oah.24.2022.12.14.12.54.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Dec 2022 12:54:50 -0800 (PST)
Received: (nullmailer pid 1614653 invoked by uid 1000);
        Wed, 14 Dec 2022 20:54:49 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
MIME-Version: 1.0
From:   Rob Herring <robh@kernel.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     Chris Morgan <macromorgan@hotmail.com>,
        dri-devel@lists.freedesktop.org,
        Maya Matuszczyk <maccraft123mc@gmail.com>, sam@ravnborg.org,
        airlied@gmail.com, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, daniel@ffwll.ch,
        linus.walleij@linaro.org, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, thierry.reding@gmail.com, tzimmermann@suse.de,
        robh+dt@kernel.org, heiko@sntech.de
In-Reply-To: <20221214180611.109651-3-macroalpha82@gmail.com>
References: <20221214180611.109651-1-macroalpha82@gmail.com>
 <20221214180611.109651-3-macroalpha82@gmail.com>
Message-Id: <167105119449.1612334.7860196704750907551.robh@kernel.org>
Subject: Re: [PATCH V5 2/4] dt-bindings: display: panel: Add Magnachip D53E6EA8966
Date:   Wed, 14 Dec 2022 14:54:49 -0600
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Wed, 14 Dec 2022 12:06:09 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add documentation for Magnachip D53E6EA8966 based panels such as the
> Samsung AMS495QA01 panel.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> ---
>  .../display/panel/magnachip,d53e6ea8966.yaml  | 62 +++++++++++++++++++
>  1 file changed, 62 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/magnachip,d53e6ea8966.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
./Documentation/devicetree/bindings/display/panel/magnachip,d53e6ea8966.yaml: $id: relative path/filename doesn't match actual path or filename
	expected: http://devicetree.org/schemas/display/panel/magnachip,d53e6ea8966.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20221214180611.109651-3-macroalpha82@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.

