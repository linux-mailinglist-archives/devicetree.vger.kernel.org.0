Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2536454FE26
	for <lists+devicetree@lfdr.de>; Fri, 17 Jun 2022 22:13:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234221AbiFQUNE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Jun 2022 16:13:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234088AbiFQUNE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Jun 2022 16:13:04 -0400
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F25052ED60
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 13:12:59 -0700 (PDT)
Received: by mail-io1-f41.google.com with SMTP id a10so5593226ioe.9
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 13:12:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=eAwySfkh/txiwY/dJ6UFJZJ1cZBwUkdpi+qnnRRP4dw=;
        b=hdtAK27b8f/yks782xdn1caSvO37GtvU1SJkvyclktqCMO2FS6VK64VbmUeVXP8fCB
         mVJm0Z+/rryZvsaT6Yg9scQ5SUPZxLw5RNqV5pCoDggBZpsYeprrOdlMScK0GUrWWPJ6
         iI7IoYEETq8/NLVkAXLmOHNTCTijs/xjp2QSwXeB5p2MSC7tbSXeBohNdlw5uUaOwdjS
         igpSbGV9hPHfYayTYBiyaGKaFbO/4Pnn/eMHuoH+aiDDYg7Kl4kE4a54s4tvTPcityNs
         HxEasrpimrZhPPieTaqFQ/koKwmSR+/LxlYapn2dKSZV6sZxj/jFCB3HZjx3oZJp7Imk
         j61g==
X-Gm-Message-State: AJIora9wEtss/7B6rz9jtLOzh7Dq1OZ/qKC+oDJdJ0RuIFzlVRK0gxaL
        XzWJz5JCarPZWfseE8A7twa6GckTyA==
X-Google-Smtp-Source: AGRyM1smeeul85sjgXNir7QHP3BycsiToHAnPmvj/W74nlbIgUgi+3etRz1llp3M0YD8KU667opx0Q==
X-Received: by 2002:a05:6638:1649:b0:331:d6c8:f0f1 with SMTP id a9-20020a056638164900b00331d6c8f0f1mr6236599jat.307.1655496779219;
        Fri, 17 Jun 2022 13:12:59 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id r13-20020a6b2b0d000000b00669c94f2288sm2938740ior.38.2022.06.17.13.12.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jun 2022 13:12:58 -0700 (PDT)
Received: (nullmailer pid 2339589 invoked by uid 1000);
        Fri, 17 Jun 2022 20:12:57 -0000
Date:   Fri, 17 Jun 2022 14:12:57 -0600
From:   Rob Herring <robh@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     francesco.dolcini@toradex.com, robh+dt@kernel.org,
        Fabio Estevam <festevam@denx.de>,
        linux-arm-kernel@lists.infradead.org, shawnguo@kernel.org,
        marcel.ziswiler@toradex.com, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: arm: fsl: Decrease the line length
Message-ID: <20220617201257.GA2339516-robh@kernel.org>
References: <20220616170800.3218914-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220616170800.3218914-1-festevam@gmail.com>
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

On Thu, 16 Jun 2022 14:08:00 -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Decrease the line length of the toradex colibri boards to fix the
> following build warning:
> 
> ./Documentation/devicetree/bindings/arm/fsl.yaml:684:111: [warning]
> line too long (111 > 110 characters) (line-length)
> 
> The description already contains the SoM name, do not repeat it
> in every single line.
> 
> Fixes: bb0fa1533715 ("dt-bindings: arm: fsl: correct 1g vs. 1gb in toradex,colibri-imx6ull-*")
> Reported-by: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
> Changes since v1:
> - Do not repeat the SoM name in every line as the description already contains
> the name (Rob).
> 
>  .../devicetree/bindings/arm/fsl.yaml          | 32 +++++++++----------
>  1 file changed, 16 insertions(+), 16 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
