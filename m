Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6777F427CAB
	for <lists+devicetree@lfdr.de>; Sat,  9 Oct 2021 20:25:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229610AbhJIS1T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 9 Oct 2021 14:27:19 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:35444
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229558AbhJIS1T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 9 Oct 2021 14:27:19 -0400
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id C005640012
        for <devicetree@vger.kernel.org>; Sat,  9 Oct 2021 18:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1633803920;
        bh=wlbnTkKYemCYKZ41QPVkxa7i9iVewjJvs0FxDMBEsWE=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=KrSq0h5aj7gKs0VULHAxGkn8bKSA+R7Ve5CdZwFJTgdlLfPHBfBaEsoAFI6s8nr8G
         OSgaNTb4ut6yLbUxm2kPlRsbWexmIn61AcVEA6zARp+oF3mLX6VGo64yWXIWYqrGLW
         1GeigRokghjjOdZmW4FflVKQ7JnkfwgaZGrO2jwo/anH4tvl8Rz0r5Mwvn/XDRNPIx
         FmZOrpquY/dBXf+6fFLjB7pj7DwsCzVj4owACRAoozEeHOnZJ+NMYaOfORUjhguvLR
         j5sY3hitLW/wRZYtlXeYVAQznv5mJckqzlFMh0q1fQZV5Ks4JNNuKG4+wcAUOpiJ62
         m9ZCaV7B7qVJg==
Received: by mail-ed1-f71.google.com with SMTP id p20-20020a50cd94000000b003db23619472so12028120edi.19
        for <devicetree@vger.kernel.org>; Sat, 09 Oct 2021 11:25:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wlbnTkKYemCYKZ41QPVkxa7i9iVewjJvs0FxDMBEsWE=;
        b=HDJWeVNJUcovwxu9V7pXtjW7TdLauNrsFAbpxwlN140LjqSeV/QgFQdeOfzyM4Cqxm
         IDRqmEk3DgzRK4Ld2XV1uf4/tzXjsPXjr/3DsdVI2S5FFom9Td7fPy1JOh5djEZVzw9X
         EWWHVDLG02ogVEDLRXbKiyR5HKexh7ou+siyAPKldBFryfdi34yd7T/EFbsGJcSXaIQa
         ONsTQGPgRRQgxCGCwCsIFZ4zZh0XQ2OMj7SpXw9WrP2z6Dn3yEHE65wRNqIyyIlZ1ab2
         9Lmdg9M6nA3eYtonZkPe7Wh/ENvjj/GWA5zS2B1nbuh6jY/KmF+bQSL/c2VyifbZRqvZ
         H8rw==
X-Gm-Message-State: AOAM530GMtfQABAKOWeLrLt1Ql9Piz3d5CwAtX5qq5ZdNx2CUiw+JWtK
        JR4aZOQnhtukTWp0H2CV3BWlvwMmeLNaoh5LSLPUXNsTtmuF5LbOybVs3sEJUCEtEAlniu2jWF0
        6dIheRievsAd2gNbpFTF42kIvm48guwbMN8raImg=
X-Received: by 2002:a05:6402:34d0:: with SMTP id w16mr17935064edc.98.1633803920389;
        Sat, 09 Oct 2021 11:25:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxxJ6vT8epLq4/sHoyK2Ek+9c00fAYi5vRAvUPqzr0xeEKdSbxL/EJrVVRzyd6dHkIE+A3rxg==
X-Received: by 2002:a05:6402:34d0:: with SMTP id w16mr17935045edc.98.1633803920222;
        Sat, 09 Oct 2021 11:25:20 -0700 (PDT)
Received: from localhost.localdomain (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id e22sm1563564edu.35.2021.10.09.11.25.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Oct 2021 11:25:19 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Chanho Park <chanho61.park@samsung.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        linux-samsung-soc@vger.kernel.org,
        Tomasz Figa <tomasz.figa@gmail.com>
Subject: Re: (subset) [PATCH v2 1/3] pinctrl: samsung: support ExynosAutov9 SoC pinctrl
Date:   Sat,  9 Oct 2021 20:25:17 +0200
Message-Id: <163380389051.31398.17039007223856436934.b4-ty@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211008091443.44625-2-chanho61.park@samsung.com>
References: <20211008091443.44625-1-chanho61.park@samsung.com> <CGME20211008091639epcas2p28339f2f73755a3c842fbb95f313bf7d9@epcas2p2.samsung.com> <20211008091443.44625-2-chanho61.park@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 8 Oct 2021 18:14:41 +0900, Chanho Park wrote:
> Add pinctrl data for ExynosAuto v9 SoC.
> 
> - GPA0, GPA1: 10, External wake up interrupt
> - GPQ0: 2, XbootLDO, Speedy PMIC I/F
> - GPB0, GPB1, GPB2, GPB3: 29, I2S 7 CH
> - GPF0, GPF1, GPF2, GPF3,GPF4, GPF5, GPF6, GPF8: 52, FSYS
> - GPG0, GPG1, GPG2, GPG3: 25, GPIO x 24, SMPL_INT
> - GPP0, GPP1, GPP2, GPP3, GPP4, GPP5: 48, USI 12 CH
> 
> [...]

Applied, thanks!

[1/3] pinctrl: samsung: support ExynosAutov9 SoC pinctrl
      commit: f9d8de699ac4a059e30cf0e84e7027f1058b9163

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
