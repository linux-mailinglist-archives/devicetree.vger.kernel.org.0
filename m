Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 04E7B6C00D9
	for <lists+devicetree@lfdr.de>; Sun, 19 Mar 2023 12:37:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230195AbjCSLhk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Mar 2023 07:37:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229483AbjCSLhj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Mar 2023 07:37:39 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA02923654
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 04:37:19 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id b20so3680445edd.1
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 04:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679225838;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3GQ0kuX+CANTyKsciGzMU4Vb8Jeilt6T7QwH/C5HtcI=;
        b=D00+NhyYkKydBEbINUkLHKWGHGCpBkp/v2jQXmxjRv/PR6O1KzPoAfGXvqXlBDooLw
         MDFhqQJBmoM8e0aMQlOPM1snaeCnDase6u1YX06J1yJn3jOcq8kY8pSv+Z2tHI0Bn8jG
         PSI+eRufB8QEQUlU2Gki2Ya73RQoA/20yzg9Y+Ja5tNE+hG5GZR+HoF45JfcXg9JoB/k
         j+ltjUtUS2dErsGsR3X6YwIbE2VvJibb1xva5SsX7lU6AfNraU+Q58J6z5Br7IEJDilp
         eLRbTXyYU5E/EXS566kszMZH8tnrZ/mtdK2Ys1e7HjnnwoGz/phODt2Ql//XUs2joiqt
         W7qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679225838;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3GQ0kuX+CANTyKsciGzMU4Vb8Jeilt6T7QwH/C5HtcI=;
        b=7lirwK3wPgr5Toj3BwMfWNkcnsGHGL4jwcEvak23iAqQWsto7RJaJ9Os5/Oqp+0xub
         JPxNY6XWKKAbA2VNh3x+ty+VYkfXm93+jaHqqCEE9jAv2Tt7uFP+Uu7XRhMG5CxQlChY
         eT1urzcAmLaRpwJh2mX+AoRULER0zlIXc1UiC1L/puqekK/hvzRiyfjXRqm4klKgrP4m
         hoDhIhQzknQuYiPO9GjP7avmbhpx1QPheaWiXwai/RQbkQ/GyypXDybjo+fL/ZgObEDB
         AEJ7vTejhSJ7mHXdm+wGNQaJCXFf3E8hK9D5vRgecq1/R1k6joqogO+ZCSmaE5qg87Yo
         BlaQ==
X-Gm-Message-State: AO0yUKXB/OdXpJhqo3hTctd2CLUbVOWeEVUNpw3QgigEH4LM7AcK+JEk
        6EMUoHywxTvMTS/dpKuhY8IC9g==
X-Google-Smtp-Source: AK7set+v8lgMBbotLK7i5EuslBypcEkfi/Fu+fPXJdbgw87inJZ/klcBJwVzuNGiRec4HuUe5I8AaA==
X-Received: by 2002:a17:907:2bd2:b0:92f:bef6:7843 with SMTP id gv18-20020a1709072bd200b0092fbef67843mr5238447ejc.22.1679225838160;
        Sun, 19 Mar 2023 04:37:18 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:5b5f:f22b:a0b:559d? ([2a02:810d:15c0:828:5b5f:f22b:a0b:559d])
        by smtp.gmail.com with ESMTPSA id v19-20020a17090651d300b0092b86d41dbasm3178595ejk.114.2023.03.19.04.37.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Mar 2023 04:37:17 -0700 (PDT)
Message-ID: <de919fd2-898b-f8a2-cc13-c66995e787c3@linaro.org>
Date:   Sun, 19 Mar 2023 12:37:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] dt-bindings: nvmem: Drop unneeded quotes
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Hector Martin <marcan@marcan.st>,
        Sven Peter <sven@svenpeter.dev>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Claudiu Beznea <claudiu.beznea@microchip.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Masami Hiramatsu <mhiramat@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Vincent Shih <vincent.sunplus@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
        asahi@lists.linux.dev, linux-arm-msm@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-mediatek@lists.infradead.org
References: <20230317233640.3968821-1-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230317233640.3968821-1-robh@kernel.org>
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

On 18/03/2023 00:36, Rob Herring wrote:
> Cleanup bindings dropping unneeded quotes. Once all these are fixed,
> checking for this can be enabled in yamllint.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

