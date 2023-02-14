Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE7CB696207
	for <lists+devicetree@lfdr.de>; Tue, 14 Feb 2023 12:10:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231744AbjBNLKW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Feb 2023 06:10:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232970AbjBNLJy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Feb 2023 06:09:54 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EB022748C
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 03:08:56 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id m10so6303644wrn.4
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 03:08:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KLwpA0OxwlMvnto1nGfqBS7cDyIxy6xw25nq/tSi2dw=;
        b=eLCKenMFYhiaDpe4BJTbOvy22gGFMA91IudxvPqMa+ANIyjQXUd7rt7rjPZoAiZTC0
         Qqbsv5CaTOKvz0K5QbhQDE5s7LHmYj23gxZyhgkR+IhBfVLI/ypyqC2aeafsCSIjR+Hb
         QHln73xhqBb8YRbEOJat0mbrJnhy2DaYTiqKUhk540uUaY33TyiCd5KxOCJDkH08Ibtk
         R32RpZkcI4pEZe71Uh+7y2m3p+oucOZX7puKEC+bTT2o5CWoBLLUuSONbHFvP84UmbE7
         flpLE8SdAnNJNJhwbAUKrX7TsckRbdGqyBTqLXdClpMIg34g2gblNa7beO7EHcE3YWC7
         HLUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KLwpA0OxwlMvnto1nGfqBS7cDyIxy6xw25nq/tSi2dw=;
        b=D2dSJj5AkEkh+1lKQRFRxGbbOlXUR0AxK5XQyKZfvidS0kinvqCWfKF9RyCh1rFmL/
         4QrXhqeYABXjNFxS6eL25//nV6Bbt33xHl9z2xg4Qz5zHVWhBozTdLl2OZJNnq4qLLXA
         TmTSiYtYfGR1Bu49ZYaUDeO8Qgq8yGmxbX5b+Weu5rntzyE11ZIaPFdqfnFQEeF2m4YU
         R8WmKGI5uc+oghttR0F+/t0mD5qjOvTDQUvye1EicRSrRZw7NcO6rYfqFuCiA5Ucx6Db
         JZC33C9NASZNe2FrSvIokpehfqglG1J3f5H3l4cxEXR/cfOwzX3zn9OvMUb4x246Kp47
         W/TQ==
X-Gm-Message-State: AO0yUKV1RC5UwHmobTWlEUrR3hjobtcuTOPRT6WMp6FxhZ7jsJVrxkdr
        TyyXFYP9IzBlcOr5sLkMbpQDuQ==
X-Google-Smtp-Source: AK7set/RCCSzTIVHoLl3oD806xljlfED19rCaLzBbhEio+ZFt+dEIFFbAFI9S3/8Q8/K34jT1rlSdA==
X-Received: by 2002:a05:6000:1a43:b0:2c5:561e:808e with SMTP id t3-20020a0560001a4300b002c5561e808emr1377566wry.12.1676372907264;
        Tue, 14 Feb 2023 03:08:27 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id j16-20020adfff90000000b002c55efa9cbesm3274456wrr.39.2023.02.14.03.08.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Feb 2023 03:08:26 -0800 (PST)
Message-ID: <15bdceea-0faa-4691-d977-6d74dfe29b02@linaro.org>
Date:   Tue, 14 Feb 2023 12:08:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 14/16] dt-bindings: dma: apple,admac: Add t8112-admac
 compatible
Content-Language: en-US
To:     Janne Grunau <j@jannau.net>, Hector Martin <marcan@marcan.st>,
        Sven Peter <sven@svenpeter.dev>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mark Kettenis <kettenis@openbsd.org>
Cc:     asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vinod Koul <vkoul@kernel.org>,
        =?UTF-8?Q?Martin_Povi=c5=a1er?= <povik+lin@cutebit.org>
References: <20230202-asahi-t8112-dt-v2-0-22926a283d92@jannau.net>
 <20230202-asahi-t8112-dt-v2-14-22926a283d92@jannau.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230202-asahi-t8112-dt-v2-14-22926a283d92@jannau.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/02/2023 12:03, Janne Grunau wrote:
> The block found on Apple's M2 SoC is compatible with the existing driver
> so add its per-SoC compatible.
> 
> Acked-by: Vinod Koul <vkoul@kernel.org>
> Acked-by: Martin Povišer <povik+lin@cutebit.org>
> Signed-off-by: Janne Grunau <j@jannau.net>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

