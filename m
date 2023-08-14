Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B981F77B8EB
	for <lists+devicetree@lfdr.de>; Mon, 14 Aug 2023 14:47:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230230AbjHNMqr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Aug 2023 08:46:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230148AbjHNMqP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Aug 2023 08:46:15 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE9C3E5B
        for <devicetree@vger.kernel.org>; Mon, 14 Aug 2023 05:46:14 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-317798b359aso3722495f8f.1
        for <devicetree@vger.kernel.org>; Mon, 14 Aug 2023 05:46:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692017173; x=1692621973;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i0Tyv0KmVphJ0z20dJrEQzgQtleCJHCCuv4MDudOfPs=;
        b=r7wMTgYRIZgNGkT/XoFO/w6nJ8I3Mvzdt4N1Lo412ofYgfveF31Kk35SADXVNs8BkN
         5tfeHsQ7YoCIHrbKbOIA1dlBPAKEAr84d3qDp+7t2f9qpGnY/6tz85FZIkde+X+OVdmb
         CnJmrjAMYD1VIOHXgzQgRrMIGOFDH+yZwtpQ/PFx6r4fvAlt+xzOIwLzRwENZooWCC+C
         D+BxZM+S4JqYY+8SmQZP2PdWXgXrEgYf4SMamrZMjQixtFRWw2G6aZcVlbVYhHOJqodK
         mXb5dUrUBOYGU+jUiGQXPXFEKHX/qPT774EmKlNl7LPbFhRTKHTZ5McwD7TyNBbBLXfC
         Piow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692017173; x=1692621973;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i0Tyv0KmVphJ0z20dJrEQzgQtleCJHCCuv4MDudOfPs=;
        b=kl/oP+gBjQ2LoyoZJdriDzrrMd7vmH9hRlfyLjzsIyDRjHmywznORsS3TQr2US0FSK
         vDyhSTPoSpQlOJKOa2ReispL6sLAOVXo569aSC2MUVjsqEDqcwVoGchcn9UU0zUAzmXv
         xYaOjIz8lk9k9CuyPDn1yWLjEwt6uGEsdkxC+ADNak8mHIqH5czojUcZPv4MfClt+Y1N
         l26NZRiMOrTm3QVXYncR79r8jVJK4P6mOoWygKVQso1eVlTP4Z50m+k3V0QcBJwfNM7F
         UgyHQ6UVTE4ya5/c68Hx/qoRMf6DwixIkFbHK85gu0hMjVy0L69qgCL85I9pDfIztB0r
         RkDg==
X-Gm-Message-State: AOJu0Yzj+00kJl1vUl/huePNJ6CWnYdbL23dwFrMvZuZEd38HuV5i5Bx
        ob4Kwax5Mpsio/afFTWyHD/qeA==
X-Google-Smtp-Source: AGHT+IGcnNO93t8qkVG3Y735XP05Xra+V4B0KMWlc1cVDIT00NklY7TjoBod3Xc6rzSu0jY6QrmpVg==
X-Received: by 2002:a05:6000:12c4:b0:317:e766:d5e9 with SMTP id l4-20020a05600012c400b00317e766d5e9mr7293681wrx.3.1692017173460;
        Mon, 14 Aug 2023 05:46:13 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id x13-20020a5d444d000000b00317f29ad113sm14249506wrr.32.2023.08.14.05.46.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Aug 2023 05:46:12 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     Sam Ravnborg <sam@ravnborg.org>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        dri-devel@lists.freedesktop.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230807123138.67443-1-miquel.raynal@bootlin.com>
References: <20230807123138.67443-1-miquel.raynal@bootlin.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: display: simple: Add Mitsubishi
 AA084XE01 panel
Message-Id: <169201717234.1374248.9932150559832920648.b4-ty@linaro.org>
Date:   Mon, 14 Aug 2023 14:46:12 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, 07 Aug 2023 14:31:37 +0200, Miquel Raynal wrote:
> Add Mitsubishi AA084XE01 8.4" XGA TFT LCD panel compatible string.
> 
> 

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)

[1/2] dt-bindings: display: simple: Add Mitsubishi AA084XE01 panel
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=50b0cd7d3ac3e6cbd8873434eafc3076957bbdf7
[2/2] drm/panel: simple: Add support for Mitsubishi AA084XE01
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=637d3fdc109a63ed3d3864b9ffe1ae50ef57d03e

-- 
Neil

