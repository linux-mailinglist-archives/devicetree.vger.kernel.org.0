Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5A03549B9D4
	for <lists+devicetree@lfdr.de>; Tue, 25 Jan 2022 18:14:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239547AbiAYRNm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jan 2022 12:13:42 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:51160
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1356689AbiAYRLp (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 25 Jan 2022 12:11:45 -0500
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com [209.85.221.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 7F3453FE09
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 17:11:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643130702;
        bh=A8H8dxFjft/me9aEVAf7almjxfAoMnYXlO242MCpw7g=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=pjW8tyDAIr/lb70Hq2nxgm7GXRXA4rBIG3x0FWRdEqKmhez/Wn4cGbBauEP2gO1Tj
         lWZsoDKIXINb5pv1mFbOPRbWy5qG0up0uC7qF92iXY+s2xAPK3S25HjU0V8kgqxYiS
         +6LYhnhw3TBASmG7FUmu5j4bc5K0iqQX5KufmGVDRIniCxjc54HeIOG4KMfwhcMRMR
         IPtcBGMag4QfqK5YmnmtEF4Trfy+5nV7mcFhUFawxU07pUWRpGnYWadqVlIXNdl0hs
         fMjNc+pfRDxdy0d0o5twqXTT7z1ytijEKZ/63FXnGV2qbl9Cee5Bnd1S1bbRkoK2qK
         eGFS304/E2YOA==
Received: by mail-wr1-f71.google.com with SMTP id b3-20020a5d4b83000000b001d676462248so3360532wrt.17
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 09:11:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=A8H8dxFjft/me9aEVAf7almjxfAoMnYXlO242MCpw7g=;
        b=CvHnY8jX53sgEFPa7TMlxB/eI/dMaSaaD0sgmmHXgiML+NzDh6ATlSWwG7dQq1Tssk
         OnjaQk39KEX1Ob/lNacrXTPuBXfsNVHYWXo2j2V+gFBmaF9nkht99YdN6RNqr0QJAD8+
         q6Kr722K6dvqyWVYxzOQ/vpFFBMv5/SHZzlvxAiHqHaR6bRbrXtCL8V5xbEzstewQRCM
         BEY3xwf7+o4nRWo6Q8BmJRPvB+wYSQJDpQo64MfTZFKpokBsIAOZBPLkGo9yjLSpRLdt
         75qn3Fa/t7LfYSUTGiMBzhr56bAAfDzDrN/wrc5CzCDactqRGIrz+ieL2gYSB4jwbSL1
         KTfw==
X-Gm-Message-State: AOAM530y9NIQpNKGcjVOplYTsvT2m7dIfe4X1L8FdJd+BuCeOXLRkvrx
        cLdxEqhlHjbEghDTCk0w2zDZmAu1BPCDGy/yW9//Pl/XGggILiRJ4oiTIzeHJjvqGLZled5YWny
        OlwUQPYGlBvW7bvERSIVRli51m/gPMDSTF9lN+58=
X-Received: by 2002:a7b:c0cb:: with SMTP id s11mr1830431wmh.127.1643130702261;
        Tue, 25 Jan 2022 09:11:42 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzZRJJtk6Eg4pUW404OW2S98mBrHu5GF+pAy4IkydvzhbzWujRUD5vT98QX9iYAdGBg/AxRvA==
X-Received: by 2002:a7b:c0cb:: with SMTP id s11mr1830401wmh.127.1643130702108;
        Tue, 25 Jan 2022 09:11:42 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id h127sm4477087wmh.2.2022.01.25.09.11.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jan 2022 09:11:41 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Alim Akhtar <alim.akhtar@samsung.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        catalin.marinas@arm.com, soc@kernel.org, linux-clk@vger.kernel.org,
        arnd@arndb.de, robh+dt@kernel.org,
        Ajay Kumar <ajaykumar.rs@samsung.com>, linux-fsd@tesla.com,
        olof@lixom.net, pankaj.dubey@samsung.com,
        devicetree@vger.kernel.org, linus.walleij@linaro.org,
        sboyd@kernel.org, s.nawrocki@samsung.com,
        linux-samsung-soc@vger.kernel.org
Subject: Re: (subset) [PATCH v5 12/16] pinctrl: samsung: add FSD SoC specific data
Date:   Tue, 25 Jan 2022 18:11:04 +0100
Message-Id: <164313066043.81586.3206885780884369059.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220124141644.71052-13-alim.akhtar@samsung.com>
References: <20220124141644.71052-1-alim.akhtar@samsung.com> <CGME20220124142946epcas5p11997a3c37546d37cac91f690a2a602bf@epcas5p1.samsung.com> <20220124141644.71052-13-alim.akhtar@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 24 Jan 2022 19:46:40 +0530, Alim Akhtar wrote:
> Adds Tesla FSD SoC specific data to enable pinctrl.
> FSD SoC has similar pinctrl controller as found in the most
> Samsung/Exynos SoCs.
> 
> 

Applied, thanks!

[12/16] pinctrl: samsung: add FSD SoC specific data
        commit: 0d1b662c374c54bcf68bbcff3b71e6d6e945a7cf

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
