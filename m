Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4E384E5495
	for <lists+devicetree@lfdr.de>; Wed, 23 Mar 2022 15:52:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240946AbiCWOxn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Mar 2022 10:53:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237910AbiCWOxn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Mar 2022 10:53:43 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63FFF7EA32
        for <devicetree@vger.kernel.org>; Wed, 23 Mar 2022 07:52:13 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id k124-20020a1ca182000000b0038c9cf6e2a6so1080571wme.0
        for <devicetree@vger.kernel.org>; Wed, 23 Mar 2022 07:52:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=ZrbNTOA94fOoCgNHi9Lle4MXzkybga7qD4nhhAEi0f4=;
        b=uh2ZadXZBrtTM3w9Ozpr4C05o3OzAZgte79gES0hKVEHTwcIeZYZOUF7MyKDzdRIPH
         YnOuBhq6Qllu90TMxXWXKcnQU/X+AlqKiBlymTpDbqlAFgPNhxfAQnLn7l69DyFmAWKb
         1EtyN61XPIWuCny+Ilp7M+eZl+TM4wDK6s/j0vsf37FyEv6vi8lHZs861WTgmg9iuoGF
         FbiSQxGv2OfCbOCL5opVUoVf1S0JgidHTgciYPG55HLvTX8UG91ebFie1qNe1mh+1PAS
         wCUXCYR6FBC8k62aoptRIDMaxi+wR4qQm8jH0nowF1h2O4Vx0ZgB+R9xTx1wG0nwXhA/
         99KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=ZrbNTOA94fOoCgNHi9Lle4MXzkybga7qD4nhhAEi0f4=;
        b=yGbylOjScUm6n3SmsKs3lATQSD9sccAEtWAGLiAitWKxxSzwsuCeJXNnjmqFBKtlkW
         9/q2I7vTz8pqNhrLfkWsCQ9+C8n5BgL9ThG8Ll/UFbvtgxZexC9D0tSbyvRr9ULfh1eQ
         BwaxJ5a+nDIV+Tc3tFj8un9RlBhDsQ0hrV9RTQUrPMO1jetxg9gA4fAOHQjk2EOq02Hs
         FhfDrD+e3jXFWHcb7VcZj8wiEA0cVtF2CUk+qY7nKNXEIavUhFUPKR5buql87w1KeNkv
         tHQDoddxXZxWNqgK78DvTIJbP8AYmAE2p3zgxshhAFeNv8nu7tTCTgIad90RJDqpm0lX
         Ky0w==
X-Gm-Message-State: AOAM530t2+nHF30ge//yEYSxwz0qZW7FpHrcY+FT/rkuL4YRI3g1wJo9
        vVII/3Ag+kKqHkxeJKdCiMcl6w==
X-Google-Smtp-Source: ABdhPJy8o7fDNMB74trqiXToyNmO/RhOnk/OJVhTyj0QG979uz6ERNLz62u9KEqogSaw/kVaHmCLVg==
X-Received: by 2002:a1c:f415:0:b0:37f:ab4d:1df2 with SMTP id z21-20020a1cf415000000b0037fab4d1df2mr9531693wma.75.1648047131994;
        Wed, 23 Mar 2022 07:52:11 -0700 (PDT)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id y5-20020a1c4b05000000b0038cbf571334sm116547wma.18.2022.03.23.07.52.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Mar 2022 07:52:11 -0700 (PDT)
Date:   Wed, 23 Mar 2022 14:52:09 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Michael Walle <michael@walle.cc>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mfd: syscon: add
 microchip,lan966x-cpu-syscon compatible
Message-ID: <Yjs0GaddtCRWuuxJ@google.com>
References: <20220313003122.19155-1-michael@walle.cc>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220313003122.19155-1-michael@walle.cc>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 13 Mar 2022, Michael Walle wrote:

> Add the Microchip LAN966x CPU system registers compatible.
> 
> Signed-off-by: Michael Walle <michael@walle.cc>
> ---
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
