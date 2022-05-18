Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6214152B00A
	for <lists+devicetree@lfdr.de>; Wed, 18 May 2022 03:43:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233756AbiERBnq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 May 2022 21:43:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233725AbiERBnp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 May 2022 21:43:45 -0400
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDB7A51E47
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 18:43:44 -0700 (PDT)
Received: by mail-oi1-f175.google.com with SMTP id e189so1029675oia.8
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 18:43:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=zremh6+sbC70MEPO/FHJmSVu9pbp2DGBm1xGg+NXpdo=;
        b=oSzSr8DS7lmOZm8hUY3vKojx7RfTpCDWwBq+oiufJ0BrpL8tWI84zcRPzbX00xXniz
         Adt/ao0qS8s7IgQzMgfSybPR9FQDlLh/Vd0iVr86g/cGw/lnPIuDRQoU4Mz4d8ZZFetp
         uIgkE8aYZG1S9C4sZ74iIcwfuqEqELUOSmP0qH5LZF6oFG41liI3jSL47tbKRtSPeUvB
         4ksqqNFYFHn/6gMgxmUgb8X8UMl31veYHNF1lnUjZiHv/kuXrZP0ValIsXCuGnM5e5Sb
         8ChnQaYXT9S+Zcr8SOXC4j/u1bjjd+7LyYIDHGOp3Q5IwLnXmoPdnqYGqOZlhtLmzi6V
         ZtUQ==
X-Gm-Message-State: AOAM531ZhvuCs2Ap8HPxY64fG5IRHs9VfKOLPRjDwNT69oVYAwqmKlx5
        aFREy6Dz0QK+bUY4FGdQhA==
X-Google-Smtp-Source: ABdhPJzwO6psTGKQ7Sl9Z173oChxeu85bKOlhpwXCLG8Ds1qYEWg1nWAXfunznfrwZrO3QNxiqeXGQ==
X-Received: by 2002:a05:6808:a11:b0:325:e5c1:5912 with SMTP id n17-20020a0568080a1100b00325e5c15912mr12617097oij.204.1652838224179;
        Tue, 17 May 2022 18:43:44 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id 53-20020a9d0eb8000000b006060322127fsm342277otj.79.2022.05.17.18.43.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 May 2022 18:43:43 -0700 (PDT)
Received: (nullmailer pid 2047355 invoked by uid 1000);
        Wed, 18 May 2022 01:43:42 -0000
Date:   Tue, 17 May 2022 20:43:42 -0500
From:   Rob Herring <robh@kernel.org>
To:     Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
Cc:     jassisinghbrar@gmail.com, git@xilinx.com, robh+dt@kernel.org,
        devicetree@vger.kernel.org, michal.simek@xilinx.com
Subject: Re: [PATCH v5] dt-bindings: mailbox: zynqmp_ipi: convert to yaml
Message-ID: <20220518014342.GA2047296-robh@kernel.org>
References: <20220517165536.8637-1-shubhrajyoti.datta@xilinx.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220517165536.8637-1-shubhrajyoti.datta@xilinx.com>
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

On Tue, 17 May 2022 22:25:36 +0530, Shubhrajyoti Datta wrote:
> Convert the ipi doc to yaml.
> 
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> ---
> v2:
>  Fix the warnings reported by Rob
> v3:
>  Run dtbs_check
> v4:
>  fix the formatting
> v5:
> fix alignment
> fix quotes
> double space errors
> remove consumer example
> 
>  .../mailbox/xlnx,zynqmp-ipi-mailbox.txt       | 127 ----------------
>  .../mailbox/xlnx,zynqmp-ipi-mailbox.yaml      | 140 ++++++++++++++++++
>  2 files changed, 140 insertions(+), 127 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.txt
>  create mode 100644 Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.yaml
> 

Applied, thanks!
