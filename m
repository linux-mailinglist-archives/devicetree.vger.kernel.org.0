Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D510C5E7742
	for <lists+devicetree@lfdr.de>; Fri, 23 Sep 2022 11:33:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230241AbiIWJd4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Sep 2022 05:33:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231511AbiIWJdc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Sep 2022 05:33:32 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB8C49AFC2
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 02:33:31 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id a8so18831089lff.13
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 02:33:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=AD0vTTxMT9RyIohVOxhCfhEFX/pSVlOoEyWGLFMykLs=;
        b=UhkveveyGMsC3fXDaMiw6HTgR5Zv+DbiE61b4ocxMG3/U8cuKdD2iW7i5Yp31yRIug
         QopqNYn25G8AvUp3dsrrwngLRlX/To+TOvIAji4gRf/yIz2Kdc1MOIgN8vLUgBVt+lHm
         cQO80P447qb3+hFff+intrPsHiB14c/0itSyHqIwD4OWn5hamdkRWZusiimZN/b3Xwrh
         iYGQsnjSC8YqCEjq5dtj7wqu+7nP5kfQ9eFe3XcfqSjm7eDvc2lbgQfOja66ySEnSuqr
         N1zckqBM1DuLaI6D9A6Pr1oTdeHId9lk3HPYWxBpeDKihykWbTWrdIRpnO+yEd78UhJe
         xnjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=AD0vTTxMT9RyIohVOxhCfhEFX/pSVlOoEyWGLFMykLs=;
        b=K2isLaL5wf1+v0xscjhUBPQZKQGLBZ4sH4WTy8XoVdYHOVxA0e5ZbshAtXqgCebeVg
         uLdfLg2rJOGcp5WSfsU8sqK4yl6a0YTNUuqTAaPzJpX7g24UOcppaV9xShfyp0L5ZyKt
         Y8fBk4IMa2WVGIGJc/Q8/DKl48dJK8r964Ql18T4RoiQBm4TQmaAZjtoyQznkWjDAykk
         t7Ej9/6KtYLNQiCRdpoB6JhK414LoeP1K2URaw+L2bxfDafW30uze6ckcODn/4QH4mud
         KSIwA9g7QPNQ8CwcVjg3KY+X9UIw2A1Y3hBnv0lOzCtQQl3U7IQzn5Y/yiZ3dX+3110J
         CyTg==
X-Gm-Message-State: ACrzQf1YSv8p1dH7qEJhYj7hiadqXQo6FDis8g4Wimg5vBNbWLrfEnEb
        LTRsnWRXqlWZNfTMyQIsW5dXFA==
X-Google-Smtp-Source: AMsMyM5ItBtaNE5LqPfrqHn/2dI0USL2WWX+6SJ0p7rlNnSh/9j/Nh1IbeRKKJtADpAcudz6OcL6dg==
X-Received: by 2002:a05:6512:6c9:b0:49a:51d4:d517 with SMTP id u9-20020a05651206c900b0049a51d4d517mr2977807lff.329.1663925610119;
        Fri, 23 Sep 2022 02:33:30 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id q2-20020a2e5c02000000b0025e4c49969fsm1282517ljb.98.2022.09.23.02.33.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Sep 2022 02:33:29 -0700 (PDT)
Message-ID: <2d4f3740-88cd-c3c4-70f5-69c0a040d268@linaro.org>
Date:   Fri, 23 Sep 2022 11:33:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH,v2] dt-bindings: pwm: Add compatible for Mediatek MT8188
Content-Language: en-US
To:     xinlei.lee@mediatek.com, thierry.reding@gmail.com,
        u.kleine-koenig@pengutronix.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        jitao.shi@mediatek.com
Cc:     linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@list.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <1663915394-30091-1-git-send-email-xinlei.lee@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1663915394-30091-1-git-send-email-xinlei.lee@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/09/2022 08:43, xinlei.lee@mediatek.com wrote:
> From: xinlei lee <xinlei.lee@mediatek.com>
> 
> Add dt-binding documentation of pwm for MediaTek MT8188 SoC.
> 
> Signed-off-by: xinlei lee <xinlei.lee@mediatek.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

