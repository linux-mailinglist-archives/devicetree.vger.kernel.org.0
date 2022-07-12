Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A221757149B
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 10:30:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232609AbiGLIaY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 04:30:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232684AbiGLIaO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 04:30:14 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACB4C41D2F
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 01:30:09 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id bf9so12683001lfb.13
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 01:30:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=i25vyz116cAjYrZteRrCHfv9WwAfDy85FC5q4I9TFUY=;
        b=VbA2acVTSB4fSRj/Lh612PnHhF0PlCB6nkQD9OzXeg6LhKVLh+S/LLqodTaGTucl/K
         45tsPPUk9ILnbBeCf1Po4AshHRL88ioONHwtpN+74I+2JczSWhuwCHxZNK5A1Wk5eAlP
         Yt1pgqAKzA+FUi3rbslUSf8mMKXcVSJi8x4yrGeh4T+ppw8EAmnRK81/+j9+4fOPWMsi
         5V3PacQxaVGLxdB8PQexBBZh+uLYab5PHIEVGAsxDtx6RLIWOqcIX/zD3Dej7Zoqa1bS
         dGUD/8Gcx3udFYOFMK9KVCpKuBcQHCKTw3R2eufx6jVOa5aBAeD2W6/jUvwD4F+Ip/sU
         wErA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=i25vyz116cAjYrZteRrCHfv9WwAfDy85FC5q4I9TFUY=;
        b=2Fbje5/qcpxs48eObOAcG9dsPzg08w74BuZaiFlI9vqZBKX2eXRXEh2KqjBOsZV6hF
         WbBu96duE595H75argfRG2MbrnOmO9SXax1O78ii5XcXr2YkR5TNOiPYtABOmLwROEfu
         wMcTReumIoh16fkC8jXo8QF7pbU5n0g9t51VmYXwZnEwOwT5lZR+yONnAFj4/QLFGK5r
         Yq8tIB6ZlPuT+8kOsSTXcuSZcPKUh9GaaDWWAP8xXIZ8g8yz+c1+DQuf0LEkI/iqRQ37
         +8n+ruo5S/K83dKflGaBmdNu7Dvbv4EQodB+22GL8kKFnAgvpxMrf882LUR6rwdE7PcG
         vbjg==
X-Gm-Message-State: AJIora+C5H1G5QooZwAwME4qMFVu0LT6N6ASM3pofbH5e0RHxyi5eXDN
        V8b4VgkFAQvGHWNPvTZ/ROgbJqcPwHaXqTSU
X-Google-Smtp-Source: AGRyM1trL5yeArlEEvxYs2gAIKYXfxCquUFbLN4WKwBPvje0pEEB++rlFWqRf8yrdAnYGrkQIKWV/g==
X-Received: by 2002:a05:6512:3452:b0:486:eff:739c with SMTP id j18-20020a056512345200b004860eff739cmr14219006lfr.549.1657614607285;
        Tue, 12 Jul 2022 01:30:07 -0700 (PDT)
Received: from [10.0.0.8] (fwa5cab-55.bb.online.no. [88.92.171.55])
        by smtp.gmail.com with ESMTPSA id p1-20020ac24ec1000000b0047f666011e4sm2063162lfr.26.2022.07.12.01.30.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jul 2022 01:30:06 -0700 (PDT)
Message-ID: <131bb7a0-e16e-187e-d48d-286440e8e6da@linaro.org>
Date:   Tue, 12 Jul 2022 10:30:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 5/5] dt-bindings: arm: tegra: Add missing compatible
 strings
Content-Language: en-US
To:     Thierry Reding <thierry.reding@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Jon Hunter <jonathanh@nvidia.com>, devicetree@vger.kernel.org,
        linux-tegra@vger.kernel.org
References: <20220711152020.688461-1-thierry.reding@gmail.com>
 <20220711152020.688461-5-thierry.reding@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220711152020.688461-5-thierry.reding@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/07/2022 17:20, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> The Nyan Blaze and Nyan Big, as well as Jetson Nano (P3450-0000), Darcy
> (P2894-0050-A08) and Pixel C (Smaug) were never mentioned. Add them.
> 
> While at it, also fix a typo in the compatible string for Apalis Tegra30
> v1.1 evaluation board.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>



Best regards,
Krzysztof
