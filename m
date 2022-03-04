Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 159094CCC07
	for <lists+devicetree@lfdr.de>; Fri,  4 Mar 2022 03:56:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237780AbiCDC5d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 21:57:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235861AbiCDC5c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 21:57:32 -0500
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F25E610A7C4
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 18:56:45 -0800 (PST)
Received: by mail-oi1-f180.google.com with SMTP id q5so6663087oij.6
        for <devicetree@vger.kernel.org>; Thu, 03 Mar 2022 18:56:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=0TA1Wjex6JCqhMgNCVoUHGlCg7LIP94z6BQYjbk/eQs=;
        b=jSCJAbN3pI1EV/ebNJjFcoCwuwKozmLNjd/CC3mTE6iE+A7Xs8mw7Hn1YcdKHhx+5j
         uYcqPUvpPv4eEJA+b4Q1ZBt6EU1AoQ/zhi1t8o8O0CtALaGmR2g7mW765TVOc6wXqfSC
         ciB7BXxJwPPBSaAlE5VRbsm835Gt2Xv54Oi5Ix8e4pLqYpYCb//uhwxnMprXttIgcjI2
         axK7Q8FKWEcngXZygYy/liK2cH0TuPWR+ZHYaQFwoXU2M8dgxKOFha5xckDd/Ple8L0a
         EFQq15HckXEokOj8n9gqMdlAT6MHJGlkRx2VGanagRE4zgfySpkN1G1PiaHtcYL/yrYn
         7UOg==
X-Gm-Message-State: AOAM530hgaI7EoLqX3sC1KTNUdXoIo6Wx9lOIoNGfq2+hDyoapgDUCqW
        TIR1vTautGDQ/WaszzLYbQ==
X-Google-Smtp-Source: ABdhPJxdjYh6WofGXsJdoKgehtLeOMME9WZOZ4bbWO60hk1ETWWc2RuVgeopCvRXthygMQ9vtdlXlQ==
X-Received: by 2002:a05:6808:1b24:b0:2d4:c828:be31 with SMTP id bx36-20020a0568081b2400b002d4c828be31mr7676220oib.80.1646362605257;
        Thu, 03 Mar 2022 18:56:45 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id n6-20020a056870970600b000d8a7483548sm2052052oaq.43.2022.03.03.18.56.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Mar 2022 18:56:44 -0800 (PST)
Received: (nullmailer pid 2901687 invoked by uid 1000);
        Fri, 04 Mar 2022 02:56:43 -0000
Date:   Thu, 3 Mar 2022 20:56:43 -0600
From:   Rob Herring <robh@kernel.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     knaerzche@gmail.com, strit@manjaro.org, mbrugger@suse.com,
        zyw@rock-chips.com, zhangqing@rock-chips.com,
        arnaud.ferraris@collabora.com, devicetree@vger.kernel.org,
        Chris Morgan <macromorgan@hotmail.com>,
        linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
        lee.jones@linaro.org, heiko@sntech.de
Subject: Re: [PATCH 4/4 v5] dt-bindings: mfd: rk808: Convert bindings to yaml
Message-ID: <YiF/6zvlK6xkMZhd@robh.at.kernel.org>
References: <20220303203958.4904-1-macroalpha82@gmail.com>
 <20220303203958.4904-5-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220303203958.4904-5-macroalpha82@gmail.com>
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

On Thu, 03 Mar 2022 14:39:58 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Convert the rk808 bindings into yaml format. clock-output-names varies
> in maxItems depending on whether or not the clock-cells is 0 or 1. For
> the rk805, rk809, and rk817. This preserves behavior with the existing
> driver handling setting the clock for these specific PMICs. When this
> driver is corrected and the devicetrees updated this logic can be
> removed (since the rk805, rk808, and rk817 only have one actual clock).
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../devicetree/bindings/mfd/rk808.txt         | 465 ------------------
>  .../bindings/mfd/rockchip,rk805.yaml          | 219 +++++++++
>  .../bindings/mfd/rockchip,rk808.yaml          | 257 ++++++++++
>  .../bindings/mfd/rockchip,rk809.yaml          | 284 +++++++++++
>  .../bindings/mfd/rockchip,rk817.yaml          | 330 +++++++++++++
>  .../bindings/mfd/rockchip,rk818.yaml          | 282 +++++++++++
>  6 files changed, 1372 insertions(+), 465 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mfd/rk808.txt
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
