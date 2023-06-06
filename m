Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9CAF272385E
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 09:07:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235801AbjFFHHS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 03:07:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58714 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235794AbjFFHHR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 03:07:17 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14896E4C
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 00:07:14 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-973bf581759so905814566b.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jun 2023 00:07:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686035232; x=1688627232;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LfyrHHXs/3FEw5JUsOIXcywbYi43JeBHM9rQiciunaM=;
        b=JqtOPZz6gEmwZSjRofN+GZ3syD8hO6vnTjcwGS7tp/iQMi0AQEcs4gh89+ZgqJCwfg
         LkUindMIXYvzVe41WfuQy3iR0a1YcViNY/HHmXPW+/OtP+4GDuInRdOVvet04QrgNZ+z
         58ZpqxYapCWRZTY/QKqh2OR9Bf/S5qkeAIEfgDck+dWKa7+JGTPvshWG/D+ewHIXIlK1
         agTjB5P+ONFDH8MUyP456odMXVnjWPCmDRxplEzA7DfvGF4P+dz082ceg9bdXAttrC2S
         j2/iZopcu9316HCt6dLyUTeUdiqWad42Q0HScPsz54kWFro+VK0Pm1r8IzSUkfInVrGp
         9YkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686035232; x=1688627232;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LfyrHHXs/3FEw5JUsOIXcywbYi43JeBHM9rQiciunaM=;
        b=JNikLJGqizYysZe02N+H1iqpCL7bYlNunduSH3RgqX8jotoDL2u9T7m87ZMXPP2N2n
         d/VdtT8co4dwY7bKv8V1NgXq0D+Z+Chc8POX/a/XWghlHen43uCrp0CsrLxKycsHxR2b
         Syi9PQ/2FQmO4x3q7Qi2HSXuKkm7romXkeOyt8/f2zk5ko+Z7d8+EnXVl7V7AOk+xW9E
         XVWiKbD4QJiVaqYF3OCCz6JjRebT/gtA2MlEOAUPeIn3eSt7eEG45uo2A+rBKnzcm1eI
         oVjHVw3c0HbnJqHlGLM7tjIYOPCdM+NB1j/FTilDULBvqJTh0xgWWdD4VcuCOZjBL6aI
         t3Yw==
X-Gm-Message-State: AC+VfDz8Q5sfVM7/KfIOOw57bOfukUeXVxVkB4VhwfW1gsZ7qs5IgN8j
        g7TUGUwrkZO46r583atFOoYf8dH2jCErvnL8QCD84A==
X-Google-Smtp-Source: ACHHUZ4Vudc4edlU0LDDXrW6BYI1uics/oXG6J+ziisGwljUrIb9OXoKemrkfNCZWSUUE8Bc17JblQ==
X-Received: by 2002:a17:907:3d88:b0:973:8198:bbfb with SMTP id he8-20020a1709073d8800b009738198bbfbmr1633982ejc.31.1686035232584;
        Tue, 06 Jun 2023 00:07:12 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id z8-20020a50eb48000000b00510da8aa2c6sm4718596edp.69.2023.06.06.00.07.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jun 2023 00:07:12 -0700 (PDT)
Message-ID: <fb34990c-f463-d816-8b2f-8a622b626f37@linaro.org>
Date:   Tue, 6 Jun 2023 09:07:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v2 1/3] dt-bindings: add fannal vendor prefix
Content-Language: en-US
To:     Paulo Pavacic <pavacic.p@gmail.com>, neil.armstrong@linaro.org,
        sam@ravnborg.org, airlied@gmail.com, daniel@ffwll.ch,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org
Cc:     dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230605153539.497602-1-pavacic.p@gmail.com>
 <20230605153539.497602-2-pavacic.p@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230605153539.497602-2-pavacic.p@gmail.com>
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

On 05/06/2023 17:35, Paulo Pavacic wrote:
> Fannal is a one-stop-solution provider for touch displays in industrial
> application, committed to delivering a variety of professional high-quality
> products and technical services globally.
> 
> Website: www.fannal.com
> 
> Signed-off-by: Paulo Pavacic <pavacic.p@gmail.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

