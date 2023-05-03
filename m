Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 745666F51F6
	for <lists+devicetree@lfdr.de>; Wed,  3 May 2023 09:41:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229773AbjECHlQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 May 2023 03:41:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229660AbjECHlP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 May 2023 03:41:15 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C09046A3
        for <devicetree@vger.kernel.org>; Wed,  3 May 2023 00:40:50 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-50bd37ca954so3923136a12.0
        for <devicetree@vger.kernel.org>; Wed, 03 May 2023 00:40:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683099649; x=1685691649;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8NQY68XqbO7JS+e1p1la5AoDcZK31JRYis4uxgq0QfA=;
        b=HPYY7y8kbHnPGIJIdzxcTYsIMaDy5akIZtzSPbLXs1Jkb1sIg4pWJdCW4JvKlqe1g7
         caIngIygk9zGEzFKr7RuZfLLLW9ga5ja+DoG1Y/RFrzQ2FSyb6c6R5gX/Eurk43Cy0Vn
         MU4tr/PWk5cT3P22UQ08NeS1k4Uf1WzJGURkpn/QRDseUAtOxrUsMXU7HugtPw+Vgkvn
         4C2uamePFJHN+ZVpMS+oRbJ+8/AXMQfntKg5GPakHkXUgVAze3fFlpMU24fgYat9oJbN
         3DSjdah3i08YWpeqivthjY49wwEsD8OHccbp8wY9MLTbTQfYJE+ZWPtKcORLuy049T6P
         JuMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683099649; x=1685691649;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8NQY68XqbO7JS+e1p1la5AoDcZK31JRYis4uxgq0QfA=;
        b=S5GYEG0xuVLeNa4imlCv0kE6r4J/7ErNcpTxTtcH4rHh7PmsalStwIHEFY9kinKOw6
         qj0Zv6rnGQeGkzT/8zR9CFeT2mwfHB8U5MipElZ8wlvPRDc/w6yggXYbJP5TtQQeZ90v
         0i93F5vciS3rKTj7nNOgcs1hvhv7Zkh+Kj+YpMZaY/3cKp2qJbuiclXp6CyDhS5irEvI
         GxiNHwoEDrmfMEJKAIRR/VpjRJQ5+Cv4sbOUF7AkcQyyP1kXmR7el5Sy2egg648HU/SQ
         QTdh0jhIGdeTHo1R56vQ1Y8alg7h9fOH3SYTc+J2i60Zq/lVAnqRXBhxuGcT1NkH8lwh
         9GZQ==
X-Gm-Message-State: AC+VfDxZ2OGus7ttIAlptlHpU6wxX+DDKa/IY3/eg2r2Vq/v/f+uCsq8
        jsQQG7KcrKoMR2/BksHEJqYRqw==
X-Google-Smtp-Source: ACHHUZ4Xi2yajxejcFfscwDLAhoe1bPX3XUYKiQXJGEVOJg+sOyaBu++hKVSesCglij+YlxIzfoDCQ==
X-Received: by 2002:a17:907:d1f:b0:961:8fcd:53b2 with SMTP id gn31-20020a1709070d1f00b009618fcd53b2mr1021658ejc.33.1683099649246;
        Wed, 03 May 2023 00:40:49 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:a40b:9d8:1fa0:ecc5? ([2a02:810d:15c0:828:a40b:9d8:1fa0:ecc5])
        by smtp.gmail.com with ESMTPSA id tl18-20020a170907c31200b0095ed3befbedsm9915775ejc.54.2023.05.03.00.40.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 May 2023 00:40:48 -0700 (PDT)
Message-ID: <38599073-0ef4-727d-b372-724526d5904a@linaro.org>
Date:   Wed, 3 May 2023 09:40:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: xilinx: Change zc1275 board name
 to zcu1275
Content-Language: en-US
To:     Michal Simek <michal.simek@amd.com>, linux-kernel@vger.kernel.org,
        monstr@monstr.eu, michal.simek@xilinx.com, git@xilinx.com
Cc:     Andrew Lunn <andrew@lunn.ch>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <4ba0eb85629ec5f07902a93fb75d13fff9697eb8.1683099606.git.michal.simek@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <4ba0eb85629ec5f07902a93fb75d13fff9697eb8.1683099606.git.michal.simek@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/05/2023 09:40, Michal Simek wrote:
> Internal board zc1275 was released also to public which ends up with adding
> missing 'u' to board name. Reflect this change by renaming DT files.
> 
> Signed-off-by: Michal Simek <michal.simek@amd.com>
> ---
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

