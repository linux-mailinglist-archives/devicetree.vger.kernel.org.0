Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0FF0A42A451
	for <lists+devicetree@lfdr.de>; Tue, 12 Oct 2021 14:24:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236405AbhJLM0m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Oct 2021 08:26:42 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:34976
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236350AbhJLM0l (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 12 Oct 2021 08:26:41 -0400
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com [209.85.167.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id AFE5C3FFF1
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 12:24:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1634041479;
        bh=2KycfGF86kW+RwIJHs6Giwt5ePbEo0G3cAzDX2fNLuM=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=PKzf0Bz2KLeXtMcRGTqKdAtlT4jvAn1B7fjDlk5FAs6dfNu4i9vNTuClyo6nSoeJe
         Ajpf96+sQqVLVD/aqGVXsUJO9XD9AXhC2sk1yxisQ0k+jsvFEyP+N6j18ZwmKdFiOm
         fGr7adTa8jDZ+EZ3x2UahUIpJkelXzKB61Wjgwz0NkndkINz8voEd8ZqdA+4ZopxVN
         2OR4S8MKP4LvDYuvlFtIARp0qZ121ONNjBLqHjAeLNl6jdqazXpCc/IWHWYG2M6UQT
         26So0aNieNLTYj4sGd+2+MFzW+Bd6owdaTOaMXY27koGGx7Z6YpVU1HPPUe/edWTwp
         RtfPX0o15RyjA==
Received: by mail-lf1-f70.google.com with SMTP id v2-20020ac25582000000b003fd1c161a31so14902236lfg.15
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 05:24:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2KycfGF86kW+RwIJHs6Giwt5ePbEo0G3cAzDX2fNLuM=;
        b=1pkH5t8zqvmusVvEAWB1agsDc9ERJvOJFt8WCyIPJ4jO7T0ozCmC4JRUpLEqsiF9Ds
         dgd4eQEubkaJgIHslP1L2SNifzcT2SNZGwgyy+Duj9lG5jSJg/O5c8sLRxLeFNYsmKvH
         /ILmDnIubX37b2uFMROuKtrA0waQVEzzsS7O0mksHLcoHDInyWNL2WKBKuxOwLt8b90S
         uiqru3CoOHTyoVaYhUDKa3CMYKf+ocNeADyjEUBx3XC2gIgiiYjqQV6jFJ6n/SmBXMWr
         EPEBSKYJVNklVmNqY7yJVsgdbx2a13GjpAxtXn72rHnft7OAjVmDONZMiohMPal68IIr
         BbDA==
X-Gm-Message-State: AOAM5331Kv2UzoQ7tXLCH9Sy9oqqNWAyIfTMpDbR7ITvglH5/4Jt2mG6
        BjWRBsy0kxeGJsnE/PUy9mPEbuSgzxWavpcAHMP59POT8M6EQpmmxvOg8GoR17pNfA2UVfbnVX8
        yJt61fyv32B/Kk4Kk7gnCtRjSdXV5T3EQ/dk0RQw=
X-Received: by 2002:a2e:95c6:: with SMTP id y6mr28676837ljh.201.1634041477350;
        Tue, 12 Oct 2021 05:24:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyYKFUYAP+5FQx+G63kZ8qWv7l02qPx+Yoh7RlTIig0VJnn9ivipTNU1F6A6FXA5ZuP01sCIw==
X-Received: by 2002:a2e:95c6:: with SMTP id y6mr28676776ljh.201.1634041476653;
        Tue, 12 Oct 2021 05:24:36 -0700 (PDT)
Received: from localhost.localdomain (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id t22sm1116873ljj.61.2021.10.12.05.24.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Oct 2021 05:24:36 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Chanho Park <chanho61.park@samsung.com>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, Tomasz Figa <tomasz.figa@gmail.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        linux-samsung-soc@vger.kernel.org
Subject: Re: (subset) [PATCH v4 3/3] arm64: dts: exynos: add minimal support for exynosautov9 sadk board
Date:   Tue, 12 Oct 2021 14:23:59 +0200
Message-Id: <163404143358.133839.2794709357328521339.b4-ty@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211012002314.38965-4-chanho61.park@samsung.com>
References: <20211012002314.38965-1-chanho61.park@samsung.com> <CGME20211012002533epcas2p10315d89423e02bf36a5e0c404268ca1f@epcas2p1.samsung.com> <20211012002314.38965-4-chanho61.park@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 12 Oct 2021 09:23:14 +0900, Chanho Park wrote:
> SADK(Samsung Automotive Development Kit) is the development kit to
> evaluate Exynos Auto v9 SoC. It has 16GB LPDDR4 DRAM and two
> 256GB Samsung UFS. This patch enables only serial console and ufs0
> device.
> 
> 

Applied, thanks!

[3/3] arm64: dts: exynos: add minimal support for exynosautov9 sadk board
      commit: 2b663ae7152f785732d35ce38ad20ad10aca3116

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
