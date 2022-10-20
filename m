Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 561F46062E7
	for <lists+devicetree@lfdr.de>; Thu, 20 Oct 2022 16:24:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229730AbiJTOYx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Oct 2022 10:24:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229840AbiJTOYw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Oct 2022 10:24:52 -0400
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F9AB5D732
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 07:24:51 -0700 (PDT)
Received: by mail-oi1-f169.google.com with SMTP id p127so22370298oih.9
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 07:24:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=//M4ydro8w/uPK+zMzxNa+jnVigH+tv4xyo6f9ExHjU=;
        b=Y6zjs0C56D/fleH5lvwDrafkP5gW+K8+MOjSw2qHcqqhqCBDtyuTVlIZUCgvJm7Jkc
         9cD5ccMsC61ShaER2+pFMRGyt7fUIRAKGK/AT2xIC04QHEKCUnxeObmmcZtoS7WXV9hT
         IF3/z/muQKeb8QQXH80umfk443FkDewVL/vCvdvvwsdBsvHPxjRzYV3vznepjHCDUih1
         fXWYRaEGUQ8gNaiVYj7lOoUt0vKhY8KOEG9fjRQS+99kxpNQa9zqMLRLOp9nZzM02DtF
         sgkSZ2D0vpwja2wIOARKwL75JVd7X+V993lNg4W+dWGwUdKPnzM/nWV/YGbLeUztWXD9
         UR+w==
X-Gm-Message-State: ACrzQf3RSNJ5FwDkEGB4quVyu8mOcRRZK+LRgW/cvn16q7hNaECSjXQO
        1OB/07y6PkGrhjhgdse7FYUMqDK17Q==
X-Google-Smtp-Source: AMsMyM44y4ul850o3uaIKSSDKlUZazhcSJb8mmpcj5UOiZ6OD/iL53lVwvJcnVB/QEDGPI0sPh+leQ==
X-Received: by 2002:a05:6808:2393:b0:355:39af:eb6e with SMTP id bp19-20020a056808239300b0035539afeb6emr10689812oib.40.1666275890310;
        Thu, 20 Oct 2022 07:24:50 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id bk15-20020a0568081a0f00b003546cb60859sm7928935oib.14.2022.10.20.07.24.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Oct 2022 07:24:49 -0700 (PDT)
Received: (nullmailer pid 1265955 invoked by uid 1000);
        Thu, 20 Oct 2022 14:24:51 -0000
Date:   Thu, 20 Oct 2022 09:24:51 -0500
From:   Rob Herring <robh@kernel.org>
To:     Matt Ranostay <mranostay@ti.com>
Cc:     nm@ti.com, vigneshr@ti.com, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: mfd: ti,j721e-system-controller: add
 compatible strings for other platforms
Message-ID: <20221020142451.GA1264860-robh@kernel.org>
References: <20221020032802.308545-1-mranostay@ti.com>
 <20221020032802.308545-2-mranostay@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221020032802.308545-2-mranostay@ti.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 19, 2022 at 08:28:01PM -0700, Matt Ranostay wrote:
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

Use get_maintainers.pl if you want this applied (by Lee).
