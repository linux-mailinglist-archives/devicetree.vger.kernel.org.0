Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 95FF85625CD
	for <lists+devicetree@lfdr.de>; Fri,  1 Jul 2022 00:04:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231176AbiF3WEy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 18:04:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229531AbiF3WEx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 18:04:53 -0400
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com [209.85.166.170])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CD305720F
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 15:04:53 -0700 (PDT)
Received: by mail-il1-f170.google.com with SMTP id f15so262265ilj.11
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 15:04:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=g/aXAomXuNpsWAEsulspUaIhuU7tIZVVPwox3ZokL7Y=;
        b=TGW1/y+uGaTkXzenPskQdDeK0XQTVp1SwHCUSvbfthiCKyFFBfhpEN+Jn31KpZyGxx
         3QURYHGN7rDZGem7gwmChGLepec0GyS1PpKm9h6LhpCcj1YHPjCUOFdrjxfnXiySLK94
         amr5Cbu0b04iUZhvdcOSht8RfM2SZQLr6OrEJa3exFw7PZQKz+n18X0Hm7np06to3dj2
         Ij8p6Mt+aM/6SB6C/BCKIkjWarcJ8kUPIjPeCWIBPNxHBvcOYPCJ5umOf7XE2g/8TLEI
         NEXAtM/nLGmfVk74wjgw/kN+rMpH7x8PVXbMBJ2SYg8KstH8LiwiAOoc2Z6Jan9aCqZk
         fKFQ==
X-Gm-Message-State: AJIora/P5KAvx5fef5eFlq0Xa5jgEBJJFdB+cIzqKAfQPau/pzmcHwHE
        tux6srKPrE37fz1L2tmHTw==
X-Google-Smtp-Source: AGRyM1tLrGOw2gEy6Em72iuYVvoQZF4R6ngPGiWPXVdM2zQLMrrkfHiEj66cnU9r5jaTk8EY3wFa9Q==
X-Received: by 2002:a92:c901:0:b0:2da:8497:501f with SMTP id t1-20020a92c901000000b002da8497501fmr6066244ilp.182.1656626692534;
        Thu, 30 Jun 2022 15:04:52 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id u9-20020a056e021a4900b002d946b38ce2sm8392225ilv.46.2022.06.30.15.04.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jun 2022 15:04:52 -0700 (PDT)
Received: (nullmailer pid 3400426 invoked by uid 1000);
        Thu, 30 Jun 2022 22:04:50 -0000
Date:   Thu, 30 Jun 2022 16:04:50 -0600
From:   Rob Herring <robh@kernel.org>
To:     Sebastian Reichel <sebastian.reichel@collabora.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>,
        linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH 3/6] dt-bindings: power: rockchip: Add bindings for rk3588
Message-ID: <20220630220450.GA3400376-robh@kernel.org>
References: <20220623162309.243766-1-sebastian.reichel@collabora.com>
 <20220623162309.243766-4-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220623162309.243766-4-sebastian.reichel@collabora.com>
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

On Thu, 23 Jun 2022 18:23:06 +0200, Sebastian Reichel wrote:
> Add the compatible string for RK3588 SoC.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../devicetree/bindings/power/rockchip,power-controller.yaml    | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
