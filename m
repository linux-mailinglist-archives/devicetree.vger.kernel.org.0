Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D9CF67E107
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 11:06:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233337AbjA0KGZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 05:06:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230092AbjA0KGY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 05:06:24 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E19C4499
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 02:06:23 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id d14so4469254wrr.9
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 02:06:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nrmC8WdTW0V7nfxUCBuNzCB15DsVsB4CVGrKeJr0XwI=;
        b=R6dti16XJvpVSbPkZMoJCeut3ET+cUH6XG/nCRHE70H9gugFOiATRgsfhoiUjVLRUC
         oErbVimD1f/9U2vb9k+NxxoeuF7eY3QNBSqUQUhIJDN9BJ06H+sJbZjniHU3RR7jq7Lm
         bQq6KID6+SLdPXjbqQ7bD2hwYRpyNwF08quazpWz0EA/aROGirP1TMUXa96RvKKrH+Ti
         ELZtBi9NOErlCWPJNWi72GaVKGXq4B09gfik99zhGOmvsnJRwS2cYtymbebxx9ImTr8c
         IYQGMSKpmWl2vPiST4upIboeECI9TEalBDCL4l9Z001u/rKwJVAXapPE+ewszM8P8+3U
         ZTvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nrmC8WdTW0V7nfxUCBuNzCB15DsVsB4CVGrKeJr0XwI=;
        b=EzCEAMKZ7DQf44BGlJ6TEZ5v/NclqzU/FBz/tnHgyklAWe0jHIaARNvd35fOOISagA
         wdvJ7lw3yNjgzo9YIuGbmO4vZafGN2Y6vs/Wexg4wsgmZIRy4AwjALb0YrRHyJyNAxd4
         D1Kzl+AQg6R84l1EttbrSjJTxUnr7tYW/H233aUBHqa3tJIhrytAla09lbRy9kGknUpJ
         GUI2bW7Yhzp1Ie279Uw7Al1sBwKdCSYc7bsts8D6ezYzedsTYndWTlASp9zaB1JXrZMb
         s8Qqp47HuAVQOsVCRY7NmpHcZhSmAgKQX70cl0GnMa0OfqhyT/t/YbyQMGsv5Jk+bT4x
         Y+lQ==
X-Gm-Message-State: AFqh2kpiUsTnoOpwsgAuCZoOlrjMC/XBxzNztkiOFlzVLIp1nfnoTKZp
        ZySJyGeK1/BPCxKk8qnfo3uqmZdisW/6l7Tx
X-Google-Smtp-Source: AMrXdXu3pU53VutvBKOcRJ/YqMGU7qLNIr7kC4qz8jtdJxITu14kcAIPLweC02JYVul+ed7Tc7KryQ==
X-Received: by 2002:a5d:688b:0:b0:2b3:b393:181f with SMTP id h11-20020a5d688b000000b002b3b393181fmr33752494wru.56.1674813981777;
        Fri, 27 Jan 2023 02:06:21 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id y3-20020adff143000000b002be546f947asm3650960wro.61.2023.01.27.02.06.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jan 2023 02:06:21 -0800 (PST)
Message-ID: <105ca1cf-0b86-cc2f-c73c-06c582827532@linaro.org>
Date:   Fri, 27 Jan 2023 11:06:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 3/4] dt-bindings: arm: amlogic: add support for BananaPi
 M2-Pro
To:     Christian Hewitt <christianshewitt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230127100236.3385154-1-christianshewitt@gmail.com>
 <20230127100236.3385154-4-christianshewitt@gmail.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230127100236.3385154-4-christianshewitt@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/01/2023 11:02, Christian Hewitt wrote:
> BPI-M2-PRO is based upon the BPI-M5 using the Amlogic SM1 (S905X3) chipset.
> 
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

