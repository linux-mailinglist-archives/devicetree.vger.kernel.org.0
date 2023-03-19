Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 99FDB6C00C7
	for <lists+devicetree@lfdr.de>; Sun, 19 Mar 2023 12:22:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230195AbjCSLWl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Mar 2023 07:22:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229593AbjCSLWj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Mar 2023 07:22:39 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 861F21F921
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 04:22:38 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id w9so36610408edc.3
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 04:22:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679224957;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5MvO/Da/vXp+FQwb+fkpWJ6UVyvRxEgrYpb2y3cdHv4=;
        b=zystIQT4MCgpr+mWAvxC/TiepveTN+l0c/HQKMV8AOrx97zCG/nsrJ4pWUtKS5kRIw
         HhyRpc+U1aIt2zlaOUVyLtnP+BFv1HZU+twhL5gpwPqqe4lLDixmmFdVW098+gEBis2m
         mw3B3pMPwhQ9rxV+5Hpwk8mX+6FTKQlqCu9LdcdEC6RjTXtZk38KXbuLCUJybVtag6Od
         61sA/AvILNsURnvA+pL8ihpzlTY8PjGT1XuVWG9X3mgbfxtxGQ1xYH12rLDbYUgO65xj
         fyjM1+vMD+vEUNGSVZsBDABMbGuS34Kp2+PcxwCRQRygl/2Mg3Wt9kRWJqO3ulCC9lHW
         /1cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679224957;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5MvO/Da/vXp+FQwb+fkpWJ6UVyvRxEgrYpb2y3cdHv4=;
        b=T8fZww6sDPWUZvRk/xrvRFrJ5PX8G2EAKpdcmqt0R727aAxIXgGiQozT4l8pBnoNqt
         EyAm8MI+fM3DCmCq51CPoWkbj7UYw50xp1voq6M7WlBR17hlzMqWvgDY9Q8hXiozjyEE
         wAcuxb/r3gV39b72eM/gnTu9+2QMZQSwOomqbLkHbAKqNRDN05LWYk4McANPfNQS8sj8
         9h6ojzNWn1H/RT/1exWb0jRHgVtCfyuW30LR8ndUk+RqNgGISemVvUMqGGCw3C5/WTjy
         CALPZK+fHZnlFPZXn1yczAYWF4ueounq26MCBOwfwDhYTg3GSKNY3RJo7txEEw9HVCcv
         wtXw==
X-Gm-Message-State: AO0yUKUxNgPjUUh2W3sEOKeeG/knWxjAbmtwTZV/1PYAQ68FqLYlCkPq
        novQ1rGHazBv4lmslbx/DZR4hQ==
X-Google-Smtp-Source: AK7set+Rk1oCyHSti7CFYtrp+fbuExnaEFeI9SfYEF/GgMA3WA2UBTOCUAs8kb6XYh3+CtBCGWp7XQ==
X-Received: by 2002:a17:906:fe04:b0:933:6ae6:374d with SMTP id wy4-20020a170906fe0400b009336ae6374dmr2282754ejb.73.1679224957034;
        Sun, 19 Mar 2023 04:22:37 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:5b5f:f22b:a0b:559d? ([2a02:810d:15c0:828:5b5f:f22b:a0b:559d])
        by smtp.gmail.com with ESMTPSA id u19-20020a50d513000000b004fe9386b259sm3423545edi.41.2023.03.19.04.22.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Mar 2023 04:22:36 -0700 (PDT)
Message-ID: <b8b067d2-5d73-f713-df87-229275140276@linaro.org>
Date:   Sun, 19 Mar 2023 12:22:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] dt-bindings: serial: renesas,scif: Fix 4th IRQ for 4-IRQ
 SCIFs
Content-Language: en-US
To:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Magnus Damm <magnus.damm@gmail.com>,
        Biju Das <biju.das.jz@bp.renesas.com>,
        Wolfram Sang <wsa+renesas@sang-engineering.com>,
        Chris Brandt <chris.brandt@renesas.com>,
        linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org
References: <719d1582e0ebbe3d674e3a48fc26295e1475a4c3.1679046394.git.geert+renesas@glider.be>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <719d1582e0ebbe3d674e3a48fc26295e1475a4c3.1679046394.git.geert+renesas@glider.be>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/03/2023 10:46, Geert Uytterhoeven wrote:
> The fourth interrupt on SCIF variants with four interrupts (RZ/A1) is
> the Break interrupt, not the Transmit End interrupt (like on SCI(g)).
> Update the description and interrupt name to fix this.
> 
> Fixes: 384d00fae8e51f8f ("dt-bindings: serial: sh-sci: Convert to json-schema")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

