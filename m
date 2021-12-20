Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B668647A737
	for <lists+devicetree@lfdr.de>; Mon, 20 Dec 2021 10:37:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229758AbhLTJh1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Dec 2021 04:37:27 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:55422
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229728AbhLTJh0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 20 Dec 2021 04:37:26 -0500
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com [209.85.167.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 49186406EC
        for <devicetree@vger.kernel.org>; Mon, 20 Dec 2021 09:37:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1639993045;
        bh=g6qji2pb2cXYir7bn0MZqaQvSo0VOIHA4X4Dl0hqX8Y=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=GJBGnRJxrxfwNXqruE5A7WLXQNugeC4obxwCMGSR6+oR7dy5Fgoqo3/LFk76pofHm
         SSoInQGKvQxwE22zOqOa6UYpEjLstwpNbSmROIGtXdl+qo3zPAtF1e0/1yZ3Whp5G0
         r78hyd+4LDAOuOeUktuL9qFJFp3j3Wv/5bmkTCPMyB9ZWUzhfHd0FTZ5I5xYz3HJos
         HJ9KnGb1Mv+ulHLKK3hYHmm+gDYgl79Mkx4C1e6P8T6wKvFyJc6P0/D/jky83TO4Yv
         BoO2CBjoqatCuBqEzupXGhOcHcIjorsSdlLAaRNYIglYddtnZ5TUQXD5evlyeZB7iF
         Q0RVedezuSnpQ==
Received: by mail-lf1-f72.google.com with SMTP id m1-20020ac24281000000b004162863a2fcso4236809lfh.14
        for <devicetree@vger.kernel.org>; Mon, 20 Dec 2021 01:37:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=g6qji2pb2cXYir7bn0MZqaQvSo0VOIHA4X4Dl0hqX8Y=;
        b=gjnnSOW/ehMLG8uRdQxvqgD2DKmoWA7neokWz0sMKmeNLp3C1KReHHChm4zpAAxLZb
         ArK+lltfORi78u/LTCUVyeivEbh6GfUb8gTMfyKxTKXeRJWLxNii5tUST3aG/JOPHZod
         MxgORt+JhMexW/xyWIUcZwKFSysWiHN+gMUU5V89GCEzbcmtevSNMG1wc/59moONLR1t
         +ylb8iPIfX0Y0iF50YqSASHlubt9AUNFsNGFhc+/vLs7ADNovesRaxTK/KeXOVMxTQMT
         xa4dC7fG9JV4jDTqUw+81uv32jGozd8rk7ZrS4MADcMlpIdC48QRhQW6BZk1evTmVJ+K
         UFAg==
X-Gm-Message-State: AOAM533qNsf7YXXnuvKHgda8tgT+xBXHPrp4FBuMZPJWl4vE0gqvAJx3
        vOmw2m6ozY4xL5XYRA1xumNdfwNPTx65BdV9t/J3TneEMEe7QGAaK9PjBmUnWLRqm16iVDBSnrV
        cVP8RnBzMe21fnqwGt/l6zxTzQwPM/7piniKCV2k=
X-Received: by 2002:a05:651c:1031:: with SMTP id w17mr13802008ljm.112.1639993044795;
        Mon, 20 Dec 2021 01:37:24 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxcb4zCkuksbBh2a+v2wndWfr4lS0Fi1HqUBer1cJ9x95qXKkE6G8NaCPHqp0YjKf8Gv1eP+w==
X-Received: by 2002:a05:651c:1031:: with SMTP id w17mr13801996ljm.112.1639993044655;
        Mon, 20 Dec 2021 01:37:24 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id h15sm93443lfu.103.2021.12.20.01.37.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Dec 2021 01:37:24 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Sam Protsenko <semen.protsenko@linaro.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-clk@vger.kernel.org, Chanho Park <chanho61.park@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
        David Virag <virag.david003@gmail.com>,
        linux-kernel@vger.kernel.org,
        Jaewon Kim <jaewon02.kim@samsung.com>,
        Daniel Palmer <daniel@0x0f.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, Hao Fang <fanghao11@huawei.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Youngmin Nam <youngmin.nam@samsung.com>
Subject: Re: (subset) [PATCH v4 4/7] dt-bindings: arm: samsung: Document E850-96 board binding
Date:   Mon, 20 Dec 2021 10:37:19 +0100
Message-Id: <163999303689.14127.12844004374381607436.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211217161549.24836-5-semen.protsenko@linaro.org>
References: <20211217161549.24836-1-semen.protsenko@linaro.org> <20211217161549.24836-5-semen.protsenko@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 17 Dec 2021 18:15:46 +0200, Sam Protsenko wrote:
> Add binding for the WinLink E850-96 board, which is based on Samsung
> Exynos850 SoC.
> 
> 

Applied, thanks!

[4/7] dt-bindings: arm: samsung: Document E850-96 board binding
      commit: e1ba2f940ba4c4c3b4d0a520301a920591c421f9

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
