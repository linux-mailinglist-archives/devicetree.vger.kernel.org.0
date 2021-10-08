Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F3264261D1
	for <lists+devicetree@lfdr.de>; Fri,  8 Oct 2021 03:25:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237264AbhJHB1g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Oct 2021 21:27:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238388AbhJHB1a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Oct 2021 21:27:30 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F5B5C06176D
        for <devicetree@vger.kernel.org>; Thu,  7 Oct 2021 18:25:35 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id y15so32489332lfk.7
        for <devicetree@vger.kernel.org>; Thu, 07 Oct 2021 18:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qkMqBx/0+QNy6vnPe5v+Jz8TEUxjmzu64DV0QiSa2s0=;
        b=ldrtcuLlebPN6CO00igJqAm/YPiO5uQDbTgsbmTHF3MdyXhwR75157DEKb73XBWROL
         rLvPfpeayyxuYNJ9L4w4lmvr3b6ihp42M3kq8BA9F4U84PQlFZLZJJiyGOvR08ZQAR6A
         bDTwKHpOmq564aWK5k2AGVUOFuEEQEayQ2uBYmHXatnVeffGnm/jg0hm57FGX5jPfkQy
         EQuUdbNFr25m5hXS06t/zyBNs32P+YZexrJoMa1UDej7u2k/YrJVAnYba01/Na5NM+Iv
         RHaymRz0SYpeSfhIF2K9cQn91BbMGDwGayHFVbRjmtXsW2qEgAkDHF2ns79M+Ma6ZqlW
         8JvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qkMqBx/0+QNy6vnPe5v+Jz8TEUxjmzu64DV0QiSa2s0=;
        b=Cl1aeqoCjjzLhSaWdguRzlkZDZHxeZ04QtoY3kDgKZgeZURWeocj9k43E9tyPDat+h
         FdtWjRlf2KnxJ5c+wJZA8K/apgM04V4YHTp3pfZRjJTxWiq7b6P8eWQlGywDeUiuIOPO
         B0ILFimBeHHeIqVABpM8o5cG+xVRYNKwq3ciLRNQemi2n6qs8aE1UhR0JhaobZvwYBPY
         jAPGJoEiq4vdyFMo/9lApc/ehoeUqocfhXBJoYMA0EOhLIN446FUbuOv4fQTSzCPt3vO
         xadhHLsLoLWKAEK5ZCEHWwQ6i2/YwYWEfu3jOItOJ5P8YHrxNAm+RvbIIp0sm2rsmu+q
         Zceg==
X-Gm-Message-State: AOAM531DUpuZC7wQ9z9YLSDk84XeGVS9U8JzWFHo7COoIC+5qFbTvex5
        DC40ucrk89X0Mm8h1EM6DVoMI5XIRG2i/Q==
X-Google-Smtp-Source: ABdhPJwEya7Yt//DDC9snEcs35LlqhKg12Ly2jycIW8hKh5tNzaUnDnBwup+oIug1i7BD+fdoyJqCg==
X-Received: by 2002:a05:651c:1053:: with SMTP id x19mr394867ljm.192.1633656333965;
        Thu, 07 Oct 2021 18:25:33 -0700 (PDT)
Received: from umbar.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id s4sm112875ljp.115.2021.10.07.18.25.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Oct 2021 18:25:33 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH v3 09/25] ARM: dts: qcom-apq8060-dragonboard: fix mpps state names
Date:   Fri,  8 Oct 2021 04:25:08 +0300
Message-Id: <20211008012524.481877-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211008012524.481877-1-dmitry.baryshkov@linaro.org>
References: <20211008012524.481877-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The majority of device tree nodes for mpps use xxxx-state as pinctrl
nodes. Change names of mpps pinctrl nodes for qcom-apq8060-dragonboard
board to follow that pattern.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-apq8060-dragonboard.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-apq8060-dragonboard.dts b/arch/arm/boot/dts/qcom-apq8060-dragonboard.dts
index e1189e929ee6..5bedbb902ad5 100644
--- a/arch/arm/boot/dts/qcom-apq8060-dragonboard.dts
+++ b/arch/arm/boot/dts/qcom-apq8060-dragonboard.dts
@@ -357,8 +357,8 @@ pinconf {
 				};
 
 				mpps@50 {
-					dragon_cm3605_mpps: cm3605-mpps {
-						pinconf {
+					dragon_cm3605_mpps: cm3605-mpps-state {
+						mpp5 {
 							pins = "mpp5";
 							function = "analog";
 							input-enable;
-- 
2.30.2

