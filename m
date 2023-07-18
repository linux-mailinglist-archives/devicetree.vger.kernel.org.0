Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2BD1D757F07
	for <lists+devicetree@lfdr.de>; Tue, 18 Jul 2023 16:08:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233147AbjGROIh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jul 2023 10:08:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233145AbjGROIg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jul 2023 10:08:36 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E48B2DD
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 07:08:33 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-977e0fbd742so774487466b.2
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 07:08:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689689312; x=1692281312;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=26kZNX589C4iel7QXWfs4d6fvzGm1fUt/wLrbSdfcEM=;
        b=hWHpHNHOn2baysENIVLRf3Put9jo2livos4yKD1QUrzec9GAQZWc4SOIr0oRVt2g5+
         KJ5iafB8yWfAsQovCftGxuIAqn3feQblOqRX/ZATiXJA4Kb6hOvg/MMcNo20SNVry1YJ
         dR64HQqqj6B9GXDq2cBb6XpBwaoCiloqqXVmPh6Eo21URVexP/vfvJ0qJuDabC/1FOVK
         37Foib7LnsnpNlG4DHBi1MH/VwoBpyJBjm3Gv2Po7d71DM1r/9sbkhpTGSn9hrjhICZB
         TE3UkNn4+hMXK1So46SkCIeSTcJoeYwGXj7bY6I5l9jfMj6tLNQ1ggkncuS0hCM1rYkW
         mPEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689689312; x=1692281312;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=26kZNX589C4iel7QXWfs4d6fvzGm1fUt/wLrbSdfcEM=;
        b=A3vvNVqHlwHVfg7DRGzb2FVFYTU9O0PZ3ZBq4L/Nk3Nl4M9N9duLbS36JDDtd9Ebko
         +r3NyNtb1DI9OmNMgq9LANoxEzhZpLb+fqXKn+PVsAjPisy9sET1rE5e//QgW7uBirS6
         ZkVpgcUbbye65i6KBPAk5ljRa1e/fIuRPbdzl4SoNgMvcFUXkm6dENeQj6xHyy6sWCF6
         kTRNQykf9NtPuex+LppULqOaxcaKIW9kWUhv0wcLsz7+iQ0dCN+yhlHpAIkJYP7EZyxl
         nYB0kDd43/Qmuoa0r0sYNexSvaqQB4e2Zt43sqckkKZ0garjini/Crr2+1yU9IqWgIAR
         yZjg==
X-Gm-Message-State: ABy/qLbUKfvoWVxiTkUx6zeSBx8l4rnsVpzeWJJgS7iOtp0uMcTeyT5W
        wdECHsAAJfxWqm36h5WF6x+52H1qTmfpk8eyMne16w==
X-Google-Smtp-Source: APBJJlHCK3uKU2SMKbvO9GDgWvSktEqjCttFrrrr5S6vtW7MEkY/RCJ4htqbv5QoLrYAC2oCyhe2CQ==
X-Received: by 2002:a17:906:5a45:b0:977:95f4:5cca with SMTP id my5-20020a1709065a4500b0097795f45ccamr13185377ejc.54.1689689312367;
        Tue, 18 Jul 2023 07:08:32 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id y12-20020a1709064b0c00b009929c39d5c4sm1086470eju.36.2023.07.18.07.08.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jul 2023 07:08:31 -0700 (PDT)
Message-ID: <a85a6d11-a3de-958c-bd87-d2fffe446bca@linaro.org>
Date:   Tue, 18 Jul 2023 16:08:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2] arm64: dts: allwinner: h616: Add Mango Pi MQ-Quad DTS
Content-Language: en-US
To:     Matthew Croughan <matthew.croughan@nix.how>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20230718124752.1279094-1-matthew.croughan@nix.how>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230718124752.1279094-1-matthew.croughan@nix.how>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/07/2023 14:47, Matthew Croughan wrote:
> Mango Pi MQ Quad is a H616 based SBC, add basic support for the board
> and its peripherals
> ---

Third email within few hours - no, wait a day. There are so many issues
here that sending immediately won't help you.

1. Missing changelog, so did you ignore entire feedback?
2. Missing Signed-off-by


>  arch/arm64/boot/dts/allwinner/Makefile        |   1 +
>  .../allwinner/sun50i-h616-mangopi-mq-quad.dts | 183 ++++++++++++++++++

Yeah, no bindings patch, so you did ignore the feedback.

Sorry, that's a no.

This is a friendly reminder during the review process.

It seems my previous comments were not fully addressed. Maybe my
feedback got lost between the quotes, maybe you just forgot to apply it.
Please go back to the previous discussion and either implement all
requested changes or keep discussing them.

Thank you.

Best regards,
Krzysztof

