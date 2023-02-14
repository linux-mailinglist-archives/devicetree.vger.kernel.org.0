Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F284A6961F9
	for <lists+devicetree@lfdr.de>; Tue, 14 Feb 2023 12:08:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231611AbjBNLIf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Feb 2023 06:08:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232077AbjBNLIJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Feb 2023 06:08:09 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB59325E29
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 03:07:23 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id k8-20020a05600c1c8800b003dc57ea0dfeso13402332wms.0
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 03:07:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HQEgjB8iQrHXFvi6x0HqC3e3NzQlIfRJ2OzEMb4rms4=;
        b=Udkxu36THi8UO2i96oFvDF1wqHJsqvvEHmS1MWF2nsBbpj9L+Dh28tYjmEZ79fMj/L
         uKSlDNLGNUJyqaLdPTRYUtcrzUd/275RFlKPtKUVE9O4f+5Og607jOflfXXvtFM7GJLk
         yB6j+h8ebHokEoA2PC1bH/3Z8d9aC4aIK8sEpQhx3HJREDfy+ETFbmOkwopWVvitrezs
         4SNhG4QOZRD2wWacPrvSaGhdeKp654gh3aonSlFtMgER24NGJWlEixR+NHTkvrakl6Of
         Q3m6D0heF9C6SZCYeXva+GY6e53vrA46YMjaVZumWHFC02RziPWY1hW+7P39kY/UqTtn
         8Glw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HQEgjB8iQrHXFvi6x0HqC3e3NzQlIfRJ2OzEMb4rms4=;
        b=K/UfkN8EsVUtMExOYnoGveArNLzdAdmxjUs9b/8YuraGBWH7acFUPdpv/jL/JBQqlQ
         s2msk6QOO6++oJpaqj1IFzsYOUQm8lCGoLiaS4VR3qJV/LQZ0/5w1SGuqqE1EODI27VS
         ByYRtJiBKV2A5QxhMJeutDUG3rqvu8YN9jb+cJ2zrOPy3Z1WoYW87CTa2k16f6dhq8Sf
         C2r5riVSx0lPQaPkYvTqDG856DF7aFVIqAknwEy0jG5YHHxqAL+mvHJQuNIs79fTgpWa
         KFfsh9HqKdRqh6cILJtSHwpIDmk3R+AatLMzQePx59Wag0Nz8AO4NmEPbkzV6SOxXVfS
         on+Q==
X-Gm-Message-State: AO0yUKVsovC1AaFXh2QtnqXwArJ5AdxwX1ufbCl+p6Z6s325J9naRttN
        IvxzPow0D7m27gs6mJdZEX8pxA==
X-Google-Smtp-Source: AK7set9q3InICbsdVlrKuHRceOhDenD+ihnnwX6ouwoXU2njIZKLAxGLbZkOECERxjeZWBzAJdNj2Q==
X-Received: by 2002:a05:600c:1616:b0:3dc:53a2:2690 with SMTP id m22-20020a05600c161600b003dc53a22690mr1662902wmn.7.1676372830941;
        Tue, 14 Feb 2023 03:07:10 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id u13-20020a5d514d000000b002c3f50228afsm12516376wrt.3.2023.02.14.03.07.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Feb 2023 03:07:10 -0800 (PST)
Message-ID: <6241f548-8c55-b3dd-9b36-425026476653@linaro.org>
Date:   Tue, 14 Feb 2023 12:07:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 09/16] dt-bindings: pci: apple,pcie: Add t8112 support
Content-Language: en-US
To:     Janne Grunau <j@jannau.net>, Hector Martin <marcan@marcan.st>,
        Sven Peter <sven@svenpeter.dev>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mark Kettenis <kettenis@openbsd.org>
Cc:     asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230202-asahi-t8112-dt-v2-0-22926a283d92@jannau.net>
 <20230202-asahi-t8112-dt-v2-9-22926a283d92@jannau.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230202-asahi-t8112-dt-v2-9-22926a283d92@jannau.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/02/2023 12:03, Janne Grunau wrote:
> The block found in the Apple M2 SoC is compatible with the existing
> driver, and supports 4 downstream ports like the t6000 one.
> 
> Signed-off-by: Janne Grunau <j@jannau.net>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

