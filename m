Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E35D7830BB
	for <lists+devicetree@lfdr.de>; Mon, 21 Aug 2023 21:13:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229768AbjHUTJN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Aug 2023 15:09:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229762AbjHUTJN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Aug 2023 15:09:13 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70115A1
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 12:09:11 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-3fef56f7248so5984635e9.3
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 12:09:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692644950; x=1693249750;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O1jfWqRFqEX/V4IMqa029q2gEFfs8XGqFtJjj4sRi5k=;
        b=GHqYRhG/UxIVyOYZ2Wl6guOx2mMhaBuDFEh6RE2+JoWXnsdnqJPweOp9xIOorYOb4a
         jLJg4LL1o9zXeRMX2GMWsS6OOnhgfXZiL985hVHCnkW9O1G6YA797P/h1wbnHRkDEnN+
         h/jcnbnMOgKhbhu1JBWsYcUrgolHy3Oh3D4+X0aWKCsvEVNDT9ccGZrpSkvbJbm3FLIL
         cXPqCL+yfupMjzQaHF5LSZkfylSTW/YvV//nZsnX2dYhHTfS9oqhOL6TyZcJ3YyWXiMR
         zJtS1zObSPZ2bHw6K3hIx2SVWcO5OQu/Clz+mUjBuEJIHIEIFSwLqrHXiUByfbPHQtVy
         lxmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692644950; x=1693249750;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O1jfWqRFqEX/V4IMqa029q2gEFfs8XGqFtJjj4sRi5k=;
        b=U0UGvl7xvBpJshsfnFxU9xzTNSGLjIsynwuIHcXTU+pJSDVyyCb/SPxXS2T64XNs8o
         DY/zC62Yn+edSK4LR0lvtaHvbCwLF3Vu/WxsDnQFrQcWtiaU3IbTB3DHI5ol0G8+wbNg
         ym0WCG/gfpY0LX+1koNVRhyo9u970IbHoIRt48lj7J4uNk9gtkHGJX1cgl4VkHivp41w
         pdX2mQsNorrieq/9RhAV7hnA5QevvpVRl5LvNYw7TjoabT60jbY39Lwm0n/VnuEALlb0
         Lak8RDrcSv0ZZH8WhhcMuY4bXs80PD81Q94eVnW/gTvhFY81Gw+lgHbC42APODGDaLFA
         8SEQ==
X-Gm-Message-State: AOJu0Yxr31/ajN5Xo8CJ0urXy2ogaj71AORyYNdjrzGvUpw6maQb2awm
        dZ93ULQgCeyZBUPoTfc5Qt/mFgUpkpOfVJF4Aw0=
X-Google-Smtp-Source: AGHT+IFGAXFhnHGo2FpM5aCmnviNTFRiZ/WCyyzjZnj8MJtw/TSwL8XbhsAY1GaPqh4Dk3AZ7uEsGg==
X-Received: by 2002:a17:907:2c6b:b0:988:9ec1:a8c5 with SMTP id ib11-20020a1709072c6b00b009889ec1a8c5mr5605427ejc.55.1692643304233;
        Mon, 21 Aug 2023 11:41:44 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id e16-20020a170906045000b0098dfec235ccsm6855882eja.47.2023.08.21.11.41.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Aug 2023 11:41:43 -0700 (PDT)
Message-ID: <8fd5b5e6-792c-3b7f-0828-5d647993ec7d@linaro.org>
Date:   Mon, 21 Aug 2023 20:41:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 1/2] drivers: regulator: Add MAX77503 regulator driver
Content-Language: en-US
To:     Gokhan Celik <gokhan.celik@analog.com>, outreachy@lists.linux.dev
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <cover.1692634090.git.gokhan.celik@analog.com>
 <b45b07c3bdbfac1608b171f96aa0ae4ca5a0dd82.1692634090.git.gokhan.celik@analog.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <b45b07c3bdbfac1608b171f96aa0ae4ca5a0dd82.1692634090.git.gokhan.celik@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/08/2023 18:28, Gokhan Celik wrote:
> Add MAX77503 buck converter driver.
> 
> Signed-off-by: Gokhan Celik <gokhan.celik@analog.com>
> ---

Please use subject prefixes matching the subsystem. You can get them for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching.

>  drivers/regulator/Kconfig              |  10 ++
>  drivers/regulator/Makefile             |   1 +
>  drivers/regulator/max77503-regulator.c | 137 +++++++++++++++++++++++++
>  3 files changed, 148 insertions(+)


Best regards,
Krzysztof

