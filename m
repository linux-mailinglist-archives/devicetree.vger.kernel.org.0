Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D70BC4EB6E0
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 01:38:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240729AbiC2XkE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Mar 2022 19:40:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240732AbiC2XkB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Mar 2022 19:40:01 -0400
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93C161C4
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 16:38:15 -0700 (PDT)
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-df02f7e2c9so7996191fac.10
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 16:38:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=+1cAZLTqZFTwl/X7nyWvDSu6q8lZr9S0RABiAIxFkuM=;
        b=dX+UoziuMOq+HYfz6vuFFYoMEdIABqfd47EMbb8ryL2Jig3K83PNzSXWuYOegTpE/C
         OteTYim7cWuC+Bcs7HHKY+Jl13PUuUcQ2a+xb9SBEOA1bwiBgRDn8K8pXp43e5dYyEmr
         Vr5xe0pvULeAfQPMzibqjXFcQ3c7c6JvcuKlVO9Kl20J09G4YP9T5N0nR7MYg+cLnyhW
         wHbmpN6kRGELOpbQJf2QRjqGGaLuY+PqWpr4eaFMepV6OcQDQMYn4Xx2WgHeVEjNaXg3
         8bXxZVrsfWEy71FQh0NNRLVI7m9EewiuKQQN31mr6uVpk/YAgBwu6f7IO+yZ/dGdolmC
         gwaw==
X-Gm-Message-State: AOAM533LybKwH55UtA5OGz7/HEBx+gxXEekcXB0V3CnJOw2lQm9MEQdc
        ing77O2f+xMFs7syaqhnMQPtvr1OzQ==
X-Google-Smtp-Source: ABdhPJxkrGtgBbZuZzBG3H5iUHI4ZnV53mjbZvAZawZm3fbdUcidO+Lw9+Yu0tCay2j9wBItP2MuyQ==
X-Received: by 2002:a05:6870:d354:b0:dd:d425:d4de with SMTP id h20-20020a056870d35400b000ddd425d4demr922292oag.210.1648597094905;
        Tue, 29 Mar 2022 16:38:14 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id k22-20020a056830243600b005af5fb99326sm9382190ots.63.2022.03.29.16.38.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Mar 2022 16:38:14 -0700 (PDT)
Received: (nullmailer pid 1572927 invoked by uid 1000);
        Tue, 29 Mar 2022 23:38:13 -0000
Date:   Tue, 29 Mar 2022 18:38:13 -0500
From:   Rob Herring <robh@kernel.org>
To:     Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
Cc:     devicetree@vger.kernel.org, Joel Stanley <joel@jms.id.au>,
        Graeme Gregory <quic_ggregory@quicinc.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Andrew Jeffery <andrew@aj.id.au>,
        Arnd Bergmann <arnd@arndb.de>, linux-aspeed@lists.ozlabs.org,
        Jamie Iles <quic_jiles@quicinc.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 3/7] dt-bindings: pinctrl: aspeed-g6: remove FWQSPID
 group
Message-ID: <YkOYZQQ2D4zuBspP@robh.at.kernel.org>
References: <20220329173932.2588289-1-quic_jaehyoo@quicinc.com>
 <20220329173932.2588289-4-quic_jaehyoo@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220329173932.2588289-4-quic_jaehyoo@quicinc.com>
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

On Tue, 29 Mar 2022 10:39:28 -0700, Jae Hyun Yoo wrote:
> FWQSPID is not a group of FWSPID so remove it.
> 
> Fixes: 7488838f2315 ("dt-bindings: pinctrl: aspeed: Document AST2600 pinmux")
> Signed-off-by: Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
> ---
> Changes in v3:
>  * Newly added in v3. (Andrew)
> 
>  .../devicetree/bindings/pinctrl/aspeed,ast2600-pinctrl.yaml     | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
