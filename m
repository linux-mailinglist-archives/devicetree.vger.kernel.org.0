Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 93D0F707282
	for <lists+devicetree@lfdr.de>; Wed, 17 May 2023 21:45:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229921AbjEQTp0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 May 2023 15:45:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35194 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229943AbjEQTpZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 May 2023 15:45:25 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37764272B
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 12:45:24 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-96b4ed40d97so185792666b.0
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 12:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684352722; x=1686944722;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DE2bkq/ui14lTBLwtUifajE1EvCpc5Pz1BLS66HrLtI=;
        b=pv0XlTzQm0AHDjnYWXA2DFOwY89iONL+pcihwOPnY2/55ELz63O65AuRo8sYRyVtfY
         j4tyirV1rIXbj4sCHOWqTTlOuOSMW2jmK6+rtIOpV7Ka2tulKz/6eWhdbUWijx9Bu6Gb
         ByIIf6pn51KS6teavMyaKat3eWK8I4nOHiWfDQvcdP/Uw0gfXBXnQIrIc/pz6cz6nVR5
         Iy4x6JykOjawxDUZa1NyETS4srgGmwuaVLOaP/oJC0+uKgaPHr9cFO+fpRAAlIcMNtcy
         nhs72woQacj+sq+ZLnu7DXHUJfQ74vtfFxKgtJUnmVCafSnNEWvepe5r3nD9pz3VWUP9
         vy6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684352722; x=1686944722;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DE2bkq/ui14lTBLwtUifajE1EvCpc5Pz1BLS66HrLtI=;
        b=C+3W1OI/2bPiKxm20XWIlLYl8J6jpw0bOqIZNk+z5OkelYUrd+CHR92qxJTB2rXPkb
         IMwMmv0WRyNuKeZVOEt45vfwa1ActUwGljoqOLxwZ++TlJRW5cgF/A4NrwV5ZLMu1a/W
         xcOIlqZG4MMhKiOmlrwMIbd3hfyb9VLex29nUNlihyCFNBWndz/j3LbTVOFxua3n+sn0
         5rBZeRP+WaUX9SjEpcRl74V7nJgs0KVC8vpvhgt283pmjWpmfAceBXsChrRa7eZ5mLlc
         uGTlf6YBVYhmMjSUmWYZFlOiFMA8uGbCzrHo6ILbEgbuiHsMbZePYc3NnL0h4m0ofrtT
         GnJA==
X-Gm-Message-State: AC+VfDwxA/6uoWceB2Ct8XEUUZKDJqdKyGXTaUSSQIASieTvn5GjwG0l
        +1T8S7kAqs9ll6NBwLkXBHUxVg==
X-Google-Smtp-Source: ACHHUZ6Tj8zelM2VZpR/AEzeGAQ8zj37niuO6NRBJvg0WI4NbhdxMvKTFTAAd3TJm0rHrq+VS/nWuA==
X-Received: by 2002:a17:906:eec9:b0:94f:73db:b390 with SMTP id wu9-20020a170906eec900b0094f73dbb390mr34695874ejb.65.1684352722678;
        Wed, 17 May 2023 12:45:22 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d7a:e7cc:21b3:c435? ([2a02:810d:15c0:828:d7a:e7cc:21b3:c435])
        by smtp.gmail.com with ESMTPSA id tf8-20020a1709078d8800b0096a2b6de3a4sm10504747ejc.122.2023.05.17.12.45.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 May 2023 12:45:22 -0700 (PDT)
Message-ID: <032699a0-9a43-953a-60e9-59a515a26cef@linaro.org>
Date:   Wed, 17 May 2023 21:45:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 5/7] drm/apu: allow platform driver to implement their own
 mmap function
Content-Language: en-US
To:     Alexandre Bailon <abailon@baylibre.com>, airlied@gmail.com,
        daniel@ffwll.ch, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, matthias.bgg@gmail.com,
        angelogioacchino.delregno@collabora.com, sumit.semwal@linaro.org,
        christian.koenig@amd.com, jstephan@baylibre.com,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org,
        linaro-mm-sig@lists.linaro.org, khilman@baylibre.com,
        nbelin@baylibre.com, bero@baylibre.com
References: <20230517145237.295461-1-abailon@baylibre.com>
 <20230517145237.295461-6-abailon@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230517145237.295461-6-abailon@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/05/2023 16:52, Alexandre Bailon wrote:
> From: Julien Stephan <jstephan@baylibre.com>
> 
> By default we will call drm_gem_mmap() unless the apu driver has
> declared it's own mmap handler.
> 
> Signed-off-by: Julien Stephan <jstephan@baylibre.com>
> Reviewed-by: Julien Stephan <jstephan@baylibre.com>

One does not have to review own code. We all assume that we send good
code which we do not have to review by ourselves (by the author). We
also assume we make mistakes, which we cannot find, thus other person's
review is important.

Adding own review tag suggests you added them mechanically, so I doubt
that they really happened.

Anyway, your SoB is missing.

Best regards,
Krzysztof

