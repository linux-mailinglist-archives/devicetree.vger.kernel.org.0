Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8FA0D51B5E4
	for <lists+devicetree@lfdr.de>; Thu,  5 May 2022 04:28:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238988AbiEEC3K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 May 2022 22:29:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239189AbiEEC3A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 May 2022 22:29:00 -0400
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8AB413D34
        for <devicetree@vger.kernel.org>; Wed,  4 May 2022 19:25:22 -0700 (PDT)
Received: by mail-oi1-x234.google.com with SMTP id e189so3056338oia.8
        for <devicetree@vger.kernel.org>; Wed, 04 May 2022 19:25:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=le+wIoYHqdj7vd0R+klLRhUW9qgwnuHgcK0tOlMXlEo=;
        b=zXo/qTeTkqOFmu8kfoH7kJ4+iIwDmI7YprW07qcJkdNmYBghfHQ+bL+7fxVLn08U4F
         uiw2JMubXMzvii8wY465CD80ujoiwmAjqsDbYuydu84KWc8H8eONKMye0Y+EJaBfyIyz
         yFFEs06B0EI68lDYnaqjwAvzK9z3HFGW7ABqpptFUfdthYA08g6A9hsJ+Ku/CIqOlEFm
         wm3y9Ksu+nS17zErqG35EXBR1W62hYEuKGA5rYLLgM+bWbWVo77NZF5NcXEH8F1BO2Yb
         vjsEKvqTcT3e42m14VmXCRkEZ2uUX226rGBdVeCGSnER91oYM2lUasQTmR3AyDGDysy5
         JK3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=le+wIoYHqdj7vd0R+klLRhUW9qgwnuHgcK0tOlMXlEo=;
        b=yy95mNRpk05P6XYintl5N+1nuhYUobFx2FB2YySPeKdCyYc58q8NPNojopzUtEkB6T
         J2ZczKAkk4B+XWiVupHC9p4lRI7yjI+whqVCKWKWm1aTadn19Oa42aAPxpLoc7MIXDm5
         +5bpg6KKSyYr8fbaglbf4U6VoPxLZY6b9sd03+ntyXWsQewuq1TFyI1fe4y1tF/4OZ+Y
         Xi19UXAk11vcDDLVH8WeYZQrhyEh/GpNeEsYGVGX9tcnFZxDDMsQV7uR9ZWGAtSBN5Z9
         XV8MYNjIpzH4TVV6rDLHgO9SG6kvPIYjj9S3Kw7QPCYry+cue6XUuizNbbIrGSgtIkCw
         CLCg==
X-Gm-Message-State: AOAM5325Dtc44B4QVQbDE/i+m2u8qXDL24TC9G+Rzb/Lg2RSZutaPA95
        iJRQ5a+n1VoSJMidtMW89AGKmw==
X-Google-Smtp-Source: ABdhPJy+urXIvGMv1m9R61k00G2AiVJBVAHFbx6OTFXFf3cJzSeNb1ySthNu/cafxbShWsMISVJgpQ==
X-Received: by 2002:a05:6808:f0c:b0:326:b8c:492e with SMTP id m12-20020a0568080f0c00b003260b8c492emr1346702oiw.121.1651717522317;
        Wed, 04 May 2022 19:25:22 -0700 (PDT)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id n8-20020a0568080a0800b00325cda1ff8csm238296oij.11.2022.05.04.19.25.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 May 2022 19:25:21 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] arm64: dts: qcom: Add a few LPG LEDs
Date:   Wed,  4 May 2022 19:27:02 -0700
Message-Id: <20220505022706.1692554-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Now that the LPG binding is accepted, sprinkle some lpg definitions in various
PMIC files and define the LPG attached LEDs for RB3 and db820c.

Bjorn Andersson (4):
  arm64: dts: qcom: Add LPG to pm8916, pm8994, pmi8994 and pmi8998
  arm64: dts: qcom: sdm845: Enable user LEDs on DB845c
  arm64: dts: qcom: pmi8994: Define MPP block
  arm64: dts: qcom: db820c: Add user LEDs

 arch/arm64/boot/dts/qcom/apq8096-db820c.dts | 56 +++++++++++++++++++++
 arch/arm64/boot/dts/qcom/pm8916.dtsi        |  8 +++
 arch/arm64/boot/dts/qcom/pm8994.dtsi        | 10 ++++
 arch/arm64/boot/dts/qcom/pmi8994.dtsi       | 20 ++++++++
 arch/arm64/boot/dts/qcom/pmi8998.dtsi       | 11 +++-
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts  | 31 ++++++++++++
 6 files changed, 135 insertions(+), 1 deletion(-)

-- 
2.35.1

