Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F19B85FEFCD
	for <lists+devicetree@lfdr.de>; Fri, 14 Oct 2022 16:07:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230105AbiJNOH6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Oct 2022 10:07:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230101AbiJNOHs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Oct 2022 10:07:48 -0400
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 127F21781E2
        for <devicetree@vger.kernel.org>; Fri, 14 Oct 2022 07:07:36 -0700 (PDT)
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-1322fa1cf6fso5960782fac.6
        for <devicetree@vger.kernel.org>; Fri, 14 Oct 2022 07:07:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2dQKKL2+9zjL5Mox4zmE5uqFgfxydD25rGa4I2dXR2M=;
        b=y7TW+UQ4Lz/KUZkHjZld7Ou0Ah0pplWP7CmxCB4gHAlczcZJ3DEuTsjYJ4XojFE9hy
         DW3MZVKIHU+caNXw1XfCQ21wY06hn5qZtWHhkANKUSdvB/VKaKjim+Is4fW10GSVr5Va
         rP/fftke+jFax1+BZCJoIol6wwvv6/lJhmToDGeDr+VyqBS3KZGGEqZNPM0NT/wKtAc/
         6xqt85UtteATDtFfQ5mU5/XP3VBrKmEoLhYg7IiC4/eEoRKaTWuXCRzdVV9QChp3S0ku
         JW1/MkuhxosGjB7nQRL014RHTCP9ESKNMOp6GRbix/DBYhf740aPts3pE2RqEN8akmOD
         7m/Q==
X-Gm-Message-State: ACrzQf3ImUQ9ikkQyCsospzAkk4YbaAE7RuqMaJ6gAPA/pHmSqaKDV+j
        RkRfrDz8KwKlD3IA4faY1Q==
X-Google-Smtp-Source: AMsMyM7J2ooJc0s/12QNo1/AFu37fK6RLKLECwR6M3z21rX0zPPu42Zeukr9hQ6uYPtq4ucoYBOq7w==
X-Received: by 2002:a05:6870:3388:b0:136:4f44:78a6 with SMTP id w8-20020a056870338800b001364f4478a6mr8868250oae.125.1665756446469;
        Fri, 14 Oct 2022 07:07:26 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id u3-20020a056870d58300b0011f00b027bdsm1334828oao.45.2022.10.14.07.07.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Oct 2022 07:07:26 -0700 (PDT)
Received: (nullmailer pid 1860518 invoked by uid 1000);
        Fri, 14 Oct 2022 14:07:27 -0000
Date:   Fri, 14 Oct 2022 09:07:27 -0500
From:   Rob Herring <robh@kernel.org>
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: ARM: add bindings for the D-Link
 DWL-8610AP
Message-ID: <166575644626.1860253.1088696541378918632.robh@kernel.org>
References: <20221013223538.2385601-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221013223538.2385601-1-linus.walleij@linaro.org>
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

On Fri, 14 Oct 2022 00:35:37 +0200, Linus Walleij wrote:
> The D-Link DWL-8610AP is a pure access point with ethernet in
> and wireless (both 2.4GHz and 5GHz) out.
> 
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
