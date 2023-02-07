Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 81FB568CCC4
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 03:49:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230020AbjBGCtN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Feb 2023 21:49:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229879AbjBGCtG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Feb 2023 21:49:06 -0500
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26AA5366B3
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 18:48:49 -0800 (PST)
Received: by mail-pj1-x102d.google.com with SMTP id rm7-20020a17090b3ec700b0022c05558d22so13378676pjb.5
        for <devicetree@vger.kernel.org>; Mon, 06 Feb 2023 18:48:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sR7ruv35Qv2TJdi+hb5jSOiaV9SREkd+tD+3wSx+p6o=;
        b=I/dDS/7/aq/F71hBSixMoQhmOnHuXMaj4Gu8pVRWSBCxP77H7aRnbunjchMAzDsu3H
         EK+oxIIDoDiFMjNzXc4aFvzy8BYeVkCpbanOwknlhoqlocl3kud9TOo7xSVpU8An8MO1
         /OhgsooZYMUfIRWnZJZYprfyXICN5kGFzree8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sR7ruv35Qv2TJdi+hb5jSOiaV9SREkd+tD+3wSx+p6o=;
        b=AjuagAcVB5KBPjsxyeHVJeWiSCgNQyo+0ZjsfNCDy/iR7wksBC+IZhNnuhlH8wsvVt
         3uaW7dmWITkl/gIglLloTQtURRFBlngeogyRz0tOY8Cr1lf+oesmvNCKf8GyKECIWvXF
         gkugZYxpZHYHC0B1LK8VGf0W+BXm2RGpw7oI9xv7A84VcQGAawD5WQmpbDldM0tsL4Da
         986gE+8kJXbNd0oAdsqQeXQ+dy9ZS4+/rTBZ2kU89GLeleMbeTc1PHepnNMoyY8uHock
         jK/3ZAxV8lHOBDC2jNFYMNVo7AfcGkh+k7PzTN8LkxKA09++9MGx6IKbaqSpc7STVF15
         QzWw==
X-Gm-Message-State: AO0yUKXVkoPuvw+taNrBGE8p8cQ6m8k2RBaIHrpic9S0xcejCmbgq4/c
        pdUQMVkhDXVjMI+7hIo0DZig6g==
X-Google-Smtp-Source: AK7set/ujCEl41G9OUvH78qbpCbjatAiV4B04Ou2nFyAB2tImELNnn/ViZ0sW8r4i89QtNjIv9WUTA==
X-Received: by 2002:a05:6a21:3386:b0:be:bea0:7137 with SMTP id yy6-20020a056a21338600b000bebea07137mr2236057pzb.5.1675738129232;
        Mon, 06 Feb 2023 18:48:49 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:9d:2:29fb:a635:f0df:f45a])
        by smtp.gmail.com with ESMTPSA id s17-20020a63a311000000b0045dc85c4a5fsm6882430pge.44.2023.02.06.18.48.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 18:48:48 -0800 (PST)
From:   Douglas Anderson <dianders@chromium.org>
To:     Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jiri Kosina <jikos@kernel.org>,
        Benjamin Tissoires <benjamin.tissoires@redhat.com>
Cc:     linux-input@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        devicetree@vger.kernel.org, Stephen Kitt <steve@sk2.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH 2/7] arm64: dts: qcom: sc7280: Add 3ms ramp to herobrine's pp3300_left_in_mlb
Date:   Mon,  6 Feb 2023 18:48:11 -0800
Message-Id: <20230206184744.2.I13814cefc5ab3e0a39ebd09f052e3fd25d4e8f1d@changeid>
X-Mailer: git-send-email 2.39.1.519.gcb327c4b5f-goog
In-Reply-To: <20230207024816.525938-1-dianders@chromium.org>
References: <20230207024816.525938-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The "pp3300_left_in_mlb" rail on herobrine eventually connects up to
"vreg_edp_3p3" on the qcard. On several herobrine designs this rail
has been measured to need more than 1ms to turn on.

While technically a herobrine derivative (defined as anyone including
the "herobrine.dtsi") could change the board to make the rail rise
faster or slower, the fact that two boards (evoker and villager) both
measured it as taking more than 1ms implies that it's probably going
to be the norm. Thus, let's add a "regulator-enable-ramp-delay"
straight into the herobrine.dtsi to handle this. If a particular
derivative board needs a faster or slower one then they can override
it, though that feels unlikely.

While we measured something a bit over 1ms, we'll choose 3ms to give
us a tiny bit of margin. This isn't a rail that turns off and on all
the time anyway and 3ms is nothing compared to the total amount of
time to power on a panel.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
index 27f479ff9d80..ded36b5d28c7 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
@@ -108,6 +108,8 @@ pp3300_left_in_mlb: pp3300-left-in-mlb-regulator {
 		pinctrl-names = "default";
 		pinctrl-0 = <&en_pp3300_dx_edp>;
 
+		regulator-enable-ramp-delay = <3000>;
+
 		vin-supply = <&pp3300_z1>;
 	};
 
-- 
2.39.1.519.gcb327c4b5f-goog

