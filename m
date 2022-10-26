Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD94060E5E8
	for <lists+devicetree@lfdr.de>; Wed, 26 Oct 2022 18:58:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233941AbiJZQ6A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Oct 2022 12:58:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233960AbiJZQ54 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Oct 2022 12:57:56 -0400
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com [IPv6:2607:f8b0:4864:20::833])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B3BAA7AB0
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 09:57:55 -0700 (PDT)
Received: by mail-qt1-x833.google.com with SMTP id w29so3268044qtv.9
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 09:57:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=39zVf9R/98IkfHV6BFJsXRxxZg1xnTjTxQIsdJiOcew=;
        b=X5y1fmrCjW85hx7fsN6BIlPYn6rHULO8Hu2S4Qh5zCoXU6nVu0ZqUfi0CUI+1tvYLk
         ZsvaYRJ5JSBCrgYuzGZNbpZl28eLvabraJBBO7NMB8PnU0S2pZ/oh38L2SE9gHlPpwF3
         q38J/lykr4v/Tc9IU15jygAn0dOc8L+d2KYtYs7OuxLW5zYWc5YBcOvezHc2bKLZFsZw
         upjHmbgk16X+lDhAiyT0CQJSDJVwVovjUJBsCHy3PWNliI4LfiQvI6V7WgN0DCCdvpPQ
         N81tP1f0DL95yBvhez/qBpghWKJowcJ3yPn9bEhH5TNDzWvtQMeKMpWVnMBxAc42Uwff
         B6kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=39zVf9R/98IkfHV6BFJsXRxxZg1xnTjTxQIsdJiOcew=;
        b=hb0i3zsC2cguZoxLehydZekVtbz1jcFSr7sQtOYa+tqGLgKh4PziWSgfWYVGt2Tnpg
         ljRbfNViqbx7+b597WUwJAAON0iGYtRq3t0MLeDKyESzOtpaNiaA47PFf2Mo3tgeqXEs
         mR/gGU0dbglP0TsBIgjTBnvuPaZxEUk25IDzHwMiRaFy5cc0eU13qfDzU0pY1/e80ocT
         2ZZYN2LS0oHFn02cSioEWac7uMuH+Rplc5Hht4v1YruphBjZ/LQwdIRMpEtNlAjnCJHO
         gxFd543No1xbMuI+ttgVUZFih2+nAF7BAmvyQaI7LR3Zt+pxq4OKq/RRJod1x+TTAfaK
         zYrw==
X-Gm-Message-State: ACrzQf1crAMXn3jKLchqBDCA1697OpLda9BfOQ4W14qzYyIOaCFs4U6P
        WHrcBOfdMBkqRp5tq7JvJk25s3+8+HCm1Q==
X-Google-Smtp-Source: AMsMyM4AQYLCc23YRXpnyqA8fZ37GgTsEY6YyjnlOWAHnu8UufZA64N8DqdNdsAgBlQVVW54Il2L7Q==
X-Received: by 2002:ac8:5f54:0:b0:39c:ce86:65dd with SMTP id y20-20020ac85f54000000b0039cce8665ddmr35882941qta.285.1666803473958;
        Wed, 26 Oct 2022 09:57:53 -0700 (PDT)
Received: from krzk-bin.. ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id g21-20020a05620a40d500b006ee8874f5fasm4360759qko.53.2022.10.26.09.57.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Oct 2022 09:57:53 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-omap@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Tony Lindgren <tony@atomide.com>,
        =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: omap: correct indentation
Date:   Wed, 26 Oct 2022 12:57:43 -0400
Message-Id: <166680346261.49767.5909154065398299258.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221002092002.68880-1-krzysztof.kozlowski@linaro.org>
References: <20221002092002.68880-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 2 Oct 2022 11:20:02 +0200, Krzysztof Kozlowski wrote:
> Do not use spaces for indentation.
> 
> 

Applied, thanks!

[1/1] ARM: dts: omap: correct indentation
      https://git.kernel.org/krzk/linux-dt/c/8ae9c7a69fa14e95d032e64d8d758e3f85bee132

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
