Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F29426694DC
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 11:55:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241493AbjAMKzC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 05:55:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240980AbjAMKxl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 05:53:41 -0500
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 231A477D2D
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 02:51:55 -0800 (PST)
Received: by mail-ej1-x630.google.com with SMTP id mp20so4790391ejc.7
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 02:51:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gg77P8kE1JYggkYYwQ4IgOefL8Em0y29fUr8YpCFj1g=;
        b=QA/ExmQ+A9OC0nDjpfc8s21VhOa82rbIQjL1ZgTg9VZJ114xfJIyewc0hKim9+4OZZ
         MYndsO1AVPWOrUJTHORyes2KywtF3x8Mr5ivHkKta745EX3mBQR06JmMl6dbRRr7KBCS
         c6V9sJkNI0F736tiz4CnXJSJHnGESQrFZx8BE5MdectZsyh0F0auZ3X2f72PgczN7epl
         64p+6bWg8aMOycyYCeJj0N2gFX/Cdf1BOXNBwr0hG1sxGJXXyzLJXafhqfSQWfP8uDaf
         /ors/qLn2pjUxqRwlLadPF43cQilv4zyTNwk47KRM+EsT/8x6ZnW1rFbv1zZbgVz05G8
         AK9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gg77P8kE1JYggkYYwQ4IgOefL8Em0y29fUr8YpCFj1g=;
        b=B3K4wfK1GBNWNSWhZlpBVb0E3T/RjZKaG3MqdyOwIQj8zznuhEr2PcwRB9x8zE7BrR
         lVnqPW6WbCi/X/Th5z+dsMuOS3FuXb4p90gVOYy+iQOhTJyaMJW3HWMmWbJb44QW2456
         TvGvJKdwp2YmI2KvAiGtxK6o1vbUq0IoOzNgSglsRD0x6ZFf49FU4o2oieYZ5peh/iy9
         wr6TbY+32oDL2843PsrIQtwINxtDAedWjGwK/+jKNFnAPWQabw3lzgBEkmjsoIwVWEes
         zisuWn6IP63acYlXXc0msC0BADrCrKnmdK4XTNFxH3RhnLqsgXfkpaYaNIG4Crc5SapZ
         fUdw==
X-Gm-Message-State: AFqh2krS2S5/kxcWERyKpmmZ+k1a3RuHiTl1hPtKYuNCM3Odbrr0pBH8
        IczP54jQ/IsLsBP14arFoYTFhg==
X-Google-Smtp-Source: AMrXdXvEbGaxD61Xi47R8Td+NziX0zR8ft4jUhWaAXf0YBJjwWQ4vjxoScH/MXOMQiwMSHl3C5IXxQ==
X-Received: by 2002:a17:906:37c8:b0:84d:2fce:f325 with SMTP id o8-20020a17090637c800b0084d2fcef325mr20218959ejc.49.1673607114093;
        Fri, 13 Jan 2023 02:51:54 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id u1-20020a1709061da100b0086b7ffb3b92sm146352ejh.205.2023.01.13.02.51.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 02:51:53 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Patrice Chotard <patrice.chotard@foss.st.com>
Subject: Re: [PATCH] ARM: dts: stih410: align HDMI CEC node names with dtschema
Date:   Fri, 13 Jan 2023 11:51:42 +0100
Message-Id: <167360709872.32944.16597815448662042337.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221204183353.140002-1-krzysztof.kozlowski@linaro.org>
References: <20221204183353.140002-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 4 Dec 2022 19:33:53 +0100, Krzysztof Kozlowski wrote:
> The bindings expect "cec" for HDMI CEC node.
> 
> 

Applied, thanks!

[1/1] ARM: dts: stih410: align HDMI CEC node names with dtschema
      https://git.kernel.org/krzk/linux-dt/c/0cf125ef4e408573fe18e6b47a7e3080af2c04a4

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
