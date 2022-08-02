Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 18625587AD6
	for <lists+devicetree@lfdr.de>; Tue,  2 Aug 2022 12:41:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236311AbiHBKlH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Aug 2022 06:41:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236338AbiHBKlC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Aug 2022 06:41:02 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D14CF12AE5
        for <devicetree@vger.kernel.org>; Tue,  2 Aug 2022 03:40:59 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id z4so503941ljn.8
        for <devicetree@vger.kernel.org>; Tue, 02 Aug 2022 03:40:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=6zonPHc10wroJYzLLqDfZXlsbdw9PnagEXnZiDm2IM8=;
        b=qhkT18pqWd4Ope24rPhU4UQNXEeEhU8JPJvRH/jsNkNGnGEFvkoGfIvgq/QU0EDJIE
         uaDX74nH7ivlK6+KPpyITD9GALgHx/sBnO6Nv8C47nSStcHeSLqvR/s38UOtPflpYa0D
         fsNzs6BYIi4hPckKg3zHv2VujKa1YpGYaD7+IkrOttF+n6fk9mdpeuTF2Dbh8Ns/lfPM
         KZr8r+p1NbVIrlggQQmoKDrM5DnXN8welF9mX+hK7WaG10TaKLX8QL7BduNSr0f5CmIb
         HF9e7jzB2fegrDnl9gcIA78opJ3eZ6WvYJ1lwjS8jCt/x2mBVE+uWkkXMCsMAkAfTG8b
         3sgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=6zonPHc10wroJYzLLqDfZXlsbdw9PnagEXnZiDm2IM8=;
        b=3f/R4L8V38E8OaAVQyXX8UitqRRimlECenB5rWUtTIS6EErKIUl67kaJbB6SD+gGf9
         Dv6NvkZG1CByuTTXCAfKrleuAOyDyBP4crjkdRhlL9uZiWeZG2NhCFdJxRBoBCqbJcWS
         Lxws/C380pOCKIF4cU7KscUOTqoKgi6h8RkVXRjYBKOi+cmv3GzglCM5bYDWqSN2DDQz
         OnMk5GQVZulHdlLi9c+PQtsqNtcTxPbsMKhZnbE4gSCYtB8BhG7rX7SNHanhKLVwkG8h
         5wfaL7lJOllwAsZ9NzM86YUJerpT/IOa0tvLh/QnkR3+qT+PwuUM+SIvT/Eku5XqT1YG
         mLvw==
X-Gm-Message-State: AJIora+m03nVYkfM3MqOQkjcGildXY8kPKj/40vOomGmZ5aTZ/ebZ2nZ
        mEwMLxuW5ekCAmhngvOgcW2aZQ==
X-Google-Smtp-Source: AGRyM1viAq740fqolN8iRpjad6KZJCVIGS0x4H0903BIUCQeult2NlMhLbS6JRtnajWOcqV+6gk1kQ==
X-Received: by 2002:a2e:a812:0:b0:25d:d922:d with SMTP id l18-20020a2ea812000000b0025dd922000dmr6081524ljq.181.1659436858230;
        Tue, 02 Aug 2022 03:40:58 -0700 (PDT)
Received: from [192.168.1.6] ([213.161.169.44])
        by smtp.gmail.com with ESMTPSA id a42-20020a05651c212a00b0025e3f7fe9fasm1342295ljq.67.2022.08.02.03.40.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Aug 2022 03:40:57 -0700 (PDT)
Message-ID: <1bbb7f38-69ba-583c-e8ae-ccff3ad8f08d@linaro.org>
Date:   Tue, 2 Aug 2022 12:40:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v7 2/2] ASoC: sun50i-dmic: dt-bindings: add DT bindings
 for DMIC controller
Content-Language: en-US
To:     Ban Tao <fengzheng923@gmail.com>, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, wens@csie.org,
        jernej.skrabec@gmail.com, samuel@sholland.org,
        alsa-devel@alsa-project.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
References: <1659271861-3481-1-git-send-email-fengzheng923@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1659271861-3481-1-git-send-email-fengzheng923@gmail.com>
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

On 31/07/2022 14:51, Ban Tao wrote:
> +    dmic: dmic@5095000 {
> +      #sound-dai-cells = <0>;
> +      compatible = "allwinner,sun50i-h6-dmic";
> +      reg = <0x05095000 0x400>;
> +      interrupts = <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>;
> +      clocks = <&ccu CLK_BUS_DMIC>, <&ccu CLK_DMIC>;
> +      clock-names = "bus", "mod";
> +      dmas = <&dma 7>;
> +      dma-names = "rx";
> +      resets = <&ccu RST_BUS_DMIC>;
> +    };
> +
> +...
> \ No newline at end of file

This has to be fixed.


Best regards,
Krzysztof
