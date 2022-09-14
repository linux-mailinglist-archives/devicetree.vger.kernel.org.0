Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 054A75B879B
	for <lists+devicetree@lfdr.de>; Wed, 14 Sep 2022 13:54:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229809AbiINLyb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Sep 2022 07:54:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229997AbiINLya (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Sep 2022 07:54:30 -0400
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B979AB6A
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 04:54:29 -0700 (PDT)
Received: by mail-ot1-f54.google.com with SMTP id h9-20020a9d5549000000b0063727299bb4so10140935oti.9
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 04:54:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=p5csJKwFGqIZx9kSO+FYtEJv/E2okrfxgAoPmuUIZNA=;
        b=Eup0dgbKyiejthBb1zjxP/Z1xfA5//sZA8M4YNx5tHZY06/mr56jbdb7vlV1dd03Qm
         G/4mb3KPBTIJaAZMvwt277BQKyi1SOGPj6mPigqItMGMtv8ZGRr8pGQ9K+4IHXQQzRGM
         sRmm4h0WfYF8KCWZ2iGyg9j94d8uBJ0HJ8nreKnUo1NP+/DnOHDW9GrtkVgfEnuHcHir
         C86ljI1C2Ur4jCzL0zam0OId26xt9sfG6RXWo454ChndUq5Ngpggzsw4EJ/Gx/yFVZHv
         fM12M7z+vzYoskoQ6Sfm1AhYF2uj7Rns6NULJjoiRsu6NNrzJtntOTKGrG01pBkJuMmJ
         LZow==
X-Gm-Message-State: ACgBeo1xbU2GEAx6oeqrqUpxjSVM0UXE4gVTU/5Xp0Q42aDaPdzb0Me6
        YaijtE6y/wk26Dx0kMXTWIHkvMssIA==
X-Google-Smtp-Source: AA6agR41FX463W1yg3ZQWAXglg8d8q9DanQHhA3AHbJwnwIQAlS+dgW4HiGTDdKkr7yFJVdVyhg70Q==
X-Received: by 2002:a9d:5911:0:b0:657:a6bd:372c with SMTP id t17-20020a9d5911000000b00657a6bd372cmr881373oth.6.1663156468650;
        Wed, 14 Sep 2022 04:54:28 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id w15-20020a0568080d4f00b0032f0fd7e1f8sm6210070oik.39.2022.09.14.04.54.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Sep 2022 04:54:28 -0700 (PDT)
Received: (nullmailer pid 1833126 invoked by uid 1000);
        Wed, 14 Sep 2022 11:54:27 -0000
Date:   Wed, 14 Sep 2022 06:54:27 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 2/3] dt-bindings: arm: fsl: Add InnoComm WB15 EVK
Message-ID: <20220914115427.GA1833031-robh@kernel.org>
References: <20220913103337.1849023-1-s.hauer@pengutronix.de>
 <20220913103337.1849023-3-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220913103337.1849023-3-s.hauer@pengutronix.de>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 13 Sep 2022 12:33:36 +0200, Sascha Hauer wrote:
> Add board compatibles for the InnoComm WB15 EVK board.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> Notes:
>     Changes since v1:
>     - Fix spelling of InnoComm
> 
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
