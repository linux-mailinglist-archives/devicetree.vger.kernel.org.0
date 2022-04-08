Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 966244F9F06
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 23:15:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231562AbiDHVRB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 17:17:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234497AbiDHVRA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 17:17:00 -0400
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B50B2173B3
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 14:14:55 -0700 (PDT)
Received: by mail-oi1-f171.google.com with SMTP id j83so10103371oih.6
        for <devicetree@vger.kernel.org>; Fri, 08 Apr 2022 14:14:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=foVEKMrLP78L8xHLoD1DKWu6JKlOGyrW/9gXNK6Qtl4=;
        b=479zqVQVLrUCzLhf1C+1zhZGPdZyYY8evh6YfAENXXolnNbpLXam5lgqqOVr1hCUJC
         YIWHVKLgKOOpODlYsEApZLeu7V2Q9JbnGKFKCqfeTHTfocIISXzWvSexNsj/DvFL+JKx
         pFTLZWd1+hdbFAzHRLP1RwudP5rAF219+W/6rUlswlQFlqOt1HT0FUXWsYB+7SmSSPcH
         T7RaU5HurD6cWgRqUpQTeSUtfTo2ihb9leHXduPj5nD0fK2UzqVQgMdptKGWPBSV5gcD
         BIVg3vY2G/CAj9o8hiSeTKRIH84y54+lyT2lrxVGaLbGqUq30cnOAHHPVTXRM0/dV9+I
         dX4Q==
X-Gm-Message-State: AOAM532frNhVMCgibJoxIALB2uWlkpdGxvfo9XNEfK8LGYKidVrgtkHj
        aot+2ajdzHxIQi997YNDkg==
X-Google-Smtp-Source: ABdhPJx7ItFaeCOyvEbqcB4FdurAPsDUsypFC4WjNwtn/51MXvMvDZlIWnr6u5bzh3xeGria/kNkww==
X-Received: by 2002:aca:a988:0:b0:2ef:8b4f:4549 with SMTP id s130-20020acaa988000000b002ef8b4f4549mr747991oie.45.1649452494392;
        Fri, 08 Apr 2022 14:14:54 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id k10-20020a4abd8a000000b00324907b406fsm8619787oop.21.2022.04.08.14.14.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Apr 2022 14:14:54 -0700 (PDT)
Received: (nullmailer pid 4078894 invoked by uid 1000);
        Fri, 08 Apr 2022 21:14:53 -0000
Date:   Fri, 8 Apr 2022 16:14:53 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     devicetree@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, Peng Fan <peng.fan@nxp.com>,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] dt-bindings: arm: Add i.MX53 based Menlo board comment
Message-ID: <YlClzZ0xpvgjrTgO@robh.at.kernel.org>
References: <20220407192141.179845-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220407192141.179845-1-marex@denx.de>
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

On Thu, 07 Apr 2022 21:21:41 +0200, Marek Vasut wrote:
> Add comment regarding the i.MX53 based Menlo board.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Fabio Estevam <festevam@denx.de>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: devicetree@vger.kernel.org
> To: linux-arm-kernel@lists.infradead.org
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
