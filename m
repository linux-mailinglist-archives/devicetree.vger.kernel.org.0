Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D57366DC22
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 12:19:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236157AbjAQLTT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 06:19:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236563AbjAQLSL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 06:18:11 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03BBD34568
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 03:18:10 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id n7so4136725wrx.5
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 03:18:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9F8FAq9VHh3X8R5TYntvycSxeEy9zUQAgESTqIenWBs=;
        b=M5VfcbtCsw01lCDWxI/FmN1NwPgHEaGl0oYAzM601jiZEYylOMcXYVVJhuUhmk7pjG
         QBt89h3Ns9mtXc7L+NCZzXAY7XD7Vm64GAqJJttlTNlrLiovRqG3Ymy/OnUXp05uJ0HJ
         78Kxu/Rogv1S2Ptj4YH6pdStOrJEYUSqy0EAyb106MQ+skNCOfQYNeuzAhJuz7JeiY/d
         GTDetXITOHiRaUSunYV684bH3dfhrlthbtzSQ/w6SGiJGZontYwMDMYTN2agesepRCY0
         X+pzAW8mUHHHYgxNoFE7KR/mKsmmti9I3bDqSn3KTQypJ+KiiOh3IOM6Nv/WQepZuDvl
         fHfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9F8FAq9VHh3X8R5TYntvycSxeEy9zUQAgESTqIenWBs=;
        b=NzG4ARyCFQojShiDccclOShQGlbPRI0JKFRC1skddOMLBFhnsTHsbQEJL7fu+C8Hb3
         nybiy+raPZZiq5wVxEwWe1c0AaxKGdxpwpPZDN759lnekE00TLknUeeKgfHxhle+bI2w
         BQ94QlYhvwf7IfKkb1orIJBz8CR6VezE2wCyIfTK3zcIXmL8VXtVWwWcrecItUONRg/m
         HxqUODo+2kHqZes7GWQ0ldRRn2rbSl9DYpCfzparF4V11ivvq+MYqt8TyH4Sn3IYB+1K
         YHmWHSN5g6H7O8x+ECX8FhN6FxThA8vuGe0bIOvbty8ztZpvyM6c+eFG9+OOskGEx/Uo
         Vorw==
X-Gm-Message-State: AFqh2krpAky0+LGxrmeKyhN4vZpImpFeSN0DUHdP+g32m/9qc0yBt9FT
        BbNYNPnpglW1DbwcEBWg5Pqs/w==
X-Google-Smtp-Source: AMrXdXtuMwXDTKjRMyG4UHHCTHIY3tjmlqLwu/1pei9KsF5NZ+G3lpmedGWKLrTweXTxfyPz75A61w==
X-Received: by 2002:a5d:6505:0:b0:2bd:dba2:c17e with SMTP id x5-20020a5d6505000000b002bddba2c17emr2414593wru.12.1673954288574;
        Tue, 17 Jan 2023 03:18:08 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id w10-20020a5d404a000000b00275970a85f4sm28466717wrp.74.2023.01.17.03.18.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 03:18:08 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Padmanabhan Rajanbabu <p.rajanbabu@samsung.com>,
        rcsekar@samsung.com, alim.akhtar@samsung.com, robh+dt@kernel.org,
        lgirdwood@gmail.com, aswani.reddy@samsung.com,
        krzysztof.kozlowski+dt@linaro.org, s.nawrocki@samsung.com,
        pankaj.dubey@samsung.com, tiwai@suse.com, broonie@kernel.org,
        perex@perex.cz
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-samsung-soc@vger.kernel.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v4 3/5] arm64: dts: fsd: Add I2S DAI node for Tesla FSD
Date:   Tue, 17 Jan 2023 12:18:01 +0100
Message-Id: <167395418605.64421.15917174672513679108.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230116103823.90757-4-p.rajanbabu@samsung.com>
References: <20230116103823.90757-1-p.rajanbabu@samsung.com> <CGME20230116103903epcas5p2c3e87c1df31b6a53e26fb1358a53f634@epcas5p2.samsung.com> <20230116103823.90757-4-p.rajanbabu@samsung.com>
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

On Mon, 16 Jan 2023 16:08:21 +0530, Padmanabhan Rajanbabu wrote:
> Add device tree node for I2S0 and I2S1 CPU DAI instances for Tesla
> FSD platform.
> 
> FSD SoC has 2 I2S instances driving stereo channel I2S audio playback
> and capture with external DMA support.
> 
> 
> [...]

Applied, thanks!

[3/5] arm64: dts: fsd: Add I2S DAI node for Tesla FSD
      https://git.kernel.org/krzk/linux/c/7f62af80dc62b82bc18f72c674e4c81c5ecbfe37

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
