Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8DE7841A0A4
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 22:54:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237081AbhI0Uzn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 16:55:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237053AbhI0Uzm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Sep 2021 16:55:42 -0400
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com [IPv6:2607:f8b0:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D867BC061604
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 13:54:03 -0700 (PDT)
Received: by mail-ot1-x334.google.com with SMTP id d12-20020a05683025cc00b0054d8486c6b8so4160600otu.0
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 13:54:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=POIiA2MImMXfRFMeiQTdJT6uwva0J5aruJHkxIRDmsE=;
        b=EsLsUNu2C2Kps1gGbGXf15KGR1qB5j+7X7dgYwSyftvM2rP8Wzv3wtQkeaBmr1mu5D
         SIsUllsWbhbKiv5K53FYBcairmD61Eqq+PrMzzVOk6aRSRbWLR6zmzPigPfEhevO8yjR
         6WeDP8DQhQWE9cYIAz6gc9airqeq+vdXK+LsCU0/BpdVehHwswRzemZIyc7Chm6zx5ie
         vBaHpStoXeAvsD7roy1aXaq2Wr9fcphEOGC8z+YNjG7JXqJROIC4HM1u1Y3Nyf8xywkh
         8brf3yOt2wLWimDnMyHyzIGVhIGb9uy8YNAWQPAXK4HQk97xxU8VWhddHxmzuxipJNy0
         Oj8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=POIiA2MImMXfRFMeiQTdJT6uwva0J5aruJHkxIRDmsE=;
        b=Ecsy/hkyC5DFtrt0Cjz+7lgvd1vX6GiE6sN4oSV02sSjUF4/Ql9uRwS9KIphn7nwrU
         ht+g7c5fmyWislxlBY21xfEmbQnQNA5vlP6YdrANaL8IGz+vTCgFN3HeZyyM3DDJCfih
         uchauXKJL54Hk4VyW+Sn3HLG3BfZ5udrHE/OWZox30CfvUsApHTUzW26jMOVNxubGDJB
         GUmUjXJ/rKuvedgnxBz+NAZ9ouw6FCEPa51gs1Vu12Y/jDhFDijz2qQSUNRstrKhpHEQ
         aW9eNDYQYVlio3MbOHYxaH5bq4rC8he1fj079YQ2XOqmoxsUWPBDdztDetXry4Es9gXp
         31sA==
X-Gm-Message-State: AOAM530Eb2DjKQwEyjkg8YIRUYEawld6ELvDwzvQo1p9bGCW6gAFIWL8
        8f96aGKC/vC0iPbkOFXNiD+2Et4sg8Lgww==
X-Google-Smtp-Source: ABdhPJxA+HbAXtLen4mv68sabIYEBe1pw5B0qeFa8InDcK7Yub7886fmxPx7NhAUpT9T+EE89L/c2w==
X-Received: by 2002:a9d:7dca:: with SMTP id k10mr1842805otn.54.1632776043201;
        Mon, 27 Sep 2021 13:54:03 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id z10sm4187275otq.64.2021.09.27.13.54.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Sep 2021 13:54:02 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     mka@chromium.org, robh+dt@kernel.org, swboyd@chromium.org,
        Sibi Sankar <sibis@codeaurora.org>
Cc:     ohad@wizery.com, sidgup@codeaurora.org,
        linux-remoteproc@vger.kernel.org, rishabhb@codeaurora.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        rjw@rjwysocki.net, mathieu.poirier@linaro.org,
        dianders@chromium.org, devicetree@vger.kernel.org,
        ulf.hansson@linaro.org, agross@kernel.org
Subject: Re: (subset) [PATCH v7 06/13] arm64: dts: qcom: sc7280: Use QMP property to control load state
Date:   Mon, 27 Sep 2021 15:53:53 -0500
Message-Id: <163277593825.1470888.7973258155806834191.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <1631800770-371-7-git-send-email-sibis@codeaurora.org>
References: <1631800770-371-1-git-send-email-sibis@codeaurora.org> <1631800770-371-7-git-send-email-sibis@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 16 Sep 2021 19:29:23 +0530, Sibi Sankar wrote:
> Use the Qualcomm Mailbox Protocol (QMP) property to control the load
> state resources on SC7280 SoCs and drop deprecated power-domains exposed
> by AOSS QMP node.
> 
> 

Applied, thanks!

[06/13] arm64: dts: qcom: sc7280: Use QMP property to control load state
        commit: 6b3207dfebdf10474f1df143892c9d78644be643

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
