Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3EC184A4E0D
	for <lists+devicetree@lfdr.de>; Mon, 31 Jan 2022 19:24:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350390AbiAaSYk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jan 2022 13:24:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350234AbiAaSYf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jan 2022 13:24:35 -0500
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BD77C061753
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 10:24:35 -0800 (PST)
Received: by mail-ot1-x333.google.com with SMTP id d18-20020a9d51d2000000b005a09728a8c2so13826717oth.3
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 10:24:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wrNvkMHk789Sum/6rlz8EO4zN91DpwhHIu5wA5WUWs4=;
        b=wG/EJgkTI/K9tfMYOk1xoML8FHr572d091BctXSiNmGDt8ojl2j4dv1MogcOsJkwag
         dKb2MQW4W5nGp1x0CUB62gmTBdFGY1NqP75amdaOCx1aFjuQJBypk9z0798JYLeLEIpi
         Yt0CGdnkigK42DBhK5Sq7joVGAlA4RRJVVJukzDoLbhupbEMbc6QdokGtuPoKLy0FCDb
         9qmvFU4m3o7oWU6AgEhRbIQZ8CJTUFq93xg6Z9wUAH8I9hW2plF3MiZ3LzUQCcOle+DO
         MDRaYSN9kfLZSb5NobdroZcTfIfERuwOeFtyN0e1KOvvSHD8etPK8hB2f3MyLXH1KTm/
         yoOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wrNvkMHk789Sum/6rlz8EO4zN91DpwhHIu5wA5WUWs4=;
        b=fWBaH/h2Gt3tJXYyLWC1sfKqFbTA3Vc7uzUCirIZn4R0a1uc2rZTumjDOXY4jWW209
         p9nUH20uKwxZ96T8WHSzOj4L/902N7sUUmdeVtu/3kQ28hyRleBUijzFEuc3FVRMsyPu
         ogrLOYfmWYpvmFvRQy9FuluXOK4xLA24dqBjrONu/Zh5rmz63S/uqRGxFgBE7YQngMjV
         KnSt5NekLEsL2oUXwgx3EPqgQQRh5ARC/DPEw28P36gxmQ9W7Lnn8z/UX06QHCGQrf8D
         nL8X0e7IqM2u8GiLgRTXzYgWVfEh+IkG51feVQoE+2p88H7Qfj9v432pRnAy3c+6xwZ3
         ByBg==
X-Gm-Message-State: AOAM532HAMZF8kVXgDg5Wz7n9Wk7Got5O437110rsw2cGgs4uvpByW1h
        WTuEKpv//JhZkObYUFWBB12bZQ==
X-Google-Smtp-Source: ABdhPJzpBVGywdRbIFDes2yX9FEWbFNFl4TfxM+tKlK7iDXTRsYZQEUulwINsCzMHO5Wb4D9LV/vCg==
X-Received: by 2002:a9d:17cc:: with SMTP id j70mr12111623otj.370.1643653474752;
        Mon, 31 Jan 2022 10:24:34 -0800 (PST)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id y19sm3273722oti.49.2022.01.31.10.24.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jan 2022 10:24:34 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Sandeep Maheswaram <quic_c_sanm@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Doug Anderson <dianders@chromium.org>
Cc:     devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, quic_ppratap@quicinc.com,
        quic_pkondeti@quicinc.com, linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v2] arm64: qcom: sc7280: Move USB2 controller nodes from common dtsi to SKU1
Date:   Mon, 31 Jan 2022 12:24:23 -0600
Message-Id: <164365345128.3009281.11046372803192749468.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <1638422248-24221-1-git-send-email-quic_c_sanm@quicinc.com>
References: <1638422248-24221-1-git-send-email-quic_c_sanm@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 2 Dec 2021 10:47:28 +0530, Sandeep Maheswaram wrote:
> Move USB2 controller and phy nodes from common dtsi file as it is
> required only for SKU1 board and change the mode to host mode as
> it will be used in host mode for SKU1.
> 
> 

Applied, thanks!

[1/1] arm64: qcom: sc7280: Move USB2 controller nodes from common dtsi to SKU1
      commit: 1b968998a3cbd346e7b01a5b41f4c88b979ae7d5

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
