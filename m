Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0BFAF595638
	for <lists+devicetree@lfdr.de>; Tue, 16 Aug 2022 11:28:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231216AbiHPJ2k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Aug 2022 05:28:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229585AbiHPJ2P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Aug 2022 05:28:15 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16804655E
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 00:46:14 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id c28so9654717lfh.3
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 00:46:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=YAMyBg9d44MWhyRNdyo4vUrOri76/3hzE0yf310ysjM=;
        b=QFpzLf54P+bbDcylPIHneeogkIyWz/Vz+U33ZOgN0CeyJcbv3T6m4wrwcABEDFOypO
         MHWNmqIk+NzoJ2ZI4jVm63uEDmjzTJnQicOTGoWSGjcgeAUQNGZYgvm58voPA8ai6g8H
         +4UsuB7VieMFg+yCDBcAYNCa/itCy5rCnIjtlPAe0j+V7qLBy4T78QEmWxGGDDoPGctc
         g/Gkqz9Ab4jO3ZV7GNcTF5Dno8nH8YPbjT9c2mIUZkcSQ9/AXK4rJNxPtcchrY5uzAyK
         8Z6Ab4w04E4RSkLeFH0jpA9cwxYYPYmjtnDQIvOsHWYVfTl66UbKR2GFvBcp0/21tAy5
         rMQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=YAMyBg9d44MWhyRNdyo4vUrOri76/3hzE0yf310ysjM=;
        b=L97Xwm1bpthOHKKaNXBZO7rDg9P+rrJeCKWb1Fapj//iEK97KUc8+W8T1lu647rh94
         WpOaox7vA92sBMGM5u9IO89uvZaVgbxznpNDveKTSA/B/6f3JzYNd2RR6Z7kWQ/ZACQm
         D1A6VjpwiFNc2x72wZsC2uDbIQqiHF/Tjmdn+qXnv1KE/FFxN7LcND6HQ6l/t/UYYDfd
         RoEb9zqP+/CqFAOxlos/JMR7ruE2J1jX0SPWDB7iNoHb9mMePW99r/so42XvQJgKSTOO
         XuXLHlg93Pp6bNTgaXXVTuX53qmcFKNlCMkdk3ZYJ0dB35FecVzFfZJw3cgtMad8uN/z
         WmdQ==
X-Gm-Message-State: ACgBeo3gwF0Uxs9oJiWe6JXZZXijCqMfR2zrvYIVbt8FnUvCFXlinS4I
        5WttvbTk76o11G8+8iEysPJ2gJV+to9skTtu
X-Google-Smtp-Source: AA6agR4cOy9qNK8UF3HTGFuF8YJarzziF01JWegFA9uf3mBt5gGvKcX7g0gz3fwRm3w0slKB3/qGOw==
X-Received: by 2002:a05:6512:1393:b0:48d:6f0:64c7 with SMTP id p19-20020a056512139300b0048d06f064c7mr6584168lfa.20.1660635973191;
        Tue, 16 Aug 2022 00:46:13 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ae:539c:1782:dd68:b0c1:c1a4? (d15l54g8c71znbtrbzt-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1782:dd68:b0c1:c1a4])
        by smtp.gmail.com with ESMTPSA id a25-20020a056512201900b0048a1f17916esm1298396lfb.300.2022.08.16.00.46.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Aug 2022 00:46:12 -0700 (PDT)
Message-ID: <8403196e-2342-f544-b2ac-4848149b7dde@linaro.org>
Date:   Tue, 16 Aug 2022 10:46:11 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 02/10] dt-bindings: sram: sunxi-sram: Add D1 compatible
 string
Content-Language: en-US
To:     Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>
Cc:     Arnd Bergmann <arnd@arndb.de>, Hans de Goede <hdegoede@redhat.com>,
        Icenowy Zheng <icenowy@aosc.io>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Ripard <mripard@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-sunxi@lists.linux.dev
References: <20220815041248.53268-1-samuel@sholland.org>
 <20220815041248.53268-3-samuel@sholland.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220815041248.53268-3-samuel@sholland.org>
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

On 15/08/2022 07:12, Samuel Holland wrote:
> D1 needs to export a register for managing some LDO regulators, so it
> needs a unique compatible.
> 
> Signed-off-by: Samuel Holland <samuel@sholland.org>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
