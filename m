Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E14B86D420A
	for <lists+devicetree@lfdr.de>; Mon,  3 Apr 2023 12:32:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232216AbjDCKcj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Apr 2023 06:32:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232224AbjDCKcd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Apr 2023 06:32:33 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AEF611147
        for <devicetree@vger.kernel.org>; Mon,  3 Apr 2023 03:32:29 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id h8so115358384ede.8
        for <devicetree@vger.kernel.org>; Mon, 03 Apr 2023 03:32:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680517948;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ziesCGyE5ths8HzE/mhJvKhp/kqnRaJ5l6HH5FEAep8=;
        b=okzaQkvCPtXmw1CxWZJsp88PRnn5mV/5VWosOFJmsCtKsxw5n6I4b1HyCrHqgL9awi
         fijar3CLa2sz70mo08iFL1i4PPJBVcp4xpGsZ0nCmforT3+3mdO8CMx1b+ohe6WxOvfc
         saGY5IhbN5qGmxktuzijk6JI59YhyDBgrzPEl29dxFAXOiDCru1XuIg/I40XaAUNDlxk
         b5RQgmnX2n+6MV2IdBy+PQWsF4jdGHGcBvRvxhGbB4C8jWyDiLhOh7muizj7RglTlDx+
         qJs4aknLYOQ8kL2kezLirOcLwkP4P6tBFTK0vyB5XvOFH/gGHuYNEMnmopACM3FF/W4/
         t1rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680517948;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ziesCGyE5ths8HzE/mhJvKhp/kqnRaJ5l6HH5FEAep8=;
        b=H9o8FoCmH4uzyyztswGZXiH2aMC4vs1biuX8g4tWFYHpxEMe5Pb6Qieli0nGsWIoyu
         6fNphGiyyqEua9NatjiaAslTfx8wN9WWk+zs79k9Sz+YyiAod3RGpaIpCP0iTGbZEsFu
         qx/84V/uqxdXIx2fM2oUBszO6+K5TsuKcbXsWh+FPZR3+Ti+gvkDKZU8qbS+f6EkUWtB
         CAGUS2ZNyVU9zlpFN0Csjc4rRiTr9qutzamlEbr3oSZBD+8oW/GbTsXNmLfcuzYtip7/
         psi+3Y0TBB4cXMqhG1SbKfVg+eSNvllHhX4jACdC1T2ht5XNCJPcW02VwzwUMRY8ZL/j
         ZKfw==
X-Gm-Message-State: AAQBX9e1HvGkWNifeoUz63BFWe+bxSEiQ9kQLSdGeXBjQPRwxo6qwsLz
        v0hj566TciLGtSsA9QPIGZHIfg==
X-Google-Smtp-Source: AKy350bXqnHRSCry8TNkyNVTg3r+0qjfsw4m4vCtJmGjh2QVaiDlfZ4+urlWYvfoN5DuvqM0V8TEuQ==
X-Received: by 2002:aa7:d8cf:0:b0:4fc:8642:ce56 with SMTP id k15-20020aa7d8cf000000b004fc8642ce56mr31893374eds.25.1680517945601;
        Mon, 03 Apr 2023 03:32:25 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:ae90:d80:1069:4805? ([2a02:810d:15c0:828:ae90:d80:1069:4805])
        by smtp.gmail.com with ESMTPSA id q6-20020a056402518600b005028c376d50sm3169066edd.71.2023.04.03.03.32.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Apr 2023 03:32:25 -0700 (PDT)
Message-ID: <f8c64dc8-7ded-6dff-4d27-754e547f79e8@linaro.org>
Date:   Mon, 3 Apr 2023 12:32:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH V3 6/7] dt-bindings: clock: imx93: add NIC, A55 and ARM
 PLL CLK
Content-Language: en-US
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, abelvesa@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org, shawnguo@kernel.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     linux-imx@nxp.com, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>
References: <20230403095300.3386988-1-peng.fan@oss.nxp.com>
 <20230403095300.3386988-7-peng.fan@oss.nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230403095300.3386988-7-peng.fan@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/04/2023 11:52, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add i.MX93 NIC, A55 and ARM PLL CLK.
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

