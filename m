Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1F9C24505DB
	for <lists+devicetree@lfdr.de>; Mon, 15 Nov 2021 14:44:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231881AbhKONrD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Nov 2021 08:47:03 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:48556
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236498AbhKONo2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 15 Nov 2021 08:44:28 -0500
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com [209.85.167.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 29DC13F1AD
        for <devicetree@vger.kernel.org>; Mon, 15 Nov 2021 13:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1636983692;
        bh=1ZCgOXXdDSaFd9PKWHDCusbT3xu4LFc8Tvux7T3aIBU=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=E8q3sFU/wVQgJ/aB+lU5l4bzwv61AZwZHSXnM/ZUKZEH93Hb+LGYhrybp/VGi+B9+
         ZOce0MfCMta2lVTF5N21atORfucvi8QY9fZWTWUNmlev2CddnYXFboONcfTQq6+TFn
         XJEpQVrbEiN3cCl2AR6vLgA3KNlCsOleEOSXYLwr9v8uf1uAFVKd2vG0zRohCcjAbG
         GuYM6jIqdC1CF1WYolB3IFaucAQ8V5F9qttZit4H6sfPp9wibXT4GjQGFYHz4xcKOg
         7RnXJ8wFEvdqx1md1URx3CK5swDjVu0GNiwJJOghbP7Z97eZYjJYHVI2bWxNM0CawQ
         ESVP1t5GICchA==
Received: by mail-lf1-f72.google.com with SMTP id s18-20020ac25c52000000b004016bab6a12so6756045lfp.21
        for <devicetree@vger.kernel.org>; Mon, 15 Nov 2021 05:41:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1ZCgOXXdDSaFd9PKWHDCusbT3xu4LFc8Tvux7T3aIBU=;
        b=6B6PZUx5JnmTjtRmkYf3rbranv36/AC0DlPr5nLiNjYlShzU+1aQscFal/5f/sYLdm
         K1O56k7IYorjbyIWk0xOkKcNiZYiP95Y6xw0U3rgbMjPvEERbURpmO1z+QQPbsnXDRgh
         nUMzLoqA1CHmBvey/SLQUDyhlFr0udC5FG1CWUW0YXPwCGrXyz+Tlm1Wbli7l279+fF6
         j9gfD8ywycXJSZn9puyTpvchrDiZZFqFJobYar5YDb+F3J+5Hqm8CuHikrjqadnsw4Zq
         av1hxHlvNt2SCQKWEvTOvOhuxXn0rFVIFXXLp8uCRvkohNF8Kakq6aVj97JvjArEJx25
         /Emw==
X-Gm-Message-State: AOAM533HXrVhKlI3lUrRlDEqCtO7uV+EiXDhQAo+8HPnpdfht/jdONQl
        jHHlT7ZNDxhRxcdkG9WeXguBbPs8cxK1CogTlxjedGWjeUAv0tIrBo/NXoRZhn8fT1bKKnL5PEl
        dDczqbmdC10BaOpiPIUdEB9Cm6QLoA1lFlXTr+To=
X-Received: by 2002:a05:6512:691:: with SMTP id t17mr34698462lfe.220.1636983691674;
        Mon, 15 Nov 2021 05:41:31 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxng74YqcBM5rQLyeNbIa3LcnMO+DI/reH2X/yvLXYaZUD1UX6NyysXD1j0gLvJDKBiAD7CTg==
X-Received: by 2002:a05:6512:691:: with SMTP id t17mr34698445lfe.220.1636983691527;
        Mon, 15 Nov 2021 05:41:31 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id i3sm1421786lfu.156.2021.11.15.05.41.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Nov 2021 05:41:31 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Sam Protsenko <semen.protsenko@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: samsung: pmu: Document Exynos850
Date:   Mon, 15 Nov 2021 14:41:26 +0100
Message-Id: <163698368315.132512.2195595073396495435.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211028144313.9444-1-semen.protsenko@linaro.org>
References: <20211028144313.9444-1-semen.protsenko@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 28 Oct 2021 17:43:12 +0300, Sam Protsenko wrote:
> Exynos850 SoC can reuse PMU driver functionality. Add corresponding
> compatible string to PMU bindings documentation.
> 
> 

Applied, thanks!

[1/2] dt-bindings: samsung: pmu: Document Exynos850
      commit: a67cce83945170994fcef241b934699b6018b707
[2/2] soc: samsung: exynos-pmu: Add Exynos850 support
      commit: f5dc0140d483fcc6417d1d655481f0ff1de390b0

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
