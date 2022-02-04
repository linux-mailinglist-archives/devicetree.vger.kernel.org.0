Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7BB614A9BB2
	for <lists+devicetree@lfdr.de>; Fri,  4 Feb 2022 16:12:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1359594AbiBDPMR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Feb 2022 10:12:17 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:51106
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1359595AbiBDPMR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Feb 2022 10:12:17 -0500
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id DA0873F1F0
        for <devicetree@vger.kernel.org>; Fri,  4 Feb 2022 15:12:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643987535;
        bh=yOhvfL3K9EM3pgKXGgKC0dd7a7sZ03wRgeDWP6xNUxE=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=m6VMO4T79C2PdfyqlWupjP1r4ruci3KzBVouAyWV9zSDfyEzjYfHhZ4eo/Isb3em2
         SZPARO5IJwTy/W52Wqm8+U9IPhoUfJGgmbCbr1Jclcs08OLaB8cNxksQX0QkoRUhGL
         BtVFOU/916kSUr/rPUilbfA0FwuCude/rx+uOv62iBshr8BDnnNG2GuFdQDgd4Jhmu
         /9wYSjhDecrG9dUOhlW/eYnGHwgNCTaJdueYSlXLryW439aViMrtp+EcAoauPyb6AS
         cgWju+3bnKbM9eozMX7HN5s1Tk8MIM9ng0jj1yJE9ZyaaygM/1GVNwQzlF6XhoQomW
         z61cOVppggmsw==
Received: by mail-ej1-f71.google.com with SMTP id la22-20020a170907781600b006a7884de505so2703394ejc.7
        for <devicetree@vger.kernel.org>; Fri, 04 Feb 2022 07:12:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yOhvfL3K9EM3pgKXGgKC0dd7a7sZ03wRgeDWP6xNUxE=;
        b=smBSSxF+tRa98F0jPLWfvVexvbeJlfVV1NzdcLQtVYFyVv16QT3CqQz7DRN+jAo6gB
         JnmASIVMSSwKsNHTqvT77AaK7TjuKPIVzf8CLthwGCxp/XzEO3+PoB8oG6H0GsSMPqQB
         kkB60GEU1kWaaWJzZwSjCt+/t4D7bV3e1RbA/PHaH+Mr0dYyCb1cRnhvb+BkiJQ8DZll
         WlTG3sHKxRb+vvhJZymqLfrfkS/JKoGefnS9lnEJ5sIW3VDHVIwg+3vf8FQOgpYfuEpz
         wcnj0aXFVFZLjDeowwCNn5q4LvK+gMN/duOFZfs9c0Phx9MJGaWsSDakz/ohB89OpH4O
         Mccg==
X-Gm-Message-State: AOAM532/Z0hFFmGUaolXuggp28WXjthEqYVcWsvY19qXgg+0iVnHKhms
        KjKJ/ZzPD40+POEtcc6p0s4PkWoAMDHMXwRQWL5dM1jFJOcsaeMJSI/YdL37TTOhH8fXUe09xtz
        jkMfUtJTV6QOLPnFYqq6dfEcUf6L4TPV2occU8bI=
X-Received: by 2002:a17:906:489b:: with SMTP id v27mr2827675ejq.120.1643987535435;
        Fri, 04 Feb 2022 07:12:15 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxLnKNw6+erLDFjnoNMlzBft5DfbylVfdBVAIS76vuUg0w0Q2ojfZrmcPS1dn44UaNJfnuToQ==
X-Received: by 2002:a17:906:489b:: with SMTP id v27mr2827667ejq.120.1643987535276;
        Fri, 04 Feb 2022 07:12:15 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id h15sm757748ejg.144.2022.02.04.07.12.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Feb 2022 07:12:14 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-samsung-soc@vger.kernel.org,
        Dmitry Osipenko <digetx@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH 1/6] arm64: dts: exynos: use generic node name for LPDDR3 timings
Date:   Fri,  4 Feb 2022 16:12:11 +0100
Message-Id: <164398752918.81715.4393441551336202631.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220201114749.88500-1-krzysztof.kozlowski@canonical.com>
References: <20220201114749.88500-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 1 Feb 2022 12:47:44 +0100, Krzysztof Kozlowski wrote:
> The node names should have generic name, so use "timings" for LPDDR3
> timings.  This will also be required by dtschema.
> 
> 

Applied, thanks!

[1/6] arm64: dts: exynos: use generic node name for LPDDR3 timings
      commit: 931dac3d3442bb1ea01be9cbdc53310272b68f77

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
