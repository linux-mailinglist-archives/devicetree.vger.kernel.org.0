Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 152F16BABDD
	for <lists+devicetree@lfdr.de>; Wed, 15 Mar 2023 10:14:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232051AbjCOJOk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Mar 2023 05:14:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232054AbjCOJOT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Mar 2023 05:14:19 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5A967BA2C
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 02:13:50 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id fm20-20020a05600c0c1400b003ead37e6588so611623wmb.5
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 02:13:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678871628;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xGIgG+nfQ3uyl4drl9en2yuuyKPUqcLJi9WOxBRKmpM=;
        b=POVA8cuflMM+b1KPOZ+/fjiWcXC+mQMXKztdD1MrgwV/FEb7jjy4lH1/TuLRY7/nYb
         2zxJGbCq0rzzeYZ9fiHCeBrNFPQWsC4JH0EN6PwMNojafbtgN1DxaRE81irRrMUYJr8u
         OVb6kpra+GUOAwcWcwWQEmMEz9GCPAUb+4zZbU64YwahtuqQcjmQofa3Xm3x51zPRU4O
         kqX3nATOm/NdqnT36AL/Nek/vjaRj/Swea1Zhkv0Vv70COhbtzgN4vNtafBtJu56awur
         j15ULP+voQKu78bUWAHDelMg3opitMCgVQ9dTprkbmM+pzDrlKvsVEO2sGHyPcXtteuT
         GiGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678871628;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xGIgG+nfQ3uyl4drl9en2yuuyKPUqcLJi9WOxBRKmpM=;
        b=HJjaXko04UQYVPRE+pfc03IReLfxRUQqvrBKIQl6iXS4j/o9jx+XGs/N6ukLwmef6d
         894r//NrrHru1pBQegJE6reWeVjkX9Jy6VXagBtKbswDhBIWB8EMLoJVCxjlE2LgAV7R
         g9CmauYJWdrz3PjNQn5SKYu7n65PwRMet+RRNFieWfvrAuA46QIJgvywhunmGqbpIjX/
         SgCU90hLJwQViq96swnHzA89tHxQtlFuXrAD8PKcOq/YMcmo7+2IdkwuWY0hJApMzLY7
         smrHZrVjqEnSK9afT4nCJn8nGl52wryHS7oMbeZqhQjHiJPcTL+irTK3k6jW1w0uzVdn
         ckyA==
X-Gm-Message-State: AO0yUKX034J1ezCgEpeQKya1Hs7DKFK8OpPawOKwCtVzFmV0KJ1sdn43
        +abeHtIjrA6H4MPnQlSg3tz2Mw==
X-Google-Smtp-Source: AK7set/Dn9l8p8DdE3Dci/nG0+h7h2RMwo75JEjKq6kRPJnyXo0lQGRS9k1C3pTqAw7FS3w+tp2r/A==
X-Received: by 2002:a05:600c:3503:b0:3ea:e7f6:f8fa with SMTP id h3-20020a05600c350300b003eae7f6f8famr16434518wmq.10.1678871628832;
        Wed, 15 Mar 2023 02:13:48 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id y16-20020a05600c365000b003ed23845666sm1136212wmq.45.2023.03.15.02.13.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Mar 2023 02:13:48 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     sam@ravnborg.org, airlied@gmail.com, daniel@ffwll.ch,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        thierry.reding@gmail.com,
        Ruihai Zhou <zhouruihai@huaqin.corp-partner.google.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
In-Reply-To: <20230314085034.6380-1-zhouruihai@huaqin.corp-partner.google.com>
References: <20230314085034.6380-1-zhouruihai@huaqin.corp-partner.google.com>
Subject: Re: [PATCH 1/2] dt-bindings: display: panel: Add compatible for
 Starry 2081101QFH032011-53G
Message-Id: <167887162800.2174720.1844367111418757005.b4-ty@linaro.org>
Date:   Wed, 15 Mar 2023 10:13:48 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, 14 Mar 2023 16:50:34 +0800, Ruihai Zhou wrote:
> The STARRY 2081101QFH032011-53G is a 10.1" WUXGA TFT LCD panel,
> which fits in nicely with the existing panel-boe-tv101wum-nl6
> driver. Hence, we add a new compatible with panel specific config.
> 
> 

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next-fixes)

[1/2] dt-bindings: display: panel: Add compatible for Starry 2081101QFH032011-53G
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=c4969c95266c672b5dc0c6a1ac070b6d647fea22

-- 
Neil

