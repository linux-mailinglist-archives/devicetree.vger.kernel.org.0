Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 90E7E41B311
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 17:38:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241625AbhI1Pka (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Sep 2021 11:40:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241080AbhI1Pka (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Sep 2021 11:40:30 -0400
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD1A2C06161C
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 08:38:50 -0700 (PDT)
Received: by mail-oi1-x235.google.com with SMTP id t189so30466014oie.7
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 08:38:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UzVpZWKlJwRxSjuK78I3eEXEjM8AokgYI911F1Dgoog=;
        b=Lh7oxXzq7U5xVayIB8k4MdCaBlpkBo6oslCTe6LgtGxkoYhjvFQRQQo76tCzHSQqNo
         LcDnoDaBX4FYrTGolrUuokUEfpz5hMXbfKsFoY3qlS2o8Fr2LF1O8aBfdp++VwaYYk2j
         JocuHgDSRphkZO+zB0pdJKJ/hDSEkxqyEd0On57iHu1HcWJLu5zfSqZZLgK1nH2KldZJ
         2JEqnXg32m9KwN94R/VzGNb5/xoO7C5zCsV2VxYHK9zK1ljlxIcPRcZc9XDENGoWJ2oS
         OLP+EBd4igDboPbw7LKsZrLUOTF+5kbCqXmuE1IciV/c2pFPuUZDnZ0L2qRhgKBihrfJ
         3leg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UzVpZWKlJwRxSjuK78I3eEXEjM8AokgYI911F1Dgoog=;
        b=YCN3mM6Zk9mM5pnVmHsMxICST9APfpF2Zp4YE+IHLYLcc7EjhEnBRBRrIausxUG1D0
         iOnHLWZaO+6/kT6b02YNyZiV/v5bHJUIVUIc4IVIgHccF61LHwL2HmoLg+ffvbd1PlVX
         JznGka/j3fCQ6UrnzUwE3p1xyI+Bpz08maOL0CfjiGAkt9bQek9AY6el7jfxG6WDrCuw
         CGI8jU9z+YR7Z1tEmlp/Wki07v/boSoBEqo0B3k/PKPOoC0+cMS7RzrR1uluzQrOgh69
         7/tf/FQKhelp0AMJxvhgV8eDJeZVDPH58LedOmVd12hZ0F4A355B5GXwOiF1BSOzXEAv
         v7dw==
X-Gm-Message-State: AOAM531e5pjeEmzlsdOV7ZHkeGhD9ocu5PsW6E79n1OTqoLm3jEI7mzX
        U0mueRTN9RoGEKCB9BrMmjlHLg==
X-Google-Smtp-Source: ABdhPJzpKI/iHmrF8iGPdIrucU5CqhILBdh66wKx3f4vL1+mlc0e2eWHMpxxhJ22+nE5sf9nrUdarw==
X-Received: by 2002:aca:606:: with SMTP id 6mr4222738oig.82.1632843530129;
        Tue, 28 Sep 2021 08:38:50 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 18sm4753034otj.10.2021.09.28.08.38.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Sep 2021 08:38:49 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     phone-devel@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>
Cc:     Pavel Dubrova <pashadubrova@gmail.com>,
        Andy Gross <agross@kernel.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Jami Kettunen <jami.kettunen@somainline.org>,
        linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht,
        Rob Herring <robh+dt@kernel.org>,
        Martin Botka <martin.botka@somainline.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Subject: Re: (subset) [PATCH] arm64: dts: qcom: sm6125: Improve indentation of multiline properties
Date:   Tue, 28 Sep 2021 10:38:46 -0500
Message-Id: <163284350355.1592203.2999251996289733980.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210925141841.407257-1-marijn.suijten@somainline.org>
References: <20210925141841.407257-1-marijn.suijten@somainline.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 25 Sep 2021 16:18:41 +0200, Marijn Suijten wrote:
> Some multiline properties (spread out over multiple lines to keep length
> in check) were not indented properly, leading to misalignment with the
> items above.  The DT file is still small enough to address this early in
> the process.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: sm6125: Improve indentation of multiline properties
      commit: 4e31e85759a0622b25a63300019d04ff031c95e0

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
