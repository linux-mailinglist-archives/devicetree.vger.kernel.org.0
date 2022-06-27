Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 54A1255D1DC
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:10:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233836AbiF0JQ0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 05:16:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232617AbiF0JQP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 05:16:15 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C286A60F7
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 02:16:14 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id lw20so17795672ejb.4
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 02:16:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=smmwNGmUXsCa92fGpwEoty8rEolknH2O6aTGzJhLQMg=;
        b=aNtE9OtuA8bLYEkNplbQ0YykPTb9NDTmDYIvP/NdzIMgyitUVU+KB3kHmC9ZAP7QSF
         avgzZjuYA5+mdHKtzSMAtSeHrE00CuHalgol33BsDFnDKE/Wp/Yucf1zSfEJtTzHhPpI
         085uvHht4emZucRPBRsZ40LIRh1SSv1XP6I3aeXRKEKERPKm/S6I3iMGK2JaW5Ld/ucA
         3Szou6aPWGJxIPXhI4w/Yt6+byVJ/8xpcE9+de4BiKPo6FnTk1AeRG1hBdsDHyeQTP+Y
         DbDWPkwTUC4Df8d4SM/Xy+rO3Vh2tRRm5I0PkaWgcEJNb9/cwDQk24SJiR1SiqJu0O1c
         s5UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=smmwNGmUXsCa92fGpwEoty8rEolknH2O6aTGzJhLQMg=;
        b=1gZEdv4eB3i/gfW36zLwqrg01IEvsLraPDnmx7Hmtka20dHiEMkigN+bzBtd28q3vq
         rM58laZMA5n+8yk48iXxny/iR7DWq4CuZObBvEtP5r6nU1UTQ2nnglC5rGYqrZaxV4Rb
         tV76GAEMvcepL3InqDAt8xOACPAG35LBO+yGCkZ6+Ps+QVP8pNDyGR0iRvDcUgPF5cGt
         21kUrLQRBeJNjXzpeeQTdZBKcdZCnG05Weg6/Zu5nIkiPKVsZOnSKn4/elwKEpb2Vssv
         OVhkOXjWKrpY7EGCOaBpB+MHSF44opsBxvVuLplnliw9eaI0ITHjAtTvq9L6VtnB/Idt
         uZMA==
X-Gm-Message-State: AJIora8RkHyNCUTxUC+BHFzhH4boZmtaR5wmEB2mFU6NZBFTS9ft6zq5
        2Ey6k6ilPH58ORri4ezMlZe7zw==
X-Google-Smtp-Source: AGRyM1sDNGNOV4ayuZr7c+UjYlt9z2D3MBwBlQVgI4EFdhElj+/ICeFNPCHfJAt9Ps43C5hC7M1eeQ==
X-Received: by 2002:a17:906:2088:b0:711:f512:837a with SMTP id 8-20020a170906208800b00711f512837amr11727626ejq.113.1656321373384;
        Mon, 27 Jun 2022 02:16:13 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id gy10-20020a170906f24a00b006f3ef214e2csm4805395ejb.146.2022.06.27.02.16.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 02:16:12 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     gregory.clement@bootlin.com, soc@kernel.org,
        linux-arm-kernel@lists.infradead.org, andrew@lunn.ch,
        linux-kernel@vger.kernel.org, krzysztof.kozlowski@linaro.org,
        Arnd Bergmann <arnd@arndb.de>,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        arm@kernel.org, sebastian.hesselbarth@gmail.com,
        robh+dt@kernel.org, olof@lixom.net
Subject: Re: (subset) [PATCH v3 12/40] arm64: dts: marvell: armada-3720: align lednode names with dtschema
Date:   Mon, 27 Jun 2022 11:15:48 +0200
Message-Id: <165632135505.81841.1881294272439246471.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220616005333.18491-12-krzysztof.kozlowski@linaro.org>
References: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org> <20220616005333.18491-12-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 15 Jun 2022 17:53:05 -0700, Krzysztof Kozlowski wrote:
> The node names should be generic and DT schema expects certain pattern
> with 'led'.
> 
> 

Applied, thanks!

[12/40] arm64: dts: marvell: armada-3720: align lednode names with dtschema
        https://git.kernel.org/krzk/linux/c/2b090180dced85ccf27f276c1b6c9521d4c4120e

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
