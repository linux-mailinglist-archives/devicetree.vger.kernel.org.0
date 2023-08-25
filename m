Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 92685788691
	for <lists+devicetree@lfdr.de>; Fri, 25 Aug 2023 14:04:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232014AbjHYMDx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Aug 2023 08:03:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241163AbjHYMDd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Aug 2023 08:03:33 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA2912102
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 05:03:30 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-4ff9b389677so1225591e87.3
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 05:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692965009; x=1693569809;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=taeO1AEsh0uP1pYQ9HGpFayxmjVLAo8NHH2wQoNtLFM=;
        b=rWU4iDDCZLjgqVS9HLbAQ2EG6MMqAi5q6+Twqdz6EWhrB8VyvX+wp5GTV7qVtAA0wx
         brwTIf7sgBl0ZQDb03cMVwIcWUJThoC/yh3YMFX4oAZpSaG8Wkaq24H0R5Bj2dNCASj6
         B8TLEYAUnr+vmQWQCAJWD/i7B39IAY2w4udR+Mb7ayGgSPGUf+teUxI4RBkTdRzfxa3W
         dRwXisdZORU4D0SPEIGtnElzHfxi9+N2x4OV7AiuQ5raQ0DuWAvUG/NF4rTsJiR28mw8
         H1Odj3dvv2gZz7Zu2Twew6WeC6ii4iHrVFr9kJLrtvtFCQH9g9EWYi0ktLK+Q88crxLu
         VHFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692965009; x=1693569809;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=taeO1AEsh0uP1pYQ9HGpFayxmjVLAo8NHH2wQoNtLFM=;
        b=KJpuh3AJHAaaU0ZyvYmalt4jM+3kYEOa7W7FuhczJ6LhhtjVb8t/H5KolsSACKDgS6
         HCZZntfOcQ9wSK07yIba8mipV7J02/F7XCyrzSJuPwXZ/1xvsKAUn9gQxXUPHeie4Lrw
         yT3c9tF/Jl8cBf0fhhEwlVES9Ep6DBktDSqgvmxvNLxsP/Q0R5d9o4AzG02BedUuA+vH
         7dIaRdyLYtUE5l4gEBSIEB33wO7eRWMdyi9TOj6xp7LVg5q21kUYuLrAoROZC2Y8WkeK
         FmbOaI8l+POmM5eklx0I3IlrM3HekW3youZhZVDsfTQWYt5C7+IxP/AFrCdF9FKfrCAI
         UCIw==
X-Gm-Message-State: AOJu0YzdBCcBZp4xK5sPH1TF7EI+sFA/FDt51PztgxAvJgv4ltex2H0F
        anu0c0dhjXvUS/HkdMsAErtlNw==
X-Google-Smtp-Source: AGHT+IHHPBfuWhEiDj0swCd1J9tLfn5NS1BOsfFV68R8Yh/Yt91I78MzNDbsdRnRJzelo10BvYmKmw==
X-Received: by 2002:ac2:5a5e:0:b0:500:761b:72ff with SMTP id r30-20020ac25a5e000000b00500761b72ffmr11352182lfn.55.1692965008885;
        Fri, 25 Aug 2023 05:03:28 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id t21-20020aa7d715000000b00523a43f9b1dsm940874edq.22.2023.08.25.05.03.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Aug 2023 05:03:28 -0700 (PDT)
Message-ID: <851aa91b-dda9-c2df-0e8e-66dec6756899@linaro.org>
Date:   Fri, 25 Aug 2023 14:03:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 2/3] dt-bindings: media: Add compatible for Meson-S4 IR
 Controller
Content-Language: en-US
To:     zelong dong <zelong.dong@amlogic.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Sean Young <sean@mess.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     linux-media@vger.kernel.org, linux-amlogic@lists.infradead.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Qianggui.Song@amlogic.com, Yonghui.Yu@amlogic.com,
        kelvin.zhang@amlogic.com
References: <20230825115310.39993-1-zelong.dong@amlogic.com>
 <20230825115310.39993-3-zelong.dong@amlogic.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230825115310.39993-3-zelong.dong@amlogic.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/08/2023 13:53, zelong dong wrote:
> From: Zelong Dong <zelong.dong@amlogic.com>
> 
> Add new compatible for Amlogic's Meson-S4 IR Controller.
> Meson IR Controller supports hardware decoder in Meson-S4 and later SoC.
> 
> Signed-off-by: Zelong Dong <zelong.dong@amlogic.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

