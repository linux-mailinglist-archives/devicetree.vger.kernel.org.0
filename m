Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 06F5E6D73CD
	for <lists+devicetree@lfdr.de>; Wed,  5 Apr 2023 07:33:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236886AbjDEFd4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Apr 2023 01:33:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236880AbjDEFdz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Apr 2023 01:33:55 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 172C9199C
        for <devicetree@vger.kernel.org>; Tue,  4 Apr 2023 22:33:53 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-93071f06bd1so19988866b.3
        for <devicetree@vger.kernel.org>; Tue, 04 Apr 2023 22:33:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680672831;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=v5p7/w7fewOj51IYhvuMJQO0zEkYIY4fxshYNz4tS5Y=;
        b=vjYYQV1/IV2PXItK+wqdQAt9jWBIA7Ol0nbWL2g5mXvHPI3Ba1Y/H59Ev+4hzAvDvX
         BCgIK9tZ4QksbVxDRJDnKWLoyQhkvfSHgMpcnKd/Nu4SjmkB0jpK5Ef+H5GaDfVkyWXw
         luJPQt8EV/BHCntuXYRq/7NBwCXFjdNoDRwyp90YWnJr4dKJzhQyGzZhKjvCGDZhtFvE
         glNFZqkRQeVuHZYY0EtN/yD6VU1NFfIuB97sXrND4iLsBbC2fYhl48JZAoI6v1DOClAJ
         GhcHXnb9oVvQsHX+b90ezhVnqhcTstfSQ5tl7Po3KcgSpd8Ut5NWmHmFdRt0jUTcipml
         6UjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680672831;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v5p7/w7fewOj51IYhvuMJQO0zEkYIY4fxshYNz4tS5Y=;
        b=BaQNnQYwOT5ZZT0ZoEfcR3g18iYKri2gx26ecTXrDyTnPT1yRY/gYc+1gTB3dNnM9S
         WoqXTEKULbDic15OZoF01/wCBVhPjQV9/PZaQFtgcIsUssKoST9TTKuxHcTHOzh4iEzP
         itqlQCeQ2JcK68CIipO6r8YcUwbX8xwSPl4CzMUyOrHfoszEltkq1ZYDcuLdXFYckW+F
         ASgIvFuQBy7Nor0iZYMG9ZK96SUYoO6XOZacfz7GD0/Jq9hDVX0uj2rOoBWxxFWHEGUC
         jRasJOMRGFFJ6HsXA6SOpZ5iWbX9YCLkp97uGMbt03X0FwLrKXfo4bzl0CDfOlmqNdW6
         Wn+A==
X-Gm-Message-State: AAQBX9e7tCLJbvkw5BAyQB++eqbnNsclHdMkKXdv12GUzOwz356lTlv0
        p9Joq/ozxE/8BDyWS8vmcsMzww==
X-Google-Smtp-Source: AKy350a1hhobYidWMtmGwHc2cqturh8pPENTzcMZlrZsJplF4cgSqwj5OmgmWwkrOq/D5lBNennaxg==
X-Received: by 2002:aa7:d350:0:b0:4fb:59bb:ce7c with SMTP id m16-20020aa7d350000000b004fb59bbce7cmr634483edr.32.1680672831526;
        Tue, 04 Apr 2023 22:33:51 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:3f:6b2:54cd:498e? ([2a02:810d:15c0:828:3f:6b2:54cd:498e])
        by smtp.gmail.com with ESMTPSA id a9-20020a509e89000000b005024e725aefsm6762542edf.33.2023.04.04.22.33.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Apr 2023 22:33:50 -0700 (PDT)
Message-ID: <fa2d5794-5750-0558-e298-bc059937a597@linaro.org>
Date:   Wed, 5 Apr 2023 07:33:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 3/3] dt-bindings: mfd: dlg,da9063: document XVP
To:     Benjamin Bara <bbara93@gmail.com>,
        Support Opensource <support.opensource@diasemi.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, Lee Jones <lee@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Steve Twiss <stwiss.opensource@diasemi.com>
Cc:     DLG-Adam.Thomson.Opensource@dm.renesas.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Matti Vaittinen <mazziesaccount@gmail.com>,
        Benjamin Bara <benjamin.bara@skidata.com>
References: <20230403-da9063-disable-unused-v2-0-2f1bd2a2434a@skidata.com>
 <20230403-da9063-disable-unused-v2-3-2f1bd2a2434a@skidata.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230403-da9063-disable-unused-v2-3-2f1bd2a2434a@skidata.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/04/2023 07:29, Benjamin Bara wrote:
> From: Benjamin Bara <benjamin.bara@skidata.com>
> 
> Document that the da9063 only provides UVP *and* OVP in one, and
> therefore requires both configured. Add an example for clarification.
> 
> Signed-off-by: Benjamin Bara <benjamin.bara@skidata.com>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

