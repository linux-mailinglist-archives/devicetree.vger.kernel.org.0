Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17ADE7071E3
	for <lists+devicetree@lfdr.de>; Wed, 17 May 2023 21:20:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229905AbjEQTU1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 May 2023 15:20:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229590AbjEQTU0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 May 2023 15:20:26 -0400
Received: from mo4-p03-ob.smtp.rzone.de (mo4-p03-ob.smtp.rzone.de [85.215.255.100])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F868271C
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 12:20:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1684351223; cv=pass;
    d=strato.com; s=strato-dkim-0002;
    b=dpzXxOrMLAiiXGPs9s+Dyhh4TYWK2Qlw/Bbyct8cTmF6mSmceWDNuIU/5UzEE2CPge
    EVeFuhpJTc+7Uz90+KuixcvYYtqc4SWiMMgOPZbDSBtWEeyTgIF43X4v44qP3yAluZGo
    yOUVoRONVeSwM0yP22dovPsDdxlc1T81BCYUxVfzym4RfDNUgvNREKtSelDa9XLb453D
    rU0AlRVipoXAztlRqx/TvCYOAeeEZrHHQMkZOu96PHGRQNX8VF8GgEKHgaJ2H6U9l+r6
    UP0IVdKO4rux6uzzcdK4D4QueyFZrnKevgHa+HfMArT5eMC7vzL3XzVX5ThHf+zplzue
    Ariw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; t=1684351223;
    s=strato-dkim-0002; d=strato.com;
    h=Cc:To:In-Reply-To:References:Message-Id:Subject:Date:From:Resent-To:
    Resent-Date:Resent-From:Cc:Date:From:Subject:Sender;
    bh=RzJCW5rwyoVlDeXe+0eK8YDHrRyc3l6qHJ+N7bVS/zI=;
    b=iXJAAe1UUe6bnHBHBL20xavy9ftCJmYgxb6DUBzfbSmgK7vtM6Z9G4ENf85IBjKUDY
    SVR2rEPsqRUjvqquKGbgV9ZfRiErLVlc7Yan5NtXDJdZg5jVSncJBqhiffl4LM/k/lgE
    xvg0ldsCjoU4ZgZ4XouHWckONmruTOKqw5vOBbO10TAwTMFLbT8pKHyrBuBLk9RnFbw9
    l/mWzkolvcEob0WTOLmuG4ww15DBVphQLiPo5GHyA1B5qHVx9c/oyBKAF8FhazE/EMc5
    MLdtcOPZctRvVBURv/iNgUfLkBxSsWHJdm/RMJDZ3omTzksDaSM+ui5Gic37BNWY2KxU
    nrvw==
ARC-Authentication-Results: i=2; strato.com;
    arc=pass (i=1);
    dkim=pass header.d="gerhold.net" header.s="strato-dkim-0003" header.a="ed25519-sha256";
    dkim=pass header.d="gerhold.net" header.s="strato-dkim-0002" header.a="rsa-sha256"
X-RZG-CLASS-ID: mo03
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u261EJF5OxJD4peA8pqP1A=="
Received: from gerhold.net
    by smtp.strato.de (RZmta 49.4.0 DYNA|AUTH)
    with ESMTPSA id j6420az4HJKNBKa
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
        (Client did not present a certificate)
    for <devicetree@vger.kernel.org>;
    Wed, 17 May 2023 21:20:23 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; t=1684349339; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=ASCmdiWWzS0b3pRvrBe/Dy6eCVgG6v1Jt2Y1imDVbieCBQWvE2ypYViMSFbFyQtqzp
    Cn1L6oZt7pFH6W3Vc1n2Y32+tY5iXQ6b09qjd3X1EPrjnDPbn5MeVLSCRpSnlmUQ6kn2
    2i7TWH71E5Iubh+s/9vQA7UmU4KELJDTrGCoptP0nm0oMz9TuwBfvXF/ATcEnrnuadif
    5HfZHLO4f63X66NwVNq7EIiocKcLQxKyPfYqQNXdKtdSyUgU4SO0YiMCC8K2/0wUL/Qr
    EPsGTpybw9gBwg9jy5LGZ4YkhNIYYzKXeZsuIwEH5G/HOR9gC+p9H5tWEH8DN16FoO/2
    7VGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1684349339;
    s=strato-dkim-0002; d=strato.com;
    h=Cc:To:In-Reply-To:References:Message-Id:Subject:Date:From:Cc:Date:
    From:Subject:Sender;
    bh=RzJCW5rwyoVlDeXe+0eK8YDHrRyc3l6qHJ+N7bVS/zI=;
    b=fgD6GHh0OhHwm8AT3NwU862+nB1Rd0F9scy6Q1C6d/hEXrSpYYnLUh2Kfp99Z/URub
    ezzkiL1ggPBaeV67ZMiIMGs7XG/rWYWpzxHpMp7emIxh3/4wlb7iMh2C9nVpkXCvFjvF
    LCmZebNxPhw7YlolnvQcz2VtE9Ehg01/SocDPRRghRXcu5jSmh4S9FuPMQH/wYdZ2fp3
    1zaXzZ9YPYlb9aiDL3T23KPfBfmV1cQFwmno8npZsNho3wfaoWrj2BPXVTweLNoTPuyN
    OYIMv9n+McRZepXue7yjoIUj7rz5lSFlMqy9hVcYz8w7lDp+xLOby5YnmDKsIcGh+PJn
    g3lw==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1684349339;
    s=strato-dkim-0002; d=gerhold.net;
    h=Cc:To:In-Reply-To:References:Message-Id:Subject:Date:From:Cc:Date:
    From:Subject:Sender;
    bh=RzJCW5rwyoVlDeXe+0eK8YDHrRyc3l6qHJ+N7bVS/zI=;
    b=MHx0fU3xUzR0hAfPbNFvNsGRQszoKFnA9tSjffcMXrzEcc/nCrgriLJhxDxfK30//h
    BzTMlReFERxsWqJvCCs8Ufq/KiVkTo5TkjM4YoVT9TRC9fXne2+IqOQuN9qo5OLZbgcX
    nmgse71lwiFfKXQGTL9symTg5Mqx7Zyflxir3MPMLsHKVwLUNdGZ1pKoazJr0ElAQWtw
    KHuYNnddvJRUh8ZszcoedsIUT5cScBU+olRCeThEPJfCHBwGfymlhyKzztcOSF1jAnDd
    pqP1BUc1kcqbWyBLOkthr9r31tg7bHMjtnKBwdHyXyWPVh3QWc765utwmtOMwdncjYXT
    AgpQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1684349339;
    s=strato-dkim-0003; d=gerhold.net;
    h=Cc:To:In-Reply-To:References:Message-Id:Subject:Date:From:Cc:Date:
    From:Subject:Sender;
    bh=RzJCW5rwyoVlDeXe+0eK8YDHrRyc3l6qHJ+N7bVS/zI=;
    b=y+kfvhbZa25zvhvqx2ZBcZyCb6X8U6/Ihi0wmYScLC+CVkXegzVCvypL0QSf6kNfrQ
    j2JbQGdcXlt6qHHGSRAQ==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQjVd4CteZ/7jYgS+mLFY+H0JAn8u4ly9TY="
Received: from [192.168.244.3]
    by smtp.strato.de (RZmta 49.4.0 DYNA|AUTH)
    with ESMTPSA id j6420az4HImxBIH
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
        (Client did not present a certificate);
    Wed, 17 May 2023 20:48:59 +0200 (CEST)
From:   Stephan Gerhold <stephan@gerhold.net>
Date:   Wed, 17 May 2023 20:48:41 +0200
Subject: [PATCH 2/8] arm64: dts: qcom: apq8016-sbc: Fix 1.8V power rail on
 LS expansion
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230510-msm8916-regulators-v1-2-54d4960a05fc@gerhold.net>
References: <20230510-msm8916-regulators-v1-0-54d4960a05fc@gerhold.net>
In-Reply-To: <20230510-msm8916-regulators-v1-0-54d4960a05fc@gerhold.net>
To:     Bjorn Andersson <andersson@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht,
        Stephan Gerhold <stephan@gerhold.net>
X-Mailer: b4 0.12.2
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_PASS,SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The 96Boards specification expects a 1.8V power rail on the low-speed
expansion connector that is able to provide at least 0.18W / 100 mA.
According to the DB410c hardware user manual this is done by connecting
both L15 and L16 in parallel with up to 55mA each (for 110 mA total) [1].

Unfortunately the current regulator setup in the DB410c device tree
does not implement the specification correctly and only provides 5 mA:

  - Only L15 is marked always-on, so L16 is never enabled.
  - Without specifying a load the regulator is put into LPM where
    it can only provide 5 mA.

Fix this by:

  - Adding proper voltage constraints for L16.
  - Making L16 always-on.
  - Adding regulator-system-load for both L15 and L16. 100 mA should be
    available in total, so specify 50 mA for each. (The regulator
    hardware can only be in normal (55 mA) or low-power mode (5 mA) so
    this will actually result in the expected 110 mA total...)

[1]: https://www.96boards.org/documentation/consumer/dragonboard/dragonboard410c/hardware-docs/hardware-user-manual.md.html#power-supplies

Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Fixes: 828dd5d66f0f ("arm64: dts: apq8016-sbc: make 1.8v available on LS expansion")
Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 arch/arm64/boot/dts/qcom/apq8016-sbc.dts | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/apq8016-sbc.dts b/arch/arm64/boot/dts/qcom/apq8016-sbc.dts
index 14cb217a13c1..3ec449f5cab7 100644
--- a/arch/arm64/boot/dts/qcom/apq8016-sbc.dts
+++ b/arch/arm64/boot/dts/qcom/apq8016-sbc.dts
@@ -526,19 +526,27 @@ l14 {
 		regulator-max-microvolt = <3300000>;
 	};
 
-	/**
-	 * 1.8v required on LS expansion
-	 * for mezzanine boards
+	/*
+	 * The 96Boards specification expects a 1.8V power rail on the low-speed
+	 * expansion connector that is able to provide at least 0.18W / 100 mA.
+	 * L15/L16 are connected in parallel to provide 55 mA each. A minimum load
+	 * must be specified to ensure the regulators are not put in LPM where they
+	 * would only provide 5 mA.
 	 */
 	l15 {
 		regulator-min-microvolt = <1800000>;
 		regulator-max-microvolt = <1800000>;
+		regulator-system-load = <50000>;
+		regulator-allow-set-load;
 		regulator-always-on;
 	};
 
 	l16 {
 		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <3300000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-system-load = <50000>;
+		regulator-allow-set-load;
+		regulator-always-on;
 	};
 
 	l17 {

-- 
2.40.1

