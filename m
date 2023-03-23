Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C370A6C6EEC
	for <lists+devicetree@lfdr.de>; Thu, 23 Mar 2023 18:31:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232265AbjCWRbc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Mar 2023 13:31:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232255AbjCWRbX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Mar 2023 13:31:23 -0400
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com [IPv6:2607:f8b0:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A89128E42
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 10:31:17 -0700 (PDT)
Received: by mail-pg1-x536.google.com with SMTP id d22so13026805pgw.2
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 10:31:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1679592677;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6kiM2lrh2kvgdALZI8OIkWyLB50SqdxAm52tOpr2esY=;
        b=HXiP72pym+YYw/orvrMjuH/G76artp0TTfq7fhSlUPoJldbPdKxo3MqETM7XoMrCX/
         5MljJsHVpAL1rPPYKJFros7D3ckXNFp7LvANq7FzWMN8EXqeau3FUOkkmfu430yNwGtk
         rNzLOsjj27FpxdgtXZE5PmSLTxs0yAK+PEzT4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679592677;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6kiM2lrh2kvgdALZI8OIkWyLB50SqdxAm52tOpr2esY=;
        b=zuiZM04ZMDd1SGavzE5/TcOSdIOJepgEDsSs/+T27SB1l+irMc0eu1XT0hK1RO4f6/
         F9XZy4djx9aiXxVXLyJPpFgbPObqfN0626yjC9npDB8LdLiBOJuxvZbJut8wC5PAWmGB
         LDKIXzF93cL6egexUJiYtwH2iWB7HMj031Uyg4tDTUxQ85+LU12ZAY9vaYn6DpOcmMn3
         rEy6MxSg0vJ2wFA03oxaYJW/kX2JQW1cBxhcRKLsmTW2HTDuQgG5YUpdAPNWRsj6XWqZ
         BX4W2BhOcV0XQaQdEGL+R5c1juGGUlHB4g7l9tdzaOtgUuwv4i1rUAKMxIVVWA4dYxXh
         1QIA==
X-Gm-Message-State: AAQBX9cOG2Qqoi+mi6MFdmcpXbeSvNcg8P+6uF8eqtil1RGzBKasYh06
        l+zc640YIDucr0+yFtmCHIyb9w==
X-Google-Smtp-Source: AKy350buG3y4PZg93OsVSfDc5+NHl/qYArOkaLVdvFImYeKdyz7hN2Fv645vPTrSh6BE5heW32nH9g==
X-Received: by 2002:a62:8413:0:b0:624:d72e:e629 with SMTP id k19-20020a628413000000b00624d72ee629mr251075pfd.8.1679592676912;
        Thu, 23 Mar 2023 10:31:16 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:9d:2:16d3:ef20:206a:6521])
        by smtp.gmail.com with ESMTPSA id x13-20020a62fb0d000000b0061a6f4c1b2bsm12613546pfm.171.2023.03.23.10.31.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 10:31:15 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     Matthias Kaehlcke <mka@chromium.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-gpio@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-spi@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH 04/14] arm64: dts: qcom: sc7180: Annotate l13a on trogdor to always-on
Date:   Thu, 23 Mar 2023 10:30:08 -0700
Message-Id: <20230323102605.4.I9f47a8a53eacff6229711a827993792ceeb36971@changeid>
X-Mailer: git-send-email 2.40.0.348.gf938b09366-goog
In-Reply-To: <20230323173019.3706069-1-dianders@chromium.org>
References: <20230323173019.3706069-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The l13a rail on trogdor devices has always been intended to be
always-on on both S0 and S3. Different trogdor variants use l13a in
slightly different ways, but the overall theme is that it's a 1.8V
rail that the board uses for things that it wants powered in on S0 and
S3. On many boards this includes the boot SPI (AKA qspi).

For all intents and purposes this patch is actually a no-op since
something else in the system seems to already be keeping the rail on
all the time (confirmed via multimeter). That "something else" was
postulated to be the modem but the rail is on / stays on even without
the modem/wifi coming up so it's likely the boot config. In any case,
making the fact that this is always-on explicit seems like a good
idea.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
index 423630c4d02c..1f2e1f701761 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
@@ -512,6 +512,8 @@ pp1800_l13a: ldo13 {
 			regulator-min-microvolt = <1800000>;
 			regulator-max-microvolt = <1800000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-always-on;
+			regulator-boot-on;
 		};
 
 		pp1800_prox:
-- 
2.40.0.348.gf938b09366-goog

