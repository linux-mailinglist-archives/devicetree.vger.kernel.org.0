Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 14D6475AB04
	for <lists+devicetree@lfdr.de>; Thu, 20 Jul 2023 11:38:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230214AbjGTJhx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jul 2023 05:37:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230430AbjGTJhe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Jul 2023 05:37:34 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62E204488
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 02:32:40 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-5216569f9e3so799141a12.0
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 02:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689845534; x=1692437534;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zw3bdOgURyGZIIE9jpH5JtTpJ3WaiiUVFo6x2TqJrlg=;
        b=NM61oky2WpWNmPn9JR/sNPqgSvsN/awLuT+IZG9HQjGdUWRPU0NCCdVSebojvXrlVx
         lPdkVv9JQcoV3Z9fo6iEqymssPeF4WADUu92trATw82IaQP2IoZTcbgjAUhydoZtRqDP
         EfnlqMQrw6xw7VWodHAC/CmRJaQ+COqbVZoqy5abFX0/ptoV2pFmzIU/dE9osq8TBdVp
         P6QNox/H8qN84IjvUnwiOPEatv+VB/80O3+XK461HpICdetzPpmlnZTVo9pz/1MtjPTB
         EYMHfVZ145y5IMGi8SKmqOO30xTob09chPTtyt4JpsbENFLnmunu1TAMVWW333Lijndh
         K10g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689845534; x=1692437534;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zw3bdOgURyGZIIE9jpH5JtTpJ3WaiiUVFo6x2TqJrlg=;
        b=fxgAK22L7U+wY3x/owlULJedYqXghOjhIy+/klIzE6znkwNHx9ba8e0FLDNYo01uKY
         brPZesaadExaj9gd6ly9qYk2fQpJxQNKoM4hBHqNTQmQ8Iofo2vHwSiVQqWiSQyKFkJw
         ohTLCIlFtH0n+h4DKI+nhneSLk0DmB/y+jhqiBVaJKLx2s0JJ+cwtFUz282N5LNz1X9w
         ewlnXmeUojMp02ChhDKnTMY9J2ArfPRugRCiF/az9NLHC/OoVgGruO6Ws4UST+qrD4IA
         CYyWTztp83xTBMiEFqXMC2XToQHaxJxBGu/li+oLKeUCcbkcyx2yYJPUKa17/lZ9MXos
         h7LA==
X-Gm-Message-State: ABy/qLY8XQdyYIsPX7vPks0vDWPU0AJoxrvpT/V+M44Ka1lJNuALSkJE
        0vRUx7MJRyU+dkwOWOQLi1d3jQ==
X-Google-Smtp-Source: APBJJlE43eipzZ1egWwNTBOXwhW52noTrldVfENXVIc1LoMlYeyn6gBmCyKcncjwJoZ0UtJOoqRW7g==
X-Received: by 2002:a17:907:7eaa:b0:979:dad9:4e9 with SMTP id qb42-20020a1709077eaa00b00979dad904e9mr6123529ejc.50.1689845534461;
        Thu, 20 Jul 2023 02:32:14 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id dt15-20020a170906b78f00b00991bba473e1sm430204ejb.3.2023.07.20.02.32.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jul 2023 02:32:14 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        Rob Herring <robh@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] soc: samsung: Explicitly include correct DT includes
Date:   Thu, 20 Jul 2023 11:32:09 +0200
Message-Id: <168984552538.79008.14079472296169361189.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230714175147.4068046-1-robh@kernel.org>
References: <20230714175147.4068046-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Fri, 14 Jul 2023 11:51:46 -0600, Rob Herring wrote:
> The DT of_device.h and of_platform.h date back to the separate
> of_platform_bus_type before it as merged into the regular platform bus.
> As part of that merge prepping Arm DT support 13 years ago, they
> "temporarily" include each other. They also include platform_device.h
> and of.h. As a result, there's a pretty much random mix of those include
> files used throughout the tree. In order to detangle these headers and
> replace the implicit includes with struct declarations, users need to
> explicitly include the correct includes.
> 
> [...]

Applied, thanks!

[1/1] soc: samsung: Explicitly include correct DT includes
      https://git.kernel.org/krzk/linux/c/4c4458375c5633954eda8fb9e7d31d56836b2bbd

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
