Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D5229430A28
	for <lists+devicetree@lfdr.de>; Sun, 17 Oct 2021 17:31:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344045AbhJQPdp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Oct 2021 11:33:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344031AbhJQPdi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 17 Oct 2021 11:33:38 -0400
Received: from mail-oo1-xc2c.google.com (mail-oo1-xc2c.google.com [IPv6:2607:f8b0:4864:20::c2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9D36C06176D
        for <devicetree@vger.kernel.org>; Sun, 17 Oct 2021 08:31:28 -0700 (PDT)
Received: by mail-oo1-xc2c.google.com with SMTP id a17-20020a4a6851000000b002b59bfbf669so548527oof.9
        for <devicetree@vger.kernel.org>; Sun, 17 Oct 2021 08:31:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0RwjU+xMTKwnJSdI/ZvJQg7RwuWcVuJ6qT981afubY4=;
        b=egX+4knf0mp/ETZTK2SirLB3Yfw0qsJSNehObIg6sfzDYPQbuoqNBGkHo/t8BvRkBH
         BNmd7KPPih+yWo1dXRep1zuymIv4wibMQj+So/7GxZo6WIa8zeOxAckauTcDxlPVoWeY
         xiMu5Q5xJqAmk9T8MQDkvadxZlMUep71BHIAt3RdPm6NYWW0CTQ3PwvvpGWZ30aZpziq
         LSCCpp30OTH9wdYXXxx1EfKkBh08ux2Kqc+5v7WJbCMfFawiUXJlOIkhAzSXrAHMw9kM
         UzoOv/qpPeK3706UZgD7KoaXUe8caBeqKNN9fcwwfJbluZkyNmlGn6AL1yEbGmx/QFuO
         YZAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0RwjU+xMTKwnJSdI/ZvJQg7RwuWcVuJ6qT981afubY4=;
        b=1GM5CaB/a+lKhEZOsXUtHdrWq4RhYi2dIYemELbQORQ+rDvtSvFowX8RNo2YltBjME
         YYCn+sEtaYmfDgBSX57oiiL4uWM0Et4qrAGXll55ozJkiaKgTcn932MvxkbmKQY5WIPp
         2d24jXatfAVBRVITRiCEZADVK8xw/+2otKFELMNJIn8nKYb89eWAk3aTkrpbmD7KvmVe
         OQv7uvsAaFOa2cgbvwndkTx4xHS2OOlEnLmmeXItFQdnE+nyjC/87zUnXv0a1PDEwZZF
         KwqaCyPOqt6j5EoTriCi6L18WZe51Gwjqqe/lDYUsxoWLOS0SMNIGFf3KUI0xghnT8Es
         7ZDg==
X-Gm-Message-State: AOAM531s3Es5TKMn82TgxmgAXnT1sio78MQucw/b668PxK/NVWkCupHZ
        jcR8jKJg4LAPFb1kXzKFUQY8nw==
X-Google-Smtp-Source: ABdhPJzHDaDBSR9eIppkqcxxm46japDYxXj9RAds0rnAM9bYXyGg9tFLS+fndIqSUyTv2Z3E+mxSGg==
X-Received: by 2002:a4a:e9f0:: with SMTP id w16mr17707836ooc.3.1634484688160;
        Sun, 17 Oct 2021 08:31:28 -0700 (PDT)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id x6sm2565698otp.49.2021.10.17.08.31.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Oct 2021 08:31:27 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Philip Chen <philipchen@chromium.org>,
        LKML <linux-kernel@vger.kernel.org>
Cc:     Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
        swboyd@chromium.org, dianders@chromium.org,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v3 1/2] arm64: dts: sc7180: Factor out ti-sn65dsi86 support
Date:   Sun, 17 Oct 2021 10:31:14 -0500
Message-Id: <163448466185.410927.18392226904278200617.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211008113839.v3.1.Ibada67e75d2982157e64164f1d11715d46cdc42c@changeid>
References: <20211008113839.v3.1.Ibada67e75d2982157e64164f1d11715d46cdc42c@changeid>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 8 Oct 2021 11:39:34 -0700, Philip Chen wrote:
> Factor out ti-sn65dsi86 edp bridge as a separate dts fragment.
> This helps us introduce the second source edp bridge later.
> 
> 

Applied, thanks!

[1/2] arm64: dts: sc7180: Factor out ti-sn65dsi86 support
      commit: 4537977a50e6257c6c19db925479298c19822667
[2/2] arm64: dts: sc7180: Support Parade ps8640 edp bridge
      commit: 0faf297c427372ad2a02dc28e6d1327825031882

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
