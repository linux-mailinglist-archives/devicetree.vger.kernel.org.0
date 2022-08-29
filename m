Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F51E5A5225
	for <lists+devicetree@lfdr.de>; Mon, 29 Aug 2022 18:50:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229992AbiH2Qu0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Aug 2022 12:50:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229579AbiH2QuW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Aug 2022 12:50:22 -0400
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7BF361D59
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 09:50:20 -0700 (PDT)
Received: by mail-pf1-x42d.google.com with SMTP id 142so8746086pfu.10
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 09:50:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=19oJyst1cXhX6ExrR+4lzX9FM+Aou98SW9ohKM60LiE=;
        b=FdwePFKjyhAG2YJEV2p+eSvD9wAlfIXs+xt3A2gYuxH8ASej4TPnhf2V5z3S7jXTNY
         ymKKBFCJV+4lva7k6btjMrpOpWfBY+osD1B7gWEfaRXUKPjDRrX9E+A+5n/QmmJltPtJ
         dnFJrESa/htd5+ntnX+GgIVsuCWMi1ltmFcmU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=19oJyst1cXhX6ExrR+4lzX9FM+Aou98SW9ohKM60LiE=;
        b=vMfVAejD7AUvuVX0m/bJ6LZLwQ45iADWUNr9bPI9d1GJwCKIup0YOQw1ikrXoewVtm
         U9buxP2Dh4DtK9TfuMH3XvBanof92j4Arw1xJ77zwJAQ+Av7Q2Tc6kZEsGboEqCLE0xD
         Z6C92z6g8SeLzVlR71uZ8RtpgyKEymN+0L3vksb5leuPbjmIBt5/qX0f+vb+VqKVQ8dD
         XmxmL4RClkCpL+8fnB3k4xj6v824JumeCCaxc6Dvd7AfH0Abp5ODcG7GnZxOZpgumlem
         gd9RsfcnEtKBpsNKsLRmZKtd+txagzW6FvydrQAaf7KizsqPsNWqqXmdW5cZGQ7Qc3ZH
         MKyQ==
X-Gm-Message-State: ACgBeo2xuIWA5xM763RW/QYVWa+RamIJeymzwGHpglgVL7NyH+mj8js6
        X3zaw5PkBwwwUlJfnOeT33oVQQ==
X-Google-Smtp-Source: AA6agR7wP/U/djs4TOG4BcQegSxHOfMHn/NiIKogfPKTanFruFSM5vbVqZ4vop+1Fm/kzKbn+eW8Ww==
X-Received: by 2002:a63:40e:0:b0:42b:890d:594e with SMTP id 14-20020a63040e000000b0042b890d594emr11792368pge.331.1661791820217;
        Mon, 29 Aug 2022 09:50:20 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:3a97:5017:7e33:8964])
        by smtp.gmail.com with ESMTPSA id l1-20020a170902f68100b001729db603bcsm7864238plg.126.2022.08.29.09.50.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Aug 2022 09:50:19 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Johan Hovold <johan@kernel.org>,
        Andrew Halaney <ahalaney@redhat.com>,
        Mark Brown <broonie@kernel.org>,
        Douglas Anderson <dianders@chromium.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/6] arm64: dts: qcom: sc8280xp-crd: Specify which LDO modes are allowed
Date:   Mon, 29 Aug 2022 09:49:49 -0700
Message-Id: <20220829094903.v2.3.Ie7d2c50d2b42ef2d364f3a0c8e300e5ce1875b79@changeid>
X-Mailer: git-send-email 2.37.2.672.g94769d06f0-goog
In-Reply-To: <20220829164952.2672848-1-dianders@chromium.org>
References: <20220829164952.2672848-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This board uses RPMH, specifies "regulator-allow-set-load" for LDOs,
but doesn't specify any modes with "regulator-allowed-modes".

Prior to commit efb0cb50c427 ("regulator: qcom-rpmh: Implement
get_optimum_mode(), not set_load()") the above meant that we were able
to set either LPM or HPM mode. After that commit (and fixes [1]) we'll
be stuck at the initial mode. Discussion of this has resulted in the
decision that the old dts files were wrong and should be fixed to
fully restore old functionality.

Let's re-enable the old functionality by fixing the dts.

[1] https://lore.kernel.org/r/20220824142229.RFT.v2.2.I6f77860e5cd98bf5c67208fa9edda4a08847c304@changeid

Fixes: ccd3517faf18 ("arm64: dts: qcom: sc8280xp: Add reference device")
Signed-off-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Andrew Halaney <ahalaney@redhat.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---

Changes in v2:
- Rebased atop ("...: sc8280xp-crd: disallow regulator mode switches")

 arch/arm64/boot/dts/qcom/sc8280xp-crd.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
index fea7d8273ccd..5e30349efd20 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
@@ -124,6 +124,9 @@ vreg_l7c: ldo7 {
 			regulator-max-microvolt = <2504000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 			regulator-allow-set-load;
+			regulator-allowed-modes =
+			    <RPMH_REGULATOR_MODE_LPM
+			     RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l13c: ldo13 {
@@ -146,6 +149,9 @@ vreg_l3d: ldo3 {
 			regulator-max-microvolt = <1200000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 			regulator-allow-set-load;
+			regulator-allowed-modes =
+			    <RPMH_REGULATOR_MODE_LPM
+			     RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l4d: ldo4 {
-- 
2.37.2.672.g94769d06f0-goog

