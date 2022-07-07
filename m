Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F283756A6A7
	for <lists+devicetree@lfdr.de>; Thu,  7 Jul 2022 17:09:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235922AbiGGPJq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jul 2022 11:09:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235548AbiGGPJq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jul 2022 11:09:46 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5103024F25
        for <devicetree@vger.kernel.org>; Thu,  7 Jul 2022 08:09:44 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id h17so13606025wrx.0
        for <devicetree@vger.kernel.org>; Thu, 07 Jul 2022 08:09:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kGGmltJW/sQ4eUFteyt9f3ADjviTJxdFrDX8z7edsaw=;
        b=C144MF1cyKAseejcrlTqZVSME+XszOw4BLo+VfoUUTa2epbsPpX33za8t878vbCT5U
         N3XJph2WzX2IS0G7HWB5RQszBDwpB6BejkaIo+E5MmSx3fvdfoBakqhdVGGjHBBQKO8+
         Jxra8lsaEnWP00w0s/LyNzmeM+iObPrIlW7VkJ4GP53aB2shwP3I33vQgT8R4BiG9Odv
         goltMwOMs0qcUMGo7fxyXKHV6D7qXNn0Rc3AEDTnspQ53lmY+m9CHITr+YWNeI2nHB9P
         3hV4Xaod1VIag6YWlSO8AAspynvLnPMuSb/yNcwn1nbVo6tITGw9IjLwqKCvv/TkfsGu
         CSsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kGGmltJW/sQ4eUFteyt9f3ADjviTJxdFrDX8z7edsaw=;
        b=HXngwSMiqrogbvrW8fazRw2L74YH1kq9VE65ZY/ku72dKM1ZHW5xYFM0r3+wgAXid2
         6eo5ESbuOOJ6fdxtWSdxK4Qc67yryX5SDRNrb0FhDxQEa+2qgnPcuxyDUojG06UeOOvq
         yEQJlJtian7u3aUkp3SutRius4ExaY4xDep5UR+RHANB6KVAEMf1eKvbtQIZjjo+IfKV
         tUl/bnJyhf4Cz9Wc3eGyOLys9cHBMjVKks9FDNunDlSXrbBBvqOKrs1EW8wvV6muprw9
         j6TSomQZ+sHGdlPw4hEem6OLQzVH10AhDuCVLR+Z7Ar6BxjNQn/Ruy871jQcRcOhwdCY
         2oxw==
X-Gm-Message-State: AJIora+h05sX58atdt5RCbeRrdURcPNcaDR8zgwVyXcM/4TSJJu8CLZI
        bp/0+ofNdWnUhJJUZnqDMn5afw==
X-Google-Smtp-Source: AGRyM1vBGHb6TDWlnZN00paH3aEYNpamhOzJr+iYZehmUuU6PAnp2nwIYdU1+oM/th0FhqDWpSed3w==
X-Received: by 2002:a05:6000:1d97:b0:210:25d6:e125 with SMTP id bk23-20020a0560001d9700b0021025d6e125mr41868605wrb.464.1657206582866;
        Thu, 07 Jul 2022 08:09:42 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id m1-20020a7bcb81000000b003a05621dc53sm29122235wmi.29.2022.07.07.08.09.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jul 2022 08:09:42 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org,
        konrad.dybcio@somainline.org, jassisinghbrar@gmail.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        shawn.guo@linaro.org, bryan.odonoghue@linaro.org
Subject: [PATCH v2 0/2] Two apcs-kpss-global.yaml fixes
Date:   Thu,  7 Jul 2022 16:09:31 +0100
Message-Id: <20220707150933.1889371-1-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.36.1
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

V2:
- Fixes example which threw an error in v1 - Rob's bot
- Updates the patch prefix - Krzysztof
- Fixes broken non-DT schema syntax clock-output-name - Krzysztof

V1:
Adding in msm8939.dtsi and running the binding checks is throwing up two
errors for me.

In the first instance we use syscon on the 8939 and should declare it in
the compat list. Doing a quick grep it looks like that fix should be
applied to a number of existing declarations too.

In the second instance we just need to document clock-output-names for the
a53 mux PLL.

Bryan O'Donoghue (2):
  dt-bindings: mailbox: qcom,apcs-kpss-global: Add syscon const for
    relevant entries
  dt-bindings: mailbox: qcom,apcs-kpss-global: Add clock-output-names

 .../mailbox/qcom,apcs-kpss-global.yaml        | 52 +++++++++++--------
 1 file changed, 31 insertions(+), 21 deletions(-)

-- 
2.36.1

