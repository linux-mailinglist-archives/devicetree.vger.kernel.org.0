Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 21D6F4765A8
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 23:27:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231355AbhLOW1w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 17:27:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231327AbhLOW1t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 17:27:49 -0500
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EA89C061747
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 14:27:49 -0800 (PST)
Received: by mail-ot1-x333.google.com with SMTP id u18-20020a9d7212000000b00560cb1dc10bso26660572otj.11
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 14:27:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mP4rTI9NTqYCWiViSH32aIzxvdlIHtwN/dtfXYTgoj4=;
        b=euTxYLTqkmho1w88ACMen6627umUu5i79iIqHslgAP2d72VgUC0dWviKED4NH8T3xb
         H2LdNk5m/gyb/K1vhaPdLoTOIsfB+qjtRWHRSE48S6eZz6Dqg70yedooZcdTr6hqk9Ot
         K1y+rGMAwy3R2QgbcCuCwQwbI0U8VF1s7uf91foGAgpPgQSabNxkLdl0qtcf3vQ5wX1e
         4fnmfY2wktapL0JtG1/i22hLgKGSWWyblakpngTzSytZNBBP0fn/3ogaKqX5+xd12Y07
         BHNHrweGvQAWfL9prNyAAdwHMfQxWzrqkM4YOUqxh8LiqG7FRV8CJjRPIdzdNLJ7zDlG
         Ohog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mP4rTI9NTqYCWiViSH32aIzxvdlIHtwN/dtfXYTgoj4=;
        b=IAr4tDJxdbqnEmoXI00NPOIZRXcVwSf57Faol+YhKhpVgLgvbiJkbmWJG3XwMkcbUk
         YIKbVbI2gC3M4ly99jDugt/pvb++UKpa5U7J9owiju6lm4I4mkC7yc+WJ/xikQfWEUE4
         Kc96w48h7cWZQ6Om7lUKCFjJAjOllg9DdsX+iH1zLtGxDnfDNBXbVFdO9zRQfVVGTgFu
         TYWXR07hSA0In12qrcq/0wxnTFPC1GJv3rbatMUAL/Jkbxv4S+icrS1CzQrsotkYHP2b
         Lu2iE9kD4hNW5xBeBD3OlYeUCKtLtNp5Jai1lhPRrUsZLeYeh3w1fz05g7n2Rqy9LoMS
         S/CQ==
X-Gm-Message-State: AOAM530Z6zMdPLEsNrj0vljZh/VDCiXPZ2iLuH3km4EDfaSMCbnHRWsc
        edKy6ILwP8QEydO++KKXXXVtlg==
X-Google-Smtp-Source: ABdhPJzIcYcLNxhz9uZgGDQNGnoFo2fprkTbKNann8Sr1VBAZ2ET/pnSTB4GDeguqGxiFx+bzTCBuA==
X-Received: by 2002:a05:6830:8:: with SMTP id c8mr10396769otp.115.1639607268855;
        Wed, 15 Dec 2021 14:27:48 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id t14sm700500oth.81.2021.12.15.14.27.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Dec 2021 14:27:48 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     amit.pundir@linaro.org, linux-arm-msm@vger.kernel.org,
        phone-devel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org, Andy Gross <agross@kernel.org>,
        Caleb Connolly <caleb.connolly@linaro.org>
Cc:     sumit.semwal@linaro.org, john.stultz@linaro.org
Subject: Re: (subset) [PATCH] dts: arm64: qcom: sdm845-oneplus-*: add msm-id and board-id
Date:   Wed, 15 Dec 2021 16:27:20 -0600
Message-Id: <163960723734.3062250.3810190437916285281.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211209225938.2427342-1-caleb.connolly@linaro.org>
References: <20211209225938.2427342-1-caleb.connolly@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 9 Dec 2021 22:59:38 +0000, Caleb Connolly wrote:
> The msm-id and board-id can be used to select the correct dtb when
> multiple are provided to the bootloader.
> 
> Multiple DTBs can be provided on sdm845 devices using boot image header
> v1 by appending them all to the kernel image before creating the boot
> image. The bootloader then selects them like this:
> 
> [...]

Applied, thanks!

[1/1] dts: arm64: qcom: sdm845-oneplus-*: add msm-id and board-id
      commit: 8e6de09c716f37dbdc8181e803455603c89c4bd2

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
