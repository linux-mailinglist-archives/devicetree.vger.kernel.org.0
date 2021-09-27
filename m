Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2BA5941A0B9
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 22:54:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237250AbhI0U4B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 16:56:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237153AbhI0Uzs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Sep 2021 16:55:48 -0400
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12C3BC06177F
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 13:54:07 -0700 (PDT)
Received: by mail-ot1-x32a.google.com with SMTP id 5-20020a9d0685000000b0054706d7b8e5so26205848otx.3
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 13:54:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CLIOcl1IgIP70HIyjnGDKwVdgfyDscgyVef7MoZJEAg=;
        b=PTNwR8PVNSrv7YQZx3p7yHkC/5e92tKupOR7mFOStUqya2ZogXxRRxbPKUGTj/6v4q
         XwQMk9x4PF9OhbU9figWuxy1cpj3/Qvq340fn0+x9BOatmYraEEEXbTC4cDwZrBhAa1f
         eOGE0AcsRZ+t+bhU18ayNbQCa7+u12l2A6J1oXI6EWN0/8CVjuneG1uF4VadsG+shzGf
         tC/9gFiw9Et1G9VglaIeJ355u8rlrJ86i7/mGKkixnDA4GuJOCO0sdrYvoLwRL4fJAXV
         fGuhqewzBHKN1MoyMkCLJv2T4GsDsA/H8R6Q1jCnrdFifH5oxZYiPNmAm6i/9eFdlx3c
         5FWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CLIOcl1IgIP70HIyjnGDKwVdgfyDscgyVef7MoZJEAg=;
        b=v1u0tL5WQwTm4qQQW85tWiOK5HQiZvB4UZ6RJKILcX8P6ac1nxskuWvAvUyZ4VYtiJ
         +PEsE0fn2vGOWPMjOa/l0sBtYnxWiHjo8Q4lxifOxur38qqnELsU/EBPct33LSyrUTV/
         YL5CI3I72TuI6MKP495tZabezmWmCtQzbwaO0OC8lpZsEhxac9t0J9NmJxvssLea6+tv
         c9lbJVHEcxNXn8QdlmEU99t4vG6xNk6k/aBfcQQ/Zq/N2LtBfqRQEoIG2IEyu/4o+xtz
         8qCu5ts0YPWUy2V2/Bdn8z52lI5AadxN9dJOw6L0MCKMLkkpRG72iErwaDaYcn5NEGZ6
         mmzg==
X-Gm-Message-State: AOAM5314HyObGnZqT1doBu+qqZYSJLgq5YSasYRmGkb9EKEOTe1d0gUf
        XCvF9ak2Cu815t98vO6hCqENiA==
X-Google-Smtp-Source: ABdhPJygKHIx5BBvE+/1JC6pSLOGif6kUTB0UJuQRpTi5uGkZgguAklmSqlKx2/99dTdeECkIQqqEg==
X-Received: by 2002:a05:6830:17da:: with SMTP id p26mr1860425ota.116.1632776046449;
        Mon, 27 Sep 2021 13:54:06 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id l2sm455543otl.61.2021.09.27.13.54.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Sep 2021 13:54:06 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     swboyd@chromium.org, Sibi Sankar <sibis@codeaurora.org>,
        robh+dt@kernel.org, mka@chromium.org
Cc:     rjw@rjwysocki.net, ulf.hansson@linaro.org,
        mathieu.poirier@linaro.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, ohad@wizery.com,
        rishabhb@codeaurora.org, sidgup@codeaurora.org,
        devicetree@vger.kernel.org, dianders@chromium.org,
        linux-remoteproc@vger.kernel.org, agross@kernel.org
Subject: Re: (subset) [PATCH v7 03/13] dt-bindings: remoteproc: qcom: Add QMP property
Date:   Mon, 27 Sep 2021 15:54:03 -0500
Message-Id: <163277598156.1471158.7182621010710936455.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <1631800770-371-4-git-send-email-sibis@codeaurora.org>
References: <1631800770-371-1-git-send-email-sibis@codeaurora.org> <1631800770-371-4-git-send-email-sibis@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 16 Sep 2021 19:29:20 +0530, Sibi Sankar wrote:
> Add Qualcomm Mailbox Protocol (QMP) property to replace the power domain
> exposed by the AOSS QMP node.
> 
> 

Applied, thanks!

[03/13] dt-bindings: remoteproc: qcom: Add QMP property
        commit: 8443ef7b5771830bc86c9e2c1622b55ddf33f0f5

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
