Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D02E9751E11
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 12:02:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233602AbjGMKCS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jul 2023 06:02:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234355AbjGMKBr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jul 2023 06:01:47 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F26E2D48
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 03:01:10 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-9922d6f003cso83893066b.0
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 03:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689242469; x=1691834469;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F/M+pj3sOHUyESIK93V4GQh+1nRLUFIcF7Y/I33mUxQ=;
        b=PF7NZgKmP2RkxrFnKSy8s1zMvSzfBwLHcqSq6qpC/yOx85SeOX1/IiEz5B/pYvd0gd
         X3Q5tU+pWDcsIbxZlW0q3x5jZDkYwmoxuELnwD0x+E7wvRCdiS5ldf1pbZPMZf1Nl8bL
         IZScRt/OQVD8uGoFKVqs5zKtJpwVfMYjQYSM9rHz9r82Ny1hJi5TfgqV4W0v2ZU3JBnp
         pMe9L/xGL8jox8/ixOz1oBBXuOndXcz86iAE9qr4wH8GJFsvht0MaZ4hmwZXhTThiDYz
         9LSaAFq9adU+W2nsTYLz/SlmXS/xT2xNAnhAIE3egnJFex1DHAytr3q6VbZ/vl4X7TGw
         no2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689242469; x=1691834469;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F/M+pj3sOHUyESIK93V4GQh+1nRLUFIcF7Y/I33mUxQ=;
        b=LRc+dyE5RCq+4toFkOobVZMfDJ20RSBBWMbyeo+Fb5A1ivWXSCVKvMKMvtKILfBakW
         zU2U3EWMUu31/d2oSKSZfiRcyUiuN/Xh3dvTfWw5HKEo6w61ns6AUIyGogeGj0aYbpWz
         Z+eMkYcXcq+s0sBFig+YoINIv0TU3Z50h5erpIVWyEZlC+aIS2VrB/Kx2+odE1RnWT6C
         wMydoDvz1YmZu0FzoISRgL/qoE5iuNqH5IlafP+QTVdtx8AYHa9Z6Ym70pJvPCEiMVwC
         aenIDfcXCL1MgTx0PMQsCF/vF6W1UBT+tcpxCebFgprNoRqyTEHIYOGetvlreevTwo/w
         MdQQ==
X-Gm-Message-State: ABy/qLbK1Dfnc0+qersI1rRrpdFPx35V7UUriQVhbWD4QR3NWMDkXIPk
        alF6UQCl8ADZQfLInKLtqVZXpg==
X-Google-Smtp-Source: APBJJlEqtwreGESohUF4BGCg9ioea4Pgd3hPuliT8cWOafgfdREMplipu6B24Py+pFdOX3VMzCi38g==
X-Received: by 2002:a17:906:1c9:b0:994:758:fa4a with SMTP id 9-20020a17090601c900b009940758fa4amr1038460ejj.46.1689242468874;
        Thu, 13 Jul 2023 03:01:08 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id lf16-20020a170907175000b00993928e4d1bsm3776545ejc.24.2023.07.13.03.01.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jul 2023 03:01:08 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Christian Marangi <ansuelsmth@gmail.com>,
        devicetree@vger.kernel.org, linux-mtd@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
In-Reply-To: <20230616213033.8451-1-zajec5@gmail.com>
References: <20230616213033.8451-1-zajec5@gmail.com>
Subject: Re: [PATCH] dt-bindings: nvmem: fixed-cell: add compatibles for
 MAC cells
Message-Id: <168924246786.15304.6050913171032604227.b4-ty@linaro.org>
Date:   Thu, 13 Jul 2023 11:01:07 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.2
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Fri, 16 Jun 2023 23:30:33 +0200, Rafał Miłecki wrote:
> A lot of home routers have NVMEM fixed cells containing MAC address that
> need some further processing. In ~99% cases MAC needs to be:
> 1. Optionally parsed from ASCII format
> 2. Increased by a vendor-picked value
> 
> There was already an attempt to design a binding for that at NVMEM
> device level in the past. It wasn't accepted though as it didn't really
> fit NVMEM device layer.
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: nvmem: fixed-cell: add compatibles for MAC cells
      commit: a7964674427bdf5aa9ff342e4dfb8a4d345851a1

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

