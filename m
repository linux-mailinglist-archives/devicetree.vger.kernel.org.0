Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C474544BBB
	for <lists+devicetree@lfdr.de>; Thu,  9 Jun 2022 14:24:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245362AbiFIMYD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jun 2022 08:24:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238135AbiFIMX7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jun 2022 08:23:59 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C4472EA33
        for <devicetree@vger.kernel.org>; Thu,  9 Jun 2022 05:23:58 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id a2so31594766lfg.5
        for <devicetree@vger.kernel.org>; Thu, 09 Jun 2022 05:23:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kfEwLmFa+rnyzBz5wSYp6fbvYkhVpWWBGyc2jbt7Ik8=;
        b=sHmblSRIN65HZRXS7KK3EBqEX68dT9yNdXqkjJBLOcYDi3m1fjIJuhQgVU+Tx7Pqsj
         8UcSSZYixHZpw39TB785gaHCVhBvco5Z70ik112YlIG929SRVgc9yL45GexZuC8iYiqS
         jw2lFrJhP4W50beZ9CwaqapprUlePI69JXEJoDIlX668rQCliUJtmX5XG8MPEnxPMF4n
         su2j4mb4ad/DcaXxACJ5WrmaJjrGGDkpoYf5A5qDMGWBFfvxmzbm0aAQ7wLPXd+2+jSQ
         /ZbKH6zfHF9grbX7jnx/I0TpPK8h2q4duPSLIQ9LhO7BlmonQCxa8JYREYN8usgeGpdW
         hu3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kfEwLmFa+rnyzBz5wSYp6fbvYkhVpWWBGyc2jbt7Ik8=;
        b=Hdw536rnKK0dclbN4jAzkScIWViuYWd/Cr4GKh2tEV1QXBLu8UOfonktgsC5qxRF3D
         4JvuHQ3jmjqvcE69Ide6uVePs/tdPFzh7QcXyQ972yNeG8Hi1y+T+IA4aHBHjORKWOSZ
         W1QG6mJ88u7xHfOonH4RU1WauJYBdvqvUoZhTBJ0XKn9TvUYMPmqd0jl+WpNWIOKTADB
         jSqbKrtE6HtEGIog6Ia71f3+VZdkKslxC5qpoRbmyWjvovIroK831npPhvqH0tBH4YGv
         G8iCdK5liu5URzLYNCUVaKs/Sg44R3fSqPIXC0zz4HL5ThHeQmY1V9HJRvnPC1rfhQq8
         l3oA==
X-Gm-Message-State: AOAM530AUBi5PBHittyjiKD06EajxUlx+1wlklX8akDjf11sJ3swYJMR
        PbFN3HJpYRDCgqys5tMtoWgkqw==
X-Google-Smtp-Source: ABdhPJwcuqI/GbvvTWxReKbRyLRjsRwZsuau95EK6p4dFoxSEmp+Q+0VqmZPsfz74TayqYctZ2KHxA==
X-Received: by 2002:a05:6512:220f:b0:479:65e1:c802 with SMTP id h15-20020a056512220f00b0047965e1c802mr7685829lfu.250.1654777436272;
        Thu, 09 Jun 2022 05:23:56 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id f11-20020a056512360b00b0047daa133decsm32421lfs.166.2022.06.09.05.23.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 05:23:55 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH v3 05/14] drm/msm/hdmi: drop the hdmi-mux support
Date:   Thu,  9 Jun 2022 15:23:41 +0300
Message-Id: <20220609122350.3157529-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220609122350.3157529-1-dmitry.baryshkov@linaro.org>
References: <20220609122350.3157529-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

With the last (and only) in-kernel user of hdmi-mux regulator, drop it
from the HDMI driver.

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/hdmi/hdmi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi.c b/drivers/gpu/drm/msm/hdmi/hdmi.c
index 73070ec1a936..7267167d5ef1 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi.c
@@ -361,7 +361,7 @@ static const char *hpd_reg_names_none[] = {};
 
 static struct hdmi_platform_config hdmi_tx_8660_config;
 
-static const char *hpd_reg_names_8960[] = {"core-vdda", "hdmi-mux"};
+static const char *hpd_reg_names_8960[] = {"core-vdda"};
 static const char *hpd_clk_names_8960[] = {"core", "master_iface", "slave_iface"};
 
 static struct hdmi_platform_config hdmi_tx_8960_config = {
-- 
2.35.1

