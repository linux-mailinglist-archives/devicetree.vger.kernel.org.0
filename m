Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C02A532FA0
	for <lists+devicetree@lfdr.de>; Tue, 24 May 2022 19:28:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239915AbiEXR2R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 May 2022 13:28:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236045AbiEXR2R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 May 2022 13:28:17 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFDB87DE0B
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 10:28:14 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id f21so23091150ejh.11
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 10:28:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=veu2FPBaI/1DFm4PUFxv9FNq6rpu8nFudiGrwlmGHSM=;
        b=gZ/XlZBlp4L8IWxs+qoqoVja1YNbIPorTCnCOL3ZtY+iokMWUUaD/qbXxH3FqDY/YK
         z2IDTP/hvjBYIrG/x3QYmaEeEdyDEheyjvJt2gpG0KV6gQqa1jEST15Jwb+iJG0rGBzz
         m+ASNmvLNq/1DpUjSDcrb5XeLLw7XO5AXyVgLdNcBCc1RkQ3tE4hDjk0tLb1Ypw2fogP
         R+Tv/EsU8qKhc2QDewyp6Z4H3wsn3SKJisGTmtnW7PZHcz4DlbCAKqtws7mOWNIYhTEm
         BphQU5c9xe4GllqpbcDeUDcjVlbjlQuWZ7VTVoGjrCnwhMAPaWbEgDRVa4dx1fS87N9X
         r5gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=veu2FPBaI/1DFm4PUFxv9FNq6rpu8nFudiGrwlmGHSM=;
        b=gRWKO8AfsabN2QRspBc/t+/9GpRzObo55N0P6NfyAQD2y+oIQVO6r2S3IBs7/GDVwe
         4P/isOq5EjA7/TbCnLb9xRKd7+Y1XQkdant9pk4BBf+dJFSQJ8fLdXQxPNKyND8fd8gj
         7rI4LVwNGDR8NXxYIiujzmRT7XhFh+YvVrABVcsG1zLoo1OI8pVjY3B95Tbra/UOqCM3
         eGb3+ZSuFg+2aUgS1oyKYunt8EVLOe2KAvxcezmtpnQQrEZUWO0F9MOBANn5xpPmvWey
         UKStycmivS9oRkUZYSKnuoZ/Q7hTsln3UdkTtuPPJ7j43hvpRGNG8WRhvN5c+/t1WtKL
         4qXA==
X-Gm-Message-State: AOAM532zqgKwmWjuGMMDUCFltu9HJ8nVCMnw8Xg8vsgLG9x7m0K9h9o9
        h1bU/5PX3CZdtKAcqKSjJaEFuQ==
X-Google-Smtp-Source: ABdhPJzNuf50ko0QWScaW7JCNXkoXZrgS/sd+uO6LY8fdrjSymVBWa5CO/EMaNYqNM1M5FqG8Jxnlw==
X-Received: by 2002:a17:906:350f:b0:6fe:a264:2cd1 with SMTP id r15-20020a170906350f00b006fea2642cd1mr20654456eja.735.1653413293370;
        Tue, 24 May 2022 10:28:13 -0700 (PDT)
Received: from [192.168.0.177] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id d3-20020a170907272300b006f3ef214e53sm7308396ejl.185.2022.05.24.10.28.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 May 2022 10:28:12 -0700 (PDT)
Message-ID: <014a6c1c-2795-f066-f103-9a97afc35da7@linaro.org>
Date:   Tue, 24 May 2022 19:28:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v5 1/6] dt-bindings: remoteproc: Add Xilinx RPU subsystem
 bindings
Content-Language: en-US
To:     Tanmay Shah <tanmay.shah@xilinx.com>, bjorn.andersson@linaro.org,
        mathieu.poirier@linaro.org, robh+dt@kernel.org, krzk+dt@kernel.org,
        michal.simek@xilinx.com
Cc:     linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220518194426.3784095-1-tanmay.shah@xilinx.com>
 <20220518194426.3784095-2-tanmay.shah@xilinx.com>
 <45fea4a1-387f-9684-a90b-58b695b54172@linaro.org>
 <c97d61b0-8a38-5054-d5f1-bc7c5e7bcf61@xilinx.com>
 <1b117e49-28d0-da75-68ee-c2fcef9fc9a9@linaro.org>
 <c7b248f4-9ec1-2ae8-c7e3-55f37592f56e@xilinx.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <c7b248f4-9ec1-2ae8-c7e3-55f37592f56e@xilinx.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/05/2022 17:43, Tanmay Shah wrote:
> With this, I will add 'maxItems: 8' in sram and memory-region properties.
> 
> If everything else looks good on schema in this revision, could you 
> please also review next (dts) patch in this series?
> 
> If that looks good, can I get your 'rb' on that?
> 
> so we can reduce scope of reviews for next revisions?

There is no need to resend after receiving a tag, so the amount of
reviews/versions won't change.


Best regards,
Krzysztof
