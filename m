Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC8A05F0016
	for <lists+devicetree@lfdr.de>; Fri, 30 Sep 2022 00:29:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229575AbiI2W3J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Sep 2022 18:29:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229563AbiI2W3I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Sep 2022 18:29:08 -0400
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09D7A151DC6
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 15:29:08 -0700 (PDT)
Received: by mail-oo1-f47.google.com with SMTP id c17-20020a4aa4d1000000b0047653e7c5f3so1080595oom.1
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 15:29:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=eIYGb01iP1uQvHx/5dIICXkInZ12bMRqgZXdcsdsQ4Y=;
        b=0Km6qcEJ9WUd60ApJvPLxxSm+TunnPfDjfN2U6BljM1yWC9fe7iDbOXE/OXylcueaE
         5VHk3mSfOIudGa9pM6myxl5aJEfLKz4duLzNhbRzpjU7ssV8jyGUbJFH0mJMZiivPxV2
         3HSzJzzfaBHm5zq4TBqQvQAYd1jXiexTZH0dbwOjCXgnZIf72uFXCi3RQrKSG4pJVARh
         noan7p9IxkReAtLwa0kXAQp5MRtkl47pPt3TQ5OOLN0HAhiHBCxC2+9E0QIBrAYiXIZd
         yaASCBYzpE09ufbnn49Cnxj1hMqbTi+Vlw0FY0FfJuj123Z/rl3KLvjbDrKiFpSUdGY8
         a8Sw==
X-Gm-Message-State: ACrzQf1WPJycuOneleC4mXz6XrAiGnvqJVqvUh3JJcNR26y2op22EaKy
        3RiCChcWTjNzhav8CPmcgw==
X-Google-Smtp-Source: AMsMyM50FnMOFQvequxk7j7Nh7qAyE+AcDJlo33zrXe+tKrvwzRBMhdM+kIm70/KBE4j9TMMpbCaeg==
X-Received: by 2002:a05:6830:1d3:b0:65a:659:20c1 with SMTP id r19-20020a05683001d300b0065a065920c1mr2330171ota.113.1664490547266;
        Thu, 29 Sep 2022 15:29:07 -0700 (PDT)
Received: from macbook.herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id h94-20020a9d2f67000000b0065932853f5esm205532otb.61.2022.09.29.15.29.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Sep 2022 15:29:06 -0700 (PDT)
Received: (nullmailer pid 2879517 invoked by uid 1000);
        Thu, 29 Sep 2022 22:29:06 -0000
Date:   Thu, 29 Sep 2022 17:29:06 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        Yannick Fertre <yannick.fertre@foss.st.com>,
        linux-stm32@st-md-mailman.stormreply.com,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Philippe Cornu <philippe.cornu@foss.st.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] dt-bindings: display: st,stm32-dsi: Handle data-lanes in
 DSI port node
Message-ID: <166449054453.2879455.4591283514406157909.robh@kernel.org>
References: <20220926234501.583115-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220926234501.583115-1-marex@denx.de>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 27 Sep 2022 01:45:01 +0200, Marek Vasut wrote:
> Handle 'data-lanes' property of the DSI output endpoint, it is possible
> to describe DSI link with 1 or 2 data lanes this way.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Philippe Cornu <philippe.cornu@foss.st.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Yannick Fertre <yannick.fertre@foss.st.com>
> Cc: devicetree@vger.kernel.org
> Cc: dri-devel@lists.freedesktop.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> To: linux-arm-kernel@lists.infradead.org
> ---
>  .../bindings/display/st,stm32-dsi.yaml          | 17 ++++++++++++++---
>  1 file changed, 14 insertions(+), 3 deletions(-)
> 

Applied, thanks!
