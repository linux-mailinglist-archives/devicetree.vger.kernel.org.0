Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0BF255A08DA
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 08:30:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232550AbiHYGaP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Aug 2022 02:30:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231604AbiHYGaN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Aug 2022 02:30:13 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5415172FF6
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 23:30:12 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id q7so23238542lfu.5
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 23:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=06xW1jLI62seO9Abhqf7FvVwnPtCd5zQbyZloWjUVF8=;
        b=Xp1VJitjfneppA5ItyJbrwobLKiJktUPWTA3Y1e1m8wRQrWcEUDLziByK6pc4otLjj
         WfLxaGtsT9q2g+Pf/M9H6mCz9mwaVGySTC2KCsil15m19xi0KzeJQmmaZGg1evoc5IxO
         mcuVCcZ8H+ZAksS/LnZNZGjsOdf4mrk7+wtqUvSsD2XfExoNatAshEygSvmYd90xKNyC
         +73IxW2mSkX/spKZzU80B48EZ5YPWpnVhbUVx7VjEMGb9FMeRVsOQiMv3r5ueN9aPhMP
         JhpO2ZCNHy80Dk8qZgubo0tF1HwcqmaaCDZ05OX01xcbFrXXR9bFHiGdzTRrvaqfH3yM
         /GwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=06xW1jLI62seO9Abhqf7FvVwnPtCd5zQbyZloWjUVF8=;
        b=Ef7ZmgKUl3TDjUmyezhrV4vjP8ky9i5XFaUZkzkSBul6lljh6MDyJxyVTxGZ2i+OvI
         wx6bsmZSg8ZKoPY9XHm7q6b4dQfMz9gK7vA6tC/AfES8MERaiS7ueWKtLEzQpFz5U0Nb
         tm1N92hkty8++1yHH+8NEpFALLsVtznnvvk6TxjjZMIrPiFkv05zC9tpr77EPSjVsXRj
         0xIpLpPM3O8FmoiL25RoI7sUKGpgB3CuM44o+C4CKJ2TrQloHXBb+ARFKsqmMXzBqjWn
         GPTqddXTjJtiQ7XMCeX9yYPdjqKIp7+qw8TqiTM1R7trBfTE8AMFXcWdwu5022XVQqEB
         ixag==
X-Gm-Message-State: ACgBeo3Uzrw3wz9r1mzpfDuCUaky/bNuPqUpXL2isiR3dn4qV33X7pZq
        0lLkjZJqDrRkgX8OFqqRJ+NK7Q==
X-Google-Smtp-Source: AA6agR5voLFMZFTTgJvhNlxJQbRcDTQfj4hRCUGwRZmiTfWs0TLDdpCmpd7u6VEOeHEanOx6DfWmwA==
X-Received: by 2002:a05:6512:c12:b0:48d:231c:3099 with SMTP id z18-20020a0565120c1200b0048d231c3099mr634468lfu.462.1661409010359;
        Wed, 24 Aug 2022 23:30:10 -0700 (PDT)
Received: from [192.168.0.71] (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id x4-20020ac24884000000b00492c2394ea5sm321001lfc.165.2022.08.24.23.30.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Aug 2022 23:30:09 -0700 (PDT)
Message-ID: <7c502652-983b-f282-f989-b224942f27bb@linaro.org>
Date:   Thu, 25 Aug 2022 09:30:08 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH] dt-bindings: pinctrl: Add missing
 (unevaluated|additional)Properties on child nodes
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Broadcom internal kernel review list 
        <bcm-kernel-feedback-list@broadcom.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        =?UTF-8?Q?Jonathan_Neusch=c3=a4fer?= <j.neuschaefer@gmx.net>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
        Sowjanya D <lakshmi.sowjanya.d@intel.com>,
        Chris Packham <chris.packham@alliedtelesis.co.nz>,
        Andy Teng <andy.teng@mediatek.com>,
        Jacopo Mondi <jacopo+renesas@jmondi.org>
Cc:     Krzysztof Kozlowski <krzk@kernel.org>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, openbmc@lists.ozlabs.org,
        linux-renesas-soc@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
References: <20220823145649.3118479-6-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220823145649.3118479-6-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/08/2022 17:56, Rob Herring wrote:
> In order to ensure only documented properties are present, node schemas
> must have unevaluatedProperties or additionalProperties set to false
> (typically).
> 
> Signed-off-by: Rob Herring <robh@kernel.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof
