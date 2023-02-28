Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 617226A60EF
	for <lists+devicetree@lfdr.de>; Tue, 28 Feb 2023 22:09:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229512AbjB1VJA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Feb 2023 16:09:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229471AbjB1VI7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Feb 2023 16:08:59 -0500
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A34699EF3
        for <devicetree@vger.kernel.org>; Tue, 28 Feb 2023 13:08:57 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id ee7so45729145edb.2
        for <devicetree@vger.kernel.org>; Tue, 28 Feb 2023 13:08:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677618536;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+8sHszd8r1s6jc7V5kkuEfrl4rZj3zAHu2zSo/SumMU=;
        b=TMuA6ylWu3WLsE2TQIIueU5ev+6P62058sLojmT7SwZdMN48C7tEUqXABoyfdg9n7u
         PfH0hE8mcvk/OZqJHSWLkaslJVv8wJ++ykZrG6sd0Zx18wYo+90+tjMcwpM84TGdNQtH
         rkWBC4npU7xxK7WPVB+fDDs6AnClaew/cOIRYAxLFHpmUAU5JineAaBFc/jlhJQYWNWV
         SjWLsBFLvDKP55V1tuZkf05VuboBGsDF/dZX/2emTfqro20FzINUrM8BItekVwUgl4lD
         eepI7HDVcCl8qONyKezUoAMk1KWJTmvNx6jXuqBAJnknki6TY8L2VKyem5mDV17SaHhj
         zUrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677618536;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+8sHszd8r1s6jc7V5kkuEfrl4rZj3zAHu2zSo/SumMU=;
        b=Y8ZidKXyaPXQGGLl4OxOYhFtQIfPZeUU6rwR7CW+IDlkpkbOuIspSJ95dw3Q8E+WsG
         CW6UsyxSySNhtPSu4QuamrgQrZILCvgey5m0UwJMmI/6/u26S3AnT9u2mxzadyvvOlDe
         1nIWpuqQgAQ6bxUjsfFqEDGMf0uRYdviinMSIzmyRwDFjWN5DHLZx/2Y2gHxQagHqsiy
         isEEwjkIZp86qInsj20Ia6PMcOGXcuxeSvSC76EYUFGqaxjrhHG7IWT16NjMNGWpNx+I
         AMjLX1hDPbuGeEttaLqcS9cMBDifIac+7L64OHYWZNpfZIMYBv2he7Ads2UkJfh8vvxr
         CIzg==
X-Gm-Message-State: AO0yUKXAdY8LTam5wh1TfxV/IKmUuXWwMfJLJKgjn4N927wQxos+gaVE
        XDKfOg01JpmmG9ZTqmH4P6dla6nqOhBRqA==
X-Google-Smtp-Source: AK7set8tEj1Lx2Dr0hwD2WAFi2opZbRBORqgBtiQvBJxZu4oNC/hHvJp0UAjuQ0UJf6HyTamYSP0pA==
X-Received: by 2002:a17:906:1b17:b0:84d:3403:f4f2 with SMTP id o23-20020a1709061b1700b0084d3403f4f2mr3801442ejg.62.1677618535965;
        Tue, 28 Feb 2023 13:08:55 -0800 (PST)
Received: from jernej-laptop.localnet (82-149-1-233.dynamic.telemach.net. [82.149.1.233])
        by smtp.gmail.com with ESMTPSA id ha14-20020a170906a88e00b008c405ebc32esm4875063ejb.28.2023.02.28.13.08.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Feb 2023 13:08:55 -0800 (PST)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Samuel Holland <samuel@sholland.org>,
        Andre Przywara <andre.przywara@arm.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev
Subject: Re: [PATCH] arm64: dts: allwinner: h5: OrangePi PC2: add OPP table to enable
 DVFS
Date:   Tue, 28 Feb 2023 22:08:53 +0100
Message-ID: <2669085.mvXUDI8C0e@jernej-laptop>
In-Reply-To: <20230228114112.3340715-1-andre.przywara@arm.com>
References: <20230228114112.3340715-1-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne torek, 28. februar 2023 ob 12:41:12 CET je Andre Przywara napisal(a):
> So far the OrangePi PC2 board was running at a fixed frequency, set by
> U-Boot to 816 MHz, which is the best achievable frequency at the 1.1V
> CPU voltage provided by the PMIC at reset.
> 
> We already describe the CPU voltage regulator in the DT, but were
> missing the OPP table. Just include the default H5 OPP table, as used
> by other boards. My OrangePi PC2 runs just fine with those values, and
> now goes up to 1.15 GHz.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej


