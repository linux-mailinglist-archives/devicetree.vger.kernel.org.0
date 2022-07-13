Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE91757393A
	for <lists+devicetree@lfdr.de>; Wed, 13 Jul 2022 16:51:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234652AbiGMOvh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jul 2022 10:51:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236587AbiGMOvf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jul 2022 10:51:35 -0400
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com [209.85.166.176])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E95003C8C9
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 07:51:32 -0700 (PDT)
Received: by mail-il1-f176.google.com with SMTP id b12so6824755ilh.4
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 07:51:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=cbWdiZoh5wzyuIDkAn23C3lc8R+dDJHxrU38In/KSpg=;
        b=0Tw9HDhDCSVacz32lIkVUa6QA5HqxB6G/QzPwaXP7BFlvBcoI1hV/eW2jZ2VzMl2c+
         7N8iU1lL1bi8SPh6kc0mqiuZrpAvJDSogVcTWA8rsyA1NTYVrbwa+XRHzsJ5XQcxPirg
         779/bwvWCrI7kE0B0iQ13qJtfqMIuVvqaYy6vygmnXNUFRCwXmxbA7uQv74iAfmZ9Idp
         LOpvt84KKpINPm6YHVMybTs5SnAno5Ihi0L12Izgp8z+AmY+4foYtqD2mTEFROKdnS3c
         vdxONqbQqNZ9g20JjfcJ5iyazb5cN/yg2kib5ZQzufr8CZpFy31YzZoX86eUbiS+lwA9
         WKnQ==
X-Gm-Message-State: AJIora+VID6Wd5R3Dnb2Y9fH3uZLg+NvYTk/blLiFpW9CkdUmgw3odJM
        r/cNi43XzwQ0rZD3Gu3bXw==
X-Google-Smtp-Source: AGRyM1vlqSyqn/DNiLH0sEZqhnwl+nomOxIJLs8Dxya4Zqtw2DMih3DWzYvv0ZGf6BRBeofDYeIzjg==
X-Received: by 2002:a92:b00f:0:b0:2d6:5628:6865 with SMTP id x15-20020a92b00f000000b002d656286865mr1976996ilh.230.1657723892195;
        Wed, 13 Jul 2022 07:51:32 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id u3-20020a05663825c300b00339dfb793aesm5395787jat.86.2022.07.13.07.51.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jul 2022 07:51:31 -0700 (PDT)
Received: (nullmailer pid 3941026 invoked by uid 1000);
        Wed, 13 Jul 2022 14:51:30 -0000
Date:   Wed, 13 Jul 2022 08:51:30 -0600
From:   Rob Herring <robh@kernel.org>
To:     Raphael-Xu <13691752556@139.com>
Cc:     alsa-devel@alsa-project.org, raphael-xu@ti.com,
        shenghao-ding@ti.com, navada@ti.com, asyrus@ti.com,
        broonie@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v5] update tas2780.yaml
Message-ID: <20220713145130.GA3909157-robh@kernel.org>
References: <20220712050857.267-1-13691752556@139.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220712050857.267-1-13691752556@139.com>
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

On Tue, Jul 12, 2022 at 01:08:57PM +0800, Raphael-Xu wrote:
> 1.remove unused item in DT 2.revise the format

Again, fix your subject. Run 'git log --oneline 
Documentation/devicetree/bindings/sound/' for inspiration of the format 
of the subject.

However, there's a bigger issue here. We already have a binding for this 
device. It's in tas27xx.yaml. And you added 2780 to it, so why did you 
add another schema? (All the same issues in that patch too. wrong 
subject, broken schema. So you haven't learned.)

And then there is also tas2770.yaml which appears to be about the same 
as well.

> 
> Signed-off-by: Raphael-Xu <13691752556@139.com>
> ---
>  .../devicetree/bindings/sound/tas2780.yaml    | 19 +++++++++++--------
>  1 file changed, 11 insertions(+), 8 deletions(-)
