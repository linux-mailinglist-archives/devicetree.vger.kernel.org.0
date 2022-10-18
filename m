Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 41E19602FD2
	for <lists+devicetree@lfdr.de>; Tue, 18 Oct 2022 17:35:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230353AbiJRPf1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Oct 2022 11:35:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230421AbiJRPfY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Oct 2022 11:35:24 -0400
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com [IPv6:2607:f8b0:4864:20::730])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 507D39D50D
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 08:35:17 -0700 (PDT)
Received: by mail-qk1-x730.google.com with SMTP id 8so8880708qka.1
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 08:35:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=25PwxIH+CB97dQc4eYwSt0zvL+9wdm4R+OmiPZ9+hOg=;
        b=hVhI1Eey5dbcwXydi3lYE9Lk8I43h3vFLe18BDCO/eubcZW6NpK14BxeXXlYY24QQP
         jLXacQR8VA9cx4wf53RdYtFWA2HP7a1sxIwM//md8ko0L9eN0grEIBZeWWH/K6JC7fpB
         fSFHco9vH0HpVhOLqCIoE/rxvD2PR6YIi3i6I8Zuf5INLvcxlLCGjZ3uVrlL4588Hpak
         32JicqOg2kBcQIQPa74qAV6G3dhcnMfVpKjeP0v/AkMrMgoUDP002w1J7az84XYNEbAA
         guhDgjOZN58eFXlbt4V+VsK6J7oF2H7He0PIvkI47IoQo7WiXl1zosLxCoQtu9j1HCJI
         YgIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=25PwxIH+CB97dQc4eYwSt0zvL+9wdm4R+OmiPZ9+hOg=;
        b=5O+TKAXvsA+gse4FYAvHa0QScoDeKD54XpV5swnC8n/apbgYEycOu2hjEj+e9nZDxC
         TYKRkwvO5b0Oz9N8l6d+ur95nFvbo44CFS0slJqw85quAx+lzeOs7rzfXQfHqEgmywCC
         fGMTop9MKOHibfGet+c1Wcp3b3TKOOx73qexRozt86DcUlKNe6NLBQA19aj2AsymhX8z
         HYrwYLLrUx7fz0ZyJuO8CW5kFZCeJjJVHgvBhgPgvDQI/S4ws5yeF+C9KGYvPLdInvsk
         u3X9DrePQc85XANlinkFHbKWLaTjqNs/RbwSrhXAIKMP0oGLrXUZ8IuGxoIJeZgTUo3H
         boZw==
X-Gm-Message-State: ACrzQf2a51HYCP5gSG00u/y5Z0/hr/1ZjjP6z4Vwo2iCRbFzFBwLMAJB
        CJePh5e4e/IqHvLZqplUeW2dYmtiX+KE7g==
X-Google-Smtp-Source: AMsMyM7Ec+2NOvmVhPeq1YdxqxGi+TsLMp/yC5NqZd87LleGwgSDvVjH29TgEQ1RAAmO1f7eeUg+bg==
X-Received: by 2002:a37:8003:0:b0:6ec:5699:1c8f with SMTP id b3-20020a378003000000b006ec56991c8fmr2230338qkd.671.1666107316086;
        Tue, 18 Oct 2022 08:35:16 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id s7-20020a05620a254700b006af0ce13499sm2617929qko.115.2022.10.18.08.35.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Oct 2022 08:35:15 -0700 (PDT)
Message-ID: <c0fa08c2-d20a-72f6-29e5-42f592a2124a@linaro.org>
Date:   Tue, 18 Oct 2022 11:35:13 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [RFC v1 03/12] dt-bindings: usb: mtk-xhci: add support for mt7986
Content-Language: en-US
To:     Frank Wunderlich <linux@fw-web.de>,
        linux-mediatek@lists.infradead.org
Cc:     Frank Wunderlich <frank-w@public-files.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20221017104141.7338-1-linux@fw-web.de>
 <20221017104141.7338-4-linux@fw-web.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221017104141.7338-4-linux@fw-web.de>
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

On 17/10/2022 06:41, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add compatible string for mt7986.
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

