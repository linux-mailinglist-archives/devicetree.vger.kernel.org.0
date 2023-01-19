Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3161C6739F7
	for <lists+devicetree@lfdr.de>; Thu, 19 Jan 2023 14:22:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230481AbjASNWj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 08:22:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230169AbjASNWb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 08:22:31 -0500
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D05778566
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 05:22:28 -0800 (PST)
Received: by mail-ed1-x536.google.com with SMTP id w14so2836004edi.5
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 05:22:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bBRhMIWBBhe/TliUQy+AZIlgOFFoxbwEkFQWDIwkk3Y=;
        b=gQqyHL5f878YFECkQbVlVt1i2oW5o6NrODjENuIskCss3t4CBgygaVJvMwyvD/opNY
         ua7Yuu8+ofN7SLwaqlAzq5549NtQe2Nb6mUudBeMPDhZd10UqxBjFfj/+pCs7/QxxgEM
         6Ol2dhcex9eW1YDsllnAlCBqthlZz2OEYJqRtBZlgPVgI6kSFIiA7TA1Ts5VM8OZwmmQ
         ZeORDMlRED83SQ7oC6zNR+We8Uf2jOTNkqg+R+3QbI7zAvpVREHhrjNcnhZ/108GE65M
         Qwv6hbc0M9LOlWm/3AK3TYM8ySJ82qIGNMReSU0chyzDHzWhogkw+XZuIKktXwE6zHXG
         liaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bBRhMIWBBhe/TliUQy+AZIlgOFFoxbwEkFQWDIwkk3Y=;
        b=oVM6tQX1K8aceOvwNljTfqT0ls2AGfIP+OqUgHzBqcocFspfOstGVfSH/YvI+0dUeL
         +1Bb2nAtDN4ElNMof0QUFIYKGjzrB9hOmIczY26uhEmYRZNdOP7ChivD4avFms9lejsA
         yowdoGRuyWadbT4HK0ClDNcqvoyYq61E4t3HLMNn7MA1R2yo/bb7QApGXXoPifPRX1kZ
         lr4qhB82Y37wQOD7AlSbQw+54xyYBYI0UiunipY8j5i5gvrSQj9GVvAawxtNG0v/iODZ
         wTkREFQAFP8MwuupqHSv9gPVfOFHfpfgKjDYHsDcxygAEBPj4aGl6ZI62Udq4JOq3WB6
         QX8Q==
X-Gm-Message-State: AFqh2kqCB93hKzJnFvewWgH5XpNsJEtV+FgjfX4ij4pTOMy8D/r0OTzT
        +A9Srpcf5tHPQrK20oPwwok4+g==
X-Google-Smtp-Source: AMrXdXsHXoST2nFKVY17xlSarrqKjeFW7wy8a6//enD4WSTrPdCI41yAuePsNFxPf0CEckaaD83Arg==
X-Received: by 2002:aa7:c3ca:0:b0:499:b674:5a1f with SMTP id l10-20020aa7c3ca000000b00499b6745a1fmr22148197edr.28.1674134546861;
        Thu, 19 Jan 2023 05:22:26 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id bt16-20020a0564020a5000b00482e0c55e2bsm15532646edb.93.2023.01.19.05.22.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jan 2023 05:22:26 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH 5/6] ARM: dts: qcom: apq8064: add #clock-cells to the HDMI PHY node
Date:   Thu, 19 Jan 2023 15:22:18 +0200
Message-Id: <20230119132219.2479775-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230119132219.2479775-1-dmitry.baryshkov@linaro.org>
References: <20230119132219.2479775-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add #clock-cells property to the HDMI PHY device node to let other nodes
resolve the hdmipll clock.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-apq8064.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom-apq8064.dtsi
index 95705703fe8f..82c795beb8a1 100644
--- a/arch/arm/boot/dts/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom-apq8064.dtsi
@@ -1489,6 +1489,7 @@ hdmi_phy: phy@4a00400 {
 			clocks = <&mmcc HDMI_S_AHB_CLK>;
 			clock-names = "slave_iface";
 			#phy-cells = <0>;
+			#clock-cells = <0>;
 
 			status = "disabled";
 		};
-- 
2.39.0

