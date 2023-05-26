Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F0AF0712186
	for <lists+devicetree@lfdr.de>; Fri, 26 May 2023 09:52:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242568AbjEZHvf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 May 2023 03:51:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242565AbjEZHve (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 May 2023 03:51:34 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61AA2125
        for <devicetree@vger.kernel.org>; Fri, 26 May 2023 00:51:32 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-30789a4c537so201860f8f.0
        for <devicetree@vger.kernel.org>; Fri, 26 May 2023 00:51:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685087491; x=1687679491;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vSVgumf2aYp2qt988Utmhrty6r7JgjUMOf1vhbwIgVM=;
        b=HH5IiCPntBHLkYgsL6QiZABhfwdHOLeWhFCRMFlSrGxNr0L6dthPHyJdIRMAKrNra4
         63y/pgAi76VZNZg0zBgqvC9gEtmELmw4909Dch4ly3pRBSSU2o29JYoYKWcrkNRt8rZQ
         sVNEXmvWppWi8rxFncKzKQkDXggzNOdrZejLBhQerNkXnXtIys5WvpDo7R6dYYm8ezzB
         XggJyDbjjVC/FF0fuEVFdSofvxpKLGVkZWpojkWVvPqwEFmY4u+PNhbxdmPf52zHA0sp
         tQzdzBATgOL+W8yHTaJaYx4x8bI0xNJPhLLNeLe0mxq2KEmTR7EV+y9z7GawBx2M/h3E
         hMVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685087491; x=1687679491;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vSVgumf2aYp2qt988Utmhrty6r7JgjUMOf1vhbwIgVM=;
        b=c7jPqxTYd/7rULx0BtMkzTrvEVp7tf6i0RQaD58gmbrSNLnKXEk5pUbymrOHXGGtVx
         7ZfQmqktOtWNdFJtWEC1gZW+NskY0BElM1WpK4aV4gkmFuJ/USNStnbh3V/DWCususo+
         +0pJD2xOoyKgsHjX92xir5wWyJ7v2t6+PjxxT6El1io/XydwGvSNheFTEa4rKuKmWYSd
         s+C5oKRw6FebLlO5q+uKNmVmgE0rmHpZH+bpRbhicMp427PoLRdZJbP6/f/cs/o0/wXD
         fm6f7ym1GnsR8rWMyViqHShHN0JBXnYtZLKkXRKEYIuU6E5TpSdxj1L9qOrxfw3d0gMo
         Ij2w==
X-Gm-Message-State: AC+VfDzC/blYmBvSOZjZ179IXhZYGHp51NUgXDu4nK0ajerlAGR229sI
        sha0o4zBMgJ4mHv1GwsSPF6aHOnxf8EHdnNvnnr7FQ==
X-Google-Smtp-Source: ACHHUZ5BAKGgVMedwMdSbhQAr3bu64t8rjg7+27iN2I67Zd0S3+ppfH0i4SJBLQfQVLsllKAFRx2Cw==
X-Received: by 2002:a5d:4d02:0:b0:30a:c2c4:7133 with SMTP id z2-20020a5d4d02000000b0030ac2c47133mr621730wrt.49.1685087490812;
        Fri, 26 May 2023 00:51:30 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id f7-20020a7bc8c7000000b003f42158288dsm7873151wml.20.2023.05.26.00.51.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 May 2023 00:51:30 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org
In-Reply-To: <cover.1684931026.git.geert+renesas@glider.be>
References: <cover.1684931026.git.geert+renesas@glider.be>
Subject: Re: [PATCH 0/2] drm/panel: simple: Add support for Ampire
 AM-800480L1TMQW-T00H
Message-Id: <168508748966.1489292.6504449064133741624.b4-ty@linaro.org>
Date:   Fri, 26 May 2023 09:51:29 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, 24 May 2023 14:32:09 +0200, Geert Uytterhoeven wrote:
> 	Hi all,
> 
> This patch series adds support for the Ampire AM-800480L1TMQW-T00H 5"
> WVGA TFT LCD panel, which can be found on e.g. the Atmark Techno
> Armadillo-800-EVA development board.
> 
> It has been tested with a WIP DT-enhanced version of the shmob-drm
> driver.
> 
> [...]

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)

[1/2] dt-bindings: display: panel-simple: Add Ampire AM-800480L1TMQW-T00H
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=d3a6c2b60f07c64631b9437032d8f079341b7a16
[2/2] drm/panel: simple: Add Ampire AM-800480L1TMQW-T00H
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=410bb21319f69c2ec28aeafe530d00ed2f6a1c54

-- 
Neil

