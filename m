Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D8544A5658
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 06:20:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233955AbiBAFUo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Feb 2022 00:20:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232641AbiBAFUf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Feb 2022 00:20:35 -0500
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 147E6C06176E
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 21:20:31 -0800 (PST)
Received: by mail-ot1-x333.google.com with SMTP id l12-20020a0568302b0c00b005a4856ff4ceso7027497otv.13
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 21:20:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VaYERgrCYJYZC2sGCpcTnhMQ2mYXiT84+ab+3nA9rpw=;
        b=WsiBSLmgDX+LxQPMN05hU7a2gD03Bsotcx7FE5afyAKnw3C7leA4wgLlCOcmfrMle2
         3/fOIi3raAC1hk9DvbYbynw9lh6qEJSyiRE6v7gvZUj6eBUAc435xIYj7+UhMxS1Ue7z
         8R3uVqOx5I3H0cjlz+XoHyUeSmCwQ1RQ79qcqESQpXd/FuEoXA6xbYXuthV1VCj695O6
         vY1k99euxZM+hGhcrstTV0k3qd2awyp8MdVrPMpXjCQk8GSeC+6RlxMavQX6Wv1e+/zj
         MHTOWYmCb7kOBIM9MaJO8bGMmsUw6WhOKzb98ChLSuRX7rnrhzqzw0o9TLo13UmNMS9F
         Q7BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VaYERgrCYJYZC2sGCpcTnhMQ2mYXiT84+ab+3nA9rpw=;
        b=cyUXhhlx6CXbR6c83C24+63n/nUfsVPVhKyCs7MFqvSGvAu+E4BgiflrZaejXg/Yoz
         CjyuAZEH3C+hJXWWvH1qxqjOC0oxOtJCYCzBzGJHoIvsiRwZvLFzHONrQuQ1EsDolsNE
         noUTCgId8ZmRGS63uvI40wWaQhWfvmewTRmII+mRqWQmkgduCxbr0FcbuTLEongtgH8I
         GTb5vaiwvM9S72esBARnVHlySWAj26PxAO+sYX9Kp7lNDFaUYY5kBQKFM8SAyp06K+1/
         HfO0KHo975kyCT9aCvNwVmdyJoVVAKAB5GGoqqNOG/gOhMAitNNDrRxwryjklfjYyKUQ
         hQxw==
X-Gm-Message-State: AOAM532HbZ2erLXgTiam1XDGgRI3FZCsgufj1TIchJJyy0NDFO3Q2Wgf
        eZQHvBCeZW4qU4FFLodTDrlZYg==
X-Google-Smtp-Source: ABdhPJwUaqMWRCcEhx4ti2ERXPU+9UOv400FlNwzFuWUXRUB4gpiqFkcOHBLzaRY4jcaocWbJPfuvg==
X-Received: by 2002:a9d:4d08:: with SMTP id n8mr13118939otf.16.1643692830488;
        Mon, 31 Jan 2022 21:20:30 -0800 (PST)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id u3sm8193107ooh.19.2022.01.31.21.20.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jan 2022 21:20:30 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        David Heidelberg <david@ixit.cz>
Cc:     devicetree@vger.kernel.org, ~okias/devicetree@lists.sr.ht,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH] ARM: dts: qcom: add KPSS GCC compatible to clock nodes
Date:   Mon, 31 Jan 2022 23:19:38 -0600
Message-Id: <164369277345.3095904.6223007740319980874.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220108175509.62804-1-david@ixit.cz>
References: <20220108175509.62804-1-david@ixit.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 8 Jan 2022 18:55:09 +0100, David Heidelberg wrote:
> Some of nodes missing additional compatible.
> 
> 

Applied, thanks!

[1/1] ARM: dts: qcom: add KPSS GCC compatible to clock nodes
      commit: 9f4a052795cd8b4adbe3c5eb0fb92b6122dbdc95

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
