Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3450760D76F
	for <lists+devicetree@lfdr.de>; Wed, 26 Oct 2022 00:56:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229632AbiJYW4B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Oct 2022 18:56:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229904AbiJYWz6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Oct 2022 18:55:58 -0400
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3506C4DAE
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 15:55:57 -0700 (PDT)
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-13ba9a4430cso9066199fac.11
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 15:55:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4C7LTKHDK9zUIDDlEfYhXzXun4tW9tRvGgTq08OpovQ=;
        b=zUuD0jJMvyVHxaxLqIo75udDVyeOPKXpY1D0CbPK5kDAvIzsxfpAYz7Y8R7nJteu0U
         2vrhZH85rM0GWbKs9dZWyMi9jtQWSoVHVw8ILr+xyIojcRX1+nGEr+ejFdeBr/5Qacr/
         pPE5NxjKCES3lNb6aQN8xpsfTjdA/vMWczQwo01oJTuwZh9C6B+4jejdOUjwIIBN1Rci
         XlUCXJDYpE1gcDR6feQlQGK3LDy1+l1U/vah6OUzpSjSF3PZk839fzPeIJQgbBD24eoF
         H8sTFiRZWrdsT1xk4rNok6yg5NzzF4MyTC9NRFLGtxbOpdKBr2wkybEEkmgr3wZRRqBY
         YZgQ==
X-Gm-Message-State: ACrzQf3bQLjrrhGDoYE2mXBh0NnHFupTIbjrfQtTrJL06myiy9JWa227
        6vxU2a+LOQ+qzSvcndguqHriazqMcg==
X-Google-Smtp-Source: AMsMyM5soVdX8hdKQQRtENulRW5Awzjgp1M3f57Jq7qh8CoBbjAbMvsyz6+RLDvcXwYJgjy7dCkSeg==
X-Received: by 2002:a05:6870:6025:b0:137:5344:7082 with SMTP id t37-20020a056870602500b0013753447082mr356152oaa.279.1666738557105;
        Tue, 25 Oct 2022 15:55:57 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id i3-20020a9d53c3000000b00660e833baddsm1570336oth.29.2022.10.25.15.55.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Oct 2022 15:55:56 -0700 (PDT)
Received: (nullmailer pid 3415935 invoked by uid 1000);
        Tue, 25 Oct 2022 22:55:58 -0000
Date:   Tue, 25 Oct 2022 17:55:58 -0500
From:   Rob Herring <robh@kernel.org>
To:     Matt Ranostay <mranostay@ti.com>
Cc:     devicetree@vger.kernel.org, robh+dt@kernel.org, vigneshr@ti.com,
        lee@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org, nm@ti.com
Subject: Re: [PATCH RESEND v2 1/2] dt-bindings: mfd:
 ti,j721e-system-controller: add compatible strings for other platforms
Message-ID: <166673855757.3415890.5918040355070954653.robh@kernel.org>
References: <20221024035405.366208-1-mranostay@ti.com>
 <20221024035405.366208-2-mranostay@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221024035405.366208-2-mranostay@ti.com>
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

On Sun, 23 Oct 2022 20:54:04 -0700, Matt Ranostay wrote:
> There are multiple J7 based platforms, and the j721e-system-controller
> shouldn't be define in non-j721e devices device trees.
> 
> This is mainly for clarity; but also useful in case there are future
> erratas that need to be fixed for a specific platform.
> 
> Signed-off-by: Matt Ranostay <mranostay@ti.com>
> ---
>  .../devicetree/bindings/mfd/ti,j721e-system-controller.yaml     | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
