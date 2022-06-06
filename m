Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 305D153E98F
	for <lists+devicetree@lfdr.de>; Mon,  6 Jun 2022 19:08:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232767AbiFFJW5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Jun 2022 05:22:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232714AbiFFJWw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Jun 2022 05:22:52 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30AD1A457
        for <devicetree@vger.kernel.org>; Mon,  6 Jun 2022 02:22:46 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id c2so17943550edf.5
        for <devicetree@vger.kernel.org>; Mon, 06 Jun 2022 02:22:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Lvxt3CeLbwjKXq4eA+1C9knCeSlV2LBjt2r6eE0mGP8=;
        b=xc1GlpZB1Dc3R5wAersdmWqfqehTEzQ6LgjQjefxqsiPYyp5uYV/NuHIT+PJKkRtTV
         sTbhtELUczK8DCmncPlMgXPo8wCf5CzG8aokPKOB8QlZk6rVo3pqcYNAxqZ2CcYJSeho
         KaYnqR4oof3zkKYFizSnSpaQi163NrYVsFPXbXBwsEzE4AzSI8vKsUEUT1gj5ZE/PFba
         rU+z3uTMeCThvCiR/6PBQ1EAr+Dd5M9ZsOKdEqL9FRTpua9aWRPMvDOobJUEOY9aZB+S
         D7C/bN7/Z9bGkfmBGQVnGoB5W/oolFo/juvUI6zymuuWEEiu2F7DxOw5JvBKPG5ILBGc
         WxHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Lvxt3CeLbwjKXq4eA+1C9knCeSlV2LBjt2r6eE0mGP8=;
        b=72whNl7iv6bNKbnHFcMhFV8cTTvd2RZelgBTdO9CT8jWQxiV5kN7Vi9e4fhLYvDs4I
         0hHdbrRyNqDpk/J69wxwVvE2ZBspRKb7He303W/cYmzXlrd7X56IaFss85XcFCS4UA7L
         dwCGJGwhGz4NMcq49SmpwQaTJ6iGUZroj1rskiCKFnqxkmvV6N8CQpIYsdz01LkG7n2m
         9kJeqMnqxikOLQ1X3raPKYe4M4Jo79Fe8fOix2ElHzZNzZm7O839CCzxZlayicD+ZRWe
         9PatQAsOnhKlH831WbkU3UR09MMMfSEyymq6A/FVCEa3UbuZd4cPLgKBYFLvStY1us6Q
         jhTg==
X-Gm-Message-State: AOAM530M8pY9KmzL72ixZNFt/dWUDzWFp2vPOnhOgHWYdpnifaTVOwCf
        ZMfLH7Y42G7kG2ShDZwVPi11lw==
X-Google-Smtp-Source: ABdhPJyZUTzWvyPC/I8lpqer8nndNB9z7nWaxlzgO7IQeEBsfo2ITzKEz5SnseCK3NQq7UX0JQrYkw==
X-Received: by 2002:a05:6402:27cc:b0:42d:de37:7e42 with SMTP id c12-20020a05640227cc00b0042dde377e42mr25773491ede.200.1654507365897;
        Mon, 06 Jun 2022 02:22:45 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id s23-20020aa7d797000000b0042bc54296a1sm8141292edq.91.2022.06.06.02.22.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jun 2022 02:22:45 -0700 (PDT)
Message-ID: <c86cb9c3-5fac-a990-f4cf-5aa8e4fe8a75@linaro.org>
Date:   Mon, 6 Jun 2022 11:22:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 4/6] arm64: dts: exynosautov9: adjust DT style of ufs
 nodes
Content-Language: en-US
To:     Chanho Park <chanho61.park@samsung.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20220602053250.62593-1-chanho61.park@samsung.com>
 <CGME20220602053329epcas2p407039a6087b6c460d6687b1cc1f3872a@epcas2p4.samsung.com>
 <20220602053250.62593-5-chanho61.park@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220602053250.62593-5-chanho61.park@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/06/2022 07:32, Chanho Park wrote:
> Drop "ufs0-" label name usage of ufs phy and hci nodes.
> Regarding the comments of reg properties, we don't need to illustrate here
> because we can find the description from the dt-binding doc.
> 
> Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>

This does not apply. Can you rebase and send the DTS patches as separate
patchset?


Best regards,
Krzysztof
