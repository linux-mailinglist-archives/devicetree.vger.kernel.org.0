Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D66D3534F11
	for <lists+devicetree@lfdr.de>; Thu, 26 May 2022 14:26:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343888AbiEZM0l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 May 2022 08:26:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242083AbiEZM0k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 May 2022 08:26:40 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 468B85F6E
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 05:26:38 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id q21so2756077ejm.1
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 05:26:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Y0e4snQi7n2SjF6Ck76whvuOc/klo+1JHia0LyM1puE=;
        b=zxkEQl7RT17wo8Rs9kNSf6bo13XpGU4njx7LZLYlIraBIzs4x0eo/TEiIP2RBvi3tx
         X+1MZmvi7e2MKKQ8X9Yg/9qZpCrmwWAWzpK3YxeVTzhEI1iCSWNlpJbpojKQM1nkDH6f
         36t3mIXT2fDIUysG9c/G/z+QQFu9aiCQU2GbbwVbpGlbOG9ClLaCXNQ2/oXMva0KfuWn
         W1zzZWW04ZdA00XVOZMlRzIxc4lCksumb8WSV7DCfF3v/X2/wT9PznH+c9FtMDsUxjzq
         AucK2rtkIIBE4oCZYkB4dKf0sh5OxLcOBaMZ2iyO0B+ZgfRpKXO/IuoGpGIUunEUmMym
         jJTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Y0e4snQi7n2SjF6Ck76whvuOc/klo+1JHia0LyM1puE=;
        b=XmvKSeFOHnx/laLAh0u53LxLb4a0JaHRXbn5hIAMJ0ZNGdZW7b2MFaGyIoJee5ZHqK
         nZpl2829yVvF2bh91+f8Ux/JFSZGVoSrUu7GxkTaO5Oi+aeeZj4gSQOsUfIHuVnZRP9/
         A9d5mpmiVvXhDvbIH5YKsAf6GMxWjHwfwzpbJmQufE0N8EENM+maeLxTPCV3reYCe0UQ
         94gaHBW/vY/22FVUQM5Dy2LMYl0JHIib9G7Gzq6bFh3FZ/hQW9ubu5IlkQXxCm8Cf+tQ
         ngshT2xLnPGki0fAWX0EEE3mVZI3qaURIcli5rOpkY0aGVXUFYWhXITluEB0l5WaYoZ/
         M61g==
X-Gm-Message-State: AOAM533L3zYtDl4B6YfZiBHhdiCdBDeUniu/cAhkNuSh9ChU+urY2Idl
        IC+UggZWaNsTHVcJ7z1HwggVWA==
X-Google-Smtp-Source: ABdhPJzWPJFuN9BjNjbPb5S4iPgNkMLre4lu+a45KZO8S/trrHBCe/pMNabMhSA1PN6VPwaNr+4czQ==
X-Received: by 2002:a17:907:3faa:b0:6fe:d013:b22a with SMTP id hr42-20020a1709073faa00b006fed013b22amr20091822ejc.425.1653567996822;
        Thu, 26 May 2022 05:26:36 -0700 (PDT)
Received: from [192.168.0.177] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id c2-20020a170906154200b006fed5247df9sm462398ejd.196.2022.05.26.05.26.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 May 2022 05:26:36 -0700 (PDT)
Message-ID: <d816796e-4b2d-77af-afbd-7d54eb18858a@linaro.org>
Date:   Thu, 26 May 2022 14:26:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v4 1/3] dt-bindings: gpio: gpio-mvebu: convert txt binding
 to DT schema format
Content-Language: en-US
To:     Chris Packham <chris.packham@alliedtelesis.co.nz>,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linus.walleij@linaro.org, brgl@bgdev.pl, thierry.reding@gmail.com,
        u.kleine-koenig@pengutronix.de, lee.jones@linaro.org,
        andrew@lunn.ch, thomas.petazzoni@free-electrons.com
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-pwm@vger.kernel.org
References: <20220526012946.3862776-1-chris.packham@alliedtelesis.co.nz>
 <20220526012946.3862776-2-chris.packham@alliedtelesis.co.nz>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220526012946.3862776-2-chris.packham@alliedtelesis.co.nz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/05/2022 03:29, Chris Packham wrote:
> Convert the existing device tree binding to DT schema format.
> 
> The old binding listed the interrupt-controller and related properties
> as required but there are sufficiently many existing usages without it
> that the YAML binding does not make the interrupt properties required.
> 
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
