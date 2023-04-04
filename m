Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 015CE6D6CE1
	for <lists+devicetree@lfdr.de>; Tue,  4 Apr 2023 21:03:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235888AbjDDTDH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Apr 2023 15:03:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236412AbjDDTCw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Apr 2023 15:02:52 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B92C4C20
        for <devicetree@vger.kernel.org>; Tue,  4 Apr 2023 12:02:41 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id fi11so11194689edb.10
        for <devicetree@vger.kernel.org>; Tue, 04 Apr 2023 12:02:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680634960;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Yw5X/z4gzVpoCSKVcfq9MyB5/tYZSDGq7aTy4vsluK8=;
        b=p81NpqTRiWIYUax0xjnu2q64cUiRW+AXxMLFzyoxCihC3kiw5TZQddcwsme0FjdxNH
         UGqoafTBxhJ1njM7UhF9jiuqA7rnB2WsStf8p7fxyMwyMxTKurmA3k2STQpZxpefrWI3
         HA+xYAhn1mA88K35w4iFJaflVLRRdr5dLgNHGIwUikfXkaYxkP9OwXIgSX5UzwksiEa0
         yoS6XBFIylNNi9OoVba4UAa8+L4d7COOQVRtwAeynPkUDB/MTgv9QwF7VM+rHTbQSqDf
         Eu+wVXlsUaKBhrOeDcdJgsfFg2owwwtSGGMWfGuJdH7UbAsal8VGpY7Gb+z+Oceriihl
         /kVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680634960;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Yw5X/z4gzVpoCSKVcfq9MyB5/tYZSDGq7aTy4vsluK8=;
        b=mFOYWACpK6G+0Y62tFMtD0H6KCg33CR3QpK3GGQvQq2JNoAyGso0twvU+mFFEwJzsb
         B36zZJY4WWsxOzZNBXCVupRvS2Wghkak0WENJcdkXh4R5zfY7j4eMCs1L6wZfa5tacOI
         4BFiAfI47BifxtqDcPIOKA+Er17X2WsMhvR9muZ5Kdg4E6ErkAsHfvoAs7RInTO2qQR2
         LNKPmoGnmY86y0WdWsdNwkm2GG3FC8wTTFGmSq8pfbFFHczFBdKjtKJltOf4s+vjLp8X
         kJgvzNUTeaSzEKkbzx6jmKfo2gX55tmR4IiRttCknWgbhMBIOw1KqJP7kjaVpxcRK/SQ
         PwCw==
X-Gm-Message-State: AAQBX9drR9hKucJjjMcyRDSWWKt0KbgCdK78PVSf9rxdeexbuSSu39Z1
        M69OjnflGG/4FgQaA6rbrczYyg==
X-Google-Smtp-Source: AKy350Z2iXkWLR5Nn7m0PeRSz1c5znwSPs8FvKhjoUJ4OsomkYvuZp7mPyk32vQkhEbtFStUEicfIQ==
X-Received: by 2002:a17:907:c201:b0:8b1:75a0:e5c6 with SMTP id ti1-20020a170907c20100b008b175a0e5c6mr506790ejc.18.1680634959752;
        Tue, 04 Apr 2023 12:02:39 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:7467:56f4:40b7:cba8? ([2a02:810d:15c0:828:7467:56f4:40b7:cba8])
        by smtp.gmail.com with ESMTPSA id 20-20020a170906101400b00947732c6521sm6355205ejm.79.2023.04.04.12.02.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Apr 2023 12:02:39 -0700 (PDT)
Message-ID: <baaf63d1-272f-d326-cf6f-b6150afe34e2@linaro.org>
Date:   Tue, 4 Apr 2023 21:02:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2] arm64: dts: rockchip: Enable RTC support for Rock 5B
Content-Language: en-US
To:     Shreeya Patel <shreeya.patel@collabora.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        kernel@collabora.com,
        Christopher Obbard <chris.obbard@collabora.com>
References: <20230404174121.38727-1-shreeya.patel@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230404174121.38727-1-shreeya.patel@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/04/2023 19:41, Shreeya Patel wrote:
> Add DT node to enable RTC support for Rock 5B board.
> 
> Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
> Reviewed-by: Christopher Obbard <chris.obbard@collabora.com>
> ---
>  .../boot/dts/rockchip/rk3588-rock-5b.dts      | 25 +++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> index 95805cb0adfa..fcb5af09e49b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -27,6 +27,31 @@ vcc5v0_sys: vcc5v0-sys-regulator {
>  	};
>  };
>  
> +&i2c6 {
> +	status = "okay";
> +
> +	hym8563: hym8563@51 {

Node names should be generic.
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

Best regards,
Krzysztof

