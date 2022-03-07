Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 636394D00A1
	for <lists+devicetree@lfdr.de>; Mon,  7 Mar 2022 15:03:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242942AbiCGOD5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 09:03:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233099AbiCGOD4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 09:03:56 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 408D3522DC
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 06:03:01 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id i8so23432193wrr.8
        for <devicetree@vger.kernel.org>; Mon, 07 Mar 2022 06:03:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=3vpCUXjcTswDRStl3MzweD4Aro2/agAY5dQepL0dC1U=;
        b=x22eO+NgQwSt2pJFQ47yB6UStu1dgm9un5bOnmT6bZT8XT2GQfgdf7n/cAUN21kTtE
         zuI/lQWVM4o93eHQI3j7OhUb81LPWdBQjr7eUPlnEP7joGkCL5gHHr6RaauiKH6OjcK3
         uNh6Q1JpYKKGNcbYFZppkobG57Pz4G9KYjtpO+9AFcAn8EahLZwD12Kkc9ytxErS1x3W
         vC+MrdocY32J/Uh7ZJOcP+6WMPx88ALbewSY5DaYUCSToOoouUedydt1P9OHsCo+6PvO
         mxSE32FQI4pNZFGTAsrR/3AVG46R8gbWeOoAytBnzckd+8ALrO+b6xuMCh9K9FwCb15I
         WOig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=3vpCUXjcTswDRStl3MzweD4Aro2/agAY5dQepL0dC1U=;
        b=57epZBg2idfLpk4yMAJC4OuE/3BqeBKhSSo2reE0DmSowuiBXJaJzdpKxhaEkZjZ4o
         OgscF0/tX5Y7rbYzDQF4iRJSNCOb3UTmaEiPp3UEIY7+4RZaJon5MOX021cYKz1E7igY
         yF2iHwLDFyTb71sA+CtCOPnoUT/cdW/eXQhnPh18I7ogCIIPv2ShBSSIMaU50Kk9itrZ
         nHNwpUzYXfaaXZKu7YF4hxSaIjBxmDWobQClON5rA8kKeQG28Vxq/PSUyN2GX94vYMg7
         auchloPw72AohJfwsfWNHrdaj0NvOQPe4uAaSHqO9QyWB0HWfT7Tio1V7+vsqvygG0JZ
         dfPA==
X-Gm-Message-State: AOAM530ooWbNEdd/uGkIv/FzWuBWUnsARNzUHqnCELDXs8QdpfRvemu7
        GhG5XJWCTqKl4t2g1oY50FF8PQ==
X-Google-Smtp-Source: ABdhPJxmOu4d6SmZt+3tWywr84hP+oV0Bdo1xJ0jXq5SXyxRVfDaE4pjwOF+c2dXu+y0o/So/xiPLA==
X-Received: by 2002:adf:9123:0:b0:1ef:9b6d:60c1 with SMTP id j32-20020adf9123000000b001ef9b6d60c1mr8402184wrj.169.1646661779812;
        Mon, 07 Mar 2022 06:02:59 -0800 (PST)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id f11-20020a7bcc0b000000b0037e0c362b6dsm13008346wmh.31.2022.03.07.06.02.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Mar 2022 06:02:59 -0800 (PST)
Date:   Mon, 7 Mar 2022 14:02:57 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH] dt-bindings: mfd: brcm,cru: rename pinctrl node
Message-ID: <YiYQkSsHrdbWzfMq@google.com>
References: <20220216112928.5330-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220216112928.5330-1-zajec5@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 16 Feb 2022, Rafał Miłecki wrote:

> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This matches pinctrl.yaml requirement and fixes:
> 
> Documentation/devicetree/bindings/mfd/brcm,cru.example.dt.yaml: pin-controller@1c0: $nodename:0: 'pin-controller@1c0' does not match '^(pinctrl|pinmux)(@[0-9a-f]+)?$'
>         From schema: Documentation/devicetree/bindings/pinctrl/brcm,ns-pinmux.yaml
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>  Documentation/devicetree/bindings/mfd/brcm,cru.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
