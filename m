Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD93F79A362
	for <lists+devicetree@lfdr.de>; Mon, 11 Sep 2023 08:14:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229843AbjIKGOu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Sep 2023 02:14:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230388AbjIKGOs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Sep 2023 02:14:48 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B948100
        for <devicetree@vger.kernel.org>; Sun, 10 Sep 2023 23:14:44 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-31aeedbb264so4282612f8f.0
        for <devicetree@vger.kernel.org>; Sun, 10 Sep 2023 23:14:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694412882; x=1695017682; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M01myCvGGybQr0ULkAIP3dIJ3LGuPKDY+KhnFtqf92A=;
        b=jcHxqP1KgdUttIE9fNLUGVVh/TFxZFWArTnDPou+nDF0NDIhugWJPLgwP22aj6zfCg
         nVgWLFd3E8uKiDr6LeDrBNdzU+UL3n4vdlJx0hQzv7wSDtvk+xaWQjSrt8Q4uYoAA7Ab
         STYGs8G+Wp8axCAHtdRDCZHbSZPo7ZeyVd+XsCv+Htc3dja6nrOZM1Avy63ef7vJqOLq
         uRM9t0glK5Dd3tIp/PcjKLddo2GJdzjtz1VlgljcfP7aHHzT92MBUypBTuSmgDI9WqAr
         Wu/lbfvglqUP2CBo0Ieu7V8hTNvtBiQTGYc+Meiv0FGuQ1RtRUikI4LgYiCYTizM2VFs
         w/Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694412882; x=1695017682;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M01myCvGGybQr0ULkAIP3dIJ3LGuPKDY+KhnFtqf92A=;
        b=miwIFhWL2XoNXiPi4Nrgo17d9gbOYO43Bg4beZxvgE1HMm2WLWBBA1we4pi/uSV/RX
         j6MWw/QIPUC27Hq67jk2wJkCTyqgZT6/xc7FUA9s513m3Or4t6ViiGyFNeOBu8Tw99Kh
         dbidZrplqT6WyxmfDYsrJckBr9wWLXiSiQDt/ejbaDb+/TpgztrVIyd6XjUiJiFvNgDd
         Vb2a1jdRc9Ppko4ld8clV+OcFQ6hRjBbMx/li7m8Ippvko8XUvHs9li68Dxmq63ISTlY
         UwS13H/GMMOqhqE94L7uVwTP9epKuFskz3JMPqj8r6ka9yoBNEFufVRzaK5XM9u41KdZ
         W7Vw==
X-Gm-Message-State: AOJu0Yw1VXqFmkTELLDA41l+bsSE6637GiVEtzdAc+TqVXKiDZJQ/jKL
        Se2NfC73lE2pFX6ebYLN5NVTvw==
X-Google-Smtp-Source: AGHT+IFDBUWjHA7Xe8ovUewybif0JxZGJ1fhobQq3Glg8TQFwRJZM6rLkFigcMKJzhppzbNcwlrn0w==
X-Received: by 2002:a5d:5103:0:b0:31c:79c4:9bf3 with SMTP id s3-20020a5d5103000000b0031c79c49bf3mr7252770wrt.49.1694412882382;
        Sun, 10 Sep 2023 23:14:42 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id a10-20020a5d508a000000b00319756d5b80sm8979909wrt.29.2023.09.10.23.14.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Sep 2023 23:14:41 -0700 (PDT)
Message-ID: <8ef4aa62-940b-b0b5-60e1-fb42600b776a@linaro.org>
Date:   Mon, 11 Sep 2023 08:14:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v2 2/2] dt-bindings: thermal: qoriq-thermal: Adjust
 fsl,tmu-range maxItems
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, rafael@kernel.org,
        daniel.lezcano@linaro.org, amitk@kernel.org,
        linux-pm@vger.kernel.org, linux-imx@nxp.com,
        Fabio Estevam <festevam@denx.de>
References: <20230910125726.1243652-1-festevam@gmail.com>
 <20230910125726.1243652-2-festevam@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230910125726.1243652-2-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/09/2023 14:57, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> imx93 has a maximum of seven entries for fsl,tmu-range.
> 

Then qoriq should have it constrained to 4 entries.

Best regards,
Krzysztof

