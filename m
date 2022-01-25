Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC3D849B9B9
	for <lists+devicetree@lfdr.de>; Tue, 25 Jan 2022 18:09:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230506AbiAYRIy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jan 2022 12:08:54 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:50926
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S241209AbiAYRFe (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 25 Jan 2022 12:05:34 -0500
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com [209.85.128.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 05D423FFFC
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 17:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643130333;
        bh=dSvKZ8AHHeBFaUwfnKaz2QA3fzKNbqhnfNH57EfO12U=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=MwYdOuONNW4nMn+1AE8gHvl+1AU754cQTCTT12Rn06p30bZaSXGvdfsV8dQ0eAlEW
         6k13iH+KbFRMyfZQRhwfzx7XaRf5lz2FJLISHY7ge6Jr7ni54tXAlFqS3TowZTKHqi
         Wueh9x3tiE/0X5DyaSRx5zpJYehN//uWo6cw2v780Qkk8/xTnx91IPbjKUO4Is+w/+
         FN+i6EFKnloevDLsY5buccA7MKoYQX6fyjAVCuyY3qjdz1a0NqlP1d025YF2k//G9b
         4SxyM96EzbPO0tcVQr9S9Muc8FS45ETFnKfORiDfXdiFhuTMrWh4m2tOac/8IqmKEZ
         GO9i6xbOc0a5g==
Received: by mail-wm1-f72.google.com with SMTP id o3-20020a1ca503000000b0035056b042deso1798031wme.0
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 09:05:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dSvKZ8AHHeBFaUwfnKaz2QA3fzKNbqhnfNH57EfO12U=;
        b=MN1r6pEvB8+PNLpO/zs2JYD2tM0pYE7VolinW3fq4pbYNlqkQf4y+f1WQ137KUBpVS
         /ZUQGRgOA7zTCNMQkoqdfwvGiPKcP6ytWqqI4EXyUCTliMzeCI414OZ0kDqlYFaunHEw
         490RtXpYv4hQZAg1In4apv5Bb+w3TLNhFdTEPeb2n+5oApenb1v4ogJz5LwexSPEZjh4
         hZDoxT1p1viDElvzGC8Q5Ye0vB3p+XJPColSqPfpXceZbG6HG8RRXxeKgm7G+Odz/YOG
         kMgSxsax0suF28cMpfXtzGOYMIVI7yyYsnKf9fNnJtrWSqOkSeYTwm0YK/G/ImMMc3Io
         Asbw==
X-Gm-Message-State: AOAM530G4VJZQ9q4YdUr/ValfN2NAfAOn5WhBOJcrdhLCrbBzPQSFo5N
        GswfQo4MNwpQA42xeVAx8WXvRyB5DPNmLamh6BnZO1A/M+47g4iO/AbqDibAhmHwfsfX9a/4Acf
        Vi8VCC4B/MH2utMWRmgoNvoZb/GAthC3VQ3hA5as=
X-Received: by 2002:a1c:c915:: with SMTP id f21mr3793710wmb.39.1643130332351;
        Tue, 25 Jan 2022 09:05:32 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy7hsKMSTS+c3tg8hbEizs0VHVpl83/TDWW7Ey8qOCr5k/EuXQApytnig+iht+MKtj+BSx35g==
X-Received: by 2002:a1c:c915:: with SMTP id f21mr3793698wmb.39.1643130332208;
        Tue, 25 Jan 2022 09:05:32 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id o15sm1082377wms.9.2022.01.25.09.05.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jan 2022 09:05:31 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     "Rafael J. Wysocki" <rafael@kernel.org>,
        linux-kernel@vger.kernel.org, Amit Kucheria <amitk@kernel.org>,
        linux-pm@vger.kernel.org, Zhang Rui <rui.zhang@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-samsung-soc@vger.kernel.org
Subject: Re: (subset) [PATCH 1/3] ARM: dts: exynos: drop old thermal properties from Exynos4210
Date:   Tue, 25 Jan 2022 18:04:54 +0100
Message-Id: <164313029072.79782.14492454091056440886.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220122132554.65192-1-krzysztof.kozlowski@canonical.com>
References: <20220122132554.65192-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 22 Jan 2022 14:25:52 +0100, Krzysztof Kozlowski wrote:
> The samsung,tmu_gain and samsung,tmu_reference_voltage properties of
> Exynos Thermal Management Unit driver are not used since April 2018.
> They were removed with commit fccfe0993b5d ("thermal: exynos: remove
> parsing of samsung,tmu_gain property") and commit 61020d189dbc
> ("thermal: exynos: remove parsing of samsung, tmu_reference_voltage
> property"), so drop them also from Exynos4210 DTS.
> 
> [...]

Applied, thanks!

[1/3] ARM: dts: exynos: drop old thermal properties from Exynos4210
      commit: e20bd06fc421fba4099be51d3f56b9b1741b499b

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
