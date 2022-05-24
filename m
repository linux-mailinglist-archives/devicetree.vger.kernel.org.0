Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 761B95326F4
	for <lists+devicetree@lfdr.de>; Tue, 24 May 2022 11:57:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235226AbiEXJ5B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 May 2022 05:57:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234298AbiEXJ5A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 May 2022 05:57:00 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C7856D4EA
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 02:56:59 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id m11so8805987ljc.1
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 02:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=mMxI+vIFAKlvMM/NNNRrfjLscB/Hbv7+Maz61XKAWyA=;
        b=eU4yl0l31L/KpXnKHjgCiMjKeODJvHLX4bAJIC/Bgf9WhrDDsYvDkxDYux4M8ysIXn
         muelLq4XnBBQgTZJr28+tk+I83FfIeM7o/yp1UK4OK2hsndiHU0nUKhEM47UTUmRL8sr
         4p0g5WhCzG5f9tdaFxT0kXRO1Cgxp3/BGtf4OuupzUzjPxqX46EeTrAocsOuy0tOhvRg
         s+O9vdQBL06gfyrPcmt+soT09s0gQOK44SHubQqcR9aipwoWTbkXJgnfsgO7a+WMpK4/
         Rwi/xrdhrXj0B/KOF9gTQDTfVgJvEdZhiRcTNCtl9BPeFdJoNhrt/eWzU0gcZZM7+2jy
         SnTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=mMxI+vIFAKlvMM/NNNRrfjLscB/Hbv7+Maz61XKAWyA=;
        b=huacyKjFLWg8KeBElsZEGDj2KOqvt58rbA8IsQnwlvuOwR/n5UJl7DMjsxmOhJlV0N
         HwFTh3LZPv/78+eVmNwiIv40xpAeutYP2zCHXAjI57XQuJwJwIgUXMYmOqFBHrWfdkuC
         ReO6IQKOdEBcm/U/p6yLQ+CqMUEBYoU9RSPFBfWPK4flJxTmFe8AxlNJd3wEL4kDKZSS
         uXjVOU/7gpePEvMyzNk9+41z2n93DsO1p9F0PCFkJaZtF5Jg0mYGCxLRqp5S6ZPwyOLR
         +FiQ3TB0C0JwaHY6qrazgBi+L4GI76Hzouv4furHSbDUIeKsWJeRvPhZwlDGZSwOTJAI
         DzvA==
X-Gm-Message-State: AOAM531uC+Rrz5udAsf2iCzONlxzRNF/WmkqBWOuGq5gsQiWn8DmYFN3
        Qf7TtlO3xF4dgkwBRv4ERHlp8Q==
X-Google-Smtp-Source: ABdhPJwAQWdZq81MsCA0KTIn1olCkxhipKoBgusmjVHEC+VLehZ4vjazlcp0UE7Lei7jPV2iFKfTTA==
X-Received: by 2002:a2e:9ccb:0:b0:253:df97:ebd with SMTP id g11-20020a2e9ccb000000b00253df970ebdmr10572569ljj.280.1653386217371;
        Tue, 24 May 2022 02:56:57 -0700 (PDT)
Received: from [172.20.68.48] ([91.221.145.6])
        by smtp.gmail.com with ESMTPSA id a11-20020a2e980b000000b00253df2d526asm2267491ljj.77.2022.05.24.02.56.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 May 2022 02:56:56 -0700 (PDT)
Message-ID: <7a34faa9-cdfc-3008-7cc6-89854dd0f183@linaro.org>
Date:   Tue, 24 May 2022 11:56:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v3 3/4] dt-bindings: regulator: Add bindings for MT6332
 regulator
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, lgirdwood@gmail.com
Cc:     broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
References: <20220523154709.118663-1-angelogioacchino.delregno@collabora.com>
 <20220523154709.118663-4-angelogioacchino.delregno@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220523154709.118663-4-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/05/2022 17:47, AngeloGioacchino Del Regno wrote:
> Add devicetree bindings for the regulators found in the MT6332 PMIC.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
