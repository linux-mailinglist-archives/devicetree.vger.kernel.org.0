Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BF75E49B9EC
	for <lists+devicetree@lfdr.de>; Tue, 25 Jan 2022 18:16:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238286AbiAYRPd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jan 2022 12:15:33 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:51446
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S241535AbiAYRNa (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 25 Jan 2022 12:13:30 -0500
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com [209.85.128.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 2D0F740012
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 17:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643130714;
        bh=7TxHx9Az3jP4GXjS7R/xWiSSbyyuPYk/buescVNcwdc=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=YnoP8Uc27tQitB3oZ3Hm/Snj3o/62XM1NgL3NHYAdwIK6V8LbZ0uDdao7d25o9ra6
         yKYjKrCu0M4+nsDtpLc01nhbzF4W3MogmDBbNzmbDhJ3qSI702Eg+JMUhJA1A0Kn86
         9VEcTLWdswnVBaNUZ0Akl91ft2jS9VYzffWZeJa+urzG62x7Jo2SkqEdYUBCEZyy7F
         TaOzDBndkVzSoeObcVLI8lXx4UoILj07QJaazmPYgPnhcWA3tinSOMQN6S2ESSW6Yr
         /Gjy7MB1aenvVzONa4DG1VQrmzvPl80RaZvgCer4TuFr7TPpRj2P7q1yXJ9fB6jwA0
         Wb6l5ROjX7DpA==
Received: by mail-wm1-f70.google.com with SMTP id w5-20020a1cf605000000b0034b8cb1f55eso1469128wmc.0
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 09:11:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7TxHx9Az3jP4GXjS7R/xWiSSbyyuPYk/buescVNcwdc=;
        b=NOpSuiKM6bleuT6lHTUY6bfmhVh8iRHHdWffFunRjg8xnerZ9rSmIgpuas7WJC4ZQu
         oADpFmJMVjyunS8F1KBETeB+6AJtD1G6jhb55Dso1wO9Cz/7q3csW4sOHIZJJFYRdmUi
         x4xO+7VNJGy7RUtChe/Mi9kIXnLERXOUlph1yu5eP/fTBRze+8gS58aqLYnzC6SG2+oG
         NLEBYRyb8t53as0Fn2jXmt2Xz3P2/sO2A3kIZbsvI/fCl0rZLG9t55uP+UGkwYroFRcO
         VjOv4BbOclaA2JwNsJmLEvQKn7JQX+6KdN2z0ZdFKyXW+6c6b6hIMUsVs0WzDaLOxFYb
         rOuw==
X-Gm-Message-State: AOAM53363dCWhqo0A5edAzRcy3Xm1nFR9FTCq6HdBSkjbcT+EvdHfoE3
        n5p7ZaswCkP8WKfKhDJGgs53IU0mamTMPEqpBkx4c6C1OnUIoaOvJzLvwyKV8G2OIBzuugdwBeX
        m7pW6pHj6+tG8kYVEx7XC+z5ZERiwxp+55XmOyhQ=
X-Received: by 2002:a5d:64ee:: with SMTP id g14mr20072631wri.695.1643130713841;
        Tue, 25 Jan 2022 09:11:53 -0800 (PST)
X-Google-Smtp-Source: ABdhPJw8Ro1jAI/vmvdBovPg/nvWvSQlSJjY4J64VwAZ+jbuns+Jsv8ut2Ic5OsKXwBEP9xJuQdKxw==
X-Received: by 2002:a5d:64ee:: with SMTP id g14mr20072595wri.695.1643130713542;
        Tue, 25 Jan 2022 09:11:53 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id f8sm1185826wmg.44.2022.01.25.09.11.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jan 2022 09:11:53 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     linux-arm-kernel@lists.infradead.org,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Arjun K V <arjun.kv@samsung.com>, linux-fsd@tesla.com,
        olof@lixom.net, linux-clk@vger.kernel.org,
        Shashank Prashar <s.prashar@samsung.com>,
        s.nawrocki@samsung.com, Sriranjani P <sriranjani.p@samsung.com>,
        devicetree@vger.kernel.org,
        Aswani Reddy <aswani.reddy@samsung.com>, robh+dt@kernel.org,
        soc@kernel.org, Ajay Kumar <ajaykumar.rs@samsung.com>,
        linus.walleij@linaro.org, sboyd@kernel.org,
        Chandrasekar R <rcsekar@samsung.com>, arnd@arndb.de,
        linux-samsung-soc@vger.kernel.org, catalin.marinas@arm.com,
        pankaj.dubey@samsung.com
Subject: Re: (subset) [PATCH v5 14/16] arm64: dts: fsd: Add initial device tree support
Date:   Tue, 25 Jan 2022 18:11:05 +0100
Message-Id: <164313065136.81319.1739143646413756082.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220124141644.71052-15-alim.akhtar@samsung.com>
References: <20220124141644.71052-1-alim.akhtar@samsung.com> <CGME20220124142957epcas5p27ab08d4eb02fe53a03e2b36ab1d913f8@epcas5p2.samsung.com> <20220124141644.71052-15-alim.akhtar@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 24 Jan 2022 19:46:42 +0530, Alim Akhtar wrote:
> Add initial device tree support for "Full Self-Driving" (FSD) SoC
> This SoC contain three clusters of four cortex-a72 CPUs and various
> peripheral IPs.
> 
> 

Applied, thanks!

[14/16] arm64: dts: fsd: Add initial device tree support
        commit: f984dabdb5e16afb0f69b05a11ca9eeffa5b9a73

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
