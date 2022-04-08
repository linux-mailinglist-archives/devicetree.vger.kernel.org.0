Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E5DF64F991E
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 17:12:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236367AbiDHPOt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 11:14:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237416AbiDHPOr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 11:14:47 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70EE6FFF7E
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 08:12:43 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id g20so10416696edw.6
        for <devicetree@vger.kernel.org>; Fri, 08 Apr 2022 08:12:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XX2KXCol/cB+F9F2M6wlzFqK3IJlqDqtRBrRFqCr29Y=;
        b=xmZp2V8/SWQoUosFHxYo5+Zv/mSOMGKBwKZmvMSMHnsAA6Lzmak2UdaU2ffkf0qICk
         CdtxzrJa64VXnINoRbhednGfkz1nzzejp09cDA/CuPQPIDKKjv7vQAWa4Q7WuALe+WcE
         8p8ICxJ+91iX59qks9YZvD97YYWeOiUKFOJ0+5xDRZdLs+bQfbK29uo+UnGnTjQxdfV3
         qoYR4R0XPvi2KM7FmnS5BAtuwYiPIEsVzGxgShawQv7p78jGuvy/dayt2hHFeHxZV3hG
         OqC0G+BBI3ZmiAP06mS1eAI2qKgC2rFABCwbJJtedNvj16SY/cXqhVZHXXJi1sBZLmbD
         +5lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XX2KXCol/cB+F9F2M6wlzFqK3IJlqDqtRBrRFqCr29Y=;
        b=iKDb8PWd7ShJjdKcM8eJ7QmKRB9P7tQnypIyCLch6wXusyluE6liCJtDyOr0V/mfjh
         wkVBGq01R7qFgRVe19fVoPjkY3ik/p/WJjp3/3MVDEMM2K/qhdZ8A3c1cPG+HyrNwl+s
         PhCnNd5/NvipCQ3bGlQMQ4vsJVflYtukjF81hFO7YORh21UYInUVyp0E2PCw+l2A2LW+
         rxtJkyXmOUJbnXqPSQgNAvVAgwoZS1wbknMB8v2zexwLPngkGkdIXdI4PHx5SBfoJmE4
         bHMGssgCSDZY2aadRbLs/tXeGuPsa93iFU2Hc3d5MyTS1/LHsFhpAL1kIAJ5mVJXR3XZ
         GP+A==
X-Gm-Message-State: AOAM5324KHDe+1+TWeV+BCJT1J+ZoVLl8yGeeojLDCAK3/dhU5txZ8JL
        poH0iJ+1UCaT04cE5TZdTFC0dw==
X-Google-Smtp-Source: ABdhPJyyk6UanMuslV4A5Fs+9kw8DBweVAWH39SlZJfK/DvSvceiUMZFRxlsbK/sPjGHa4B4qMXAYg==
X-Received: by 2002:a05:6402:3693:b0:41c:dd5a:e8ca with SMTP id ej19-20020a056402369300b0041cdd5ae8camr19645323edb.225.1649430762007;
        Fri, 08 Apr 2022 08:12:42 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id b20-20020a1709063f9400b006e12836e07fsm8774030ejj.154.2022.04.08.08.12.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Apr 2022 08:12:41 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Sergei Shtylyov <sergei.shtylyov@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: memory: renesas,rpc-if: Document R-Car H3/M3/E3 support
Date:   Fri,  8 Apr 2022 17:12:37 +0200
Message-Id: <164943075366.672946.10621467910167215562.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <3784b6cb76a008fb56d6cb4ba228d78c77e710fa.1648546583.git.geert+renesas@glider.be>
References: <3784b6cb76a008fb56d6cb4ba228d78c77e710fa.1648546583.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 29 Mar 2022 11:38:03 +0200, Geert Uytterhoeven wrote:
> Document support for the SPI Multi I/O Bus Controller (RPC-IF) in the
> R-Car H3, M3-W, M3-W+, M3-N, and E3 SoCs.
> 
> 

Applied, thanks!

[1/1] dt-bindings: memory: renesas,rpc-if: Document R-Car H3/M3/E3 support
      commit: 8f0e3af81711bf72b9c6138b0138bdc330d8c388

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
