Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 719C45455D5
	for <lists+devicetree@lfdr.de>; Thu,  9 Jun 2022 22:42:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244642AbiFIUmh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jun 2022 16:42:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229908AbiFIUmg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jun 2022 16:42:36 -0400
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com [209.85.166.50])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44DF365D7
        for <devicetree@vger.kernel.org>; Thu,  9 Jun 2022 13:42:35 -0700 (PDT)
Received: by mail-io1-f50.google.com with SMTP id p69so4590738iod.0
        for <devicetree@vger.kernel.org>; Thu, 09 Jun 2022 13:42:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=OtuC429yfgrUDhVLYb5W2fKTPlGlSN/+E1yK4Jtxg9Y=;
        b=KIuaP7pCPt3gie6VE9efcu1fgeoaWsZ3ycxwZWQjn4L2AhJ44PhmOvr63fFz9OuEo7
         4aLaLbdLNfcO1GTvflLnGgU5C98kg/ucP5ieQP4wQJljNnqiFYLUnilJFLoxQJSkPdhD
         j0LKNg6ZCMBazRmSVr98RAeK2+gUJCfAP3yq6qRzAckXaP6OIQxa3j54X3iZpIoCN1si
         rrM3zz5nOOI9biH8GsddM64BNUbgfoAxNVmWT1yVYZe3GDBDFrz5021k0xEg15bzR0iC
         7/ZF84onzGHXRTMBXQ5Vq56QfV6iUAQq77HdI/b7yYNihpqnaGgMEe81sTK3GEkJ0Pby
         QGIQ==
X-Gm-Message-State: AOAM532slrZgFdxu0D6RYfo9LCbTf+Rw7OROkt14zwVAkvcN/DOT53eP
        2DdzLtVU1I4WNuTeK30XeA==
X-Google-Smtp-Source: ABdhPJz9j9I6WjxLLMJ1qRLaIyL+dlvWMNUPxAw52sQqDMjmCFyHLpjC/7Yptnc9dl04/IkgBrvUnA==
X-Received: by 2002:a5d:898b:0:b0:668:f53d:757d with SMTP id m11-20020a5d898b000000b00668f53d757dmr18986668iol.12.1654807354589;
        Thu, 09 Jun 2022 13:42:34 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id t15-20020a02ccaf000000b00331767e8113sm8357854jap.52.2022.06.09.13.42.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 13:42:34 -0700 (PDT)
Received: (nullmailer pid 66880 invoked by uid 1000);
        Thu, 09 Jun 2022 20:42:32 -0000
Date:   Thu, 9 Jun 2022 14:42:32 -0600
From:   Rob Herring <robh@kernel.org>
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        Phil Elwell <phil@raspberrypi.com>,
        Maxime Ripard <maxime@cerno.tech>,
        Lee Jones <lee.jones@linaro.org>,
        Scott Branden <sbranden@broadcom.com>,
        Melissa Wen <melissa.srw@gmail.com>,
        Ray Jui <rjui@broadcom.com>
Subject: Re: [PATCH V3 03/11] dt-bindings: soc: bcm: bcm2835-pm: Add support
 for bcm2711
Message-ID: <20220609204232.GA66804-robh@kernel.org>
References: <20220607204226.8703-1-stefan.wahren@i2se.com>
 <20220607204226.8703-4-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220607204226.8703-4-stefan.wahren@i2se.com>
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

On Tue, 07 Jun 2022 22:42:18 +0200, Stefan Wahren wrote:
> Add a new compatible string for BCM2711 and the option to provide a
> third reg property for the board's new RPiVid ASB.
> 
> In BCM2711 the new RPiVid ASB took over V3D, which is our only consumer
> of this driver so far. The old ASB is still be present with ISP and H264
> bits but no V3D.
> 
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
> ---
>  .../devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml      | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
