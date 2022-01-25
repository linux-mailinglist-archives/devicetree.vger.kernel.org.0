Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7BBB749B9A2
	for <lists+devicetree@lfdr.de>; Tue, 25 Jan 2022 18:07:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241398AbiAYRHM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jan 2022 12:07:12 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:50898
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231605AbiAYRFQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 25 Jan 2022 12:05:16 -0500
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com [209.85.128.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 926F03F325
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 17:03:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643130194;
        bh=Khs15J5Mbq9aHaNEf8S9OePqypIZSb0dV1fDUx3j1zY=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=K5fG8gmRWFM6AwGXI9XORP2/4TCu0+fB5XpDcuqryZPLdzr+IgL2lgFlV/b8Tg3us
         rwkI7xBAZLHQ8y+XgzB97sLsqgWfYB+V2xdAT1Fj5UQ2hd1xIT6JBdslruSrEc1OHB
         bkXvLxdVNXtayptwJ5Qy1ZNT1m8+5vrBE6Oqqt7MyuZxmnIqCiGljhdVZhiEIPa5hD
         AV0/l8d2b74/aDTvWvXWxSY4sePOjNjxpYwplbADLbmjyevZhKoz05rFIN+qfTn8Cq
         Y7hLCk+9jzFwsUIQBhmUkP6A9N+15IJe7YZMaGP7Ojet1QpJ1ycQT2m7YoUuA1l9ce
         3pjb9AJx5RlQw==
Received: by mail-wm1-f70.google.com with SMTP id l16-20020a7bcf10000000b0034ffdd81e7aso1772524wmg.4
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 09:03:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Khs15J5Mbq9aHaNEf8S9OePqypIZSb0dV1fDUx3j1zY=;
        b=5Qz41in4L/NaXaoUiZ4qJ0+2CcTUV5jG20u9QAJNlZmjspt35ng6efsCYtk/rMtOlP
         zNlQNShnFuFeErCDyRM/GN2YfAtTIT9jlkxx1wgCHu/jKyrPUUzKyeTlZaJ/Dp44lnik
         AZbxms6YoaXT1hDj3xPLmPp7wM4Wd3LY/7H7cq0hlOaRkQ4ohVKGXvfznX0MGeS1/L7s
         SjBTgQWIQd/EfNnSlUhqQqlrC9DmFvj5qtDRgrvlDT4fXPuMt5jEVsIWtgGWylvk9+fp
         2T9+kQLmBUiu424+R9hXIzPWW35V34ZVPaPHBJFPi0g7bXk2o3QXx7reIq/2k/yUtUeO
         AikA==
X-Gm-Message-State: AOAM5302NQZrVyYDAaf1Q3K0idrOrFuz0rcXkZGPr+RtnBIhojC16S3K
        xDA++54kPNO8bpTCjZSnMwtm/pjxk4EoWRDWG3kqb7f+8SdK8O83B7QX6+Oz6CLf6WYIqX60uCy
        wgwRVkQgRggVpmFPTr9dFqcRPKSdzY92ijiynWyo=
X-Received: by 2002:a5d:4343:: with SMTP id u3mr18313343wrr.504.1643130192793;
        Tue, 25 Jan 2022 09:03:12 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyG9zjm9t7btrydRtRdnKDOUoYdpl+wsZCbJPwqP/WbdmBoRfkoAn21BZz2+hcP67O92cBkLw==
X-Received: by 2002:a5d:4343:: with SMTP id u3mr18313323wrr.504.1643130192571;
        Tue, 25 Jan 2022 09:03:12 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id i3sm17162548wru.33.2022.01.25.09.03.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jan 2022 09:03:11 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     linux-samsung-soc@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-usb@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 00/12] usb: dt-bindings: samsung: convert to dtschema (subset)
Date:   Tue, 25 Jan 2022 18:02:30 +0100
Message-Id: <164313008959.78836.16134870344795249201.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220123111644.25540-1-krzysztof.kozlowski@canonical.com>
References: <20220123111644.25540-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 23 Jan 2022 12:16:32 +0100, Krzysztof Kozlowski wrote:
> Dependencies
> ============
> None.
> 
> The DTS patches are independent and I will take them via Samsung SoC tree.
> I am including them here just so automatic robot checks won't complain about
> DTS differences against newly dtschema.
> 
> [...]

Applied subset, thanks!

[01/12] arm64: dts: exynos: add USB DWC3 supplies to Espresso board
        commit: 31c33503fdb3965d6aaf0db4a8c42e7d8cef1dff
[02/12] ARM: dts: exynos: add USB DWC3 supplies to Arndale
        commit: 52d53d937da8889964c60216a0333cb19fe0812d
[03/12] ARM: dts: exynos: add USB DWC3 supplies to SMDK5250
        commit: ebbb07b8d349fc2eccb67780850d2d1bbfc918d6
[04/12] ARM: dts: exynos: add USB DWC3 supplies to Chromebook Snow
        commit: 9745be7b5a3be39a00e6bbda3305e2d789ee4082
[05/12] ARM: dts: exynos: add USB DWC3 supplies to Chromebook Spring
        commit: 111ea2d6dd217684db4e7a97a2bda3bf14734427
[06/12] ARM: dts: exynos: add USB DWC3 supplies to ArndaleOcta
        commit: 0a14272479627bb9388ece3b0ebac72a3928062d
[07/12] ARM: dts: exynos: add USB DWC3 supplies to Chromebook Peach Pit
        commit: 7adf978462dadc41ea7d4138de53bc9a15922191
[08/12] ARM: dts: exynos: add USB DWC3 supplies to Chromebook Peach Pi
        commit: 72477416ac12e88384a96575c5f2e4bd7ac8feeb
[09/12] ARM: dts: exynos: add USB DWC3 supplies to SMDK5420
        commit: c441d2d73107fcb45c0affb345fe6b9bc3fd3bab
[10/12] ARM: dts: exynos: add fake USB DWC3 supplies to SMDK5410
        commit: 4043114504cc05d0a7ca2a061838699b500599cd

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
