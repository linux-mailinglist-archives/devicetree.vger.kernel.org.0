Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C03FA53BB32
	for <lists+devicetree@lfdr.de>; Thu,  2 Jun 2022 16:49:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234347AbiFBOty (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Jun 2022 10:49:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236264AbiFBOtv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Jun 2022 10:49:51 -0400
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0237A1A4937
        for <devicetree@vger.kernel.org>; Thu,  2 Jun 2022 07:49:48 -0700 (PDT)
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-f2a4c51c45so6995463fac.9
        for <devicetree@vger.kernel.org>; Thu, 02 Jun 2022 07:49:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=1Y8r93k8L3/uY9c/fAZTXjwzkJHBhkSmh0WbbdSy7HE=;
        b=n18rlC7lSREHfYuOTnM1cYpLPEjwUNvl3Bivn8OvcsdkRWNse7X6U54HM+suIIb89p
         gdvCdUs2dj24UWALNqXbe/49EsdCvMvFzaTSsY2QDbWs/UQhgeFVn6+a/iVp6y6KPzdz
         QWOT/qIdyYp7bsqIh4ZgcUBT6oFJEzeBg46VJOERIwM3MvEmlBRfo3w5Kz6XhCtcA4WP
         jm6TwU35nWVce0v7+/8d0PpesrjSPZHjAAKXa069QlZba/5vHjC/7LqdJJtq1yeRoGVu
         2h4VWHsgsFr/NNHhgRDiOBT++WyB4YqGOzimYPzwISB5wQsaPZb3RxcRHgCuX5w0v6Kz
         tD4w==
X-Gm-Message-State: AOAM532EK7nXyPq0SpKSoacOl1JlqrkTBeB/Lr5e8H+zt+A20BTgqIMY
        tXXYPUiBxLy3+thOrotCvw==
X-Google-Smtp-Source: ABdhPJwAk1Ot3hZsXRUg3N5muY4Oa+Q/FYuCITtB9Vhdx0Uw8AdKNGFHqxBIC+sOqyZFiKi4tiTcxg==
X-Received: by 2002:a05:6870:828c:b0:f5:f122:f440 with SMTP id q12-20020a056870828c00b000f5f122f440mr3866955oae.168.1654181387324;
        Thu, 02 Jun 2022 07:49:47 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id s42-20020a05683043aa00b0060613c844adsm2208463otv.10.2022.06.02.07.49.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jun 2022 07:49:47 -0700 (PDT)
Received: (nullmailer pid 2296853 invoked by uid 1000);
        Thu, 02 Jun 2022 14:49:46 -0000
Date:   Thu, 2 Jun 2022 09:49:46 -0500
From:   Rob Herring <robh@kernel.org>
To:     Peter Robinson <pbrobinson@gmail.com>
Cc:     Arnd Bergmann <arnd@arndb.de>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>,
        Rob Herring <robh+dt@kernel.org>,
        dri-devel@lists.freedesktop.org, javierm@redhat.com,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Emma Anholt <emma@anholt.net>,
        bcm-kernel-feedback-list@broadcom.com,
        Will Deacon <will@kernel.org>, maxime@cerno.tech,
        Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH v5 1/6] dt-bindings: gpu: v3d: Add BCM2711's compatible
Message-ID: <20220602144946.GA2296795-robh@kernel.org>
References: <20220601110249.569540-1-pbrobinson@gmail.com>
 <20220601110249.569540-2-pbrobinson@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220601110249.569540-2-pbrobinson@gmail.com>
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

On Wed, 01 Jun 2022 12:02:44 +0100, Peter Robinson wrote:
> BCM2711, Raspberry Pi 4's SoC, contains a V3D core. So add its specific
> compatible to the bindings.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> ---
> Changes since v5:
> - Change compatible to align downstream and othee HW, reorder to suit
> 
>  Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
