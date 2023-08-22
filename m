Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F41CC784A84
	for <lists+devicetree@lfdr.de>; Tue, 22 Aug 2023 21:35:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229662AbjHVTfr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Aug 2023 15:35:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229672AbjHVTfq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Aug 2023 15:35:46 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F368128
        for <devicetree@vger.kernel.org>; Tue, 22 Aug 2023 12:35:44 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-5256d74dab9so5940071a12.1
        for <devicetree@vger.kernel.org>; Tue, 22 Aug 2023 12:35:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692732943; x=1693337743;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dzZ3X8T6ZFCLMeUjvF7612/5hsqzJ6gogDeFMMXF540=;
        b=yq1WQle4CCQ/YhFz4PYdRp+uPdawPD8YwMOqyB3TccoeRYVf8f7wiKXk35qmCWOOfy
         YoGNa0sREWi11JyEK2OkIrlj0r6/RCrXtwzflwos3Ex0hnutVjTpSoeAJJ2RJvi7O6bF
         4XysSs1iUnV8Domu/vIHsui/AoBmeyVp0y0igFbvE33g0nWyPyBf/F6nK1yB9bJSq8Ds
         2T0KTOyec7WaQqr2LZdBqosSQREDPloFRkmNlhQt+5mFN0leHIq3r74IA63bMq3dfKzq
         EASC3GBpG+2SwFVtUkc3RTBKIIrbjjlf71O9ntnyH93BffeDptX2JUFZkR0mnIe21mAq
         7N1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692732943; x=1693337743;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dzZ3X8T6ZFCLMeUjvF7612/5hsqzJ6gogDeFMMXF540=;
        b=h5eulU+gv38HXmzxD1u6pjJVHaqZz1xX+4DbBmKWlv2pi6LHLqBdxK+XOCmqAR5Ei9
         yXEZqJHeeSqDiN6pyHqeDNMGQ37+M9ooiMKRwtHdP8UWZSl4pBR2xk+rgpoxNjUFanjv
         /xgvorIywvSaQlijaCkCJyiR2HTEnsstw2TrYDF1veM/Mqcp0io2KkzJu1Jvg8yip+My
         HBodP2er0717CVLJiFCEj1uVWqhcud28yX4JDP4XBLxv/a8FDjT4uI9cg500QDhBO3tR
         AywORlA2yKLP7wfC004xiVp9PnZvZrboCyGBmN+1WpnQjMLJe8qQeEm5o2ufiw0x9XF/
         uunQ==
X-Gm-Message-State: AOJu0YzllanZnk4It9WoFXirIq2iXaWrolliuEIPrP2q3iBlaKZDg3TL
        NA8EzmWpUylATOcVC/8eJubKAQ==
X-Google-Smtp-Source: AGHT+IGP/JccbWhRnfBuRaU+wbcMwiIFtV6ls46Kia79H135jPfCC3U1PwUpdFlXToKAieWl6J/bEg==
X-Received: by 2002:aa7:c48d:0:b0:525:440a:616a with SMTP id m13-20020aa7c48d000000b00525440a616amr8469545edq.20.1692732943196;
        Tue, 22 Aug 2023 12:35:43 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id t8-20020aa7d4c8000000b0052a1d98618bsm755238edr.54.2023.08.22.12.35.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Aug 2023 12:35:42 -0700 (PDT)
Message-ID: <19d01c38-53a9-37f9-5170-6461562cdd36@linaro.org>
Date:   Tue, 22 Aug 2023 21:35:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v2 01/11] dt-bindings: mfd: mt6397: Split out compatible
 for MediaTek MT6366 PMIC
Content-Language: en-US
To:     Chen-Yu Tsai <wenst@chromium.org>, Lee Jones <lee@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Mark Brown <broonie@kernel.org>
Cc:     Zhiyong Tao <zhiyong.tao@mediatek.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
References: <20230822084520.564937-1-wenst@chromium.org>
 <20230822084520.564937-2-wenst@chromium.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230822084520.564937-2-wenst@chromium.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/08/2023 10:45, Chen-Yu Tsai wrote:
> The MT6366 PMIC is mostly, but not fully, compatible with MT6358. It has
> a different set of regulators. Specifically, it lacks the camera related
> VCAM* LDOs and VLDO28, but has additional VM18, VMDDR, and VSRAM_CORE LDOs.
> 
> The PMICs contain a chip ID register that can be used to detect which
> exact model is preset, so it is possible to share a common base
> compatible string.
> 
> Add a separate compatible for the MT6366 PMIC, with a fallback to the
> MT6358 PMIC.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

