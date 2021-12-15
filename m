Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 043E74765B6
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 23:28:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231421AbhLOW14 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 17:27:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231359AbhLOW1w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 17:27:52 -0500
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AF3FC06173F
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 14:27:52 -0800 (PST)
Received: by mail-ot1-x332.google.com with SMTP id x19-20020a9d7053000000b0055c8b39420bso26726744otj.1
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 14:27:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=NwUvxEHLKrDSolFxTWG/WGpNg3gCnmJHq3/Wqr5qHB8=;
        b=Nz1p4rNYMSm2m+0tyBbmuTxodnsB6hf1MMRjozccr5LflM3ROlpaelQAcCBemFU9T1
         hLNL+3sNHjWtsX3GZcxNh2jCGiIWMImZvYnRfoNk7UOUcmuVB1xTNfoa3qGDUojA1kk0
         5FarN/LgVXQYqx0hJ5sluT58dgmxniK6aj2GghAzrw+7ksc0qlhfCJMeqGc9xW2Xub88
         7AzRzYFNJRM5ejJTzhUFG9RDxYBmVi4LSNc+uPEkuXHl2Ub9WNDfm+2CygpplgkCQkYE
         EihmltkMQeNkBoOc3tPt5Nuvqr8BT4MJKeaLdU3VkKTSiJ6lmpKwhegluyG0UOwXAaNn
         NorA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NwUvxEHLKrDSolFxTWG/WGpNg3gCnmJHq3/Wqr5qHB8=;
        b=fKIhmMKhuV+WFjeiEDv2d/pYHqHJRzy4xObyBhEqrESItKwrj3d4Ftpvbg5VF2Uzb9
         YG1zcZEmbdcfB5iXlALTAz+1/WWo6BCSob1IF0CP3e0TVUmdz+Pwpw72dAW7+z0VV0fs
         g30MjRU+pMHcj+LkugWNtfGYHad6XcffCE5wC3nB4T/8e9dq4ROeTYL0tXuhbLy/kjO3
         r8EA7vzPirdV/X4+Wt6PehAHajKTtUPZw6OLCMmRQzr0b57QU/Xr8sE5bB71i6n7Pj1d
         8yU6npRkiz49Cb/6UTgGYERTj6ydX3y2ya7z6FjV4pfmFEoCqZtMu2scCTjscqTKBZGv
         VIkQ==
X-Gm-Message-State: AOAM5334gqXsW+hU5DQDkuzXxZoUkf3XzGspj7eyyWYRcqDKDxTqU/mL
        HCL4DnFMD4sQ69D12mGaY631qg==
X-Google-Smtp-Source: ABdhPJxEPv32e4bV/5S1vxVQvv0lb10hgyL7Tv5s8IgTQceLaNKMaPbF757eEcMfl1AMJTa2lHcIEg==
X-Received: by 2002:a05:6830:195:: with SMTP id q21mr10316395ota.355.1639607271410;
        Wed, 15 Dec 2021 14:27:51 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id t14sm700500oth.81.2021.12.15.14.27.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Dec 2021 14:27:51 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Julian Ribbeck <julian.ribbeck@gmx.de>
Cc:     linux-arm-msm@vger.kernel.org, phone-devel@vger.kernel.org,
        Stephan Gerhold <stephan@gerhold.net>,
        devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        Andy Gross <agross@kernel.org>
Subject: Re: (subset) [PATCH] arm64: dts: qcom: Add device tree for Samsung J5 2015 (samsung-j5)
Date:   Wed, 15 Dec 2021 16:27:23 -0600
Message-Id: <163960723734.3062250.12078964213468371215.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211116200734.73920-1-julian.ribbeck@gmx.de>
References: <20211116200734.73920-1-julian.ribbeck@gmx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 16 Nov 2021 21:07:34 +0100, Julian Ribbeck wrote:
> Samsung J5 2015 is a MSM8916 based Smartphone. It is similar to some of the
> other MSM8916 devices, especially the Samsung ones.
> 
> With this patch initial support for the following is added:
>   - eMMC/SD card
>   - Buttons
>   - USB (although no suiting MUIC driver currently)
>   - UART (untested for lack of equipment)
>   - WiFi/Bluetooth (WCNSS)
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: qcom: Add device tree for Samsung J5 2015 (samsung-j5)
      commit: bd943653b10dc9df63ad6cb69f520c10f3f21372

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
