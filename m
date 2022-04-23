Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C08450CD31
	for <lists+devicetree@lfdr.de>; Sat, 23 Apr 2022 21:34:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236876AbiDWThJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Apr 2022 15:37:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232641AbiDWThI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Apr 2022 15:37:08 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BE0B1F5A09
        for <devicetree@vger.kernel.org>; Sat, 23 Apr 2022 12:34:10 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id be20so5811704edb.12
        for <devicetree@vger.kernel.org>; Sat, 23 Apr 2022 12:34:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ndrMaQwHpE2e/dpxEkgjUm0Kuxr/+G4/saItTKjRwvM=;
        b=zZP559LEkXWJlmYCa54f+wXFh4v3JTdcw2sMBn7A8ug5L3oL9J7MuVdU6VKdasrmwc
         qnICmRisx4bkrMkebQlUad83az08z6cw2CKTmydWMHYzoCmy230sMN7iutyAu9GYfSDM
         J+drquZUYrja8X35VIvIxHKilUw8Me3caaXXkBdRY/cvc//f8PErtckCqkPGG0uKbs4Y
         /hnFoyjbMw0nkoHnyje6P1Q7/0Jyj3FthL9rS6lnHv798+oTjKPlIwYsa35HMQgVNV9M
         i5xf/oFdMYEuT2pYIKBw0DmAKc9I0qm7e9WXvmS1ZpiuY0kh6B4A2yf0DOIiinvjyfKe
         do1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ndrMaQwHpE2e/dpxEkgjUm0Kuxr/+G4/saItTKjRwvM=;
        b=7jRDQoS9pFrgx0rGlZCjq3CRJ5jAOa0UvLowUqXl8RNfbQ2ZdpE4iIr9lA9lMin+eA
         f5h3kJA5NPRomjUFKSf8qtRopPvN0Om7i0vXwiHvMwQ91V+lN0x37MjKSF4zrz4XSPfw
         r4kxgjpNzQ+h0G7OeMCRVPFnynFTNjeGGfIPMuH4n8Bd/8pJxijqXhsnUSQ+cI+zh0Y0
         bPBJ716znhe5T3/ireB/fjcxGDku8HQvvAld6V5/sPhWO2KqtGjJqQOdDvw0WLbubbEV
         421H6EWx5XhoYa8KgClOs+xPKA+z/pHNfnurvA12NkhGNyreGXzIY948vVb77EvEnzR8
         foYQ==
X-Gm-Message-State: AOAM533+uiD/nwGhsoHlecCduydhoFyVoJtiyDOzQu+24Y+j01qhbOKd
        qN7WrukyCTLUB0RvU2g/uYV/ug==
X-Google-Smtp-Source: ABdhPJzVJvVann9o7dNDGJvp1R008DaJpMj3qXMm8K+f25s5nXjuxolI6GNruYgFlJD1u5E5DuAIGA==
X-Received: by 2002:a50:ce14:0:b0:425:cb75:5322 with SMTP id y20-20020a50ce14000000b00425cb755322mr5200438edi.386.1650742448610;
        Sat, 23 Apr 2022 12:34:08 -0700 (PDT)
Received: from [192.168.0.234] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id w14-20020a1709060a0e00b006f01e581668sm1926680ejf.209.2022.04.23.12.34.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Apr 2022 12:34:07 -0700 (PDT)
Message-ID: <f9c6e5e2-c819-d309-0c11-b87deb772858@linaro.org>
Date:   Sat, 23 Apr 2022 21:34:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/2] arm64: dts: renesas: r9a07g044: Fix external clk node
 names
Content-Language: en-US
To:     Biju Das <biju.das.jz@bp.renesas.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        Chris Paterson <Chris.Paterson2@renesas.com>,
        Biju Das <biju.das@bp.renesas.com>,
        Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20220423140658.145000-1-biju.das.jz@bp.renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220423140658.145000-1-biju.das.jz@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/04/2022 16:06, Biju Das wrote:
> Fix audio clk node names with "_" -> "-" and add suffix '-clk' for can and
> extal clks.
> 
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> ---
>  arch/arm64/boot/dts/renesas/r9a07g044.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/renesas/r9a07g044.dtsi b/arch/arm64/boot/dts/renesas/r9a07g044.dtsi
> index 19287cccb1f0..4f9a84d7af08 100644
> --- a/arch/arm64/boot/dts/renesas/r9a07g044.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r9a07g044.dtsi
> @@ -13,14 +13,14 @@ / {
>  	#address-cells = <2>;
>  	#size-cells = <2>;
>  
> -	audio_clk1: audio_clk1 {
> +	audio_clk1: audio-clk1 {

How about in such case keeping suffix "clk" everywhere and moving the
index (1/2) to the first part? This way one day maybe schema will match
the clocks.

Best regards,
Krzysztof
