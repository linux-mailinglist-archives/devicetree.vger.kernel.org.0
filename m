Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 090E278CB3A
	for <lists+devicetree@lfdr.de>; Tue, 29 Aug 2023 19:27:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233813AbjH2R1I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Aug 2023 13:27:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237700AbjH2R0j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Aug 2023 13:26:39 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B30D7E5D
        for <devicetree@vger.kernel.org>; Tue, 29 Aug 2023 10:26:03 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-99bc9e3cbf1so4192666b.0
        for <devicetree@vger.kernel.org>; Tue, 29 Aug 2023 10:26:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693329926; x=1693934726; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AOsSOchRRigf+GMT70wdUDRGXijaBiL95u8f9cme2Mo=;
        b=cI7DrUQCA0eO3HR1BMDsh3g1QKwTRitG1EGpq/PrigRr/OMRllvUBLx7redXF3v4jx
         skJPD65EZX8LBcHAbqVQZ9N/ESeI+VNm5kyV3fVprRHi9ksg+OucTErw42JlRLftfAom
         PgA2xt0fXM0fhRgnW7mmSK7oAIO1NWCHqiVOxWmFgQKDnoXQ2fgtVllFwTOlwdSQeOzc
         ESTLnHVFN0H4Mxb4m20xc1pQJrzsogvk4SrbRqZ8gGgPpeU9EKTyCzvlj+NrlrFZ0usB
         OqFofAjgmruBGyIC+ZMBUXp0v3bQ9PaAXuOKCwnBiR018GOOqvXk6SYekWPDxQlLVx0K
         tt6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329926; x=1693934726;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AOsSOchRRigf+GMT70wdUDRGXijaBiL95u8f9cme2Mo=;
        b=Ge3FZQUJ23YI7kK/wmbOQiwd1NDys3+UtglpwVP5e8N9CNc+KEXvouoU+PDE/JMJZA
         8msrE84Ns9I8cFADGmutVm9E5sfhUd9wumP5d1awMpkyDd679RsMvNEbAHXgEUVrg9ke
         HLk0srm+zVeqb6b/V1bcogebE1gNKQZ9QnjRYBpTqbdlhwacqr3yCMW8DdmU7MF5NIsl
         UtKU0B7BHdCLgZk1z1O1EQ+XIw/uJaquip9gGFRrFftnjDlPem/dRI0YaJ9+LxEG04OK
         dZETQSPVWsAPGTEFeDIHE7+6xhZSx4SVZkmfuIY1cpMVqxpkdbLXkpctu8/ukpaLuvn+
         XxMA==
X-Gm-Message-State: AOJu0YzkSa3Ju7s2M3VvMs36R1dAkf7ZCNzUfcZAdLsMlnnM7FFLEcVS
        yGKcFMrW9KLKMGnf+F8cnVGMfg==
X-Google-Smtp-Source: AGHT+IF3yG8pM/1QQYR3cM78PgXLt47SF3cJUeeTGTYGaG5gDIhDp0rbhT11KNATVil2Mt43nb0AVg==
X-Received: by 2002:a17:907:6d0d:b0:9a5:7b9a:f32f with SMTP id sa13-20020a1709076d0d00b009a57b9af32fmr3582562ejc.1.1693329926489;
        Tue, 29 Aug 2023 10:25:26 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.196])
        by smtp.gmail.com with ESMTPSA id v17-20020a17090606d100b0098669cc16b2sm6103226ejb.83.2023.08.29.10.25.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Aug 2023 10:25:26 -0700 (PDT)
Message-ID: <771e116c-7e0d-d238-d35a-c5e9a44ce571@linaro.org>
Date:   Tue, 29 Aug 2023 19:25:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 16/31] ARM: dts: rockchip: Add SRAM node for RK312x
Content-Language: en-US
To:     Alex Bee <knaerzche@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, Lee Jones <lee@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc:     Elaine Zhang <zhangqing@rock-chips.com>,
        Johan Jonker <jbx6244@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, alsa-devel@alsa-project.org,
        linux-clk@vger.kernel.org, linux-phy@lists.infradead.org
References: <20230829171647.187787-1-knaerzche@gmail.com>
 <20230829171647.187787-17-knaerzche@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230829171647.187787-17-knaerzche@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/08/2023 19:16, Alex Bee wrote:
> RK312x SoCs have 8KB of SRAM.
> Add the respective device tree node for it.
> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> ---

This really does not depend on your MFD, GPU nor ASoC changes. Keep
independent work for different subsystems separate.

Best regards,
Krzysztof

