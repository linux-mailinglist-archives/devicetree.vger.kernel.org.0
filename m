Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A4BDA7508B8
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 14:50:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229907AbjGLMup (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 08:50:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232588AbjGLMuo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 08:50:44 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05B8D1984
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 05:50:42 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-3fbc59de009so71207165e9.3
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 05:50:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1689166241; x=1691758241;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XYsJ63thWaEnF2bdwDOY9GkDlg8P9/us46x/m6A1eFI=;
        b=hn8H70Zyxu8TQrRfZIDwdYKutfQz+JQgByvxMUo15F+OMIywfFp+Qe1KHa4SIyr4wo
         bqkkofWAawRDiaIa5iVwlqDsQ3Qq0VR8tdn/waIy4t/Nb5At258o9quiRvf8x/6b4qAJ
         zWcyLaHmENBOVZpWUM/XrYn4XXcgKwXqi87Xr/6ntu7TiQ+DjPCKfHzB4X3/04rzZ3hQ
         Rwr4z+XHlzVAPJ0AJC/Pr8NOpE0M8HahqrV9k6qGPN1q52NhccZEW4X5jWZBmrELwYlX
         Ast0Hj2NW8cGb8NnubWNxSSxBuwJCNUFkTo6xtIkeVB1+Ejj/jh5XGpsSw4lmPfFgiK8
         HpLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689166241; x=1691758241;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XYsJ63thWaEnF2bdwDOY9GkDlg8P9/us46x/m6A1eFI=;
        b=Gd4p44saG2TgIxgt6fKTlB4hC/oJ4sAETiAR5kGFk1rpY+1oe+j/unL8mTClWdnPPp
         LbRTeFnfKtmadpPJMecWeTOuHcUuxSw5hIDIrysUdtxtTbAlerShK93OK69UqwwzFuuR
         JsgdGLai1Hi+FUXJpBI3Rclr2A8tCQ+DZ6iP0fx8LJh/nd/71uKf3oS5nGLF07APuJHx
         rt+ahXg1ErW+JLpxnTHx0WRI7n8iGG1hUVopD+h6NuiReRO2foH6TVXt7xkBYuF8EVBj
         KHVxAFV7XDqrvFhBqOUnqpsVDjkfA2/jxAc7lWg0ReZbbPDHrAB87kUSJRW7QUYPaAsi
         drHw==
X-Gm-Message-State: ABy/qLYJD2CqLAOxmcF49mPSGqiCIfRpJovAn16oAOHbcNvmQQ0CLn0m
        0QG8eLYZJBFOALnqPvaleF6wdw==
X-Google-Smtp-Source: APBJJlHyphLNHtPrSUBpgCjJ2oqeaRUQji6SkdMtP6DiMk3xvuG5d//Mi73F/YxpSOuHVBAbBidBYw==
X-Received: by 2002:adf:ed4c:0:b0:314:212f:360b with SMTP id u12-20020adfed4c000000b00314212f360bmr16925439wro.17.1689166240964;
        Wed, 12 Jul 2023 05:50:40 -0700 (PDT)
Received: from [192.168.1.172] ([93.5.22.158])
        by smtp.gmail.com with ESMTPSA id y17-20020adfee11000000b0031274a184d5sm5023825wrn.109.2023.07.12.05.50.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Jul 2023 05:50:40 -0700 (PDT)
Message-ID: <5c24ae39-5114-1b79-a952-e7a364a1f2de@baylibre.com>
Date:   Wed, 12 Jul 2023 14:50:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [RESEND 2/2] ASoC: dt-bindings: mediatek,mt8188-afe: add
 memory-region
Content-Language: en-US
To:     Trevor Wu <trevor.wu@mediatek.com>, broonie@kernel.org,
        lgirdwood@gmail.com, tiwai@suse.com, perex@perex.cz,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, matthias.bgg@gmail.com,
        angelogioacchino.delregno@collabora.com
Cc:     alsa-devel@alsa-project.org, linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230712070821.23971-1-trevor.wu@mediatek.com>
 <20230712070821.23971-3-trevor.wu@mediatek.com>
From:   Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20230712070821.23971-3-trevor.wu@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 12/07/2023 09:08, Trevor Wu wrote:
> Add memory-region property to utilize the reserved memory region.

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>

-- 
Regards,
Alexandre
