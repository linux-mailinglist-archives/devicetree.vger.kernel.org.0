Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E3F3659EA19
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 19:46:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230252AbiHWRqP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 13:46:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233963AbiHWRp7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 13:45:59 -0400
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04A57A6C1B
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 08:41:29 -0700 (PDT)
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-11ba6e79dd1so17223306fac.12
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 08:41:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=p2/8VHD8r5AOUG2eTFQXtCI/S1XQHYPiA6J4jsYzmD0=;
        b=o/n6I512lwfsaAn/NgGdVWnJaCDz4Up6ev0YbGC3zo8wL0E8PaziZxoEyj29RVyqnm
         XYakaNFGZiOW1GpYEr4NKn+moIEQTRJyJefZNIqoRNvmG8X2RVjeHyVAu3p/Lr1S1nnQ
         YxfhraKhVl3d6/yxqGAXvmhFgO+iH4Jb67hF3C2svtcwH0zYaAk1iHOuCZhY0emAGaIO
         xEMSRR32cuEkqgDtEUUUdiGY8Ahce1Q61ifIriWzk3PLX89b6ZGdvP9kR4Q1JeWO731B
         7s4fGVVuBFjJYhCcKMczSzH0w3R4rxZygy6zFRIHaFzLk69la2gBClRszbhV8UL/Sx02
         V3oQ==
X-Gm-Message-State: ACgBeo3wmhzAKH3uwj247S6F/emhDLwUqJ0rjfIVTJdKuRjIrCQiuVtw
        KfUwicGSPk/JImtREKErLA==
X-Google-Smtp-Source: AA6agR7dGmoGGaLY/Kz0Rq1LIMR2QiWBFbIqyENxw7lZydo60JdvYKJAp+07OJOxOCx36J5fGgL+9w==
X-Received: by 2002:a05:6870:9611:b0:10f:b6d4:3882 with SMTP id d17-20020a056870961100b0010fb6d43882mr1667894oaq.6.1661269288284;
        Tue, 23 Aug 2022 08:41:28 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id y14-20020a9d460e000000b006370c0e5be0sm3916511ote.48.2022.08.23.08.41.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Aug 2022 08:41:27 -0700 (PDT)
Received: (nullmailer pid 3260709 invoked by uid 1000);
        Tue, 23 Aug 2022 15:41:26 -0000
Date:   Tue, 23 Aug 2022 10:41:26 -0500
From:   Rob Herring <robh@kernel.org>
To:     Jean-Philippe Brucker <jean-philippe@linaro.org>
Cc:     krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, maz@kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: interrupt-controller: arm,gic-v3: Make
 'interrupts' optional
Message-ID: <20220823154126.GA3260525-robh@kernel.org>
References: <20220822152224.507497-1-jean-philippe@linaro.org>
 <20220822152224.507497-3-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220822152224.507497-3-jean-philippe@linaro.org>
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

On Mon, 22 Aug 2022 16:22:23 +0100, Jean-Philippe Brucker wrote:
> A GICv3 implementation without virtualization, such as the base QEMU
> virt machine (without -M virtualization=on), does not issue maintenance
> interrupts. Therefore its device-tree node does not need an 'interrupts'
> property. Currently, validating the QEMU virt device-tree throws a
> warning that 'interrupts' is missing. Make it optional.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>  .../devicetree/bindings/interrupt-controller/arm,gic-v3.yaml     | 1 -
>  1 file changed, 1 deletion(-)
> 

Applied, thanks!
