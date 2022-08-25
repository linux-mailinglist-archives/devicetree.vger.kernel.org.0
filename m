Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A4FC25A08BA
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 08:18:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235360AbiHYGQU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Aug 2022 02:16:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235450AbiHYGQQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Aug 2022 02:16:16 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 549E9A00D7
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 23:16:15 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id bx38so18409039ljb.10
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 23:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=6eX1BCgETxpvjvzuPzcdcjI9NXTy9Ze4DX2J+5QEsZk=;
        b=uDyBXqWr+lPD/ZmtW/w7/gh4xVS32yx21+JN2Wy4Cmt9g1koHNDeGJA9hP+dk+pQ9o
         sfFv/qebV6A4014opoAjppk7WLd46Ed2/jE7g7+muQiSKEDrHcq1ENIxXedpdCBje8Kw
         XTJBltrZ379R58fBjJArXmbzJFeSGZJsbrngePGfJKLe6GSdc5iRsEZdrr+C4BtfafNl
         XMRsdulD03jv+KGxjxPEn1P2VPIIGL3fUoGWALQBwkh4uYl3kcyG3Yp2pdcrFqO/b9t0
         0L8P+IKWwbV+BbFx9sYczk4dhfe9mAu9B7DO20XTRF+GHDysqh/mqE0ggNVvr15XB10s
         aFrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=6eX1BCgETxpvjvzuPzcdcjI9NXTy9Ze4DX2J+5QEsZk=;
        b=WmtN7Mbyyxb5J/aAxjECf74GmEF0uLA5Nb4EaUa9EXC82+L+EWplLNh7IZJdqf1yBi
         n1QDopH0nX93ROMJAM5Suiz9s6KeSj104yC09o1Nt/mIUgejOh8qovRYdcfJSYtSnx12
         anOi9dS1sU3jJIgbq3LQx6gbD0lRJmClTkghoqGe5pHSnZHOOyfZLg8GyqfdiprmVSMr
         nE+JXc7fRjT4SMjXh0Sh6HBobXw/TxQTfVYN50nPBBDVvB60T24sQn5rYId2XABq7VfV
         NPoHVzcD+hK39X0fvSikKdHinAVqrrWWDS+XuX+Rj05Hx31TfPKhqdlS/Hd6o66ssFHz
         0rdw==
X-Gm-Message-State: ACgBeo0bawjDDUUPnxL0BtCF4pX3527Rb+bl8SDvzr8X4cvV7Y4e2FBd
        +y2d7Oi4+pTrvTtsGp2z4+uHBg==
X-Google-Smtp-Source: AA6agR5bwdz/qtNkVzzrjl5zRg+LBR0JoyjGsTqeu+pFcRYbZqsHQfZbNP9l4AVXS/xy6aLM8ep5gw==
X-Received: by 2002:a2e:a170:0:b0:261:e4e9:818e with SMTP id u16-20020a2ea170000000b00261e4e9818emr689248ljl.168.1661408172993;
        Wed, 24 Aug 2022 23:16:12 -0700 (PDT)
Received: from [192.168.0.71] (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id o11-20020ac24e8b000000b004926689d410sm315205lfr.171.2022.08.24.23.16.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Aug 2022 23:16:12 -0700 (PDT)
Message-ID: <8113a5d0-4029-2d0c-7c69-fa81d1b208e3@linaro.org>
Date:   Thu, 25 Aug 2022 09:16:11 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v5 3/7] dt-bindings: net: dsa: mediatek,mt7530: fix reset
 lines
Content-Language: en-US
To:     =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>,
        Andrew Lunn <andrew@lunn.ch>,
        Vivien Didelot <vivien.didelot@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vladimir Oltean <olteanv@gmail.com>,
        "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@mediatek.com>,
        Landen Chao <Landen.Chao@mediatek.com>,
        DENG Qingfang <dqfext@gmail.com>,
        Frank Wunderlich <frank-w@public-files.de>,
        Luiz Angelo Daros de Luca <luizluca@gmail.com>,
        Sander Vanheule <sander@svanheule.net>,
        Daniel Golle <daniel@makrotopia.org>, erkin.bozoglu@xeront.com,
        Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc:     netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220824104040.17527-1-arinc.unal@arinc9.com>
 <20220824104040.17527-4-arinc.unal@arinc9.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220824104040.17527-4-arinc.unal@arinc9.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/08/2022 13:40, Arınç ÜNAL wrote:
> - Add description for reset-gpios.
> - Invalidate reset-gpios if mediatek,mcm is used. We cannot use multiple
> reset lines at the same time.
> - Invalidate mediatek,mcm if the compatible device is mediatek,mt7531.
> There is no multi-chip module version of mediatek,mt7531.
> - Require mediatek,mcm for mediatek,mt7621 as the compatible string is only
> used for the multi-chip module version of MT7530.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
