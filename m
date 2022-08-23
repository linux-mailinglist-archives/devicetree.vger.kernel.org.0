Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 95C0659E9FC
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 19:46:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230135AbiHWRqO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 13:46:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233719AbiHWRpw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 13:45:52 -0400
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 210B6870B9
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 08:41:50 -0700 (PDT)
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-11c9af8dd3eso16888891fac.10
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 08:41:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=+UiTttJdSUQrpTKS9JZBGLc4xuV1vT4rWngBuSqCMUA=;
        b=lNdX7asbSGC/glXO3BXmJD6t50zjZgjnc2jM/fWTofrgSv8fakuUEMwwA25BZC4RUn
         XNxzoPvuVyf5/2QHQXEL+qWw2lFT+3eDtfhMuisg4nNl8FES52RaxO4ABQYqM7QL3tyv
         Krjg65OFtK2qMaa3EVWooIQ8WL3poTvN9lTH3IcUPx1L/R9w8sz46fPBbgxK08MLYG0J
         4DsFyJ+5AqSLfmM8quOuTs0LjbJNPFab1memO3RhYYZ0wl7zmVdvyevzI30ZMedZq0WK
         vJhFrw46FlvLpHZxQUp7O/a0Wmpwny9wHAy8yblgnDVENt5orSJa6jPSWbx6ZcRj99wk
         baPw==
X-Gm-Message-State: ACgBeo3GtVYxXOHtDu57BG7bT4v3w7aO2c1jN5Y+e+cwM+irSRrnYmaX
        KjLE3E7bKytnu4eS68ESDg==
X-Google-Smtp-Source: AA6agR5mYKS7XtVQZe8sFeyCEcyRF+iUYJM+bgIcB3gXsnvoKso0YuEq3NELj/5YREiZzLzAgBd/qg==
X-Received: by 2002:a05:6870:c596:b0:101:6409:ae62 with SMTP id ba22-20020a056870c59600b001016409ae62mr1678713oab.112.1661269309377;
        Tue, 23 Aug 2022 08:41:49 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id z24-20020a9d65d8000000b00638e49d4cadsm3824347oth.36.2022.08.23.08.41.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Aug 2022 08:41:49 -0700 (PDT)
Received: (nullmailer pid 3261416 invoked by uid 1000);
        Tue, 23 Aug 2022 15:41:48 -0000
Date:   Tue, 23 Aug 2022 10:41:48 -0500
From:   Rob Herring <robh@kernel.org>
To:     Jean-Philippe Brucker <jean-philippe@linaro.org>
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, maz@kernel.org
Subject: Re: [PATCH 3/3] dt-bindings: interrupt-controller: arm,gic: Support
 two address and size cells
Message-ID: <20220823154148.GA3261330-robh@kernel.org>
References: <20220822152224.507497-1-jean-philippe@linaro.org>
 <20220822152224.507497-4-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220822152224.507497-4-jean-philippe@linaro.org>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 22 Aug 2022 16:22:24 +0100, Jean-Philippe Brucker wrote:
> It should be valid for a GICv2m node, child of a GICv2 node, to use two
> cells per reg address and size. The QEMU virt device-tree currently
> fails validation because the schema imposes a single address and size
> cell. Amend the rule.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>  .../devicetree/bindings/interrupt-controller/arm,gic.yaml     | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Applied, thanks!
