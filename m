Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 911B8737B58
	for <lists+devicetree@lfdr.de>; Wed, 21 Jun 2023 08:39:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230488AbjFUGhI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jun 2023 02:37:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230401AbjFUGgW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jun 2023 02:36:22 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C654E10F8
        for <devicetree@vger.kernel.org>; Tue, 20 Jun 2023 23:35:47 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-51bdd67a306so192596a12.3
        for <devicetree@vger.kernel.org>; Tue, 20 Jun 2023 23:35:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687329346; x=1689921346;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TBtUPCGAEPqgP2wnbS7IOunwA2YiB6sHP58rxfnARBU=;
        b=iwRmwYAzjTB875SQ/kRpszCaNts2yMoTHvkh9s0vK6iwyneD7d8yz0vPSolFsjIE6f
         kFLi0SY8LASyHKAEESOCnUKLan1kNLEYBGJYKAxkCdMFmOKvUc5HrWMeuziKlhtoHzm6
         BKU1wkotTSYLYuxpb5nnhDhIglIy+IA7bBDFWvoC+11rPK3qQgTXnjokU652QvcN0idJ
         9cGQg2UIgeLAuSRiA5a830ojbcaRThGCG8Gva/2TyuXPWOtr/0SD/rzpOTkLirf1oN3V
         bhgv5bIvgJsAimJ5Ymo5ggKNrSFPwfZsoNVe5oQPuI4/w14DIzL4AyLIMsdIX2z4Arns
         ahIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687329346; x=1689921346;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TBtUPCGAEPqgP2wnbS7IOunwA2YiB6sHP58rxfnARBU=;
        b=cCisv3HvYw8lu2Sgzew4F1TAkk83UIsa9bS0/UZXEP7k2UPor0keagh7Tx8AnUj5es
         Kd5M8FEfWd1/V8RygSq2w+X+s4szOCKqq9v442wgsPWCnaxD+EQvhnk4V4RmmUv9LIzP
         1BNdhSRqUguXqusO5VStKJMeixT51U1GDRoNYwURFn8EPuCzh8U/Bx4nYWftRRuEqJlc
         SPSbmy2SvLhXyUo6xh4wadP5NToTSa/jbkn25NpycLl1xSHFqShvBj/yQqSFwVJuvC7e
         Ik0x+tz4qKypFpVYNxpyHIUfgi0GMdCWH2PYRQP8gbGXYXdRMCTi2IPtDixb12KMSRIe
         H8+Q==
X-Gm-Message-State: AC+VfDxgbsT0ZizScqfFEA0ZGYufwXKhVjf6XKjaIs+O6//2fXaczjQi
        TLm96O1n/81tMLhUgQTpRsMwXw==
X-Google-Smtp-Source: ACHHUZ56k6K+LjMGmAXaNkPdn36c6LtNKoR3pnmcKIBBUIePrvOnsXJvC9WonrWnlT4BSUD9NQhfag==
X-Received: by 2002:a05:6402:64a:b0:510:f462:fc47 with SMTP id u10-20020a056402064a00b00510f462fc47mr10362174edx.7.1687329346218;
        Tue, 20 Jun 2023 23:35:46 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id c17-20020a056402121100b005158563be4asm2119097edw.33.2023.06.20.23.35.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jun 2023 23:35:45 -0700 (PDT)
Message-ID: <e24bdb45-4a30-7358-17ec-9788942cb28b@linaro.org>
Date:   Wed, 21 Jun 2023 08:35:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v4 04/14] dt-bindings: display: mediatek: padding: Add
 MT8188
Content-Language: en-US
To:     Hsiao Chien Sung <shawn.sung@mediatek.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        Singo Chang <singo.chang@mediatek.com>,
        Nancy Lin <nancy.lin@mediatek.com>,
        Jason-JH Lin <jason-jh.lin@mediatek.com>
References: <20230621031938.5884-1-shawn.sung@mediatek.com>
 <20230621031938.5884-5-shawn.sung@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230621031938.5884-5-shawn.sung@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/06/2023 05:19, Hsiao Chien Sung wrote:
> Padding is a new hardware module on MediaTek MT8188,
> add dt-bindings for it.
> 
> Signed-off-by: Hsiao Chien Sung <shawn.sung@mediatek.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


---

This is an automated instruction, just in case, because many review tags
are being ignored. If you do not know the process, here is a short
explanation:

Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions, under or above your Signed-off-by tag. Tools like b4 can help
here. However, there's no need to repost patches *only* to add the tags.
The upstream maintainer will do that for acks received on the version
they apply.

https://elixir.bootlin.com/linux/v5.17/source/Documentation/process/submitting-patches.rst#L540

Best regards,
Krzysztof

