Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6109A4D318C
	for <lists+devicetree@lfdr.de>; Wed,  9 Mar 2022 16:15:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233760AbiCIPQu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Mar 2022 10:16:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233637AbiCIPQt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Mar 2022 10:16:49 -0500
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CA6C17B885
        for <devicetree@vger.kernel.org>; Wed,  9 Mar 2022 07:15:50 -0800 (PST)
Received: by mail-pj1-x1035.google.com with SMTP id lj8-20020a17090b344800b001bfaa46bca3so2449263pjb.2
        for <devicetree@vger.kernel.org>; Wed, 09 Mar 2022 07:15:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7oYPf+ghIhV7r+agWznZ0k2zJGmzHc0daLWva3ZBCac=;
        b=COl2loy9SV2d5sun+kPh40dPD0uGJOmS+/HkjmD2g2sSi2FHFxzlJZwt31HkP+3V0F
         4wsmGvHnFNxW6j2LvyLHbCXk/MnsifYWuPnFHaXdeucHJzX2d/KJ1yzclKujTX2NqXYT
         5gPTt8JUb9d+Ce4LHMAY7+ciBYT0UWDEsV/3lEIRHR821NweJNebF0QqehCnig3e07K/
         DqHxiZKPmUekzY5YimL/O9+/RkZwCKR6p59ST0gnQdq5RqLTYZTpVpi19NYYJKFWbHfm
         bfXp4+NJXCFz5sZ4Qpp9g+agOQoOJnEmahdWRFTX6ryBqY8GF6wMx15vxOntf3vEUMHm
         5MNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7oYPf+ghIhV7r+agWznZ0k2zJGmzHc0daLWva3ZBCac=;
        b=oLje0vO+DWjAVyZzAgiSzxJ1dmIIXt6vimNmBUpnV9ifrIlDUU6Rk7JXEX/VM/nAM+
         EFwDxrWZtuBnLS1YHSAn279Tnd1XPzXgJwektW9Y7YeBDRRPczOr52A6GqboAPcL4v+y
         RT+2BXPs+kmzynAJdRdWw2a5BPIuTtBIVVUKVlAMdRo1tbaO5hXeLkMhmkgcEwqM2Au+
         7O/A15sgJDkIwmGR91DhV9W/MeE007mNHryCIhuwjYh8bpNQMLNEfKbP2wLJVmChVbUT
         YCQhfBUqh2iTcbUmucGcL4Byhqkz6cH8QW9/2i8efovbOZLHDBIRraOxSb43bxu6+eoN
         oUlg==
X-Gm-Message-State: AOAM532qaHUo4NNvN9vx9Jp1kett7htUVwPvv55hKgflld5r8gq9knUL
        nkahdDJOp4OUWrU7uwOEIzSr
X-Google-Smtp-Source: ABdhPJzargKg1hYsYHqo1V8JbHKjOSnLSHJDtPS7/77n29fkgbS1+gT/nrJMALny/6sQsEC8S/yQ+Q==
X-Received: by 2002:a17:902:cec8:b0:151:cac8:f0a2 with SMTP id d8-20020a170902cec800b00151cac8f0a2mr142925plg.12.1646838949472;
        Wed, 09 Mar 2022 07:15:49 -0800 (PST)
Received: from localhost.localdomain ([117.193.208.22])
        by smtp.gmail.com with ESMTPSA id p25-20020a637419000000b0037fa57520adsm2727425pgc.27.2022.03.09.07.15.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Mar 2022 07:15:48 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     rafael@kernel.org, viresh.kumar@linaro.org, robh+dt@kernel.org,
        krzk+dt@kernel.org
Cc:     bjorn.andersson@linaro.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        angelogioacchino.delregno@somainline.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 0/2] Convert Qcom CPUFREQ HW binding to YAML
Date:   Wed,  9 Mar 2022 20:45:39 +0530
Message-Id: <20220309151541.139511-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
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

Hi,

Patch 2/2 was submitted separately [1] but Rob's bot reported errors related to
the performance domain binding that used Qcom CPUFREQ as an example. But Qcom
CPUFREQ driver doesn't support the generic performance domains yet.

So I've added a patch 1/2 that fixes the warning by using MediaTek CPUFREQ as
the example and added both patches to this series.

Thanks,
Mani

[1] https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20211005044920.78544-1-manivannan.sadhasivam@linaro.org/

Changes in v2:

* Moved dvfs binding patch to 1/2 for avoiding DT Bot error.
* Added Krzysztof to "To" list.

Manivannan Sadhasivam (2):
  dt-bindings: dvfs: Use MediaTek CPUFREQ HW as an example
  dt-bindings: cpufreq: cpufreq-qcom-hw: Convert to YAML bindings

 .../bindings/cpufreq/cpufreq-qcom-hw.txt      | 172 ---------------
 .../bindings/cpufreq/cpufreq-qcom-hw.yaml     | 201 ++++++++++++++++++
 .../bindings/dvfs/performance-domain.yaml     |  14 +-
 3 files changed, 211 insertions(+), 176 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.txt
 create mode 100644 Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml

-- 
2.25.1

