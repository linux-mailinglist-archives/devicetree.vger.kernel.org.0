Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E39044A5635
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 06:20:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233759AbiBAFUS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Feb 2022 00:20:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233728AbiBAFUR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Feb 2022 00:20:17 -0500
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61363C06173D
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 21:20:17 -0800 (PST)
Received: by mail-ot1-x333.google.com with SMTP id l12-20020a0568302b0c00b005a4856ff4ceso7027072otv.13
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 21:20:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dwjyMvW+0kKyI12xygdkluApMEBsatINGarBezESIvo=;
        b=hH+NpWJpvcqPSjRvSDCTjD7aivttMvEf5tx5MISgfnm0/gcesMx5HsLs5ibWod7ipM
         tqyqqzfrPhxWDdANgQIEeV1NqcGukVbwxwwVX8wf71XrKsqP9SWNThl4ouDL5GfBlPfg
         819+TwAJv17OqzaAEAweQOaOkxzEsMVDGc+txDYLKcWjvKYri05OE8ioTSJRFUYOH6NR
         W3g86teS21OGUwnOwJ6HHqLLJ2WnMEqMA07NGyNUXXp4izlEUG5TUvHsfWqvZuFR4vAq
         llKuyOO7n/lb7BUN6yohjQrr3KFE/+zz2fKSuKGvPXqhQUBRJwXSSHsHk8ziIfUClzJ3
         i66A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dwjyMvW+0kKyI12xygdkluApMEBsatINGarBezESIvo=;
        b=On09649U+QZNzSUvUDwp2CGjJcHbwTsg6yA2uJ8fi8iUwvMVX4SaFmBRmubCVLMCJs
         KRC8FD/N2az8FAjWF1dB4LOa4+cDeinxSAlwUuwz1zvqsF0KUC+noIxKg0eBDrgNLIpH
         cPsTsL/kGu+ntcHGF62moVhQqGfKCf0fO6A8dffhEUAmSrRyRj0PFjCcThmKu5i9jD4t
         RNiRLzVRMEXok3kvD6Bc/25OWZW4g16x75L7I4k6KJ46MGEdVXyTS7LEKwvid54C9Qav
         nNn2DnGSQEyG7PVKHoWdB8HJkWvJ4JyBYYBunnqqxW8qgyxaCcKZGu1d2vuTYXkYT6ZF
         Nmhw==
X-Gm-Message-State: AOAM531rWtKCqtdO7fFufz9QdrmHYsMPQmO8tZzVnyjpSvUsf0hMZi87
        vvI2poK9AmrOFsxsmbKw83POAQ==
X-Google-Smtp-Source: ABdhPJysygI85iRcPT3/nBWhvMLGjob9uGsSi6MX6s5jaI0X8Db+aRpyMVErwgGCb4EPDQxh/KBWoQ==
X-Received: by 2002:a9d:6303:: with SMTP id q3mr13685009otk.51.1643692816788;
        Mon, 31 Jan 2022 21:20:16 -0800 (PST)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id u3sm8193107ooh.19.2022.01.31.21.20.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jan 2022 21:20:16 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        David Heidelberg <david@ixit.cz>
Cc:     devicetree@vger.kernel.org, Caleb Connolly <caleb@connolly.tech>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH] arm64: dts: qcom: fix thermal zones naming
Date:   Mon, 31 Jan 2022 23:19:26 -0600
Message-Id: <164369277343.3095904.16437139240134516758.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211214132750.69782-1-david@ixit.cz>
References: <20211214132750.69782-1-david@ixit.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 14 Dec 2021 14:27:49 +0100, David Heidelberg wrote:
> Rename thermal zones according to dt-schema.
> Fixes multiple `make dtbs_check` warnings about name convetion.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: fix thermal zones naming
      commit: 7be1c395ee40e35493eb4b2ef2d643de1c626a98

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
