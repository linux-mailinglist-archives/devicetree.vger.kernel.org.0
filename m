Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1CBDF64EE87
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 17:07:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232050AbiLPQHm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 11:07:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232675AbiLPQHB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 11:07:01 -0500
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EA1E1ADAB
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 08:05:33 -0800 (PST)
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-1441d7d40c6so3779271fac.8
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 08:05:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eOSCsqaoeoIju0eLDf3WqxL6Do53Bv9D82WTM/iySek=;
        b=ZQQlTkL6tFKajimY+rOJAg5dVxwqi38bu8Fu7tFYPNcPvJ2Dd7fcKCztBXvQDdDCYk
         fRMZqUeHDrR/Pb1nin30hxHFPp7/AbpSFuArMJEuxAVuX1UqwBi27UlSA9GR4djEPk3V
         Jirp5VdFk5Ahvz0fHxY4PRJ1yfqccoHQTxvF7usD5aTFDb5pAsHQP1bFHj4wB48Ua3L6
         ci4SgIaZthTa8ad82zePKnGet1ZiGD7DOfrae+1JZIaVDgFoG53GwA1KOo0K+zfCwj0x
         OiYzy+klYxYH9AXuHaKpshdWsxGUd/q+N99GHmrMDn+J5tfXlqnXKsA0NB9fWYAegFLi
         gmag==
X-Gm-Message-State: ANoB5plVF52C1FBUY8BYfOITmmNvvT36RlAAtvH3RcXdOCqF1RO/a+VN
        rOOLYMaSfRlCOp3ctJyNgg==
X-Google-Smtp-Source: AA0mqf6fQAQQ0eOGxAWHGt+fS4XPjjQEzyVhHbTXOdayWO2k0T+9QkpLSd0OFY+e0tZDdpj0DZznqg==
X-Received: by 2002:a05:6870:f29b:b0:143:d9f7:8127 with SMTP id u27-20020a056870f29b00b00143d9f78127mr16644708oap.42.1671206732605;
        Fri, 16 Dec 2022 08:05:32 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id z21-20020a056870e31500b00148316f78fesm1124816oad.2.2022.12.16.08.05.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Dec 2022 08:05:31 -0800 (PST)
Received: (nullmailer pid 2826511 invoked by uid 1000);
        Fri, 16 Dec 2022 16:05:30 -0000
Date:   Fri, 16 Dec 2022 10:05:30 -0600
From:   Rob Herring <robh@kernel.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     Chris Morgan <macromorgan@hotmail.com>, maccraft123mc@gmail.com,
        heiko@sntech.de, daniel@ffwll.ch, sam@ravnborg.org,
        maarten.lankhorst@linux.intel.com, dri-devel@lists.freedesktop.org,
        airlied@gmail.com, robh+dt@kernel.org, linus.walleij@linaro.org,
        krzysztof.kozlowski+dt@linaro.org, mripard@kernel.org,
        thierry.reding@gmail.com, tzimmermann@suse.de,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH V6 2/4] dt-bindings: display: panel: Add Samsung
 AMS495QA01
Message-ID: <167120672298.2826350.15042409228492859514.robh@kernel.org>
References: <20221215185211.1560736-1-macroalpha82@gmail.com>
 <20221215185211.1560736-3-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221215185211.1560736-3-macroalpha82@gmail.com>
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


On Thu, 15 Dec 2022 12:52:09 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add documentation for Samsung AMS495QA01 panel (with Magnachip
> D53E6EA8966 controller IC).
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> ---
>  .../display/panel/samsung,ams495qa01.yaml     | 57 +++++++++++++++++++
>  1 file changed, 57 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
