Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF13070BFF4
	for <lists+devicetree@lfdr.de>; Mon, 22 May 2023 15:44:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230356AbjEVNo5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 09:44:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233723AbjEVNov (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 09:44:51 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC4CFCD
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 06:44:48 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-3f60410106cso8518215e9.1
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 06:44:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684763087; x=1687355087;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nBQBw6CfCpS2jHpwl66vgP+oxhK9iCxnR3a/pdGsx/s=;
        b=brpNwEFiTifCMI+2z3PPBypnlqFrU58HCyUjV1YwdYBjfst/B7BzHLu0niSYffYlH0
         NcHRNZxRoou7nTstHnyXeU88r4m4knbn6g5HewxB/9XedQrkhNKEzcaDfenDXpT5TO9X
         /mW5n+sqiWm8UcAh/z6JR2V9FV2Xj87uBdk8YctsC/l1bj4T97SenBpxFTPaev/kGcrB
         9XLPc64e6Kj9QRphARazyXSanLg29OJYMXCsFnKPo0ccbyrrnw3nkOxBz4x8k715rdIO
         gezXBrPDI+L/DMJP8ZGtO9wIRBhrvkILCLSJi06vT7qa2bnOOP217ftT4tMABHAwWiGV
         5y8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684763087; x=1687355087;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nBQBw6CfCpS2jHpwl66vgP+oxhK9iCxnR3a/pdGsx/s=;
        b=TrGZvOsPH16Jmtvt9oXOah0s62J32umOZPE0p/o92K0GHsBq48lVeDl4+J5d8s+XJQ
         ENaE+RYsPpaTp9GEV8OIruGS6IER2sQTSwIIMT5zXU6821LwzSjPDcPGCd3DZ7dfNkR7
         hEcZmbvB+iDdvcry4Gc/axRt+RmqQcPYoSBFbRkJ/3VzKgqeWxu4Mv5lkfRUtAIUl3u8
         DyeW8jYBZN7vJzd9DMojTthXkHJge0GAwGwlcsvv0K6pf3vISipGl+RbZW2QiyMp6yRW
         gIed54u7iPkLf+j0eDC/TQYNeVVH5GDYeufl/lihT0nByC/5tcS29wymXeAPev6kyanL
         kmWA==
X-Gm-Message-State: AC+VfDzKG7vhXRHSaCSLr/UilElDEqry4xfFURe9gSZI10MTj175679w
        lcukc2o2Ybfq4wpOtnA7T4+XQg==
X-Google-Smtp-Source: ACHHUZ50cNgmQvAobdIojXR4NTBQqipchc4EVGUHOzc8b0LtHCN9e+gzJm2x7j4KdDXzu4Zm50sWyw==
X-Received: by 2002:a05:600c:2049:b0:3f6:289:b769 with SMTP id p9-20020a05600c204900b003f60289b769mr3300930wmg.14.1684763087342;
        Mon, 22 May 2023 06:44:47 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id q20-20020a1ce914000000b003f18b942338sm8421342wmc.3.2023.05.22.06.44.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 May 2023 06:44:47 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     marex@denx.de, dri-devel@lists.freedesktop.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        jagan@amarulasolutions.com, Fabio Estevam <festevam@denx.de>
In-Reply-To: <20230514114625.98372-1-festevam@gmail.com>
References: <20230514114625.98372-1-festevam@gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: samsung,mipi-dsim: Add
 'lane-polarities'
Message-Id: <168476308664.3841130.12910064753273358784.b4-ty@linaro.org>
Date:   Mon, 22 May 2023 15:44:46 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Sun, 14 May 2023 08:46:24 -0300, Fabio Estevam wrote:
> The Samsung DSIM IP block allows the inversion of the clock and
> data lanes.
> 
> Add an optional property called 'lane-polarities' that describes the
> polarities of the MIPI DSI clock and data lanes.
> 
> This property is useful for properly describing the hardware when the
> board designer decided to switch the polarities of the MIPI DSI
> clock and/or data lanes.
> 
> [...]

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)

[1/2] dt-bindings: samsung,mipi-dsim: Add 'lane-polarities'
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=ec7743c9c48a14aa884d27f2feee1da30810ce0a
[2/2] drm: bridge: samsung-dsim: Implement support for clock/data polarity swap
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=74629c49e66cc6d36c46ac4e3f059780873ceedf

-- 
Neil

