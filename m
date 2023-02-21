Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8FC7B69DEB0
	for <lists+devicetree@lfdr.de>; Tue, 21 Feb 2023 12:25:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234077AbjBULZs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Feb 2023 06:25:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233739AbjBULZr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Feb 2023 06:25:47 -0500
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 656B824111
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 03:25:45 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id da10so16996454edb.3
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 03:25:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GS/FuJCPhQ1uOLyGjkR0iAM8SEKwfPpWzwME5MLPJhM=;
        b=e7Loni/yJXd48Da9Dl6Q0CN99QB8bdYlsJD9tqOTTTgROY9tjFa+mhRq4YeAqspbmh
         1UcUCGn9b283dP37/+guJd1qaK1O+5ojvaIHvB4vIL3rK2Rc0fdR3rblSSO+BTAvv8Zc
         dFoTk/29lWYc+RuNNuJzSoYizvCuYLZMg7EehNrJXDD0Vb3mk52amkM5DbQsUkrYI3Wh
         TpJNHS8s1EQEo0vhBvuuVDguD46CYhOnQ3fj5/ReU4+7VgKymiF5PSe2YkuC/vVdGBfA
         9/BtrpQQZ9TutamhoSH6bn2CqdHy3FR+1pIp3tfsBxw1gkqyu5DAsTN4MqONTlmaBjhZ
         f0ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GS/FuJCPhQ1uOLyGjkR0iAM8SEKwfPpWzwME5MLPJhM=;
        b=sbDyUIsBvI7rppazmKG1VhmilJpXQDyAaOzoV4CASp3OlJwncJgMS3h+vLxPHwwgZ8
         Eo2BdtHITOmmn+UfHvZhEuzvUzIRs/KOz1IwLTsX/+VcuN90SBNtvTYuMCXtuC+xy3qk
         bwcTi8Z7XCAalzqIpTbCN/jNy70rFeFQKFAqhdt60mS2Iu7fi9P0e87cgYQmgy2y0z1p
         zscUEuC6uAbzd4WP5pigrwcGvB+dHf75OWHUGIX8dGdcyuh1uJmAfb364hWP7w/fKqi4
         92RuMghjtATfeUrh1FrImj1ipvr9bE7qJ058NWFBKKal4CtS3Oqr0HDqUY0a+47qg7G1
         K3AA==
X-Gm-Message-State: AO0yUKU152L49X6kSKFMF4gQaGQaDKbROQZQVGMH07a95hkincBb/9e9
        Dcf4G+kOjE7smVshLAw/sNwSRg==
X-Google-Smtp-Source: AK7set9i7iCdrmNLxS44tLm4Cod1bYIxstYUo7G3Yv7gMOYC2J4cFKB4FWle3mr9SoLL129HeBZZlg==
X-Received: by 2002:a50:ee01:0:b0:4ae:eb0f:892e with SMTP id g1-20020a50ee01000000b004aeeb0f892emr4242179eds.20.1676978743932;
        Tue, 21 Feb 2023 03:25:43 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id t10-20020a50c24a000000b004aeeb476c5bsm2040071edf.24.2023.02.21.03.25.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Feb 2023 03:25:43 -0800 (PST)
Message-ID: <430318ed-5b30-e549-a5ce-df83aa18adf9@linaro.org>
Date:   Tue, 21 Feb 2023 12:25:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 01/11] dt-bindings: clock: Add StarFive JH7110
 System-Top-Group clock and reset generator
Content-Language: en-US
To:     Xingyu Wu <xingyu.wu@starfivetech.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Emil Renner Berthing <kernel@esmil.dk>
Cc:     Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Hal Feng <hal.feng@starfivetech.com>,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
References: <20230221083323.302471-1-xingyu.wu@starfivetech.com>
 <20230221083323.302471-2-xingyu.wu@starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230221083323.302471-2-xingyu.wu@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/02/2023 09:33, Xingyu Wu wrote:
> Add bindings for the System-Top-Group clock and reset generator (STGCRG)
> on the JH7110 RISC-V SoC by StarFive Ltd.
> 
> Signed-off-by: Xingyu Wu <xingyu.wu@starfivetech.com>


> +    };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 93eb504c3b21..2e70c9f21989 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -19914,6 +19914,7 @@ F:	arch/riscv/boot/dts/starfive/
>  STARFIVE JH71X0 CLOCK DRIVERS
>  M:	Emil Renner Berthing <kernel@esmil.dk>
>  M:	Hal Feng <hal.feng@starfivetech.com>
> +M:	Xingyu Wu <xingyu.wu@starfivetech.com>

No improvements here. You add here new bindings for one device and then
- without explanation - add yourself to all Starfive clock bindings.
Either explain it or drop it or move it to separate patch.

You already got comment for this.

Best regards,
Krzysztof

