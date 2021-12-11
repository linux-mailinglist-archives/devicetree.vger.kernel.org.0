Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EDE864710EB
	for <lists+devicetree@lfdr.de>; Sat, 11 Dec 2021 03:22:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345837AbhLKC0d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Dec 2021 21:26:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345545AbhLKC0Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Dec 2021 21:26:24 -0500
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3A6CC061D60
        for <devicetree@vger.kernel.org>; Fri, 10 Dec 2021 18:22:42 -0800 (PST)
Received: by mail-ed1-x52f.google.com with SMTP id t5so34959305edd.0
        for <devicetree@vger.kernel.org>; Fri, 10 Dec 2021 18:22:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0vlB+HiEimZ6SFp79jIcvOvjtvYaAMP5gG+NgcNA//0=;
        b=E8WLMnqlqi3ACFoJKLNiHy64aVtWVahCGk3XSkM4+Gj1AKqY8yUQXP4NxFQ+EoGttv
         +VEfKy3BIz8rGTfT5X45U0pCuboIphd4ViM2KV7SpzI1xp/QtdMrTh53lTbYhuN0ezCQ
         EBqxpl6AsXz1VSHS/MTM5HrQ1utHW+agxgn5KeOdtFTjM9C5lRjurfVLFAY6fDvP6VoR
         8dZvFC6yPlB6dsWH0OwM8uO5g+pZULcKUXPkBlBbBRFtwaez6obdRnMspW1Mz6GiMott
         8zhhCmG7YQdq95VNWNkZb+5HMc44fhhwCh8IhDC9PIKUvQ96iw96zlqQfff9cihYqoKL
         ImIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0vlB+HiEimZ6SFp79jIcvOvjtvYaAMP5gG+NgcNA//0=;
        b=teyaOtMRtJe3e/cQ/iSFyKn0H3Ojr9cLMn6syTQpWeA0KON8zELixK8xSePjEhfxXg
         gUbfUjd0OzEZfHGRDzVBZLhhWOamTVCg/vOCBnnwl1HNaf670s4V7MVwsK4Tdr1Cqy4X
         TIfSyONqk+fXXfYpyGqA+nF3+eWej+CapsLxT4WVzs+16D5/JZfblvLV/gGeyh5te7xF
         WCd1po4i3m8cRzCZpByYukX0vJV+NDpmaHv1aNfrXD6lYQ29AwNM46saPnWmA7VSuUmL
         a3Gp50BMHFb+pehr7Cz55PWQhrnkbn+pDXmPGrbO5g3xJltVlMYitNrprfaMSW4VHRgD
         HAEw==
X-Gm-Message-State: AOAM5306Fvlon7jS0RZTvQk1VYiKJPJ/aBBwrgRgosTGjA2KqJhIqWHC
        m8h+E//q9C+eVVzU78tbf7KDcQ==
X-Google-Smtp-Source: ABdhPJyiAnrPpCTVsSwW8avW1hpdLBXljsuaiNw0xjlqwJ32+D65jaQsRiBBs8U/PfFh4oL0lTYONg==
X-Received: by 2002:a17:906:4fc8:: with SMTP id i8mr28474735ejw.427.1639189361412;
        Fri, 10 Dec 2021 18:22:41 -0800 (PST)
Received: from lion.localdomain (cpc78119-cwma10-2-0-cust590.7-3.cable.virginm.net. [81.96.50.79])
        by smtp.gmail.com with ESMTPSA id s2sm2449424ejn.96.2021.12.10.18.22.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Dec 2021 18:22:41 -0800 (PST)
From:   Caleb Connolly <caleb.connolly@linaro.org>
X-Google-Original-From: Caleb Connolly <caleb@connolly.tech>
To:     caleb.connolly@linaro.org, sumit.semwal@linaro.org,
        amit.pundir@linaro.org, john.stultz@linaro.org
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Lee Jones <lee.jones@linaro.org>, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH 7/7] arm64: dts: qcom: sdm845-xiaomi-beryllium: enable RRADC
Date:   Sat, 11 Dec 2021 02:22:24 +0000
Message-Id: <20211211022224.3488860-8-caleb@connolly.tech>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211211022224.3488860-1-caleb@connolly.tech>
References: <20211211022224.3488860-1-caleb@connolly.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Caleb Connolly <caleb.connolly@linaro.org>

Enable the PMI8998 RRADC.

Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium.dts b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium.dts
index 580d4cc1296f..481132b0cee4 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium.dts
@@ -312,6 +312,10 @@ resin {
 	};
 };
 
+&pmi8998_rradc {
+	status = "okay";
+};
+
 /* QUAT I2S Uses 1 I2S SD Line for audio on TAS2559/60 amplifiers */
 &q6afedai {
 	qi2s@22 {
-- 
2.34.1

