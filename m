Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1DC0B5F3D6F
	for <lists+devicetree@lfdr.de>; Tue,  4 Oct 2022 09:45:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229678AbiJDHpf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Oct 2022 03:45:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229630AbiJDHpe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Oct 2022 03:45:34 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A359722BD1
        for <devicetree@vger.kernel.org>; Tue,  4 Oct 2022 00:45:32 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id kg6so11689439ejc.9
        for <devicetree@vger.kernel.org>; Tue, 04 Oct 2022 00:45:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=dEKMgKTBl4A3pP4kKEL9qEFFZNZP/ek6muw2I56Mj9U=;
        b=W0S9VwDzs4n/ewPMTIVFI0DJE+9CaTsuhqfWJKtb6XnCrhPQ79EbyEq+nVXeqg5LuN
         JwHL+gJPs+FF1wqt9t04IMVpbfUiwUDEy/ivZPk2UaAdp597eS6MugwORxIm2jgG9ORg
         U/J0aRuk2Q01zvU/lFxU2UNdyVRPOSt1hEs0ZgeNyMi4ype+440ze3C82MhaSyBp5V35
         U3ZmYOLVN/sgvD6PJOP+mfI8N0yskv4ZfSCmjkwUO8wjjuJ9p8NklCdGyzXTVUUWUG9a
         uobCSBtyg9RrX3YkQwF53fA8gas1f8anYCV2AKPS1Xee5M0ELZd/X1kwF+k2q8KK7eOt
         CqgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=dEKMgKTBl4A3pP4kKEL9qEFFZNZP/ek6muw2I56Mj9U=;
        b=muSYv+w42ONuv4wW53+lJvbW+VMzcWmh9qdd1y0cOF6j3HEejpiVMPBpd23JlPnYkj
         8+U1EDURmgndcG1fFjS6JUh8g3bpjp9a9Y344EQXsLuqztsq/J2wS/HwhPEe1cexDRjJ
         6q2hjEkqFGI8t648VA8a1M07wq94oZ8CFGBkykf1Z0v65cDRo86gfq29Ynk3sVGUsKKZ
         YYQhYpcgWKqL1WI3/RPifo2Eqi3a7jRZAfPY9MRvGEm5SS8rVXHlyrrv6Pz49Id2KACm
         TGYfTMyLX2xlu+KlUK+kmyepg3qqEkw4hK7CUZPam1kxPBTxZq86O+cIhcbe3J3lR0bw
         Qp5A==
X-Gm-Message-State: ACrzQf1ScQp3YPjII3nZrFRjTKYBKPwqQXlsTQlSMe3//u3FF5dFKkEO
        loSJSauN8sb7t02CaZHS5HQJ0B2C4WuJTiCufczSIw==
X-Google-Smtp-Source: AMsMyM6ZaA9sSj93fKwqMRRMNd1lgsDORY6G8HCgFU5dqNaEHX3TC2z9gjgTF/W6gs1cdiYAMihH7+UuEcnthdCPhdY=
X-Received: by 2002:a17:906:9b86:b0:73d:72cf:72af with SMTP id
 dd6-20020a1709069b8600b0073d72cf72afmr18124729ejc.440.1664869531260; Tue, 04
 Oct 2022 00:45:31 -0700 (PDT)
MIME-Version: 1.0
References: <20220928092937.27120-1-zhang.lyra@gmail.com> <20220928092937.27120-3-zhang.lyra@gmail.com>
In-Reply-To: <20220928092937.27120-3-zhang.lyra@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 4 Oct 2022 09:45:20 +0200
Message-ID: <CACRpkdar4-xPyVCtUoZQv=RERBhMV3Zi__y0deSgOTFkh8Y5xA@mail.gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings: gpio: Add compatible string for Unisoc UMS512
To:     Chunyan Zhang <zhang.lyra@gmail.com>
Cc:     Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        Baolin Wang <baolin.wang7@gmail.com>,
        Orson Zhai <orsonzhai@gmail.com>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 28, 2022 at 11:29 AM Chunyan Zhang <zhang.lyra@gmail.com> wrote:

> From: Chunyan Zhang <chunyan.zhang@unisoc.com>
>
> UMS512 use the same GPIO and EIC controller with SC9860, so this
> patch adds compatible string for UMS512 directly.
>
> Signed-off-by: Chunyan Zhang <chunyan.zhang@unisoc.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
