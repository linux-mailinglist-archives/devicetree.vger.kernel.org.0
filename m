Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 61CFB4B714D
	for <lists+devicetree@lfdr.de>; Tue, 15 Feb 2022 17:40:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239669AbiBOPXC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Feb 2022 10:23:02 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:60034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239713AbiBOPXB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Feb 2022 10:23:01 -0500
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com [209.85.166.51])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B1E28A6DF
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 07:22:49 -0800 (PST)
Received: by mail-io1-f51.google.com with SMTP id d188so24216231iof.7
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 07:22:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=XhzAWVt3fjQKRJz9q7eT7XZzXXhJRSw+HdG8hBMs3vw=;
        b=k/q0NYhfASzp00p39jCSDpKKviq60AOZpVzQRgvt1VhdyIHAJ4lEdJnJEY4IBQq5CD
         Er5qMki1NJkmTrGghAGxAql+UwYypW15dSkC2ppM85FO9+MUqdKyd/+4oeg9aBQQuiPs
         rlxJAi1Cj/s6Id2dXGjl9XEHybX3VOmoP1UGu9qXw5hgZeYFSW8MKSnJ2CTplS1wWk+d
         lN+WN6YdMnnnXkA/Qr/wmZMs3qRz7IdaJYoNUg3sg03By4Z7RtZslPhVYm8vmMzau9iM
         WbmYCtP2kUehbVICRjaw8/V3/KiOwYQBQAxwyKjCthyT+bUnbhNOrIKafrSws+EEQ4+a
         XZAA==
X-Gm-Message-State: AOAM532sSQ/KqVyXKdCHUwq67WmcFR7kgENha9DzjmXBsUe1BJD8FQEH
        bRGC85EklUwn6fP98lnyrg==
X-Google-Smtp-Source: ABdhPJy9JFtwUbiq7T/ZLKKZHSXtiaR2kjV/Np9yM3ec7E+Tf5Z817N+bGtrTY1u3170v2yAn8/MMg==
X-Received: by 2002:a05:6638:2493:: with SMTP id x19mr3018228jat.219.1644938568584;
        Tue, 15 Feb 2022 07:22:48 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id v16sm19583530ilm.25.2022.02.15.07.22.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Feb 2022 07:22:47 -0800 (PST)
Received: (nullmailer pid 3450855 invoked by uid 1000);
        Tue, 15 Feb 2022 15:22:45 -0000
From:   Rob Herring <robh@kernel.org>
To:     alyssa.rosenzweig@collabora.com
Cc:     steven.price@arm.com, dri-devel@lists.freedesktop.org,
        tomeu.vizoso@collabora.com, daniel@ffwll.ch,
        devicetree@vger.kernel.org, airlied@linux.ie
In-Reply-To: <20220211202728.6146-2-alyssa.rosenzweig@collabora.com>
References: <20220211202728.6146-1-alyssa.rosenzweig@collabora.com> <20220211202728.6146-2-alyssa.rosenzweig@collabora.com>
Subject: Re: [PATCH 1/9] dt-bindings: Add arm,mali-valhall compatible
Date:   Tue, 15 Feb 2022 09:22:45 -0600
Message-Id: <1644938565.038499.3450854.nullmailer@robh.at.kernel.org>
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

On Fri, 11 Feb 2022 15:27:20 -0500, alyssa.rosenzweig@collabora.com wrote:
> From: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
> 
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.example.dt.yaml: gpu@ffe40000: compatible: ['amlogic,meson-g12a-mali', 'arm,mali-bifrost'] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1591823

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

