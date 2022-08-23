Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E89359E738
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 18:29:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244640AbiHWQ1G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 12:27:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244684AbiHWQ0v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 12:26:51 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDE08119135
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 05:51:41 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id q18so12395836ljg.12
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 05:51:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=2CjazNJKWxawIRrAspwhPS6UmjSbXOY3YGzYB4E+Plc=;
        b=PPLvIhXyebaOzt5ZAgHRARuDpjE3QXcTZv8jgbNY3zvBxdR5T0KE8RXbL3ML0vLwwB
         utCyLkgq11HaiFzWK0PFjwBSeIkes+bOWEYJ3CaofriBJbCbD9Qhx0lN8j5/GtjKwYYb
         m2K9YR+tgW5R1pBYPlAQJkVPKATZjYOH/NCSBf2RhfXcTCWroHyMVa6FoWqCo3dP3inn
         CjTL8urZ46DjEbFoimD1Pr29eOLhWBHVc5d6dIC6RNja2OZ8AZ2wUPeQ61HgB2f6EfKk
         PETJTyGEGsqOX15mWMZcrVeKFaWM0VtdOfIdJzvG0XJ0xpUUwCviiqf1gi1dVUDnqb17
         Os5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=2CjazNJKWxawIRrAspwhPS6UmjSbXOY3YGzYB4E+Plc=;
        b=BD0XOFCyQ31eSWLU2YHi0obndCrdLp2whNw+2g0p7MFQMvUTD67I9FuJDP8zwQ144E
         HpKRlTamljsdrG3mDC50NbUeR7KIPsFaNZL3W+tFw+l1jR/Kv7lgHDFZCwjK7Mu/UkzA
         LoYy/8qqpkzfGhw5XQN5uJD6lsHGY+OJQJGz8fdtB+PShDaJGQ9vzxeR2U3T3uKSRJCS
         GlSa1Wiv5LJK5wqCKvuv9CHji7i7mRxg4wrLXiqXFHqhBClmKH63vxRNAyeSm7Zq8MIB
         pbcMzdvAQDU+L8thyCXLMriOuNiaX87kQ2I5EtB57oblZR/YmLNi3FnBlDL/9riTcKtr
         rmsQ==
X-Gm-Message-State: ACgBeo3qspwQI79UqS/etkr/kwtEy9x9t6jodJX5a7rdOFqYafms9/lr
        lcnZwPV6UouknEuTE5De1ckVVA==
X-Google-Smtp-Source: AA6agR58Hgvt7z3DYujhjrD2ZnvOcvvv4OymBiELF8Edk9l9F6qF62D2kPrhZN7V9Fcd3PvG3QDT+A==
X-Received: by 2002:a05:651c:b29:b0:261:d351:9dc4 with SMTP id b41-20020a05651c0b2900b00261d3519dc4mr1840748ljr.409.1661259099827;
        Tue, 23 Aug 2022 05:51:39 -0700 (PDT)
Received: from [192.168.0.11] (89-27-92-210.bb.dnainternet.fi. [89.27.92.210])
        by smtp.gmail.com with ESMTPSA id e9-20020a05651236c900b00492e148365fsm1234663lfs.294.2022.08.23.05.51.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Aug 2022 05:51:38 -0700 (PDT)
Message-ID: <05f99396-f6e9-a315-7264-c659e3ec507c@linaro.org>
Date:   Tue, 23 Aug 2022 15:51:37 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v1 1/4] dt-bindings: mediatek: modify VDOSYS0 device tree
 Documentations for MT8188
Content-Language: en-US
To:     "nathan.lu" <nathan.lu@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     "jason-jh . lin" <jason-jh.lin@mediatek.com>,
        CK Hu <ck.hu@mediatek.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Rex-BC Chen <rex-bc.chen@mediatek.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Moudy Ho <moudy.ho@mediatek.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, srv_heupstream@mediatek.com,
        wsd_upstream@mediatek.com, lancelot.wu@mediatek.com
References: <20220822033213.15769-1-nathan.lu@mediatek.com>
 <20220822033213.15769-2-nathan.lu@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220822033213.15769-2-nathan.lu@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/08/2022 06:32, nathan.lu wrote:
> From: Nathan Lu <nathan.lu@mediatek.com>
> 
> modify VDOSYS0 device tree Documentations for MT8188.

(...)

> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml
> index 0882ae86e6c4..d0e6c0dd4dfb 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml
> @@ -30,6 +30,8 @@ properties:
>        - items:
>            - const: mediatek,mt8183-disp-rdma
>        - items:
> +          - enum:
> +              - mediatek,mt8188-disp-rdma
>            - const: mediatek,mt8195-disp-rdma

Why do you change existing bindings?

Best regards,
Krzysztof
