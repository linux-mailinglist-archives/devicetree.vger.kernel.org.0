Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 20B1F412F57
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 09:24:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230159AbhIUH0T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Sep 2021 03:26:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230128AbhIUH0S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Sep 2021 03:26:18 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6A2FC061574
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 00:24:50 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id w17so28160544wrv.10
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 00:24:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MFVNYM+8ZfBcQi6We1JLgvzVyTGB859WPsLGFEWujhc=;
        b=jYDszma0h/FXRO3om+lag8wn0XZPmRIsfwEhryXv7H/Haj1FaIRANAg/Hp0Z+3xzDQ
         YOLS9eatkHylygVxrY7zlmHZz3cEabPOzh7eGxLOGYMb+DIcEZhpbr/k5w8F03CpTo2p
         hAzc2gBlWuuIvg+/uR3kjc0YYnsIgqP62FteqZRQK72Tev9lqX+Ffda1cQY2xwySLLf8
         oND5XBT1AE8Oh2av5sc8tG9OqCN6ycXMNNUYSxjo/Lh+VN6dpnOksHH5CxGj7MgXZfBq
         1BsgBtHkahLvMJtdY9cGBkWuftposvfbpfWhwYiBy0YA2977T2Vtolu1SyqTxDoFhpAk
         w4qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MFVNYM+8ZfBcQi6We1JLgvzVyTGB859WPsLGFEWujhc=;
        b=3/AadGtJiiEUtddNey0hOhYcKm6NikJ8toaDygt0Qw+mefw3oGfIwqu+1v9mqhfS4t
         KJJK7tj9880RLaUIvktRng7j03zKxIo5OCJ0jFIyPm+f/IVAvlq+ICPrW9oOS1Ky5ZqX
         yDIO6gP+T5M/M7gKuxWoLXcCawu73tyrvY/0zMWi4Byd45yHtgF5KXn39Iep+iBvB7of
         GwWbMtc3xLpDiXMwCtnQnHT/ZZE4VVAnf5CQwNSSTPsSZD7g71SbS7jEq5zeEIQY6lls
         72q7To3ITJByqFakiro99FYzhcy53pEJMJy7RWF0I2SO08SPxkEdBIbO0w422iJMEI/V
         8K5w==
X-Gm-Message-State: AOAM532AsC0O9HMLMik5xqhxVgbjLHvFa640VE1oCmlGupLMplmniT/Q
        7G10GZ6fJhobfWLRn8bmc+GvLg==
X-Google-Smtp-Source: ABdhPJxE8aa5yw5kwtoTkIsHabvAITZpO/4otjBhwLWa7UZ7fgQmgf44/eHeAOMVdJugB44yVqeEmA==
X-Received: by 2002:a05:600c:d3:: with SMTP id u19mr2954065wmm.142.1632209089293;
        Tue, 21 Sep 2021 00:24:49 -0700 (PDT)
Received: from localhost.localdomain (i16-les01-ntr-213-44-230-108.sfr.lns.abo.bbox.fr. [213.44.230.108])
        by smtp.gmail.com with ESMTPSA id b188sm1878316wmd.39.2021.09.21.00.24.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Sep 2021 00:24:48 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Anand Moon <linux.amoon@gmail.com>,
        linux-amlogic@lists.infradead.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Christian Hewitt <christianshewitt@gmail.com>
Subject: Re: [Patchv2] arm64: dts: meson-g12b-odroid-n2: add 5v regulator gpio
Date:   Tue, 21 Sep 2021 09:24:47 +0200
Message-Id: <163220908180.41173.4926821171736077752.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210920204739.950-1-linux.amoon@gmail.com>
References: <20210920204739.950-1-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, 20 Sep 2021 20:47:37 +0000, Anand Moon wrote:
> As described in the Odroid-n2 & Odroid-n2-plus schematics,
> the 5V regulator is controlled by GPIOH_8 and in Open Drain
> since this GPIO doesn't support Push-Pull.
> 
> Fixes: c35f6dc5c377 ("arm64: dts: meson: Add minimal support for Odroid-N2")
> Fixes: ef599f5f3e10 ("arm64: dts: meson: convert ODROID-N2 to dtsi")

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v5.16/dt64)

[1/1] arm64: dts: meson-g12b-odroid-n2: add 5v regulator gpio
      https://git.kernel.org/amlogic/c/ecff7bab5c9c2e2b6f5739b328347e08415879ec

-- 
Neil
