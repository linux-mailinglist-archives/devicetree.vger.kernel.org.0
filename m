Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4939E497375
	for <lists+devicetree@lfdr.de>; Sun, 23 Jan 2022 18:10:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239177AbiAWRKt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jan 2022 12:10:49 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:43146
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239136AbiAWRKr (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 23 Jan 2022 12:10:47 -0500
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com [209.85.218.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 586B840052
        for <devicetree@vger.kernel.org>; Sun, 23 Jan 2022 17:10:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642957846;
        bh=xDXKi7JGbcFAIN75n+fskAz4fLROZVWhmg1xwTYWTaM=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=vFHlFNPcWzZN3i48+prT9iLU9UcWWm9/wUdeswEtzF1sluDTAMVuqxD21SVMfMNnt
         xftHaxXY7eHvG1brn5ZFq4A8Nb86c/o94cv0dOVHHud+WHl3+myTpVzgb+HDsmCXeZ
         mQD3We8Zjm+pz+1J4wB2TI2DbMrjnOtqaXZ0WrwuC8FIfDimXuIe4UAAz8MrkPu5IV
         jACLzHZ+8JJU6Ktzt17Ktbzkl6kqh1af42BSF3WCGd4pvubbKuGpV4yYZIXhww9n83
         SBDnG2iFRvKy8vtn0XuZUCFnsgY0Ljq8Sr3PyMWyWXQud5FlKgvyCoLb3oCeMQ5dDA
         xA3XoE3z8rbXg==
Received: by mail-ej1-f72.google.com with SMTP id r18-20020a17090609d200b006a6e943d09eso1525909eje.20
        for <devicetree@vger.kernel.org>; Sun, 23 Jan 2022 09:10:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xDXKi7JGbcFAIN75n+fskAz4fLROZVWhmg1xwTYWTaM=;
        b=sgukJ0U+QfhnL6SjI2thLHbTN5dvVcCSYpvLN0i5VUrfzSTV2VYpmqNirRk66jvmkF
         cwvZ2rmIoM0QgGbZR4VWa1//dwBQp6QfCerRRmA0DXWuaP6k1Z1Hw6JOOWQaQJQ++8x/
         xMFAvcn9eKkXWtk2tUN/fdn6Ax1fyljUbY5ANxV1CrTG+Y5uDt5cs8vPqr0dA9yU1Jnv
         wxrxvOP4ZQ7LlCtmycZKkfObeCs0+nMSBaT0FKeChINMGKWz1HH7Qym+f+FkMXcc7yIe
         HsGPBuvgLYQSV9qmedX/yLZuBFW/qLtSnM2wdxGaoHB4yTDN/JFh95GdwYCL323Gl2/H
         0Jzw==
X-Gm-Message-State: AOAM532kIrOugpvGR6TWiBCsS6l1gbLygp2P7nZrFbeSz3F2dbYpq/X5
        zmOMRWiuQU3ZWJsrQLmxjkhV64VTNzzQmGwwBgYNxY+XICMNXkiR3ANWEM/paKzz8hNOaB1N9cD
        TjNjlL47ywDy3uabEoy5ANwKfcLqhc+JF8/fcmG8=
X-Received: by 2002:a17:906:c0d3:: with SMTP id bn19mr5822200ejb.617.1642957846006;
        Sun, 23 Jan 2022 09:10:46 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzEwgwyC6py20Us9CXTtk8hy7gvk7QbsUsT9zTj+fmJrSTrQrjp6cdTGsUPJFslHAJdT1BKlg==
X-Received: by 2002:a17:906:c0d3:: with SMTP id bn19mr5822197ejb.617.1642957845861;
        Sun, 23 Jan 2022 09:10:45 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id l2sm5208665eds.28.2022.01.23.09.10.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jan 2022 09:10:45 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Guenter Roeck <groeck@chromium.org>,
        linux-samsung-soc@vger.kernel.org, Pratyush Yadav <p.yadav@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Andi Shyti <andi@etezian.org>, linux-spi@vger.kernel.org,
        Mark Brown <broonie@kernel.org>,
        Benson Leung <bleung@chromium.org>,
        Lee Jones <lee.jones@linaro.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Sam Protsenko <semen.protsenko@linaro.org>,
        linux-kernel@vger.kernel.org
Cc:     Alim Akhtar <alim.akhtar@samsung.com>
Subject: Re: (subset) [PATCH v5 1/4] ARM: dts: exynos: split dmas into array of phandles in Exynos5250
Date:   Sun, 23 Jan 2022 18:10:38 +0100
Message-Id: <164295777263.25838.3565314490773058737.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220120175747.43403-2-krzysztof.kozlowski@canonical.com>
References: <20220120175747.43403-1-krzysztof.kozlowski@canonical.com> <20220120175747.43403-2-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 20 Jan 2022 18:57:44 +0100, Krzysztof Kozlowski wrote:
> "dmas" property should be rather an array of phandles, as dtschema
> points.
> 
> 

Applied, thanks!

[1/4] ARM: dts: exynos: split dmas into array of phandles in Exynos5250
      commit: 88829baee3db050a06fd5ce8a2be0c39992f90da

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
