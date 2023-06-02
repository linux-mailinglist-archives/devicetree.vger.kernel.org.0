Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9BA14720301
	for <lists+devicetree@lfdr.de>; Fri,  2 Jun 2023 15:18:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236028AbjFBNSC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Jun 2023 09:18:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236086AbjFBNR7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Jun 2023 09:17:59 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0B2BA3
        for <devicetree@vger.kernel.org>; Fri,  2 Jun 2023 06:17:45 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-973e7c35eddso292973466b.0
        for <devicetree@vger.kernel.org>; Fri, 02 Jun 2023 06:17:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685711864; x=1688303864;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JwF8cKHicld7kwqHMzUbVeRLWFJ7BH702LKOXAuZJco=;
        b=zoY+NU5Y6PiNfdLA/h3+RX2B6aQxqApaIJuCIQBXUKQQNOyCMbc4wvlkTW3Jdz8KzV
         CW1bMcKbal5t6u9JEX1aw98ZqjEkgFDvWYq4m+rSlKG4atUXtQx+1jI65AqgUa0cG8hx
         lpmJ525GUXJJuHzOQ6gzwvn+JeUqVL6AuIQIK8axZWdH+pOvOU9vU0kjWOzihh2S1kQc
         6Zo0spJEJCU4FAuvHJRR2YTCQNvmZUUdBjgFO5TkB8QD1/jIyh7uOjbe6jlgxyhx81mo
         gfBZ9AT2ZB/rf8tLMZhBujuxWLfDghppXexU+xqSB9crZsqxTWANzlerLLKruOHjjK1A
         Gq/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685711864; x=1688303864;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JwF8cKHicld7kwqHMzUbVeRLWFJ7BH702LKOXAuZJco=;
        b=bgGofLdwckC1/TLJtE0Y3v4hSIxbKLcwbxScIsKOo1NBGmb8wJzEjUkLBpre74Hkfq
         VzbRCBRdn0a+AI3JmSNtco6DVYQm7E65LCAPBwZ4CAL1n3yCXTXazWxF2NdKbt05ouSU
         3HmLQxjoyOBDr+RBAiTXMZWIzajXwQUxSXt761OIh3BeB2gIstPHjxDHjStNbxUCDaqm
         RwxruLe85xamOD0A7xUwRA9Estbh/Wi5qhWFkqatAu3r5DLnbcmdIicg6zNpSk79oU8o
         ZFZ0WV24RWjonVJ2sTlJRcglFpVgjoY+0aDUP6A+KWElu+Krn9KAbKXoj5iLUCEBnSrF
         mzvA==
X-Gm-Message-State: AC+VfDwVhei5n4CKT2njtgi29MT6m1eIBuGWjTH9bHAkSsarqxrEfdZw
        cJZuPeQXcj49vQANTKSMoHRWDg==
X-Google-Smtp-Source: ACHHUZ4g96v6Peh4kQ0OBC9/PyT6SdBvBNAAHB9J6XRtu9uVD3Y96twKtow4Pg4xSokDPdAldMJeIQ==
X-Received: by 2002:a17:906:9755:b0:974:1ced:6a56 with SMTP id o21-20020a170906975500b009741ced6a56mr12569506ejy.32.1685711864497;
        Fri, 02 Jun 2023 06:17:44 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id dk7-20020a170906f0c700b00974e7559fbfsm483707ejb.144.2023.06.02.06.17.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Jun 2023 06:17:43 -0700 (PDT)
Message-ID: <894a5ed1-71aa-d9ef-1301-54f4e3583cf3@linaro.org>
Date:   Fri, 2 Jun 2023 15:17:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2 3/6] clk: qcom: Add lpass clock controller driver for
 SC8280XP
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     johan+linaro@kernel.org, agross@kernel.org,
        konrad.dybcio@linaro.org, mturquette@baylibre.com,
        sboyd@kernel.org, conor+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230525122930.17141-1-srinivas.kandagatla@linaro.org>
 <20230525122930.17141-4-srinivas.kandagatla@linaro.org>
Content-Language: en-US
In-Reply-To: <20230525122930.17141-4-srinivas.kandagatla@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Resending as my previous email probably got lost. If you got it twice,
apologies.

On 25/05/2023 14:29, Srinivas Kandagatla wrote:
> Add support for the lpass clock controller found on SC8280XP based devices.
> This would allow lpass peripheral loader drivers to control the clocks and
> bring the subsystems out of reset.
> 
> Currently this patch only supports resets as the Q6DSP is in control of
> LPASS IP which manages most of the clocks via Q6PRM service on GPR rpmsg
> channel.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> ---
>  drivers/clk/qcom/Kconfig            |  8 ++++
>  drivers/clk/qcom/Makefile           |  1 +
>  drivers/clk/qcom/lpasscc-sc8280xp.c | 63 +++++++++++++++++++++++++++++
>  3 files changed, 72 insertions(+)
>  create mode 100644 drivers/clk/qcom/lpasscc-sc8280xp.c
> 
> diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
> index 85869e7a9f16..e25993abb519 100644
> --- a/drivers/clk/qcom/Kconfig
> +++ b/drivers/clk/qcom/Kconfig
> @@ -523,6 +523,14 @@ config SC_LPASSCC_7280
>  	  Say Y if you want to use the LPASS branch clocks of the LPASS clock
>  	  controller to reset the LPASS subsystem.
>  
> +config SC_LPASSCC_8280XP
> +	tristate "SC8280 Low Power Audio Subsystem (LPASS) Clock Controller"

depends on ARM64 || COMPILE_TEST

Best regards,
Krzysztof

