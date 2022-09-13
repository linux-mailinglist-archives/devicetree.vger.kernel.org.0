Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 27EFF5B6F81
	for <lists+devicetree@lfdr.de>; Tue, 13 Sep 2022 16:14:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232892AbiIMOMo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Sep 2022 10:12:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232834AbiIMOMT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Sep 2022 10:12:19 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D890622B38
        for <devicetree@vger.kernel.org>; Tue, 13 Sep 2022 07:09:50 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id cc5so11163778wrb.6
        for <devicetree@vger.kernel.org>; Tue, 13 Sep 2022 07:09:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=Fs0hIEr9Z/qDOaw7wxhV6YcmsyfMXrbDsl0PwBvcZqw=;
        b=XviCFBNoCT32bo2QVUQlYnPKtrlUwqB/86dYUGiGdt4UwDX+NOfmIvlei1SHhMZepv
         Sy8VptFzZ/oWWO3J0ggVOW4rVAs7Lo+zFpoVtxrKGB0+lp/ujyfVmqGDbWkS/Oq0XPuL
         vUtidk8kGyCp1Yh0K1MkrWteWz0PVI9812t4aF8Zj6LHHe/nQzzcUMjYDQgNmLE5jUvn
         agXaOEcGv2lRJP+yI7x6GQqkNtHgPyGAQUWAKWb/6kSQaYU7Ej6jjXg3/kuV3cNep0xY
         47cuWeepfNgDngKhIwB1kcvj2X/O6iub7qn9RLcvXL1nP1JOlr8RSURh8fKhBpD13ePU
         xn0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=Fs0hIEr9Z/qDOaw7wxhV6YcmsyfMXrbDsl0PwBvcZqw=;
        b=FatFZPzMtSphHRPVJHMo/1IggRNMCj7nSSfEqK805ldGBH9yhTwynKvoyZ4fBxvwUt
         NNaBMSayJLFoK/3J15WiCTffbU7xOg12rrtrg9lAGsHotmlsDVWxLQROeepzHhARDjAU
         kaQDT9OlNyD5Xkjg7562gJ7vy9G/+7dIbCePaD5fhFuD9kmGNyvN93UPSylg+ox2ee+E
         yI9CsKwgf4jzorjqQKZ7dGpc0Msbo5FKB9srcJmO5HNl6DTO/QoVkCrQmQyp9ZaGSCsJ
         YL6Q4px/Nb0NdKOK7f7AfP2YH/PT9V33K5lUchNV3qLUOfiqCv/FUWEmFczBP5J/oeSY
         QudQ==
X-Gm-Message-State: ACgBeo1lLAEnrUyY5DMgehGpck/qhkH05fs21w3p3SRxn0dq2mh+6uDP
        q4N5XYz8XEjWIJH+0J9WehjEHQ==
X-Google-Smtp-Source: AA6agR7YAfLA3FM/2BfjfTrC+FHk56M2fnmAwd2x85EcjwTFGXBFK9tDFzOWQz8kzZ6r2UDik+6fow==
X-Received: by 2002:a05:6000:1541:b0:22a:3b77:6ef4 with SMTP id 1-20020a056000154100b0022a3b776ef4mr12730373wry.303.1663078188394;
        Tue, 13 Sep 2022 07:09:48 -0700 (PDT)
Received: from [10.119.22.201] ([89.101.193.67])
        by smtp.gmail.com with ESMTPSA id 11-20020a05600c020b00b003b4868eb6bbsm9224984wmi.23.2022.09.13.07.09.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Sep 2022 07:09:47 -0700 (PDT)
Message-ID: <f9473120-5bb2-dd73-5431-cd5a16337e31@linaro.org>
Date:   Tue, 13 Sep 2022 16:09:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: Add i.MX8M Mini Gateworks GW7904
 board
Content-Language: en-US
To:     Tim Harvey <tharvey@gateworks.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
References: <20220912181819.775919-1-tharvey@gateworks.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220912181819.775919-1-tharvey@gateworks.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/09/2022 20:18, Tim Harvey wrote:
> Add DT compatible string for i.MX8M Mini based Gateworks GW7904 board.
> 
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
