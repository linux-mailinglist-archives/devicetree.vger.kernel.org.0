Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 03B0B49735E
	for <lists+devicetree@lfdr.de>; Sun, 23 Jan 2022 18:09:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239098AbiAWRJ3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jan 2022 12:09:29 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:59106
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239094AbiAWRJ2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 23 Jan 2022 12:09:28 -0500
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 9D63C3F1CC
        for <devicetree@vger.kernel.org>; Sun, 23 Jan 2022 17:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642957767;
        bh=FaifMX+EZOHeqFOH0mC+iaZH1b4BUvHDBCCkl/PmcMY=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=RFOQGHlpJBuWCoAKwhWBSL1PC3sDVD7k6NGUqDjuWQi3pKP13F2r0WdqCrGNr12jd
         n/3uTeFgv/xIzzx7eSpWsLh7jCyAOW19lDztoZnrD6RJblQ0C8azkjBJDnV7IV2y7R
         y0ZjRQ8+8m9B+kwBUMX8uT5bQmjQOfnG0aCMPDIPqgH/cmD19CvSf2Qyki5sz2OXcS
         ibh/RoUosmdtnZ+DTtr4ncA2uQuRzBi8WjkN8RY73Lfn2bTdELDkwj9MUXlAqTVA0C
         sFWiPk2hcIZ0/5r7Ejidi3SNGi7uhFSZtS2iqBacm4gZqWMD0ZEaBMKXNrUS0CHPZP
         izmiomvLNDTnA==
Received: by mail-ed1-f72.google.com with SMTP id f21-20020a50d555000000b00407a8d03b5fso1604917edj.9
        for <devicetree@vger.kernel.org>; Sun, 23 Jan 2022 09:09:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FaifMX+EZOHeqFOH0mC+iaZH1b4BUvHDBCCkl/PmcMY=;
        b=juYtV6f+i+s6xokzT9GSV7HeOJbfhgj4exa1hI12qI9Sx1q0t9/My2lckzhbbGdYZ4
         Xad0rIuvWUrI0FDV6PRfzLM9LhH2RfhLXzGAQ9AZpRWrOwbuF0lZogRqKsBbyXY4c5+z
         VfMPwBLkqa++VazW4ick0vaVjBO8fFzi6j7TbF7FJzNwaqJMyRJfZa21PSCFtqVd5R/B
         XvOu89Eh0wZhdQ7LrMgm0bB+PTVH7VqkhDlCM4QQbDANPisit6z8r6LsfSwUsrr+8EdJ
         AMX+XroQWxfkW8C/k30lJdhk5sIO3VLIIetLcMQF/Fk18mU1C0WL3yn0DSSr8WUVLyCV
         aL3Q==
X-Gm-Message-State: AOAM532gv9VZ7Dh0GfpG1k/0PLgwdd3ScBnLpWcbmZKkV24Qrm4B10+m
        GMISt0yVHiZCQmH3Uw0x+1xSx45iuUKxO9P1INlkOkAULTpsmIGrSXXB/CHxkqJ/PeBvH8J67nL
        ZH2oJdv5ZpHA5CF9N1rYfgfb2c16OahimIR3Xa2c=
X-Received: by 2002:a05:6402:848:: with SMTP id b8mr12161415edz.79.1642957766855;
        Sun, 23 Jan 2022 09:09:26 -0800 (PST)
X-Google-Smtp-Source: ABdhPJysQjuJXR6vDAY3DSDqkbdhGZsDj4a5MgHVE/SEUY6pjq+/f9+HtYqzjvLNhWASo0Oc/p4w3A==
X-Received: by 2002:a05:6402:848:: with SMTP id b8mr12161402edz.79.1642957766717;
        Sun, 23 Jan 2022 09:09:26 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id lt23sm4051370ejb.173.2022.01.23.09.09.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jan 2022 09:09:26 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>, linux-gpio@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Cc:     Marek Szyprowski <m.szyprowski@samsung.com>,
        Chanho Park <chanho61.park@samsung.com>,
        Sam Protsenko <semen.protsenko@linaro.org>,
        Alim Akhtar <alim.akhtar@gmail.com>
Subject: Re: [PATCH v2 00/28] pinctrl: dt-bindings: samsung: convert to dtschema
Date:   Sun, 23 Jan 2022 18:09:24 +0100
Message-Id: <164293835975.31601.16562955007803362485.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220111201426.326777-1-krzysztof.kozlowski@canonical.com>
References: <20220111201426.326777-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 11 Jan 2022 21:13:58 +0100, Krzysztof Kozlowski wrote:
> Changes since v1
> ================
> 1. Patch #1: add missing pin assignment (Alim).
> 2. Patch #2: correct double sizeof() (Alim).
> 3. Patch #7, #8: put label-override in proper patch (Alim).
> 4. Patch #24: Extend doc, change the 'if' clause for wake-up interrupts.
> 5. New patches: #25 - #28.
>    Exynos850 and ExynosAutov9 seems to be different in pin ctrl interrupt
>    handling, so they need their own compatibles.
>    Please kindly review and provide feedback on these as I do not have
>    details.
> 6. Add review tags.
> 
> [...]

Applied, thanks!

To Samsung SoC tree (Exynos850 is skipped because it was not merged into
v5.17-rc1):

[03/28] ARM: dts: exynos: drop unused pinctrl defines in Exynos3250
        (no commit info)
[04/28] ARM: dts: exynos: simplify PMIC DVS pin configuration in Odroid XU
        (no commit info)
[05/28] ARM: dts: exynos: override pins by label in Peach Pit
        (no commit info)
[06/28] ARM: dts: exynos: simplify PMIC DVS pin configuration in Peach Pit
        (no commit info)
[07/28] ARM: dts: exynos: override pins by label in Peach Pi
        (no commit info)
[08/28] ARM: dts: exynos: simplify PMIC DVS pin configuration in Peach Pi
        (no commit info)
[09/28] ARM: dts: s3c64xx: drop unneeded pinctrl wake-up interrupt mapping
        (no commit info)
[10/28] ARM: dts: exynos: align pinctrl with dtschema in Exynos3250
        (no commit info)
[11/28] ARM: dts: exynos: align pinctrl with dtschema in Exynos4210
        (no commit info)
[12/28] ARM: dts: exynos: align pinctrl with dtschema in Exynos4412
        (no commit info)
[13/28] ARM: dts: exynos: align pinctrl with dtschema in Exynos5250
        (no commit info)
[14/28] ARM: dts: exynos: align pinctrl with dtschema in Exynos5260
        (no commit info)
[15/28] ARM: dts: exynos: align pinctrl with dtschema in Exynos5410
        (no commit info)
[16/28] ARM: dts: exynos: align pinctrl with dtschema in Exynos542x/5800
        (no commit info)
[17/28] arm64: dts: exynos: align pinctrl with dtschema in Exynos5433
        (no commit info)
[18/28] arm64: dts: exynos: align pinctrl with dtschema in Exynos7
        (no commit info)
[20/28] arm64: dts: exynos: align pinctrl with dtschema in ExynosAutov9
        (no commit info)
[21/28] ARM: dts: s3c24xx: align pinctrl with dtschema
        (no commit info)
[22/28] ARM: dts: s3c64xx: align pinctrl with dtschema
        (no commit info)
[23/28] ARM: dts: s5pv210: align pinctrl with dtschema
        (no commit info)
[28/28] arm64: dts: exynos: use dedicated wake-up pinctrl compatible in ExynosAutov9
        (no commit info)

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
