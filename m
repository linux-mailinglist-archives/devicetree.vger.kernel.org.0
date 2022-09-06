Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4EC365AF716
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 23:41:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229853AbiIFVlE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 17:41:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229801AbiIFVlD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 17:41:03 -0400
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2AC8B8670C
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 14:41:02 -0700 (PDT)
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-1274ec87ad5so16592771fac.0
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 14:41:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=message-id:date:subject:references:in-reply-to:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date;
        bh=VhCmxVW3/wc19U1W+hLsKl0upxjzzE6C+mdsRbM8VCw=;
        b=O7gV8fULhjhHY/qAT16dqwJ+V46RHFn83WtLXdpdmOLqd9epJgaOq+dOoEJYP81X4/
         jiu9Mc4S1RrbazrGFmlqKFrMnB54wlpFqCyyGn8izBWqGCosKtYzx95hJAyhKrXN2oR3
         zwswnuDqWLWzfGbk4X61aDNITMLqoef9sddcARPcvvgA1mPzs0GxbJdvBrG7cyYKGf/g
         FeAB3d4fKSQNjkDqmOuMir0Fu6u2mqIBxIEfhPM4pM2YegEKO4qxRS/rji7IJ1H4QHRE
         ZG3dm/jyL5+G875Att9MB04zFbfxbP93sKlUl0b0bkQ3k8eYs0Uq0jpkb5I2VyVh2MOZ
         3Zsw==
X-Gm-Message-State: ACgBeo2KE95mdGqH9L89Nz3rwRqQwaPzrS+KrMiQ+WtJhHPI9nr6XACp
        cldl+1qO6Gle0250SHyFmA==
X-Google-Smtp-Source: AA6agR521JIOwffhQd3c1csnxBC/264dXCNHrG2kIzcBbeypfKtPCujvZyyo62ASPogB/Ahd6ZypGA==
X-Received: by 2002:a05:6870:f105:b0:127:f289:cd27 with SMTP id k5-20020a056870f10500b00127f289cd27mr154611oac.195.1662500461340;
        Tue, 06 Sep 2022 14:41:01 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id x8-20020a056808144800b0033b15465357sm5842343oiv.5.2022.09.06.14.41.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 14:41:00 -0700 (PDT)
Received: (nullmailer pid 1224956 invoked by uid 1000);
        Tue, 06 Sep 2022 21:41:00 -0000
From:   Rob Herring <robh@kernel.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     devicetree@vger.kernel.org, Chris Morgan <macromorgan@hotmail.com>,
        dri-devel@lists.freedesktop.org, robh+dt@kernel.org,
        sam@ravnborg.org, krzysztof.kozlowski+dt@linaro.org,
        airlied@linux.ie, thierry.reding@gmail.com
In-Reply-To: <20220906183642.12505-2-macroalpha82@gmail.com>
References: <20220906183642.12505-1-macroalpha82@gmail.com> <20220906183642.12505-2-macroalpha82@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: display: panel: Add Samsung AMS495QA01 panel bindings
Date:   Tue, 06 Sep 2022 16:41:00 -0500
Message-Id: <1662500460.105772.1224955.nullmailer@robh.at.kernel.org>
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

On Tue, 06 Sep 2022 13:36:41 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add documentation for the Samsung AMS495QA01 panel.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../display/panel/samsung,ams495qa01.yaml     | 49 +++++++++++++++++++
>  1 file changed, 49 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.example.dtb: panel@0: 'backlight' does not match any of the regexes: 'pinctrl-[0-9]+'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

