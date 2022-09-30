Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B34E5F0E98
	for <lists+devicetree@lfdr.de>; Fri, 30 Sep 2022 17:15:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231429AbiI3PPr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Sep 2022 11:15:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231804AbiI3PPj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Sep 2022 11:15:39 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1AEC733ED
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 08:15:34 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id z4so7367445lft.2
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 08:15:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date;
        bh=9qe1ituoiVQ6tMTna4qx1CP35n7ZrXQ+Z8Kf3z6Up/k=;
        b=K2ppjZpTcwMXMqHVkbUZy5/PmQebskeMbiEDI8XMJvkxqFQFIjp3zCyX+XO+iW5elo
         UjqqE0Tk0PtRzPeodJgG5AZ7yRtcE0fgKae9x8UwrvG44G5ogXJef+8cltxvSu7VJ3ys
         /bRnODG+csOYM0DA93DZM6WeifBH9xjcL9/+wRzw8Oj67EI4xXySgkOX7kS8ITbDrP4N
         tS+zOo3/Lwyudf1obe7R+sQLVSTH/ALWQv7L4O4jHbwo8VoQJXHJz9S/PaJZX+NIIHEY
         1xktlKMiSjsKRh5KR/GLSy596efrUb9Eik4ELgyYbgq5lX1kOKC+BtGhfUrU5XAh9s+B
         Hh2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=9qe1ituoiVQ6tMTna4qx1CP35n7ZrXQ+Z8Kf3z6Up/k=;
        b=NoSCfxMx6B6kuU7hgqBPMXwO361u7DgNYyNQ2/Zq8PkX/tlAja2jQ0GuA2IYT5Uxt/
         MVqS2sVNajmOLIXEEdIVGtRpsBdenIjYpYu6Qwcs2ztq2qTR0wMtkcSyw+3F2hlPBh1c
         IzaOXvBN4Wo7J1NTMw5Hr48vDoeE7mv9B8XsGYnLL1WKo5ua+fnHu+f/epq6QfkNH2HH
         aBUcM0N70XgRXQWhdvWZeAekA8qqe4grf/Be6VycK+AaO9DVNC6Sr9/Dbg5G/Cy6rY+W
         OiIwBaaT0whT8g5I6AbQPUm2KGriYJ8+8Qv5P9VT0LACo645+G8bSW7MVE0zVsT2Dqfr
         S5dw==
X-Gm-Message-State: ACrzQf3HQM0+itJNNY0j/QNk/K9hjy9rlesLIIz92motcCSzeS/OWTng
        XRb+tljsASnbGLUztUygU1mokQ==
X-Google-Smtp-Source: AMsMyM6OH/KU/K3lOw7qM6WdTyenUEIfcDT2JYgFrfRCgd4m0c9smxHRRRMOWigUKN/XtE2bYLMu0A==
X-Received: by 2002:ac2:508b:0:b0:4a0:5d6b:ff14 with SMTP id f11-20020ac2508b000000b004a05d6bff14mr3370963lfm.409.1664550932897;
        Fri, 30 Sep 2022 08:15:32 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id q3-20020a0565123a8300b0049480c8e7bcsm320145lfu.176.2022.09.30.08.15.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Sep 2022 08:15:32 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        devicetree@vger.kernel.org, Alim Akhtar <alim.akhtar@samsung.com>,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH] ARM: dts: s5pv210: correct double "pins" in pinmux node
Date:   Fri, 30 Sep 2022 17:15:30 +0200
Message-Id: <166455092698.6630.15512850580722431230.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220926125824.477920-1-krzysztof.kozlowski@linaro.org>
References: <20220926125824.477920-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 26 Sep 2022 14:58:24 +0200, Krzysztof Kozlowski wrote:
> Drop second "pins" suffix from pin configuration/mux nodes.
> 
> 

Applied, thanks!

[1/1] ARM: dts: s5pv210: correct double "pins" in pinmux node
      https://git.kernel.org/krzk/linux/c/17fffac44943a619ec76463655b1ed7fccd8bea7

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
