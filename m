Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 788DC6B7B98
	for <lists+devicetree@lfdr.de>; Mon, 13 Mar 2023 16:10:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230348AbjCMPKa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 11:10:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230227AbjCMPK2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 11:10:28 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E64E6EBBE
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 08:10:15 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id h14so11658247wru.4
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 08:10:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678720214;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XUCpRORXYheczJ2BQGJRtZxa6Mp6r71UmdeitjQxYvs=;
        b=vEISzWGhiiacHYL0o52p3JLVWsJJAPdmabMYBnS2nesKpktQWvCXn2KMfv0IXkNpWq
         +Q3LbHC+GTrzs7kM6THam9xBzj6gGzfuse00gsCVO3rOHQpZqvnF27fQyhW1NiaBQXdG
         ZZiIDvWA6G1Uqyg7hIzn7SXIeUKX1ICx8E6UUNZ+cRljV/bWrg93/Ito1H0ULCzG8gY3
         s+8kBhgFqskd+ByOqmJcOlfK7Rreon1MUmlE0sGZa+l2OT00cMo49N7bqkaEXyuO2jR7
         2t24HoUXpolSg5FlaplkfthhfAf9vp3b+vimF4sMu1kCVbWA1+VoF7XmEGzUkX2Bb48j
         AVcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678720214;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XUCpRORXYheczJ2BQGJRtZxa6Mp6r71UmdeitjQxYvs=;
        b=OR4ZuCTMsj0ow8yGCtqHKnqzYcUZCazC7+y7Yq24UlyYBdHGuUgSpNAqgV7xNvetvS
         2PJ5T/iBYUmuh6gBHqhbxnxEs30euS/Y5uU7wkNxvJQFfB6JA9lzZJA1BcfnqFnk5sC5
         oc4XzefFEzAFhoUoqYb/oulL5euv/QmyKfQPk0Fg/3D9fpH3zR0qgU4J61vhqGPUK9YI
         v5DP+f5w3bRRxgpwq7UbN7vnJ+YpnwpvBSyqIKna4E5iPl1NeyBFl1a0w6WTFlbug/F5
         PNStz0AxdXTBfo7V9AFfo7gpei/wssADalox+5LjmbNBMxR/YUz3KqcZ3LZnhQgAQhsf
         5v7g==
X-Gm-Message-State: AO0yUKWDniKBPmMDBZbwKzcGRGB66XCifwRZKcxDVVao6x94wxCJNonu
        hk4XIi5Cf+V+INtC5UWC6DTp1Q==
X-Google-Smtp-Source: AK7set/+LGifNvhK/I/kv9BBxsO4hCHbe7swNwWhTfx8XTxPTiY1Ws2H0VTcFWYtxno3NiyHa1z1yA==
X-Received: by 2002:a5d:69c7:0:b0:2ce:ac62:65ef with SMTP id s7-20020a5d69c7000000b002ceac6265efmr3809937wrw.31.1678720213839;
        Mon, 13 Mar 2023 08:10:13 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id a9-20020a056000100900b002cfe466e894sm1713054wrx.38.2023.03.13.08.10.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Mar 2023 08:10:13 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Jianhua Lu <lujianhua000@gmail.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230313101858.14611-1-lujianhua000@gmail.com>
References: <20230313101858.14611-1-lujianhua000@gmail.com>
Subject: Re: [PATCH v6 1/2] dt-bindings: display: panel: Add Novatek
 NT36523 bindings
Message-Id: <167872021291.3272635.16381286857035586957.b4-ty@linaro.org>
Date:   Mon, 13 Mar 2023 16:10:12 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, 13 Mar 2023 18:18:57 +0800, Jianhua Lu wrote:
> Novatek NT36523 is a display driver IC used to drive DSI panels.
> 
> 

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next-fixes)

[1/2] dt-bindings: display: panel: Add Novatek NT36523 bindings
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=c61093b56a2ff15e449e8af56e96dc5a312baf25
[2/2] drm/panel: Add driver for Novatek NT36523
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=0993234a00451e0a5c3e47d8b0f2e01dac6cedbf

-- 
Neil

