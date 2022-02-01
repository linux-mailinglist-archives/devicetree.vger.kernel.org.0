Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9CC654A566F
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 06:21:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234381AbiBAFVH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Feb 2022 00:21:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234128AbiBAFUl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Feb 2022 00:20:41 -0500
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A94FC06174E
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 21:20:40 -0800 (PST)
Received: by mail-ot1-x330.google.com with SMTP id w27-20020a9d5a9b000000b005a17d68ae89so15150281oth.12
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 21:20:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tJfR7uYWrWNTN271gKyG8+fFB4fvjE1IFu7WrHFi2Os=;
        b=Eu5gKoXb01U8L01oBo8kDk0ntF6tDYjLNRPSKDIbz+H3/2HbhkKlJXN/76mSasA59x
         ufHiX9eKKquaysLOlSmr1qj65cmV/HnkOPvLarBvWiLoO/M8yYR57VNplRg7XfTq7wiL
         3LCTUjhhzTU50AmikL3FEqIJr+eqTlXQXAAXqq/RF5Fx6EhVjVroC6JK47xycqP16HL+
         T1p76O0DJ7FNzXtdDXpxn9UukinV7880qbFdA/ouTwOe1cIQ2cKB9vCHivj2e9dz6a9+
         lf2Vc2sed/hTunO/FdXJVJA4iraIdHTY6VpUQRy3a0fnpW0Nph3CRXuGsHcdjwLkdQOt
         r1NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tJfR7uYWrWNTN271gKyG8+fFB4fvjE1IFu7WrHFi2Os=;
        b=kAFhaycrzlsoLYth4BFVRtW0FjCt018vZSQ77EUfynt6s352+dOmkarBUX4M8UQsby
         DRh+UAkxF5AkBsITehdUVZ/lnD/tKi4iXpAhg/3ptef4C0jXmM24QOJTYbn11vnao75a
         0rlzk67umeXau9VFOQ+SvPutGJMyCFKDgPIxW3nLg+LbDSJhHHepttB/xKGu8v6SQObc
         hYvz35kkQg7sItG7vHLk7/OCV4qjdVdGxO49R37dqBOlv3urXGCaWK0Ru0Z9ab8xlKK4
         iMYqtIZ2HfM7KTm7HoL6U4QFR08UgB1OR5XbkFQUf5FgIe4Qrmcqca6tSdgqg6yInYPH
         8kCg==
X-Gm-Message-State: AOAM530vrc8/zwgqbff73Sus51+GFCgjaK5uvObWAvf4paFxinaFyG7a
        WNNHjiZeYg6b2Y0BY/Vyoz1xMA==
X-Google-Smtp-Source: ABdhPJyhMewoOZ3ZNMsRqWqzAIUXA971YfAslyDlAiGLXuAQ3kwtYEnsAM18OxmtCuTxu6zo8lS5TQ==
X-Received: by 2002:a9d:469:: with SMTP id 96mr13814243otc.342.1643692839432;
        Mon, 31 Jan 2022 21:20:39 -0800 (PST)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id u3sm8193107ooh.19.2022.01.31.21.20.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jan 2022 21:20:39 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Dominik Kobinski <dominikkobinski314@gmail.com>
Cc:     devicetree@vger.kernel.org, agross@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org, Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Subject: Re: (subset) [PATCH v2,5/5] arm: dts: qcom: pm8226: Support SPMI regulators on PMIC sid 1
Date:   Mon, 31 Jan 2022 23:19:48 -0600
Message-Id: <164369277342.3095904.11781434686393945252.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211125220244.62586-1-dominikkobinski314@gmail.com>
References: <20211125213451.62010-1-dominikkobinski314@gmail.com> <20211125220244.62586-1-dominikkobinski314@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 25 Nov 2021 23:02:44 +0100, Dominik Kobinski wrote:
> The PM8226 PMIC has SPMI regulators on the PMIC SID 1:
> add the spmi vregs compatible to probe them.
> 
> 

Applied, thanks!

[1/1] arm: dts: qcom: pm8226: Support SPMI regulators on PMIC sid 1
      commit: 02964a7244bae61a60e0ab15526a51f9e974bb4e

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
