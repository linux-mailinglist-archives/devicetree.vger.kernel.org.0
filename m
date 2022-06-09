Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E794B544762
	for <lists+devicetree@lfdr.de>; Thu,  9 Jun 2022 11:26:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239331AbiFIJ0q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jun 2022 05:26:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233243AbiFIJ0m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jun 2022 05:26:42 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84F153A186
        for <devicetree@vger.kernel.org>; Thu,  9 Jun 2022 02:26:39 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id u8so27214812wrm.13
        for <devicetree@vger.kernel.org>; Thu, 09 Jun 2022 02:26:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=doJDwgeNCCpGAVqsr1zYgJtRpwsMml2sELB5t/MLY5M=;
        b=VPq3f0ZdO06SkOgMTlkS3D7YZmul+nXO/J0BjMk+stYpad6L9H5cOp2IBGHQEJn+Sl
         1DMRophNR04WNcXUHOqrs6OdfQB6HANh/JIw0MbdRNMPdyNkUr80U6L24XxRCD+MDAjQ
         b8uHt8YM3EAoR9QEqHA6AWl3jKoB4Qv35ji2cAwqZiUJ19jKK2galnmED0gVBj+49+66
         /qGVkju5ZMhYZOrCdmwHdn/4FpDWyJv/LT9amthGPdsenZoaAJkV3WM4pcG5dhO2/6AC
         O8TCD9uWN5YA+b2+xx6Tzxnp/uPXS1CUQ9z2beYU40E9pslWPHdTUZeMIWzAmccv0CRG
         zrng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=doJDwgeNCCpGAVqsr1zYgJtRpwsMml2sELB5t/MLY5M=;
        b=x5uZejqFHmN7QHhQ+3h/+zINvPaQ6Ay9IBLGN5d9X6q3K6qEia7b0rQ7cC8zTfPr8i
         5WIY56AGn0HkhatWy42gFdC5oQb/U1V/vGZQhgEdeS1eq8wp3KBfCGZq2z7N0TRvlEDV
         9dz5X5WDSQ3ZTM277Hzukk2h0yaNB2t4qH2y7pxc+Yy0x3lzon/KvN8m5syt6UVTqQvN
         BCTcavbUBjzpvHEhkaHYTrkF29uKi84pYwsO7pFBDQMDTM9hT2SN4KxnanAFXjqeScVQ
         /JDO8qBfwkMlEYJr1ygUGHyUINM2F3CzY9GRhfjaEG0UJF+1sQYskH7WEkgwLUDSxdzl
         LPGQ==
X-Gm-Message-State: AOAM530oGP99gbicbz2vTgoloCzb6B6Rsbw/VA5iSASIctTeo1wxuqo+
        4/LMU0obVqKUuzG8HAUd//WPpg==
X-Google-Smtp-Source: ABdhPJwHbfMoTUujhvRpFZUQSGO8P5QHWho99EELCVbHKvomYjfYHQdY9sivEWq9/Zf7ddPDSfJWtA==
X-Received: by 2002:adf:f750:0:b0:210:2ef5:7c5c with SMTP id z16-20020adff750000000b002102ef57c5cmr36424281wrp.416.1654766797986;
        Thu, 09 Jun 2022 02:26:37 -0700 (PDT)
Received: from maple.lan (cpc141216-aztw34-2-0-cust174.18-1.cable.virginm.net. [80.7.220.175])
        by smtp.gmail.com with ESMTPSA id b15-20020adfde0f000000b002103136623esm24819171wrm.85.2022.06.09.02.26.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 02:26:37 -0700 (PDT)
Date:   Thu, 9 Jun 2022 10:26:35 +0100
From:   Daniel Thompson <daniel.thompson@linaro.org>
To:     cy_huang <u0084500@gmail.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        lee.jones@linaro.org, jingoohan1@gmail.com, pavel@ucw.cz,
        deller@gmx.de, cy_huang@richtek.com, lucas_tsai@richtek.com,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-fbdev@vger.kernel.org, linux-leds@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: backlight: rt4831: Add the new ocp
 level property
Message-ID: <20220609092635.ew3wqfi2uv6d3smj@maple.lan>
References: <1654741339-12756-1-git-send-email-u0084500@gmail.com>
 <1654741339-12756-2-git-send-email-u0084500@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1654741339-12756-2-git-send-email-u0084500@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 09, 2022 at 10:22:18AM +0800, cy_huang wrote:
> From: ChiYuan Huang <cy_huang@richtek.com>
> 
> Add 'richtek,bled-ocp-microamp' property to make it chooseable.
> 
> The wrong backlight ocp level may affect the backlight channel output
> current smaller than configured.
> 
> Signed-off-by: ChiYuan Huang <cy_huang@richtek.com>

Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>


Daniel.
