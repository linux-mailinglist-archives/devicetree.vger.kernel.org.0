Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 301AC567632
	for <lists+devicetree@lfdr.de>; Tue,  5 Jul 2022 20:09:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233071AbiGESJE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jul 2022 14:09:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233140AbiGESI7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jul 2022 14:08:59 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F37FA1C120
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 11:08:58 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id t25so21915089lfg.7
        for <devicetree@vger.kernel.org>; Tue, 05 Jul 2022 11:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=eg1uE0FvPxeL4qrpGmtmUaW5Q1k0Sw2KDBMaoXwWe/w=;
        b=ng77q3Pn2ELOHxwwxPOWGl2wegeiNr2Q7hm7QhVgoE2SL6L1DB0FrFu5i4dcPvTj32
         5fwedzisR0l2IPxC4oK0FlBH0JenUhfOnUgIuoRVVCXddW58CzM5SZJ1SXwkeSloPi4U
         3qGVzsy36mPOCnJ7d/RI3ymoooNpBkZMBU+N6TPXZxF1uLaL9zHH1339bR2uG6fZTP4A
         /vnsLLtGYmU0ivoeaeGq5GwglRys1ZpgKSoKuz1eJqXj10P7Afsh9tkc4Ny/z75QjXaq
         LkOSNU3pD3NdIKsTlXYrNhYISYefW7keDb4M8CK8zuxhaPKVtc4rbVB+cJwZ/2FcUx18
         fFmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=eg1uE0FvPxeL4qrpGmtmUaW5Q1k0Sw2KDBMaoXwWe/w=;
        b=gaR42Ph3W2+FABQ4Ltjb/sqHh76XgoQC869rS/8Lx7Uz7zSPl5XiYur0/2O4hGypts
         LilSbZhlM3o2GbHPU0/DkAipDH3zD81qlhPdr4AbyILk3za4GyChwZbvvIvvB/AZZZGK
         a1jof2vHOmdx9QqiYXB1DP73w5uzOMymtfC5+0WSDsCp3aA0yHEY+WFh2fI/uLsvm/qN
         WMX5h9XRKjYcLwfFxlRDHztReYEr28xmv0awRNBBrtFpbtQU1wOSDBNyKOL5LZwWly4G
         kNbMlm6aqS6ZkaXNaxYwRnealsPuHGuYwhglGuIWsnR9WCrydeMrhkPymsuARornyGBp
         qnFw==
X-Gm-Message-State: AJIora/aOcO3oQFg2N99b23lLIg9KlKKdZPORcIiq2+bSxYJYti2f8m5
        fUjxAdNtRE14NRgwUTHbVdilet3qLnSqrQ==
X-Google-Smtp-Source: AGRyM1v2JHFqA1112pod0tl0eflkRxUEg+MihLBA4vZNJpJCtROsTql1m4Qdf8Lm1T5Ake3EiDH8RQ==
X-Received: by 2002:a19:6d09:0:b0:481:3c54:ad52 with SMTP id i9-20020a196d09000000b004813c54ad52mr24714978lfc.393.1657044537385;
        Tue, 05 Jul 2022 11:08:57 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id b27-20020a05651c033b00b0025d3e81e0f4sm98821ljp.94.2022.07.05.11.08.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 11:08:56 -0700 (PDT)
Message-ID: <76417581-c2df-2811-2b2e-5b4282a6acd3@linaro.org>
Date:   Tue, 5 Jul 2022 20:08:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 5/8] dt-bindings: soc: qcom: spm: Add MSM8909 CPU
 compatible
Content-Language: en-US
To:     Stephan Gerhold <stephan.gerhold@kernkonzept.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Stephan Gerhold <stephan@gerhold.net>
References: <20220705143523.3390944-1-stephan.gerhold@kernkonzept.com>
 <20220705143523.3390944-6-stephan.gerhold@kernkonzept.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220705143523.3390944-6-stephan.gerhold@kernkonzept.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/07/2022 16:35, Stephan Gerhold wrote:
> Document the "qcom,msm8909-saw2-v3.0-cpu" compatible for the CPU
> Subsystem Power Manager (SPM) on the MSM8909 SoC. This is necessary
> for CPU idle since this is a fairly old 32-bit SoC without support
> for PSCI.
> 
> Signed-off-by: Stephan Gerhold <stephan.gerhold@kernkonzept.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
