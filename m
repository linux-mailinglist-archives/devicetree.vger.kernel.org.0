Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB1FC570AB1
	for <lists+devicetree@lfdr.de>; Mon, 11 Jul 2022 21:26:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230102AbiGKT0u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jul 2022 15:26:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229542AbiGKT0t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jul 2022 15:26:49 -0400
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE20E6111C
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 12:26:48 -0700 (PDT)
Received: by mail-il1-f169.google.com with SMTP id b12so3597084ilh.4
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 12:26:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=cl5PURd5PvDBf61V/tZG+ohnOrCuiGlanXba6ZYmwVg=;
        b=vCq6j0p/jxeN6bHA0jiDCJTQ4z92E4rrEjDshq7m5IxF4Bldv4txHRijKmL/7CY7OC
         pwO+WSohHeKGccRiEB4YbwBtJYTNgYt7qxok2m46HisumRTbcGCc8stHAdwPLKqpUJNl
         QNYuvOe9eW0C3SWfZsa7+im9d/Pm6znHHB0LglLwCH1DZMd3ucg9P4pWybEw+NG/kt8G
         Ro+yqH3eIbNbfYbiHyy3o8yKFnE8/O8vlr3Fzmh0XC2OcZQ1THgZjw6LAAHpW25PtOIF
         BcMp9KJfWSNgZhWmzxjCmPHy5r/6bfIiocntO2b59BoBmXOmAGqylyM8R9/CQJ4x00gf
         yEsA==
X-Gm-Message-State: AJIora/h+r4xaeA4BUYFaMSkHhuALfRIyToHwfjDV6RULGDZRT62t47C
        0lIr4gc1ir91udSRe6UFjw==
X-Google-Smtp-Source: AGRyM1sfha5Lt7uPRpezj/tbCHAwAeI6h1HN6zJEXptywmpTAeRrfMnkn7Vnko32K8M+/sdpIb5j2A==
X-Received: by 2002:a92:ddd1:0:b0:2d5:4877:65c8 with SMTP id d17-20020a92ddd1000000b002d5487765c8mr10801958ilr.267.1657567608236;
        Mon, 11 Jul 2022 12:26:48 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id h30-20020a056638339e00b0033f22c2e5b3sm3247671jav.98.2022.07.11.12.26.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Jul 2022 12:26:47 -0700 (PDT)
Received: (nullmailer pid 134339 invoked by uid 1000);
        Mon, 11 Jul 2022 19:26:46 -0000
Date:   Mon, 11 Jul 2022 13:26:46 -0600
From:   Rob Herring <robh@kernel.org>
To:     Chanho Park <chanho61.park@samsung.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: arm: cpus: add cortex-a78ae compatible
Message-ID: <20220711192646.GA134263-robh@kernel.org>
References: <CGME20220707083044epcas2p2cb1dfda1d46fe70340b8ecf77b014511@epcas2p2.samsung.com>
 <20220707082753.28862-1-chanho61.park@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220707082753.28862-1-chanho61.park@samsung.com>
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

On Thu, 07 Jul 2022 17:27:53 +0900, Chanho Park wrote:
> Cortex A78AE's MPIDR has been added since
> commit 83bea32ac7ed ("arm64: Add part number for Arm Cortex-A78AE")
> We also need to add the compatible.
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
> ---
>  Documentation/devicetree/bindings/arm/cpus.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks!
