Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E738563FC1A
	for <lists+devicetree@lfdr.de>; Fri,  2 Dec 2022 00:34:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231556AbiLAXew (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Dec 2022 18:34:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231484AbiLAXev (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Dec 2022 18:34:51 -0500
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C3CAB4C
        for <devicetree@vger.kernel.org>; Thu,  1 Dec 2022 15:34:50 -0800 (PST)
Received: by mail-oi1-f171.google.com with SMTP id c129so3793045oia.0
        for <devicetree@vger.kernel.org>; Thu, 01 Dec 2022 15:34:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AHPzwPPmVpEqjanwr4jgFBm+n/uWlEBRqCWBwP5Ob4o=;
        b=fUxNmtOzpwqq9BFhzDGn8WWpABAx40qy8J0BUd5jUGjCDwsn2hCR/rRpwgcKlvM4QN
         /jr/toFdsnFQPGBlKyMzO/aZYRnb9IHZGB7PGQl7aVC5b7Zx/NtoTH1WfNJP40cPxXhH
         Du51DsLhYTfG+YvYAzMEzv49IBQFJmg49WMY403jwmUMOIKx5DzLS6AGDK8oEPWVmG0z
         GsOam/qh/E8UZxzWJwFixUQX7oKJSlzB/O/gF8cevPxPF+m7y8SUJgZBLXN1RrFboS+b
         s1a0v8G2y65RHKuCjAPHSwZWB57OR3onernPUBzDfbAxtMBQpzCxqivkfkfdvuU+zklT
         BoRQ==
X-Gm-Message-State: ANoB5plLQ9BfXJ074PxL5qZEPv37SEICynfkeOSMLeCpxKJFWjsV6HKA
        iLHDKvJYhispmu2l5Gkgvg==
X-Google-Smtp-Source: AA0mqf6lSjgPUF0IN9rm8Ml0Vg8feDJ4KS/+1+Grxk2A70CmEtbn+Bvn667l56WuIeDPVHWrTy/A5w==
X-Received: by 2002:a05:6808:3a8:b0:354:7a3c:6984 with SMTP id n8-20020a05680803a800b003547a3c6984mr22728704oie.269.1669937689212;
        Thu, 01 Dec 2022 15:34:49 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id f9-20020a4ace89000000b0049fd6bfde95sm2308409oos.26.2022.12.01.15.34.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 15:34:48 -0800 (PST)
Received: (nullmailer pid 1688407 invoked by uid 1000);
        Thu, 01 Dec 2022 23:34:48 -0000
Date:   Thu, 1 Dec 2022 17:34:48 -0600
From:   Rob Herring <robh@kernel.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     devicetree@vger.kernel.org, daniel@ffwll.ch,
        linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
        robh+dt@kernel.org, thierry.reding@gmail.com,
        linus.walleij@linaro.org, heiko@sntech.de, sam@ravnborg.org,
        Chris Morgan <macromorgan@hotmail.com>,
        krzysztof.kozlowski+dt@linaro.org, airlied@gmail.com,
        dri-devel@lists.freedesktop.org
Subject: Re: [PATCH V4 1/3] dt-bindings: display: panel: Add Samsung
 AMS495QA01
Message-ID: <166993768688.1688353.12388291303431485909.robh@kernel.org>
References: <20221129172912.9576-1-macroalpha82@gmail.com>
 <20221129172912.9576-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221129172912.9576-2-macroalpha82@gmail.com>
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Tue, 29 Nov 2022 11:29:10 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add documentation for the Samsung AMS495QA01 panel.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> ---
>  .../display/panel/samsung,ams495qa01.yaml     | 57 +++++++++++++++++++
>  1 file changed, 57 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
