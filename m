Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 098FC4A563E
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 06:20:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233692AbiBAFUR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Feb 2022 00:20:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233691AbiBAFUP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Feb 2022 00:20:15 -0500
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FFBEC061714
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 21:20:15 -0800 (PST)
Received: by mail-ot1-x32f.google.com with SMTP id s6-20020a0568301e0600b0059ea5472c98so15126757otr.11
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 21:20:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VUT8EnTQdr6PpUOiGBZLySE2+8qjYtMI+1mYsnZg59A=;
        b=qMn+yIFOIvZHjbXnCEHkHDlCspMna5jLOomO9RvxHixV/3t4GLKmLid4kHldYedYKn
         8NadyVgtypuC0tnQCtHXbNzTcQWMZ4AROovCVfdGlvMyu6nPy3HqVNXNW2uuH7e2ommC
         qII9lRdrRfafkAfn5qHZ9XrvgKUPo9xT/BKyMxLLL9Dbs0OFuI8fosmcbAaSkVq0AINR
         pSjCayM7IiOCK2EOLKo6jC4/3xYwnLO+bMRGKmIISG59rs+esqzzoC+olPHctbjcFE1I
         //R3bNH1uZyt2mIsfxPelM6batmtpgfgaQvHJKK7D0NY1W9e0AyDcKl0z2fy1GonA7CM
         C8xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VUT8EnTQdr6PpUOiGBZLySE2+8qjYtMI+1mYsnZg59A=;
        b=23fUV7DHIcycNXG5wApJhL5jTJMg+f9jvpTxdKobxNVkjWZABSknKXUaD8hvgjqbOL
         OH6elcVZNTS1B2ExKIhlsLLOlEsQSN/3y5qgwJh3FHOp/fE2w63Xa+OYeewUtgVC3r/M
         BPEWM6LySSZSqlXuzIpxf6nkcDqa2wbzeMkgSXoKbKN1saWBtxrhnespD4E1z34BSqYV
         nj2xN9n1GiGv8o8vvcut2bshkiBMhOnbsEqEHEn0H73to/wsXLVIK5SshOqSMtQwR6ba
         DB93XMYodOAE5IWCEFUkVXSKYpmTphqwPbmEM01Gj+dV39fQrYttnr/2kZqOSJP6tWDu
         lnog==
X-Gm-Message-State: AOAM530oVbONuGawQ8+kXix845XjAYW5F6hF8uDK8nRD746uYwZDhgfL
        qhbP+6Xc9LdWDz2obuAzDqT3Iw==
X-Google-Smtp-Source: ABdhPJxivZV2/dCgLnons4uOO8bxgx7BvMhBEKAGAN6wID32jaKdoDf+kVMwrF7dcKP5oQ8uJRkOyQ==
X-Received: by 2002:a05:6830:20d2:: with SMTP id z18mr13686460otq.341.1643692814971;
        Mon, 31 Jan 2022 21:20:14 -0800 (PST)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id u3sm8193107ooh.19.2022.01.31.21.20.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jan 2022 21:20:14 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Caleb Connolly <caleb@connolly.tech>,
        Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: (subset) [PATCH] arm64: dts: qcom: sdm845-oneplus-*: add fuel gauge
Date:   Mon, 31 Jan 2022 23:19:24 -0600
Message-Id: <164369277345.3095904.4946224972628744125.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220120184546.499030-1-caleb@connolly.tech>
References: <20220120184546.499030-1-caleb@connolly.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 20 Jan 2022 18:46:28 +0000, Caleb Connolly wrote:
> The OnePlus 6 and 6T feature a BQ27411 fuel gauge for reading the
> battery stats. Enable it and add a simple battery to document the
> battery specs of each device.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: sdm845-oneplus-*: add fuel gauge
      commit: 12dfb002ca01feceac9eaa2cc8a55fdc9be4a9ae

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
