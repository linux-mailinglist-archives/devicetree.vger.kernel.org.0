Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D526A767230
	for <lists+devicetree@lfdr.de>; Fri, 28 Jul 2023 18:43:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233429AbjG1Qni (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jul 2023 12:43:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235897AbjG1Qnc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jul 2023 12:43:32 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9EBB170D
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 09:43:23 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-98377c5d53eso318683966b.0
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 09:43:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690562602; x=1691167402;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6NGaB+Pl1EDrqiUyMnXrdffVFXV680hTeyR0STD0Bjk=;
        b=hlpUPgc3EoCdmqg67UGLVu7Q5NJSDLmomhbjKq8lPe1YfSODHlzy4k+t0eY3ojMhMp
         /tnkJClxgnu5T65lndJhC5WgvMTdSZpmarsVdqdg00SsGm8v6wrs2VX68JkwFeipaIAl
         tQyK05+bGsEKy1aivmk+4hHs0lbn1GERr3SmiwJ9svYwxC844OULo5SU6W4GDqsW5Vj9
         1wK4sgXKuu6PfioLFEMj/vkhVE4BG8vePIjyEJRRY79H7qaptOGLN6wXp/6Puw6UVp1P
         mGHNjWIC/jVrrZO7gfP3R9uftKz8QrozIfbzaBqjuKEXXeva11eQljYwhzoaI8tbR2uR
         Cp0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690562602; x=1691167402;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6NGaB+Pl1EDrqiUyMnXrdffVFXV680hTeyR0STD0Bjk=;
        b=dXeONvOCseuJDlV+iFaopkBfYno6pcGIOBOzYPGVHFuogwM0fh+fJO5nyx6Y6rEHQk
         Lhy4yiQ32OBzIEwk0x5VYyRu0AFgG+hFmMMAXjqn2pY8u7ilTtfui48p+3ivbbkhi+KS
         wCjcZaY951C2zidmujUkgcwVqZFuw56mnl/2oo5GLUgcCKbekFCW6WvB8qC9Dq3OE0tl
         o+U9kjFpolrYnqv+aGOXP04WDLbkUJSmNb5vguvX4eMCJaKgU0zijoeiIxtujt3VlrtN
         BeeFp6Vx3NGzW7JUb0RbXhcMEHK9zGtEH/2tuDf/o3Ju2FcQ5PX2zYI2N6hUeHFJs0dd
         ZwOw==
X-Gm-Message-State: ABy/qLb4Y5TUn19FqYXmyHlFSLbNcY0iZJXM6D4GdM3s423Qm+5pOao7
        /f0+Lz5Cb+a+Qx3BRCVxkR9ThQ==
X-Google-Smtp-Source: APBJJlEUnec0/HBInXzgL9HSAyAgX9jBaoQ4JqrlwiBFMaOQn8xKs9H4eOj+zc9H7oDlR3Vxa1Gcww==
X-Received: by 2002:a17:906:530e:b0:99b:8c6f:f3af with SMTP id h14-20020a170906530e00b0099b8c6ff3afmr2399890ejo.12.1690562602387;
        Fri, 28 Jul 2023 09:43:22 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id v23-20020a1709067d9700b00992eabc0ad8sm2245414ejo.42.2023.07.28.09.43.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Jul 2023 09:43:22 -0700 (PDT)
Message-ID: <f5305742-dc43-7e35-f380-0bf7be37c442@linaro.org>
Date:   Fri, 28 Jul 2023 18:43:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 15/50] dt-bindings: atmel-gpbr: add
 microchip,sam9x7-gpbr
Content-Language: en-US
To:     Varshini Rajendran <varshini.rajendran@microchip.com>,
        lee@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
        claudiu.beznea@microchip.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230728102529.266030-1-varshini.rajendran@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230728102529.266030-1-varshini.rajendran@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/07/2023 12:25, Varshini Rajendran wrote:
> Add microchip,sam9x7-gpbr to DT bindings documentation.
> 
> Signed-off-by: Varshini Rajendran <varshini.rajendran@microchip.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

