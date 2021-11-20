Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B1016458112
	for <lists+devicetree@lfdr.de>; Sun, 21 Nov 2021 00:56:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237650AbhKTX7A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 Nov 2021 18:59:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237698AbhKTX6x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 Nov 2021 18:58:53 -0500
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DBABC061574
        for <devicetree@vger.kernel.org>; Sat, 20 Nov 2021 15:55:49 -0800 (PST)
Received: by mail-ot1-x331.google.com with SMTP id h12-20020a056830034c00b0055c8458126fso22855649ote.0
        for <devicetree@vger.kernel.org>; Sat, 20 Nov 2021 15:55:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=quWsWsCmfs9I828zomcAShzBMs2fGVBbOu9rTewbWcc=;
        b=x6AAB5P7hfsn2DZr/LsR/YbEfAsLj/Yq4XOc9cTijrFVNsgqmTKHIyFRFsW6Dl7SQd
         LEfC6yvD5uyFriFoysIE9zGHyV7Kk/AdZzOLdWGAiX9LT44c+rzjtuOELgjS0UziEhsc
         Fl11Z0NWESI4nuF4K2cePhig2v8R0JEhWmg1aqLUNFafev2lc7WxjNQhm6T8Bmn4Cid8
         dNIvksBqGT3G8lZD48gXmOzVW1tqmoDybyeb79qnan3oMiv6V3p9o0wVYODL7xOhUxJA
         GBkec7Kr4sbM4tKlD03ZkrvDrxEMZtB5W9af60veAzNmSsKVc2ZCTnOoBPiZhdGWipAN
         kB4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=quWsWsCmfs9I828zomcAShzBMs2fGVBbOu9rTewbWcc=;
        b=wu/cLG3pFzrtKesHy5nDPZtBAD5DbgnKajGt8bjmPruYrtvwYkZFB/8vOdwPFRIbJ1
         oV2oqidh6OuTr2WXLUHjDouVfLSvrIOFkkN2Drnma70ofq5lv9ud6oxm7Gn5j1QdyaZt
         pm4LCoccxRUpMCbSCc11fxL9+jM0IBVkSUeI6206UXze4CSi8DeMsxSY7jAICPKYDHpG
         P21Bm35j7a6wMwg/jRLu61J5qvsAXvzLuxekc+onLu/W9BrTZ4Un2/HMX0oHwF3M3QQE
         vuUJr9upKE6q8OrEukpb5BoUyr0koVJhcdXm0OSsS5hBS0yQDi+gZYmpUNSScThrVJIK
         uEWQ==
X-Gm-Message-State: AOAM530d0pmXS4rZHiio5BeVtPH5zrFvhvolrqkHsScEHrjvOT4G5/K8
        Zlov49u3CEvPlrcHjF/rWG5RIQ==
X-Google-Smtp-Source: ABdhPJwMoR41Jm/OVNuKr0os1YIx37w1/prSSbyV68vzGzDedWG3tddlRlicuQgOJFI+roKwoqkfBw==
X-Received: by 2002:a05:6830:104f:: with SMTP id b15mr14729809otp.215.1637452548901;
        Sat, 20 Nov 2021 15:55:48 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id o26sm828474otj.14.2021.11.20.15.55.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Nov 2021 15:55:48 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     LKML <linux-kernel@vger.kernel.org>,
        Philip Chen <philipchen@chromium.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, dianders@chromium.org,
        Andy Gross <agross@kernel.org>, swboyd@chromium.org
Subject: Re: [PATCH v3 1/4] arm64: dts: sc7180: Include gpio.h in edp bridge dts
Date:   Sat, 20 Nov 2021 17:55:25 -0600
Message-Id: <163745250541.1078332.16492229519220111625.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211029152647.v3.1.Ie17e51ad3eb91d72826ce651ca2786534a360210@changeid>
References: <20211029152647.v3.1.Ie17e51ad3eb91d72826ce651ca2786534a360210@changeid>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 29 Oct 2021 15:27:40 -0700, Philip Chen wrote:
> The edp bridge dts fragment files use the macros defined in
> 'dt-bindings/gpio/gpio.h'.
> 
> To help us more flexibly order the #include lines of dts files in a
> board-revision-specific dts file, let's include the gpio header in the
> bridge dts fragment files themselves.
> 
> [...]

Applied, thanks!

[1/4] arm64: dts: sc7180: Include gpio.h in edp bridge dts
      commit: 963070f762137cff817d33c102309ab0a345eb32
[2/4] arm64: dts: sc7180: Specify "data-lanes" for DSI host output
      commit: 0417a86b200b4da1dff73e9f4bd7743346e5565b
[3/4] arm64: dts: sc7180: Support Lazor/Limozeen rev9
      commit: 7624b41b3379e664f074137001fc2e44bc1f5eaf
[4/4] arm64: dts: sc7180: Support Homestar rev4
      commit: 3922ccaed4ac9dab5087fc5f20d319cc55765afa

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
