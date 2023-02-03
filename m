Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E5876892F7
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 10:01:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230070AbjBCJAa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 04:00:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232447AbjBCJA0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 04:00:26 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0E6692C3B
        for <devicetree@vger.kernel.org>; Fri,  3 Feb 2023 01:00:23 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id j32-20020a05600c1c2000b003dc4fd6e61dso5499315wms.5
        for <devicetree@vger.kernel.org>; Fri, 03 Feb 2023 01:00:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qXoAdHhN/nXWyLyZPUiTv4Q4XmY1KdAGzUzsHG/Rk/4=;
        b=EQ75a+A2a/ajqx8kGm+he/MG5JqJRScsCs7zePqdvT18OKGHTuLnVCDHxC+mDWrDZG
         OhTQEQto6HF0AgYT4Avbgk/mQ65mHW52eY9ahBiurEBaJThzk8t/O38jeGsVQRWClp6s
         KHsYlkOwGaAKKTaHgKAE1E8arVdP+OD0tkAnJbahzPvSZqpqIwgb+nGudQe4bDkV7Aix
         zKqp9xm6nnThzNeQ9tw7xERnlLBPPmOF7KhlqhOCT/HW5te9PdcJNyjHCOKsNyP1HYGP
         DaEZwgiTY2cI/iuquNk0hUomjalP7z+V2eNFdExLL2DQcbjz4XJQr8w3lIdWqxzKo8tC
         Ycag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qXoAdHhN/nXWyLyZPUiTv4Q4XmY1KdAGzUzsHG/Rk/4=;
        b=nhZ7LyQuPj6ud+zHZXnBry2KSmIHkkWeSt78+lDKKhGbc0kSxZusOexq1oe200e6Ek
         VBd+6uJCtK6LlY+mEGb8R+L3DjZOKp1A+/itzDlh9ylRKWOq0uPPElPFKC7jeQ/tWPZ6
         oGJPCVOJAsbJyR56FYM8TQK6JVC3+9LEb4BJirpF3H8Hia/Fy338EPQ0Ism1ye83XgjO
         Q6LkoM1o8vdgbif/JPj3BAjtJMWtl55/5Z/+fLOIZ0mZqoj/0xe5UQ/+kQTrlDQgk0cB
         QgKtNzneEMs4VH+CnnhwnwdQLdROPFmzpYZju2Ry0Uq5+CF70cx7sZrEPUUJHmDQemEZ
         s49g==
X-Gm-Message-State: AO0yUKWP+5GuLFf5LzsmO6z/LORBDdtsmScL4ulS3+dhO8v8z7nwlaKO
        UmXm5sWmqRx8CY7S1IvfwH2AcQ==
X-Google-Smtp-Source: AK7set9UG7Ud3p7osiXX4INl9ByMEzwhEn6pf64Y4FQLsiE5MeXOWMKgknfwGwLF5zdgnCno4AhqXg==
X-Received: by 2002:a05:600c:3acb:b0:3db:f0a:8707 with SMTP id d11-20020a05600c3acb00b003db0f0a8707mr9116756wms.40.1675414822412;
        Fri, 03 Feb 2023 01:00:22 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id p17-20020a05600c205100b003dd1bd0b915sm4170806wmg.22.2023.02.03.01.00.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Feb 2023 01:00:21 -0800 (PST)
Message-ID: <5de1f657-2632-9165-b6ed-96327fab1de4@linaro.org>
Date:   Fri, 3 Feb 2023 10:00:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v3 1/3] dt-bindings: mmc: Add StarFive MMC module
To:     William Qiu <william.qiu@starfivetech.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-mmc@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaehoon Chung <jh80.chung@samsung.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        linux-kernel@vger.kernel.org
References: <20230203081913.81968-1-william.qiu@starfivetech.com>
 <20230203081913.81968-2-william.qiu@starfivetech.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230203081913.81968-2-william.qiu@starfivetech.com>
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

On 03/02/2023 09:19, William Qiu wrote:
> Add documentation to describe StarFive designware mobile storage
> host controller driver.
> 
> Signed-off-by: William Qiu <william.qiu@starfivetech.com>
> ---
>  .../bindings/mmc/starfive,jh7110-mmc.yaml     | 77 +++++++++++++++++++
>  1 file changed, 77 insertions(+)


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

