Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1AE6667781E
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 11:01:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231263AbjAWKBu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 05:01:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229588AbjAWKBt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 05:01:49 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C3698A56
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 02:01:48 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id k16so8534483wms.2
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 02:01:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZINu57bR1Z6mYPk+B1llGWGO+5BXD5rMCCDNXYEK+KU=;
        b=Ojjfv4OLkkffo9onFvas5lKEHnDY06+JHm5UlJPSa/1cM4Q7JpL/MAlzycWJUpU5/Z
         gB4wCx0xv4dwCte3Da8KL4he5STgbpZW4bh0vZVrktVy99+QPhBpAyZ5Z12oHH1QZNFY
         doc6mXZBR1NOxLQ/9kCus0F4GQmSougqWGxQnqqEtG09AnUr28dUaR+B2tF8rqWEqheb
         1aRQgnUU1CvHKrR8gb3pgbFDpknVdkBJZyxAHaNFusM4Ss/C2JCfc/BaW6vNy7tdLVYm
         S4n3YLGNGSMYoopvkLixkkwwLJs3u4wvH2O3+xz+o2jjrthjh2eQVrtYEwlpAu1KtGTn
         10NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZINu57bR1Z6mYPk+B1llGWGO+5BXD5rMCCDNXYEK+KU=;
        b=3mfGB/RmP5TebmTZR9WuNo8mNrdp+qiP2C6bKlAl8AUCMf8hBwapBs3qAsoxmG2YYz
         rQ7NBV+dqz3546HUcKebqVuU5vQ6ybzdqCyGL2Gg8NkR2jfPwe9kWCMtb30+WqA055lu
         c/u/SCUG4lor0P1ESaS5V2xpufHVsBzQx26XXC9unf1nEzL6k/VY7uqwx9yxPm5zv1Y1
         HDcXe+nlN/5IXjQE9u2PwQw7KLIEsiPzvAkjc5TuV1WcwKISQRTbSBlFcmlsXJ96XG06
         RjgytzlBozzMrPiHB3k8BameYtQBOf9Pu8t7dicKcUeyNR/yGMg5Br8OamTVUmHJrnrx
         OSJA==
X-Gm-Message-State: AFqh2kowEo60Uk1ndH+efXXCo09kg7CMhwwurhWyDIGnAiUKcxba4Xi/
        yO1ahz2SJjBx3gBlPnXCyvTE6j0C8SpF6NbK
X-Google-Smtp-Source: AMrXdXtl9z8fpWj3qL3K3dveHOklJjy2Sl/2thkffauyiqq0en6tL3UpmgfEmvvgL2Ggz9m6gslDrg==
X-Received: by 2002:a05:600c:6008:b0:3db:141c:1e09 with SMTP id az8-20020a05600c600800b003db141c1e09mr18668093wmb.23.1674468106890;
        Mon, 23 Jan 2023 02:01:46 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id m2-20020a05600c4f4200b003db0ad636d1sm11050831wmq.28.2023.01.23.02.01.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 02:01:46 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-samsung-soc@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Sam Protsenko <semen.protsenko@linaro.org>,
        Chanho Park <chanho61.park@samsung.com>
Subject: Re: [PATCH 1/6] arm64: dts: exynos: disable non-working GPU on Exynos7 Espresso
Date:   Mon, 23 Jan 2023 11:01:38 +0100
Message-Id: <167446806833.57213.16384492821546123137.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230120173116.341270-1-krzysztof.kozlowski@linaro.org>
References: <20230120173116.341270-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 20 Jan 2023 18:31:11 +0100, Krzysztof Kozlowski wrote:
> The Panfrost GPU drivers require clock but such was not provided in
> Exynos7 DTSI.  The CMU_G3D clock controller was not upstreamed, thus
> consider GPU as non-working and simply disable it to silence warnings
> like:
> 
>   exynos7-espresso.dtb: gpu@14ac0000: 'clocks' is a required property
> 
> [...]

Applied, thanks!

[1/6] arm64: dts: exynos: disable non-working GPU on Exynos7 Espresso
      https://git.kernel.org/krzk/linux/c/e251bbd6faca7f0ee1986a8534ceab9042e0e73a
[2/6] arm64: dts: exynos: add ADC supply on Exynos7 Espresso
      https://git.kernel.org/krzk/linux/c/4fffea1941bf527f55f6ac98584672206b26781f
[3/6] arm64: dts: exynos: correct Bluetooth LED triger on E850-96
      https://git.kernel.org/krzk/linux/c/706528771a73ad9963e257ede00a09960720fa12
[4/6] arm64: dts: exynos: add VPH_PWR regulator on TM2
      https://git.kernel.org/krzk/linux/c/d65703ba28f3afc3a530d1f70f437e226733d776
[5/6] arm64: dts: exynos: add interrupt-controller to WM5110 on TM2
      https://git.kernel.org/krzk/linux/c/73cdaf6c6bbec3e8b506b501863457c9d01b964d
[6/6] arm64: dts: exynos: correct wlf,micd-dbtime on TM2
      https://git.kernel.org/krzk/linux/c/662009c7f4aac7bb415e75e197ff6cd83863d5ab

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
