Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 11661631E1A
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 11:20:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231296AbiKUKUq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 05:20:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229831AbiKUKUo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 05:20:44 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D05BA7FF2F
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 02:20:43 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id s8so18099642lfc.8
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 02:20:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gAbXbdR8tn/A2daiEKjdd5EXe8n3nNMCBEueeiNA9No=;
        b=OI1XsvQpRL7N+A4Y6vFvLTfNAWBX/8JMNw497sYjny8nlWJDx6nne21keEKIl1qk8/
         jv4Dp5XtoJxqmN2cPzrcJoTDgPXwV+2wczYbNmGlNX8bNBDEzYDMrPEmeI5HQvfIw643
         1THrDHjyySVoeCWcMaF2IjE7zklji2cqvegFMb7GKBAheFg31z0ZpJm6Za/z+rn0PB7n
         TsMR/yxX7girVOvpBWVZz5F+OFkAWz2K+LOJHrqfkkAxTMjBLNjDzoMBgHQbRDGGnJVa
         2gmYWZGchaKED5M73rIZF/doalshfZOvvALDhuK3SfuTE8FLpPs/po2SAt8nEg3Z5GIM
         yX8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gAbXbdR8tn/A2daiEKjdd5EXe8n3nNMCBEueeiNA9No=;
        b=qip/Lebk/3zChUEhhdLcb8yfdxXPDc6d/5Tl+YQrTFhBGewTE7OwDlEwBlMF1KVtr2
         2xlDsoYzBuyQ4N1FId/iQ6a5AGghzaS3qqyxEBXFPR7RsYbi5sLdn9Ne2x/4auWBBDM0
         s2sIshPw/CEvy10yCmyRZisHpH5+sBGGzV11/HDZ5iQM2cH7+VoWXBn6Gr+CectTHsjz
         wQYrPnTfPssifS8/aHOpKs3DSiWkKKLqKheKOW0MDueriZptrPWTYwIkV+3z6yU1rESO
         8ERWqyB3UMkQrTT+Iad6rJ8JZaGa0mA9gVl4RtKetYt752lKPI9sZkazKppmkoqJCrsh
         WbWA==
X-Gm-Message-State: ANoB5pnZU6vtM3i5iToEJEroxfKPOUyiUHo0puAF2ZuefesEx11hO5/S
        NpziRaMEt2r07m7V/jfGb96CJQ==
X-Google-Smtp-Source: AA0mqf5lJ3tRXmh+b1RKIxv3rj+0BDyqQr6TMSlqVaIkj+RLm4eY0HIc7UPyX+LJx3lQG0cCxCzmBg==
X-Received: by 2002:a19:4359:0:b0:4a6:ea05:73fe with SMTP id m25-20020a194359000000b004a6ea0573femr5428665lfj.181.1669026042125;
        Mon, 21 Nov 2022 02:20:42 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id dt27-20020a0565122a9b00b00492e3c8a986sm1959308lfb.264.2022.11.21.02.20.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 02:20:41 -0800 (PST)
Message-ID: <b8d16deb-2933-2a91-4cdc-89e3122fe89f@linaro.org>
Date:   Mon, 21 Nov 2022 11:20:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 4/7] dt-bindings: pinctrl: add bindings for Mediatek
 MT8365 SoC
Content-Language: en-US
To:     =?UTF-8?Q?Bernhard_Rosenkr=c3=a4nzer?= <bero@baylibre.com>
Cc:     Kevin Hilman <khilman@baylibre.com>,
        linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        "angelogioacchino.delregno@collabora.com" 
        <angelogioacchino.delregno@collabora.com>
References: <20221117210356.3178578-1-bero@baylibre.com>
 <20221117210356.3178578-5-bero@baylibre.com>
 <06e916b7-f8f2-6de5-f86e-7b020c052451@linaro.org>
 <7ha64o9h1d.fsf@baylibre.com>
 <76cae9bf-c81a-684a-c22b-9548dd82c8d4@linaro.org>
 <CAP2ifjMQAx23xc0p_LZ9Dj79Hx1cyLZ-tx8HrGUbtDR-SmdECw@mail.gmail.com>
 <CAP2ifjNeGqrr+LcMBAsVjEm8ciZ=zXxZxq3wppQ3Y37LbmvroQ@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAP2ifjNeGqrr+LcMBAsVjEm8ciZ=zXxZxq3wppQ3Y37LbmvroQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/11/2022 02:58, Bernhard Rosenkränzer wrote:
> On Sun, Nov 20, 2022 at 3:38 PM Bernhard Rosenkränzer <bero@baylibre.com> wrote:
>> I can prepare a "remove pins-are-numbered" patchset
> 
> ... and I did.
> https://lore.kernel.org/linux-devicetree/20221121015451.2471196-1-bero@baylibre.com/

Awesome, thank you!

Best regards,
Krzysztof

