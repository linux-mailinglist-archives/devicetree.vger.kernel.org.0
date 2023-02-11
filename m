Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB366693078
	for <lists+devicetree@lfdr.de>; Sat, 11 Feb 2023 12:45:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230050AbjBKLpO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 Feb 2023 06:45:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229664AbjBKLpO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 11 Feb 2023 06:45:14 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16A6F30198
        for <devicetree@vger.kernel.org>; Sat, 11 Feb 2023 03:45:13 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id j23so7704053wra.0
        for <devicetree@vger.kernel.org>; Sat, 11 Feb 2023 03:45:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ho/NAbSlLs+HMH+wOczjPZKkuNtpjGpmhhvWe7mstFM=;
        b=Bkc3DpvahxsZFsGveURQENCSR1xeW2fJ7RzDpMX2DvSMXEiuPTYTngZj1RTVKjLLoK
         lnGXtW+wZdYhhpdKL9b8v+RknhdODb7N98jZf/J1Q3YLvgf380QqMBQIA1QfOMTkQLn9
         XoKhr2NBHQU3OmCHTiH/dWplTEr/TyEyLgMG976W5vKbVC8asxuy5sKpJp0zFzAo9XyF
         suTJsWD2Dcek/MXAsiwVvNgL9ktCfXCFxGe+kzsHJ6xY3LFj4I05Y+GeNZj27Z5kTnfv
         K9RvYclxUSNnSVyrL+PGSnGOs3GBAQbyA3khO6Xy05+EEAcXXA4LmrC0Q2FlxbAqtqHF
         mCew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ho/NAbSlLs+HMH+wOczjPZKkuNtpjGpmhhvWe7mstFM=;
        b=webZCPT1B/ZdjYiNsa2V2ELrlORx4PtQ0B1fRII4I51RAiDv00TCU17KEis/+83T8g
         aveBvpQziDIH/NF43h7Zbf4LEtkDCOznkUpHcqzDnUngSjTmnF6ErTXSp1CvDbfZxJC4
         jXs6BH3XMdBWeJJXWBri7OSuQLKZKuAVrLNkIvB5+ocdKDnXlJJ2ATR/nFgGu+FzNfiF
         caIq03oel9sMOHSsOJG9td/lhnyfTqb4O3Mhmn8y1vzFSB9L99woJ9LdrqoXACgIj6oI
         tJCuVHSDIU6Q7IIUCj56tqGIo8Mb6t19K5uN/asWv/672vEhWdnD8tKuhVivdOjDBwFA
         ym4g==
X-Gm-Message-State: AO0yUKX5KkM5FzoWqHtkr5I3l/Vbw043vMhrPOrWYYsiHYc1pHSSsq0w
        w4cWFhMLj2XDdx7eRrKSYBgopw==
X-Google-Smtp-Source: AK7set8AkKug04pGx9JbJ8ocFL6yusHFGkjrwygSUEyybofwtIhtMe2uMX7I+UyvI31qBU/KO9iwGA==
X-Received: by 2002:adf:eb0c:0:b0:2c3:f812:1cad with SMTP id s12-20020adfeb0c000000b002c3f8121cadmr16661846wrn.37.1676115911709;
        Sat, 11 Feb 2023 03:45:11 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id n2-20020a5d67c2000000b002c53f6c7599sm5172803wrw.29.2023.02.11.03.45.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Feb 2023 03:45:11 -0800 (PST)
Message-ID: <82d731bd-a0a3-6256-0ec8-60e9748fa2ca@linaro.org>
Date:   Sat, 11 Feb 2023 12:45:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 1/6] dt-bindings: arm: fsl: Fix copy-paste error in
 comment
Content-Language: en-US
To:     =?UTF-8?B?TWljaGFsIFZva8OhxI0=?= <michal.vokac@ysoft.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230210154855.3086900-1-michal.vokac@ysoft.com>
 <20230210154855.3086900-2-michal.vokac@ysoft.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230210154855.3086900-2-michal.vokac@ysoft.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/02/2023 16:48, Michal Vokáč wrote:
> The imx6dl-yapp4-draco board is actually based on the i.MX6Solo SoC.
> Fix the comment to match reality.
> 
> Fixes: 24ef3b6e22fe ("dt-bindings: arm: Add Y Soft IOTA Draco, Hydra and Ursa boards")
> Signed-off-by: Michal Vokáč <michal.vokac@ysoft.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 2 +-


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

