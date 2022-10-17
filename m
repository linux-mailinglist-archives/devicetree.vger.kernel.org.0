Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 00DAD601C1D
	for <lists+devicetree@lfdr.de>; Tue, 18 Oct 2022 00:13:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230161AbiJQWNX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 18:13:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230148AbiJQWNW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 18:13:22 -0400
Received: from mail-qt1-x82b.google.com (mail-qt1-x82b.google.com [IPv6:2607:f8b0:4864:20::82b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3CE66CD2B
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 15:13:21 -0700 (PDT)
Received: by mail-qt1-x82b.google.com with SMTP id l28so8661470qtv.4
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 15:13:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DCtI7HpnKLN2RHhMH5+l4CbBXx3g+mkMW6UlFy261fc=;
        b=OU4mKJkhQCZAztADc9v2BTa0rsCpsIXIlNR3wCJIZkUIDHULMp1dwTknBBBWSkC9q5
         cBZ8pe2cNB+AC4WHIFxuV9WIrakeq8p/CLez4o2i6ccGCQubRQlKLHhyRHSzpb1a6+mD
         vsK9AY6fnB7xAZtta8Ieln4FcZoFmbQHg2nOCymLMHPKnYYru00nJDvtsORnFkYUvNdE
         vAS33zc2FIi3nJuLJh4AShyroCJuQcTWXajFsppR1xa58Cgqo9pmmCmmki4vlw0MT3nW
         qOY1H0Lkjc8+/sHDni+DD62uIuJArQtiHaMEERkGuwrZKdQPSs5TF4rO+OoG3VUtFiS2
         Ve7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DCtI7HpnKLN2RHhMH5+l4CbBXx3g+mkMW6UlFy261fc=;
        b=gdoAcLP9MHxbJruXdYOsWXV9P0pg1MXql8l1Xy6djYsm0fbqKHmPuAvgKOafoWWRuT
         Ti/W7sdBeY+jeD0tA+EzzqYCwstl5BUAa18443UTxvxFhIBi4Aw9QOy/qmltkqmDh997
         esMJyrRjQJckqGhwESy90BaUkG/1UDHlCT1DVDnfSg5++itCDqoHZIHK/L8z+k+pYS3K
         BpHv2I1gfZOh7t2a9Q9MbjoNCb0IWYInq6KTQbUXim8Gl6Cgo0QB6Noy/Nz/iAx2/TGK
         7P7PlYQLdjF7CG1+pQG+tmwMvWj3dmW3yYZXmRdjbWQHZ3h52Nzm82FcYTKvB4A0Drrj
         QqPQ==
X-Gm-Message-State: ACrzQf1zgsolxSq7MSzbrilz/WMOkSRhq4t5bjx8Y+g6JTHQ6mIvNegB
        hQGLcImDXOWp3b9pxlaISp2XjA==
X-Google-Smtp-Source: AMsMyM5uytjViQrc7YdL7vZ5CO/vsYMTKrcInnLQzLGkBb0PTDgbeiNlLGhIVvhcU93+cxYzHxP/dw==
X-Received: by 2002:ac8:5813:0:b0:39c:d5f0:f1e1 with SMTP id g19-20020ac85813000000b0039cd5f0f1e1mr10645396qtg.453.1666044800983;
        Mon, 17 Oct 2022 15:13:20 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id g19-20020ae9e113000000b006ce3cffa2c8sm735933qkm.43.2022.10.17.15.13.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Oct 2022 15:13:20 -0700 (PDT)
Message-ID: <158acf1d-de37-936b-3dc4-40f62f227af2@linaro.org>
Date:   Mon, 17 Oct 2022 18:13:18 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH v2 3/5] arm: dts: qcom: mdm9615: wp8548-mangoh-green: fix
 sx150xq node names and probe-reset property
Content-Language: en-US
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Lee Jones <lee@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org
References: <20221005-mdm9615-pinctrl-yaml-v2-0-639fe67a04be@linaro.org>
 <20221005-mdm9615-pinctrl-yaml-v2-3-639fe67a04be@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221005-mdm9615-pinctrl-yaml-v2-3-639fe67a04be@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/10/2022 06:23, Neil Armstrong wrote:
> Fix the sx150xq node names to pinctrl and use the right probe-reset property.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

